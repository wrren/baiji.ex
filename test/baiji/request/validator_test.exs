defmodule Baiji.Request.ValidatorTest do
  use ExUnit.Case, async: true

  alias Baiji.Request.{
    Validator,
    Error
  }

  test "correctly detects missing inputs" do
    assert_raise(Error, "The required key routeTableId is missing from the input", fn ->
      Baiji.EC2.associate_route_table
      |> Validator.validate!
    end)
  end

  test "correctly detects incorrect input types" do
    assert_raise(Error, "The value for dryRun must be a boolean", fn ->
      Baiji.EC2.associate_route_table(%{"routeTableId" => "test", "subnetId" => "test", "dryRun" => 0})
      |> Validator.validate!
    end)
  end

  test "passes any input shape for a function that has no inputs" do
    Baiji.EC2.describe_instances
    |> Validator.validate!
  end
end