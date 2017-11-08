defmodule Baiji.Response do
  @moduledoc """
  Decodes AWS API responses based on the Operation type
  """
  alias Baiji.{
    Endpoint,
    Operation
  }

  @doc """
  Parse, decode and return the response to a request made with the given operation
  """
  def parse({:error, error}, _), do: {:error, error}
  def parse(response, %Operation{parser: nil} = op) do
    parse(response, %{op | parser: &__MODULE__.parse/2})
  end
  def parse({:ok, response}, %Operation{parser: parser} = op) do
    parser.(response, op)
  end
  def parse(%{body: body}, %Operation{endpoint: %Endpoint{type: type}} = op) when type == :xml 
                                                                                or type == :rest_xml or type == :ec2 do
    {:ok, Baiji.Response.Parser.XML.parse!(body, op)}
  end
  def parse(%{body: body}, %Operation{endpoint: %Endpoint{type: type}}) when type == :json or type == :rest_json do
    Poison.decode(body)
  end
end