defmodule Baiji.Request.REST.Encoder do
  @moduledoc """
  For REST-JSON and REST-XML endpoints, takes an input map
  and its desired shape, along with the request path, and 
  generates the correct path for the request
  """
  alias Baiji.Operation
  require Logger

  @doc """
  Encode an Operation's input into a REST URI based on the expected input shape
  described in the Operation
  """
  def encode(%Operation{path: path, input: input}) when map_size(input) == 0 do
    path
  end
  def encode(%Operation{path: path, input: input, input_shape: input_shape, endpoint: %{shapes: shapes}}) do
    input
    |> extract_uri_parameters(shapes[input_shape], shapes, %{})
    |> encode(path)
  end

  @doc """
  Extract input parameters that should be encoded into the URI based on the locationName attribute of
  the input's shape
  """
  def extract_uri_parameters(input, %{"type" => "structure", "members" => members}, shapes, out) do
    members
    |> Enum.filter(fn {_, %{"location" => "uri"}} -> true; _ -> false end)
    |> Enum.reduce(out, fn({key, %{"shape" => shape} = val}, out) ->
      location = Map.get(val, "locationName", key)
      case Enum.find(input, fn {^location, _} -> true; _ -> false end) do
        nil ->
          out
        {_, value} ->
          Map.put(out, location, extract_uri_parameters(value, shapes[shape], shapes, out))
      end
    end)
  end
  def extract_uri_parameters(input, _, _, _), do: input

  @doc """
  Encode an input map into a path containing variable placeholders
  """
  def encode(input, path) do
    path
    |> String.split("/")
    |> Enum.map(fn "{" <> component -> Map.get(input, String.trim(component, "}")); component -> component end)
    |> Enum.join("/")
  end
end