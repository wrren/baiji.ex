defmodule Baiji.ConfigTest do
  use ExUnit.Case, async: true

  alias Baiji.{
    Config,
    Operation
  }

  test "correctly sets debug mode" do
    op = %Operation{}
    |> Config.debug([])

    refute Operation.debug?(op)
  end

  test "correctly merges default region" do
    op = %Operation{}
    |> Config.region([])

    assert op.region == "us-east-1"
  end
end