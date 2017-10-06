defmodule Baiji.Request.Query.EncoderTest do
  use ExUnit.Case, async: true

  alias Baiji.Request.Query.Encoder

  test "correctly forms query string from a component list" do
    assert Encoder.to_query_string([]) == ""
    
    assert Encoder.to_query_string([
      {"Action", "DescribeInstances"}
    ]) == "?Action=DescribeInstances"

    assert Encoder.to_query_string([
      {"Action", "DescribeInstances"},
      {"Version", "2011-05-15"}
    ]) == "?Action=DescribeInstances&Version=2011-05-15"
  end

  test "correctly encodes action and version into query string when there's no input" do
    query = Baiji.EC2.describe_instances
    |> Encoder.encode

    assert query == "?Action=DescribeInstances&Version=2016-11-15"
  end

  test "correctly encodes an input based on the operation input shape" do
    query = Baiji.ElasticLoadBalancingv2.describe_target_groups(%{
      "LoadBalancerArn" => "abcdefg",
      "TargetGroupArns" => [
        "arn-1",
        "arn-2",
        "arn-3"
      ]
    }) |> Encoder.encode

    output = [
      {"Action", "DescribeTargetGroups"},
      {"Version", "2015-12-01"},
      {"LoadBalancerArn", "abcdefg"},
      {"TargetGroupArns.member.1", "arn-1"},
      {"TargetGroupArns.member.2", "arn-2"},
      {"TargetGroupArns.member.3", "arn-3"}
    ] |> Encoder.to_query_string

    assert query == output
  end
end