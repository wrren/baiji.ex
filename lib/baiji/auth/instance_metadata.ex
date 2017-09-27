defmodule Baiji.Auth.InstanceMetadata do
  @moduledoc """
  Derives operation authentication parameters from the local instance'
  metadata
  """
  use Baiji.Auth

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
        Operation.assign(op, :instance_metadata, ec2_credentials(op) || ecs_credentials(op))
      _ ->
        op
    end
  end

  @doc """
  Query the instance metadata endpoint for security credentials and return them
  """
  def ec2_credentials(%Operation{} = op) do
    Operation.debug(op, "Getting EC2 Credentials...")
  end

  @doc """
  Query the ECS task role credentials endpoint for security credentials and return them
  """
  def ecs_credentials(%Operation{} = op) do
    Operation.debug(op, "Getting ECS Credentials...")
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
  
end