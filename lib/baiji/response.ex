defmodule Baiji.Response do
  @moduledoc """
  Decodes AWS API responses based on the Operation type
  """
  alias Baiji.Operation

  @doc """
  Parse, decode and return the response to a request made with the given operation
  """
  def parse({:error, error}, _), do: {:error, error}
  def parse({:ok, response}, %Operation{type: type} = op) do
    
  end
end