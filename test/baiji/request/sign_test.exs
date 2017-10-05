defmodule Baiji.Request.SignTest do
  use ExUnit.Case, async: true
  alias Baiji.{
    Request,
    Request.Sign
  }

  setup do
    operation = Baiji.EC2.describe_instances
    |> Map.put(:access_key_id, "AKIAIOSFODNN7EXAMPLE")
    |> Map.put(:secret_access_key, "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY")

    request = operation
    |> Request.new
    |> Request.add_headers

    [operation: operation, request: request]
  end

  test "add date headers" do
    assert Sign.add_date_header([], Timex.from_unix(0)) == [
      {"X-Amz-Date", "19700101T000000Z"}
    ]
  end

  test "add security token" do
    assert Sign.add_security_token([], "ABCDEFG") == [
      {"X-Amz-Security-Token", "ABCDEFG"}
    ]
    assert Sign.add_security_token([], nil) == []
  end

  test "correctly generates canonical headers", context do
    headers = Sign.canonicalize_headers(context[:request].headers)

    assert headers == Enum.join([
      "host:ec2.us-east-1.amazonaws.com\n"
    ])
  end

  test "correctly generates canonical query string" do
    assert Sign.canonical_query_string(nil) == ""
  end

  test "correctly generates canonical request" do
    assert Sign.canonical_request(
      "https://iam.amazonaws.com/?Action=ListUsers&Version=2010-05-08", 
      :get, 
      [
        {"Host", "iam.amazonaws.com"}, 
        {"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"},
        {"X-Amz-Date", "20150830T123600Z"}
      ], 
      ""
    ) == Enum.join([
      "GET",
      "/",
      "Action=ListUsers&Version=2010-05-08",
      "content-type:application/x-www-form-urlencoded; charset=utf-8",
      "host:iam.amazonaws.com",
      "x-amz-date:20150830T123600Z",
      "",
      "content-type;host;x-amz-date",
      "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    ], "\n")
  end

  test "correctly generates string-to-sign" do
    time              = Timex.parse!("20150830T123600Z", "{YYYY}{0M}{0D}T{h24}{m}{s}Z")
    canonical_request = Sign.canonical_request(
      "https://iam.amazonaws.com/?Action=ListUsers&Version=2010-05-08", 
      :get, 
      [
        {"Host", "iam.amazonaws.com"}, 
        {"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"},
        {"X-Amz-Date", "20150830T123600Z"}
      ], 
      ""
    )

    assert Sign.string_to_sign(time, "us-east-1", "iam", canonical_request) == Enum.join([
      "AWS4-HMAC-SHA256",
      "20150830T123600Z",
      "20150830/us-east-1/iam/aws4_request",
      "f536975d06c0309214f805bb90ccff089219ecd68b2577efef23edd43b7e1a59"
    ], "\n")
  end

  test "correctly generates signing key" do
    time = Timex.parse!("20150830", "{YYYY}{0M}{0D}")
    signing_key = Sign.signing_key("wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY", time, "us-east-1", "iam")
    assert Baiji.Core.Utilities.hexdigest(signing_key) == "c4afb1cc5771d871763a393e44b703571b55cc28424d1a5e86da6ed3c154a4b9"
  end

  test "correctly signs request" do
    
  end
end