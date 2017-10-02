defmodule Baiji.Operation do
  defstruct input:              %{},          # Operation inputs (POST/PUT body, etc)
            options:            [],           # Additional options applied to the operation
            action:             nil,          # Action name "DescribeInstances", etc.
            service:            nil,          # AWS service name (ec2, apigateway, etc.)
            type:               :unknown,     # Action type (xml, json, rest-json, rest-xml, etc.)
            endpoint:           nil,          # API Endpoint to contact in order to execute the operation
            target_prefix:      nil,          # API Target name prefix
            method:             :unknown,     # HTTP Method
            access_key_id:      nil,          # AWS access key ID
            secret_access_key:  nil,          # AWS secret access key
            security_token:     nil,          # AWS STS security token (optional)
            region:             "us-east-1",  # Target AWS Region
            assigns:            [],           # Variables assigned to the operation by intermediate stages
            halted:             false,        # Indicates whether the operation has been halted due to an error
            errors:             []            # Contains details of any errors that occurred while performing the operation
  
  @doc """
  Add a new key-value pair to the operation's assigns
  """
  def assign(%Baiji.Operation{assigns: assigns} = op, key, value) do
    %{op | assigns: Keyword.put(assigns, key, value)}
  end

  @doc """
  Check whether the operation has the debug flag set
  """
  def debug?(%Baiji.Operation{assigns: assigns}) do
    assigns[:debug] || false
  end

  @doc """
  Set the debug flag to true or false on the given operation
  """
  def debug!(%Baiji.Operation{} = op, debug \\ true) do
    assign(op, :debug, debug)
  end

  @doc """
  Use the Logger module to log a message if the debug flag is set on the 
  operation struct
  """
  def debug(%Baiji.Operation{} = op, message),  do: log(op, :debug, message)
  def info(%Baiji.Operation{} = op, message),   do: log(op, :info, message)
  def warn(%Baiji.Operation{} = op, message),   do: log(op, :warn, message)
  def error(%Baiji.Operation{} = op, message),  do: log(op, :error, message)

  @doc """
  Use the Logger module to log a message at the specified level if the debug
  flag is set
  """
  def log(%Baiji.Operation{} = op, level, message) do
    if debug?(op) do
      require Logger
      Logger.log(level, message)
    end
  end
end