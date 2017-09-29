defmodule Baiji.Core.Utilities do
  @doc """
  Simple function used in piping. Takes a value and applies a lambda function to it
  """
  def then(value, fun), do: fun.(value)

  @doc """
  Generate a SHA-256 hash of a given value
  """
  def sha256(value) when is_binary(value) do
    :crypto.hash(:sha256, value) 
  end

  @doc """
  Generate a hex digest with lower-case characters
  """
  def hexdigest(value) when is_binary(value) do 
    Base.encode16(value, case: :lower)    
  end
end