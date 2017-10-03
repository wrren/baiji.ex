defmodule Baiji.Request.ValidatorTest do
  use ExUnit.Case, async: true

  alias Baiji.Request.{
    Validator,
    Error
  }

  test "correctly detects missing inputs" do
    assert_raise(Error, "The required key RouteTableId is missing from the input", fn ->
      Baiji.EC2.associate_route_table
      |> Validator.validate!
    end)
  end
end