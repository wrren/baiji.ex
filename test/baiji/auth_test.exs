defmodule Baiji.AuthTest do
  use ExUnit.Case, async: true

  alias Baiji.{
    Auth,
    Operation
  }

  test "verify function raises if access key id is missing" do
    assert_raise(RuntimeError, fn ->
      Auth.verify(%Operation{secret_access_key: "some content"})
    end)
  end

  test "verify function raises if secret access key is missing" do
    assert_raise(RuntimeError, fn ->
      Auth.verify(%Operation{access_key_id: "some content"})
    end)
  end

  test "verify function doesn't raise if access key id and secret access key are present" do
    assert Auth.verify(%Operation{access_key_id: "access_key", secret_access_key: "secret"}) == 
      %Operation{access_key_id: "access_key", secret_access_key: "secret"}
  end
end