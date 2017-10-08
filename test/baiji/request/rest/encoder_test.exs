defmodule Baiji.Request.REST.EncoderTest do
  use ExUnit.Case, async: true

  alias Baiji.Request.REST.Encoder

  test "correctly generates a path string using an input map" do
    assert Encoder.encode(%{"foo" => "bar", "bar" => "baz"}, "/{foo}/name/{bar}") == "/bar/name/baz"
  end

  test "correctly generates a path, excluding inputs that aren't URI parameters" do
    operation = Baiji.EFS.modify_mount_target_security_groups(%{
      "MountTargetId" => "12345",
      "SecurityGroups" => [
        "sg-1",
        "sg-2"
      ]
    })

    assert Encoder.encode(operation) == "/2015-02-01/mount-targets/12345/security-groups"
  end
end