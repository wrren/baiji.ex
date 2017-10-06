defmodule Baiji.Request.REST.Encoder do
  @moduledoc """
  For REST-JSON and REST-XML endpoints, takes an input map
  and its desired shape, along with the request URI, and 
  generates the correct URI for the request
  """
  alias Baiji.Operation

  @doc """
  Encode an Operation's input into a REST URI based on the expected input shape
  described in the Operation
  """
  def encode(%Operation{path: path, input: %{}}) do
    path
  end
  def encode(%Operation{path: path, input: input, input_shape: input_shape, endpoint: %{shapes: shapes}}) do
    
  end
end