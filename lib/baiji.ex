defmodule Baiji do
  @moduledoc """
  Baiji provides an interface for interacting with the AWS API. Baiji is 
  typically used by invoking a service function to generate an operation which 
  is then passed to Baiji.run to make the request.

  ## Examples

    iex> Baiji.EC2.describe_instances
    ...> |> Baiji.run
    {:ok, %{reservations: ...}}
  """
  alias Baiji.{
    Operation,
    Auth,
    Request,
    Response
  }

  @doc """
  Perform an operation
  """
  def perform(%Operation{} = operation, opts \\ []) do
    %{operation | options: Keyword.merge(operation.options, opts)}
    |> Auth.populate
    |> Request.make
    |> Response.parse(operation)
  end
end
