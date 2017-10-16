defmodule Baiji.Auth do
  alias Baiji.Operation

  #
  # Callback for auth providers. Populates the authentication
  # data for an operation
  #
  @callback populate(%Operation{}, atom()) :: %Operation{}

  @doc """
  Populate the authorization credentials of the given operation
  """
  def populate(%Operation{} = op) do
    op
    |> populate_access_key_id
    |> populate_secret_access_key
    |> populate_security_token
    |> verify
  end

  @doc """
  Try successive auth population methods until one of them successfully populates
  the specified key in the given operation or we run out of methods
  """
  def populate(%Operation{} = op, methods, key) when is_list(methods) do
    methods
    |> Enum.reduce_while(op, fn(method, op) ->
      case Map.get(op, key) do
        nil -> {:cont, populate(op, method, key)}
        val -> 
          Operation.debug(op, "Got #{val} for #{key}")
          {:halt, op}
      end
    end)
  end
  def populate(%Operation{} = op, {:system, env_var}, key) do
    Operation.debug(op, "Populating #{key} from environment variable #{env_var}...")
    Map.put(op, key, System.get_env(env_var))
  end
  def populate(%Operation{} = op, :instance_role, key) do
    Operation.debug(op, "Populating #{key} from instance role...")    
    Baiji.Auth.InstanceMetadata.populate(op, key)
  end

  @doc """
  Attempt to populate the access_key_id field of the given operation using
  the methods defined in the application config
  """
  def populate_access_key_id(%Operation{} = op) do
    populate(op, Application.get_env(:baiji, :access_key_id, []), :access_key_id)
  end

  @doc """
  Attempt to populate the secret_access_key field of the given operation using
  the methods defined in the application config
  """
  def populate_secret_access_key(%Operation{} = op) do
    populate(op, Application.get_env(:baiji, :secret_access_key, []), :secret_access_key)
  end

  @doc """
  Attempt to populate the security_token field of the given operation using
  the methods defined in the application config
  """
  def populate_security_token(%Operation{} = op) do
    populate(op, Application.get_env(:baiji, :security_token, []), :security_token)
  end

  @doc """
  Verify that an Operation struct contains the required credentials
  """
  def verify(%Operation{access_key_id: nil}) do
    raise """
    An AWS Access Key ID could not be retrieved from any of the configured locations.
    """
  end
  def verify(%Operation{secret_access_key: nil}) do
    raise """
    An AWS Secret Access Key could not be retrieved from any of the configured locations.
    """
  end
  def verify(%Operation{access_key_id: access_key_id, secret_access_key: secret_access_key} = op) do
    Operation.debug(op, "Got Access Key ID #{inspect access_key_id}, Secret Access Key ending in #{String.slice(secret_access_key, -10..-1)}")
  end
  
  defmacro __using__(_) do
    quote do
      @behaviour Baiji.Auth
      alias Baiji.Operation
    end
  end
end