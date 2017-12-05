defmodule Baiji.Auth.InstanceMetadata do
  @moduledoc """
  Derives operation authentication parameters from the local instance'
  metadata
  """
  use Baiji.Auth
  import Baiji.Core.Utilities

  # EC2 metadata endpoint
  @ec2_metadata_url "http://169.254.169.254/latest/meta-data/"
  # ECS task role metadata endpoint
  @ecs_metadata_url "http://169.254.170.2"

  @doc """
  Populate the security credential of the given operation specified by the given key 
  using the instance metadata endpoint
  """
  def populate(%Operation{} = op, key) do
    op
    |> assign_credentials    
    |> populate_from_cache(key)
  end

  @doc """
  Populate the given credentials key in the op struct using cached credentials
  """
  def assign_credentials(%Operation{} = op) do
    case op.assigns[:instance_metadata] do
      nil ->
        Operation.assign(op, :instance_metadata, ecs_credentials(op) || ec2_credentials(op)) 
      _ ->
        op
    end
  end

  @doc """
  Query the instance metadata endpoint for security credentials and return them
  """
  def ec2_credentials(%Operation{} = op) do
    Operation.debug(op, "Getting EC2 Credentials...")
    request(@ec2_metadata_url <> "/iam/security-credentials/")
    |> then(fn role -> 
      request(@ec2_metadata_url <> "/iam/security-credentials/#{role}")
    end)
    |> Poison.decode!
    |> extract_credentials
  end

  @doc """
  Query the ECS task role credentials endpoint for security credentials and return them
  """
  def ecs_credentials(%Operation{} = op) do
    Operation.debug(op, "Getting ECS Credentials...")
    case System.get_env("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI") do
      nil -> 
        Operation.debug(op, "AWS_CONTAINER_CREDENTIALS_RELATIVE_URI Not Set")
        nil
      uri -> 
        request(@ecs_metadata_url <> uri)
        |> Poison.decode!
        |> extract_credentials
    end
  end

  @doc """
  Assign instance metadata credentials to the operation
  """
  def extract_credentials(credentials) do
    [
      access_key_id:      credentials["AccessKeyId"],
      secret_access_key:  credentials["SecretAccessKey"],
      security_token:     credentials["Token"],
      expiration:         credentials["Expiration"]
    ]
  end

  @doc """
  Populate the given auth key on the operation using the cached instance metadata in 
  the operation's assigns
  """
  def populate_from_cache(%Operation{} = op, key) do
    populate_from_cache(op, key, op.assigns[:instance_metadata])
  end
  def populate_from_cache(%Operation{} = op, _key, nil),  do: op
  def populate_from_cache(%Operation{} = op, key, creds), do: Map.put(op, key, Keyword.get(creds, key))

  @doc """
  Make a GET request to the specified URL and return the body. If anything goes wrong, raise an error.
  """
  def request(url) do
    case HTTPoison.get(url) do
      {:ok, %{status_code: 200, body: body}} ->
        body
      {:ok, %{status_code: status}} ->
        raise """
        HTTP Status Code #{status} received from instance metadata endpoint. It's possible that this instance
        does not have the correct IAM role to be able to provide metadata.
        """
      error ->
        raise """
        An error occured while making a request to the instance metadata endpoint: #{inspect error}. It's likely that 
        you're not currently running this application on an EC2 instance. Please check your application config and 
        verify that you're retrieving credentials from sources in the correct order.
        """
    end
  end
end