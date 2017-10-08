# Baiji

AWS SDK for Elixir.

## Installation

The package can be installed by adding `baiji` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:baiji, "~> 0.6.4"}
  ]
end
```

## Usage

Baiji is modeled after the [ExAWS](https://github.com/CargoSense/ex_aws) and [aws-elixir](https://github.com/jkakar/aws-elixir) libraries and attempts to blend the best aspects of both. ExAWS has a great interface that's incredibly easy to us, and can extract credentials from instance metadata if your application is deployed onto AWS assets such as EC2 or ECS. AWS-Elixir provides greater service coverage that ExAWS through the use of code generation, however it currently cannot handle services that respond with XML.

Baiji provides total coverage of AWS services using a code generator similar to that of AWS-Elixir while allowing for the use of XML-based services. Baiji service modules include shape information from the AWS Golang SDK's API JSON descriptors, allowing it to validate inputs and to properly format outputs. Baiji also provides flexible credential acquisition using an approach similar to that of ExAWS, and supports the use of STS security tokens.

### Configuration

Add the following to your config.exs file:

```elixir
config :baiji,
  access_key_id: [{:system, "AWS_ACCESS_KEY_ID"}, :instance_role],
  secret_access_key: [{:system, "AWS_SECRET_ACCESS_KEY"}, :instance_role],
  security_token: [{:system, "AWS_SECURITY_TOKEN"}]
```

### Calling Services

```elixir
iex> Baiji.EC2.describe_instances
...> |> Baiji.perform

{:ok, %{"reservationSet" => [
  %{"reservationId" => ...}
  ...
]}}

```

All services return responses as maps and accept inputs in the same way. Experiment with services using IEx in order to understand what outputs look like.

## License

© 2015-2017 Warren Kenny. See LICENSE file for details.