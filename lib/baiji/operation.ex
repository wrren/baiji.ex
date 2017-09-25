defmodule Baiji.Operation do
  defstruct input:              %{},        # Operation inputs (POST/PUT body, etc)
            options:            [],         # Additional options applied to the operation
            action:             nil,        # Action name "DescribeInstances", etc.
            type:               :unknown,   # Action type (xml, json, rest-json, rest-xml, etc.)
            method:             :unknown,   # HTTP Method
            access_key_id:      nil,        # AWS access key ID
            secret_access_key:  nil,        # AWS secret access key
            security_token:     nil         # AWS STS security token (optional)
end