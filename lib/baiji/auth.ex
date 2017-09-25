defmodule Baiji.Auth do
  alias Baiji.Operation

  #
  # Callback for auth providers. Populates the authentication
  # data for an operation
  #
  @callback get(%Operation{}, atom()) :: %Operation{}

  @doc """
  Get and access key and secret and populate the corresponding
  fields in the given Operation struct based on the application
  config.
  """
  def get(%Operation{} = operation) do
    operation
    |> get_access_key_id
    |> get_secret_access_key
    |> get_security_token
  end

  def get(%Operation{^key: nil} = operation, _method, key) do
    operation
  end
  def get(%Operation{} = operation, {:system, env_var}, key) do
    Map.put(operation, key, System.get_env(env_var))
  end
  def get(%Operation{} = operation, :instance_role, key) do
    Baiji.Auth.InstanceMetadata.get(operation, key)
  end

  def get_access_key_id(%Operation{} = operation) do
    Application.get_env(:baiji, :access_key_id, [])
    |> get(operation, :access_key_id)
  end

  def get_secret_access_key(%Operation{} = operation) do
    Application.get_env(:baiji, :secret_access_key, [])
    |> get(operation, :secret_access_key)
  end

  def get_security_token(%Operation{} = operation) do
    Application.get_env(:baiji, :security_token, [])
    |> get(operation, :security_token)
  end

  defmacro __using__(_) do
    quote do
      @behaviour Baiji.Auth
      alias Baiji.Operation
    end
  end
end