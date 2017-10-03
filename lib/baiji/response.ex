defmodule Baiji.Response do
  @moduledoc """
  Decodes AWS API responses based on the Operation type
  """
  alias Baiji.Operation

  @doc """
  Parse, decode and return the response to a request made with the given operation
  """
  def parse({:error, error}, _), do: {:error, error}
  def parse({:ok, response}, %Operation{parser: parser} = op) do
    parser.(response, op)
  end
  def parse(response, %Operation{type: type} = op) when type == :xml or type == :rest_xml or type == :ec2 do
    Baiji.Response.Parser.XML.parse(response, op)
  end
  def parse(%{body: body}, %Operation{type: type}) when type == :json or type == :rest_json do
    Poison.decode(body)
  end
end