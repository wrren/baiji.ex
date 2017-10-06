defmodule Baiji.Request.Query.Encoder do
  @moduledoc """
  Encodes an input map into a query string based on the input shape
  """
  import Baiji.Core.Utilities
  alias Baiji.Operation

  @doc """
  Encode an input map into a query string
  """
  def encode(%Operation{input_shape: nil} = op) do
    []
    |> encode_action(op)
    |> encode_version(op)
    |> to_query_string
  end
  def encode(%Operation{input: input} = op) when map_size(input) == 0 do
    []
    |> encode_action(op)
    |> encode_version(op)
    |> to_query_string
  end
  def encode(%Operation{input: input, input_shape: shape, endpoint: %{shapes: shapes}} = op) do
    []
    |> encode_action(op)
    |> encode_version(op)
    |> encode_input(input, shapes[shape], shapes, [])
    |> to_query_string
  end

  @doc """
  Encode the action name into the component list
  """
  def encode_action(components, %Operation{action: action}) do
    [{"Action", action} | components]
  end

  @doc """
  Encode the API version into the component list
  """
  def encode_version(components, %Operation{endpoint: %{version: version}}) do
    [{"Version", version} | components]
  end

  def encode_input(query, input, %{"type" => "string"}, _shapes, keys),     do: [to_component(keys, input) | query]
  def encode_input(query, input, %{"type" => "integer"}, _shapes, keys),  do: [to_component(keys, input) | query]
  def encode_input(query, input, %{"type" => "boolean"}, _shapes, keys),  do: [to_component(keys, input) | query]
  def encode_input(query, input, %{"type" => "list", "member" => %{"shape" => member_shape}}, shapes, keys) do
    input
    |> Enum.reduce({query, 1}, fn(member, {query, index}) ->
      {encode_input(query, member, shapes[member_shape], shapes, [index, "member" | keys]), index + 1}
    end)    
    |> then(fn {query, _} -> query end)
  end

  def encode_input(query, input, %{"type" => "structure", "members" => members}, shapes, keys) do
    members
    |> Enum.reduce(query, fn({name, %{"shape" => member_shape} = val}, query) ->
      location = Map.get(val, "locationName", name)
      if Map.has_key?(input, location) do
        encode_input(query, input[location], shapes[member_shape], shapes, [location | keys])
      else
        query
      end
    end)
  end

  @doc """
  Given a key component list and a value, generate a key-value tuple
  """
  def to_component(keys, value) do
    {to_key(keys), value}
  end

  @doc """
  Generate a query string key name from a set of components
  """
  def to_key(keys) when is_list(keys) do
    keys
    |> :lists.reverse
    |> Enum.join(".")
  end

  @doc """
  Take a component list and turn it into a query string
  """
  def to_query_string([]), do: ""
  def to_query_string(components) do
    components
    |> Enum.sort_by(fn {key, _} -> key end)
    |> URI.encode_query
    |> then(fn query -> "?" <> query end)
  end
end