defmodule Baiji.ACMTest do
  use ExUnit.Case, async: true
  alias Baiji.ACM
  alias Baiji.Request.Validator


  test "accepts an operation with valid inputs" do
    refute Validator.valid?(ACM.add_tags_to_certificate())
    refute Validator.valid?(ACM.add_tags_to_certificate(%{"CertificateArn" => "abcdefgh"}))
  end
end