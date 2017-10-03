defmodule Baiji.CloudwatchEvents do
  @moduledoc """
  Amazon CloudWatch Events helps you to respond to state changes in your AWS
  resources. When your resources change state, they automatically send events
  into an event stream. You can create rules that match selected events in
  the stream and route them to targets to take action. You can also use rules
  to take action on a pre-determined schedule. For example, you can configure
  rules to:

  <ul> <li> Automatically invoke an AWS Lambda function to update DNS entries
  when an event notifies you that Amazon EC2 instance enters the running
  state.

  </li> <li> Direct specific API records from CloudTrail to an Amazon Kinesis
  stream for detailed analysis of potential security or availability risks.

  </li> <li> Periodically invoke a built-in target to create a snapshot of an
  Amazon EBS volume.

  </li> </ul> For more information about the features of Amazon CloudWatch
  Events, see the [Amazon CloudWatch Events User
  Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events).
  """
  
  @doc """
  Deletes the specified rule.

  You must remove all targets from a rule using `RemoveTargets` before you
  can delete the rule.

  When you delete a rule, incoming events might continue to match to the
  deleted rule. Please allow a short period of time for changes to take
  effect.
  """
  def delete_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRule",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Displays the external AWS accounts that are permitted to write events to
  your account using your account's event bus, and the associated policy. To
  enable your account to receive events from other accounts, use
  `PutPermission`.
  """
  def describe_event_bus(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEventBus",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Describes the specified rule.
  """
  def describe_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeRule",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Disables the specified rule. A disabled rule won't match any events, and
  won't self-trigger if it has a schedule expression.

  When you disable a rule, incoming events might continue to match to the
  disabled rule. Please allow a short period of time for changes to take
  effect.
  """
  def disable_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableRule",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Enables the specified rule. If the rule does not exist, the operation
  fails.

  When you enable a rule, incoming events might not immediately start
  matching to a newly enabled rule. Please allow a short period of time for
  changes to take effect.
  """
  def enable_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableRule",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Lists the rules for the specified target. You can see which of the rules in
  Amazon CloudWatch Events can invoke a specific target in your account.
  """
  def list_rule_names_by_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRuleNamesByTarget",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Lists your Amazon CloudWatch Events rules. You can either list all the
  rules or you can provide a prefix to match to the rule names.
  """
  def list_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRules",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Lists the targets assigned to the specified rule.
  """
  def list_targets_by_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTargetsByRule",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Sends custom events to Amazon CloudWatch Events so that they can be matched
  to rules.
  """
  def put_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutEvents",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Running `PutPermission` permits the specified AWS account to put events to
  your account's default *event bus*. CloudWatch Events rules in your account
  are triggered by these events arriving to your default event bus.

  For another account to send events to your account, that external account
  must have a CloudWatch Events rule with your account's default event bus as
  a target.

  To enable multiple AWS accounts to put events to your default event bus,
  run `PutPermission` once for each of these accounts.

  The permission policy on the default event bus cannot exceed 10KB in size.
  """
  def put_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutPermission",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Creates or updates the specified rule. Rules are enabled by default, or
  based on value of the state. You can disable a rule using `DisableRule`.

  When you create or update a rule, incoming events might not immediately
  start matching to new or updated rules. Please allow a short period of time
  for changes to take effect.

  A rule must contain at least an EventPattern or ScheduleExpression. Rules
  with EventPatterns are triggered when a matching event is observed. Rules
  with ScheduleExpressions self-trigger based on the given schedule. A rule
  can have both an EventPattern and a ScheduleExpression, in which case the
  rule triggers on matching events as well as on a schedule.

  Most services in AWS treat : or / as the same character in Amazon Resource
  Names (ARNs). However, CloudWatch Events uses an exact match in event
  patterns and rules. Be sure to use the correct ARN characters when creating
  event patterns so that they match the ARN syntax in the event you want to
  match.
  """
  def put_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutRule",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Adds the specified targets to the specified rule, or updates the targets if
  they are already associated with the rule.

  Targets are the resources that are invoked when a rule is triggered.

  You can configure the following as targets for CloudWatch Events:

  <ul> <li> EC2 instances

  </li> <li> AWS Lambda functions

  </li> <li> Streams in Amazon Kinesis Streams

  </li> <li> Delivery streams in Amazon Kinesis Firehose

  </li> <li> Amazon ECS tasks

  </li> <li> AWS Step Functions state machines

  </li> <li> Pipelines in Amazon Code Pipeline

  </li> <li> Amazon Inspector assessment templates

  </li> <li> Amazon SNS topics

  </li> <li> Amazon SQS queues

  </li> <li> The default event bus of another AWS account

  </li> </ul> Note that creating rules with built-in targets is supported
  only in the AWS Management Console.

  For some target types, `PutTargets` provides target-specific parameters. If
  the target is an Amazon Kinesis stream, you can optionally specify which
  shard the event goes to by using the `KinesisParameters` argument. To
  invoke a command on multiple EC2 instances with one rule, you can use the
  `RunCommandParameters` field.

  To be able to make API calls against the resources that you own, Amazon
  CloudWatch Events needs the appropriate permissions. For AWS Lambda and
  Amazon SNS resources, CloudWatch Events relies on resource-based policies.
  For EC2 instances, Amazon Kinesis streams, and AWS Step Functions state
  machines, CloudWatch Events relies on IAM roles that you specify in the
  `RoleARN` argument in `PutTargets`. For more information, see
  [Authentication and Access
  Control](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/auth-and-access-control-cwe.html)
  in the *Amazon CloudWatch Events User Guide*.

  If another AWS account is in the same region and has granted you permission
  (using `PutPermission`), you can send events to that account by setting
  that account's event bus as a target of the rules in your account. To send
  the matched events to the other account, specify that account's event bus
  as the `Arn` when you run `PutTargets`. If your account sends events to
  another account, your account is charged for each sent event. Each event
  sent to antoher account is charged as a custom event. The account receiving
  the event is not charged. For more information on pricing, see [Amazon
  CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).

  For more information about enabling cross-account events, see
  `PutPermission`.

  **Input**, **InputPath** and **InputTransformer** are mutually exclusive
  and optional parameters of a target. When a rule is triggered due to a
  matched event:

  <ul> <li> If none of the following arguments are specified for a target,
  then the entire event is passed to the target in JSON form (unless the
  target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing
  from the event is passed to the target).

  </li> <li> If **Input** is specified in the form of valid JSON, then the
  matched event is overridden with this constant.

  </li> <li> If **InputPath** is specified in the form of JSONPath (for
  example, `$.detail`), then only the part of the event specified in the path
  is passed to the target (for example, only the detail part of the event is
  passed).

  </li> <li> If **InputTransformer** is specified, then one or more specified
  JSONPaths are extracted from the event and used as values in a template
  that you specify as the input to the target.

  </li> </ul> When you specify `Input`, `InputPath`, or `InputTransformer`,
  you must use JSON dot notation, not bracket notation.

  When you add targets to a rule and the associated rule triggers soon after,
  new or updated targets might not be immediately invoked. Please allow a
  short period of time for changes to take effect.

  This action can partially fail if too many requests are made at the same
  time. If that happens, `FailedEntryCount` is non-zero in the response and
  each entry in `FailedEntries` provides the ID of the failed target and the
  error code.
  """
  def put_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutTargets",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Revokes the permission of another AWS account to be able to put events to
  your default event bus. Specify the account to revoke by the `StatementId`
  value that you associated with the account when you granted it permission
  with `PutPermission`. You can find the `StatementId` by using
  `DescribeEventBus`.
  """
  def remove_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemovePermission",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Removes the specified targets from the specified rule. When the rule is
  triggered, those targets are no longer be invoked.

  When you remove a target, when the associated rule triggers, removed
  targets might continue to be invoked. Please allow a short period of time
  for changes to take effect.

  This action can partially fail if too many requests are made at the same
  time. If that happens, `FailedEntryCount` is non-zero in the response and
  each entry in `FailedEntries` provides the ID of the failed target and the
  error code.
  """
  def remove_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTargets",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
  @doc """
  Tests whether the specified event pattern matches the provided event.

  Most services in AWS treat : or / as the same character in Amazon Resource
  Names (ARNs). However, CloudWatch Events uses an exact match in event
  patterns and rules. Be sure to use the correct ARN characters when creating
  event patterns so that they match the ARN syntax in the event you want to
  match.
  """
  def test_event_pattern(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "events",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TestEventPattern",
      
      target_prefix:    "AWSEvents",
      
      endpoint_prefix:  "events",
      type:             :json,
      version:          "2015-10-07",
      method:           :post
    }
  end
  
end