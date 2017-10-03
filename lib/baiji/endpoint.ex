defmodule Baiji.Endpoint do
  @moduledoc """
  Describes various attributes of a service endpoint
  """
  defstruct service:          nil,
            target_prefix:    nil,
            endpoint_prefix:  nil,
            type:             nil,
            version:          nil,
            shapes:           %{}
end