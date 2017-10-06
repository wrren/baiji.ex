defmodule Baiji.Response.Parser.XMLTest do
  use ExUnit.Case

  test "correctly parses EC2 XML response" do
    xml = Path.expand('../../../fixtures/ec2.xml', __DIR__)
    |> File.read!

    json = Path.expand('../../../fixtures/ec2.json', __DIR__)
    |> File.read!
    |> Poison.decode!

    result = Baiji.Response.Parser.XML.parse!(xml, Baiji.EC2.describe_instances())
    |> Poison.encode!
    |> Poison.decode!

    assert result == json
  end

  test "correctly parses AutoScaling XML response" do
    xml = Path.expand('../../../fixtures/autoscaling.xml', __DIR__)
    |> File.read!

    json = Path.expand('../../../fixtures/autoscaling.json', __DIR__)
    |> File.read!
    |> Poison.decode!

    result = Baiji.Response.Parser.XML.parse!(xml, Baiji.AutoScaling.describe_auto_scaling_groups())
    |> Poison.encode!
    |> Poison.decode!

    assert result == json
  end

  test "correctly parses target health output" do
    xml = Path.expand('../../../fixtures/target_health.xml', __DIR__)
    |> File.read!

    json = Path.expand('../../../fixtures/target_health.json', __DIR__)
    |> File.read!
    |> Poison.decode!

    result = Baiji.Response.Parser.XML.parse!(xml, Baiji.ElasticLoadBalancingv2.describe_target_health())
    |> Poison.encode!
    |> Poison.decode!

    assert result == json
  end
end