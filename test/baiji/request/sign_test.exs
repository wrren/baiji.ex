defmodule Baiji.Request.SignTest do
  use ExUnit.Case, async: true
  alias Baiji.{
    Operation,
    Request,
    Request.Sign
  }

  setup do
    operation = %Operation{
      region:             "us-east-1", 
      endpoint:           "/", 
      action:             "DescribeInstances",
      method:             :post, 
      type:               :ec2,
      target_prefix:      "",
      service:            "ec2", 
      access_key_id:      "AKIAIOSFODNN7EXAMPLE",
      secret_access_key:  "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"}
    
    request = operation
    |> Request.new
    |> Request.add_headers

    [operation: operation, request: request]
  end

  test "canonical header generation", context do
    headers = Sign.canonicalize_headers(context[:request].headers)

    assert headers == Enum.join([
      "content-type:application/x-www-form-urlencoded; charset=utf-8\n",
      "host:ec2.us-east-1.amazonaws.com\n",
      "x-amz-target:.DescribeInstances\n"
    ])
  end
end