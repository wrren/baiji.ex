defmodule Baiji.Request.Validator do
  @moduledoc """
  Validates an Operation struct by checking whether the input fields
  conform to the requirements of the shape specified by the Operation's 
  input_shape field.
  """
  alias Baiji.{
    Endpoint,
    Operation,
    Request.Error
  }

  @doc """
  Check the validity of an Operation
  """
  def validate!(%Operation{input_shape: nil}), do: true
  def validate!(%Operation{input_shape: shape, endpoint: %Endpoint{shapes: shapes}} = op) do
    op
    |> check_required_fields!(shapes[shape], shapes)
  end
  
  @doc """
  Check whether all required fields in the given input are present
  """
  def check_required_fields!(%Operation{input: input}, %{"required" => required}, _shapes) do
    required
    |> Enum.each(fn req ->
      if not Map.has_key?(input, req) do
        raise Error, message: "The required key #{req} is missing from the input"
      end
    end)
    input
  end
  def check_required_fields!(op, %{}, _shapes), do: op
end