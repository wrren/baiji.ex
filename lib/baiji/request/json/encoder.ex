defmodule Baiji.Request.JSON.Encoder do
  @moduledoc """
  Encodes a request's input into a JSON payload based 
  on the Operation's shape - primarily excludes URI parameters
  from the JSON payload.
  """
  alias Baiji.{
    Operation,
    Endpoint
  }

  @doc """
  Encode an input into a JSON blob based on the Operation's shape and type
  """
  def encode(%Operation{input: %{}}), do: ""
  def encode(%Operation{input: input, endpoint: %Endpoint{type: :json}}) do
    Poison.encode!(input)
  end
  def encode(%Operation{input: input, input_shape: shape, endpoint: %{shapes: shapes}}) do
    input
    |> remove_uri_parameters(shapes[shape], shapes, %{})
    |> Poison.encode!
  end

  @doc """
  Remove any input parameters that are marked with the 'uri' location based on the
  input shape provided
  """
  def remove_uri_parameters(input, %{"type" => "structure", "members" => members}, shapes, out) do
    members
    |> Enum.filter(fn {_, %{"location": "uri"}} -> false; _ -> true end)
    |> Enum.reduce(out, fn(out, {key, %{"shape" => shape} = val}) ->
      location = Map.get(val, "locationName", key)
      case Enum.find(input, fn {^location, _} -> true; _ -> false end) do
        nil ->
          out
        {_, value} ->
          Map.put(out, location, remove_uri_parameters(value, shapes[shape], shapes, out))
      end
    end)
  end
end