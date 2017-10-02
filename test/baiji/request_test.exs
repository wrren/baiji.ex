defmodule Baiji.RequestTest do
  use ExUnit.Case, async: true

  alias Baiji.{
    Request,
    Config
  }

  test "correctly forms host from Operation struct" do
    host = Baiji.EC2.describe_instances
    |> Config.merge
    |> Request.host

    assert host == "ec2.us-east-1.amazonaws.com"

    host = Baiji.EC2.describe_instances
    |> Config.merge([region: "us-west-2"])
    |> Request.host

    assert host == "ec2.us-west-2.amazonaws.com"

    host = Baiji.EC2.describe_instances
    |> Config.merge([region: "local"])
    |> Request.host

    assert host == "localhost"
  end

  test "correctly forms query string from Operation struct" do
    host = Baiji.EC2.describe_instances
    |> Config.merge
    |> Request.query

    assert host == "?Action=DescribeInstances&Version=2016-11-15"
  end
end