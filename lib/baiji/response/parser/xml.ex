defmodule Baiji.Response.Parser.XML do
  @moduledoc """
  Parses responses from APIs that return XML
  """
  require Record
  alias Baiji.{
    Endpoint,
    Operation
  }

  Record.defrecord :xmlElement, Record.extract(:xmlElement, from_lib: "xmerl/include/xmerl.hrl")
  Record.defrecord :xmlText,    Record.extract(:xmlText, from_lib: "xmerl/include/xmerl.hrl")

  def value(xmlText(value: value)) do
    value
    |> :erlang.list_to_binary
    |> String.trim
  end

  @doc """
  Parse the XML output of an API call and generate a response in the form of a map
  """
  def parse(response, %Operation{endpoint: %Endpoint{shapes: shapes}, output_shape: shape}) do
    {xml, _} = :xmerl_scan.string(:erlang.binary_to_list(response), [space: :normalize])
    try do
      {:ok, parse(xml, shape, shapes)}
    catch
      _ -> {:error, "The response format could not be correctly parsed"}
    rescue
      _ -> {:error, "The response format could not be correctly parsed"}
    end
  end

  def parse(xml, shape_name, shapes) when is_binary(shape_name) do
    parse(xml, shapes[shape_name], shapes)  
  end
  
  def parse(xmlElement(content: content), "String", shapes),        do: parse(content, "String", shapes)
  def parse(xmlElement(content: content), "Boolean", shapes),       do: parse(content, "Boolean", shapes)
  def parse(xmlElement(content: content), "Integer", shapes),       do: parse(content, "Integer", shapes)
  def parse(xmlText() = text, "String", _shapes),                   do: value(text)
  def parse(xmlText() = text, "Boolean", _shapes),                  do: value(text) |> String.to_existing_atom
  def parse(xmlText() = text, "Integer", _shapes),                  do: value(text) |> String.to_integer
  def parse(xmlText() = text, %{"type" => "string"}, _shapes),      do: value(text)
  def parse(xmlText() = text, %{"type" => "boolean"}, _shapes),     do: value(text) |> String.to_existing_atom
  def parse(xmlText() = text, %{"type" => "integer"}, _shapes),     do: value(text) |> String.to_integer
  def parse(xmlText() = text, %{"type" => "timestamp"}, _shapes),   do: value(text) |> NaiveDateTime.from_iso8601!
  def parse([xmlText() = text], %{"type" => "string"}, _shapes),    do: value(text)
  def parse([xmlText() = text], %{"type" => "boolean"}, _shapes),   do: value(text) |> String.to_existing_atom
  def parse([xmlText() = text], %{"type" => "integer"}, _shapes),   do: value(text) |> String.to_integer
  def parse([xmlText() = text], %{"type" => "timestamp"}, _shapes), do: value(text) |> NaiveDateTime.from_iso8601!
  def parse([], %{"type" => "string"},    _shapes),                 do: nil
  def parse([], %{"type" => "boolean"},   _shapes),                 do: nil
  def parse([], %{"type" => "integer"},   _shapes),                 do: nil
  def parse([], %{"type" => "timestamp"}, _shapes),                 do: nil
  def parse(xmlElement(content: content), %{"type" => "structure", "members" => members}, shapes) do
    members
    |> Map.to_list
    |> Enum.map(fn {_, %{"shape" => shape, "locationName" => location}} ->
      case Enum.find(content, fn xmlElement(name: name) -> name == String.to_atom(location); _ -> false end) do
        xmlElement(content: c) ->
          {location, parse(c, shape, shapes)}
        _ ->
          {location, nil}
      end
    end)
    |> Enum.filter(fn {_, nil} -> false; _ -> true end)
    |> Map.new
  end
  def parse(content, %{"type" => "structure"} = shape, shapes) when is_list(content) do
    content
    |> Enum.filter(fn xmlText() = text -> String.length(value(text)) > 0; _ -> true end)
    |> Enum.at(0)
    |> parse(shape, shapes)
  end
  def parse(content, %{"type" => "list", "member" => %{"shape" => shape}}, shapes) do
    content
    |> Enum.filter(fn xmlText() -> false; _ -> true end)
    |> Enum.map(fn xmlElement() = elem -> parse(elem, shape, shapes) end)
  end
end