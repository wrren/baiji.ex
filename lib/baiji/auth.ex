defmodule Baiji.Auth do
  alias Baiji.Operation
  @default_role_session_name "baiji"

  #
  # Callback for auth providers. Populates the authentication
  # data for an operation
  #
  @callback populate(%Operation{}, atom()) :: %Operation{}

  @doc """
  Populate the authorization credentials of the given operation
  """
  def populate(%Operation{options: opts} = op) do
    if opts[:assume_role] do
      op
      |> assume_role(opts[:assume_role])
      |> verify
    else
      op
      |> populate_access_key_id
      |> populate_secret_access_key
      |> populate_security_token
      |> verify
    end
  end

  @doc """
  Attempt to assume the role specified in the operation's options. The role can be defined either
  as an ARN, or a tuple containing the role ARN and a session name. If no session name is provided, 
  the default session name "Baiji (Elixir)" will be used instead.
  """
  def assume_role(%Operation{options: opts} = op, {role_arn, role_session_name}) do
    Baiji.STS.assume_role(%{"RoleArn" => role_arn, "RoleSessionName" => role_session_name})
    |> Baiji.perform(Keyword.delete(opts, :assume_role))
    |> assume_role(op)
  end
  def assume_role(%Operation{} = op, role_arn) when is_binary(role_arn) do
    assume_role(op, {role_arn, @default_role_session_name})
  end
  def assume_role({:ok, %{"Credentials" => creds}}, %Operation{} = op) do
    op
    |> Map.put(:access_key_id,      Map.get(creds, "AccessKeyId"))
    |> Map.put(:secret_access_key,  Map.get(creds, "SecretAccessKey"))
    |> Map.put(:security_token,     Map.get(creds, "SessionToken"))
  end
  def assume_role({:error, _}, op), do: op

  @doc """
  Try successive auth population methods until one of them successfully populates
  the specified key in the given operation or we run out of methods
  """
  def populate(%Operation{} = op, methods, key) when is_list(methods) do
    methods
    |> Enum.reduce_while(op, fn(method, op) ->
      case Map.get(op, key) do
        nil -> 
          {:cont, populate(op, method, key)}
        val -> 
          Operation.debug(op, "Got #{val} for #{key}")
          {:halt, op}
      end
    end)
    |> trim(key)
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
  the methods defined in the application config. If the operation already has
  an access key ID, nothing will be done.
  """
  def populate_access_key_id(%Operation{access_key_id: nil} = op) do
    populate(op, Application.get_env(:baiji, :access_key_id, []), :access_key_id)
  end
  def populate_access_key_id(op), do: op

  @doc """
  Attempt to populate the secret_access_key field of the given operation using
  the methods defined in the application config. If the operation already has
  a secret access key, nothing will be done.
  """
  def populate_secret_access_key(%Operation{secret_access_key: nil} = op) do
    populate(op, Application.get_env(:baiji, :secret_access_key, []), :secret_access_key)
  end
  def populate_secret_access_key(op), do: op

  @doc """
  Attempt to populate the security_token field of the given operation using
  the methods defined in the application config. If the operation already has
  a security token, nothing will be done.
  """
  def populate_security_token(%Operation{security_token: nil} = op) do
    populate(op, Application.get_env(:baiji, :security_token, []), :security_token)
  end
  def populate_security_token(op), do: op

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
    Operation.debug(op, "Got Access Key ID #{access_key_id}, Secret Access Key ending in #{String.slice(secret_access_key, -10..-1)}")    
  end

  #
  # Trim a credential if it's been set
  #
  defp trim(%Operation{} = op, key) when is_atom(key) do
    case Map.get(op, key) do
      nil -> op
      val -> Map.put(op, key, String.trim(val))
    end
  end
  
  defmacro __using__(_) do
    quote do
      @behaviour Baiji.Auth
      alias Baiji.Operation
    end
  end
end