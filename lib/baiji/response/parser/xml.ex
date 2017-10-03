defmodule Baiji.Response.Parser.XML do
  @moduledoc """
  Parses responses from APIs that return XML
  """
  require Record
  alias Baiji.{
    Operation
  }

  Record.defrecord :xmlElement, Record.extract(:xmlElement, from_lib: "xmerl/include/xmerl.hrl")
  Record.defrecord :xmlText,    Record.extract(:xmlText, from_lib: "xmerl/include/xmerl.hrl")

  def parse_response!(response) when is_binary(response) do
    {parsed_doc, _} = :xmerl_scan.string(:erlang.binary_to_list(response), [])
    
    parsed_doc
    |> to_map(%{})
  end

  def to_map([text], _parent) when Record.is_record(text, :xmlText) do
    text
    |> content
    |> convert
  end

  def to_map(elements, parent) when is_list(elements) do
    if dummy_names?(elements) do
      elements
      |> Enum.map(fn(element) -> to_map(element, %{}) end)
      |> Enum.filter(fn nil -> false; _ -> true end)
    else
      elements
      |> Enum.reduce(parent, fn(element, out) -> 
        case to_map(element, out) do
          val when is_map(val) -> 
            val
          _ -> 
            out
        end
      end)
    end
  end

  def to_map(element, parent) when Record.is_record(element, :xmlElement) do
    name    = xmlElement(element, :name)
    content = xmlElement(element, :content)
    Map.put(parent, Atom.to_string(name), to_map(content, %{}))
  end

  def to_map(element, _parent) when Record.is_record(element, :xmlText) do
    case String.trim(content(element)) do
      ""    -> nil
      value -> convert(value)
    end
  end

  def convert(value) do
    [
      &:erlang.binary_to_integer/1,
      &:erlang.binary_to_float/1,
      &NaiveDateTime.from_iso8601!/1,
      fn "true" -> true; "false" -> false; _ -> raise ArgumentError end
    ]
    |> Enum.reduce_while(value, fn(converter, val) ->
      try do
        {:halt, converter.(val)}
      rescue
        _ -> {:cont, val}
      catch
        _ -> {:cont, val}
      end
    end)
  end

  def name(element) when Record.is_record(element, :xmlElement) do
    Atom.to_string(xmlElement(element, :name))
  end

  def name(_element) do
    nil
  end

  def content(element) when Record.is_record(element, :xmlElement) do
    xmlElement(element, :content)
  end

  def content(element) when Record.is_record(element, :xmlText) do
    :erlang.list_to_binary(xmlText(element, :value))
  end

  defp dummy_names?(elements) do
    elements
    |> Enum.map(&__MODULE__.name/1)
    |> Enum.filter(fn nil -> false; _ -> true end)
    |> Enum.all?(fn name -> String.at(name, 0) >="a" and String.at(name, 0) <= "z" end)
  end

  def parse(%{body: xml}, %Operation{}) do
    try do
      {:ok, parse_response!(xml)}
    catch
      e -> {:error, e}
    rescue
      e -> {:error, e}
    end
  end
end