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
      method:           :post,
      input_shape:      "DeleteRuleRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "DescribeEventBusRequest",
      output_shape:     "DescribeEventBusResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "DescribeRuleRequest",
      output_shape:     "DescribeRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "DisableRuleRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "EnableRuleRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "ListRuleNamesByTargetRequest",
      output_shape:     "ListRuleNamesByTargetResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "ListRulesRequest",
      output_shape:     "ListRulesResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "ListTargetsByRuleRequest",
      output_shape:     "ListTargetsByRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "PutEventsRequest",
      output_shape:     "PutEventsResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "PutPermissionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "PutRuleRequest",
      output_shape:     "PutRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "PutTargetsRequest",
      output_shape:     "PutTargetsResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "RemovePermissionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "RemoveTargetsRequest",
      output_shape:     "RemoveTargetsResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      method:           :post,
      input_shape:      "TestEventPatternRequest",
      output_shape:     "TestEventPatternResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"PutEventsResponse" => %{"members" => %{"Entries" => %{"shape" => "PutEventsResultEntryList"}, "FailedEntryCount" => %{"shape" => "Integer"}}, "type" => "structure"}, "PutTargetsResponse" => %{"members" => %{"FailedEntries" => %{"shape" => "PutTargetsResultEntryList"}, "FailedEntryCount" => %{"shape" => "Integer"}}, "type" => "structure"}, "PutEventsRequest" => %{"members" => %{"Entries" => %{"shape" => "PutEventsRequestEntryList"}}, "required" => ["Entries"], "type" => "structure"}, "PutRuleResponse" => %{"members" => %{"RuleArn" => %{"shape" => "RuleArn"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "ErrorMessage" => %{"type" => "string"}, "Target" => %{"members" => %{"Arn" => %{"shape" => "TargetArn"}, "EcsParameters" => %{"shape" => "EcsParameters"}, "Id" => %{"shape" => "TargetId"}, "Input" => %{"shape" => "TargetInput"}, "InputPath" => %{"shape" => "TargetInputPath"}, "InputTransformer" => %{"shape" => "InputTransformer"}, "KinesisParameters" => %{"shape" => "KinesisParameters"}, "RoleArn" => %{"shape" => "RoleArn"}, "RunCommandParameters" => %{"shape" => "RunCommandParameters"}}, "required" => ["Id", "Arn"], "type" => "structure"}, "TransformerInput" => %{"max" => 8192, "min" => 1, "type" => "string"}, "InternalException" => %{"exception" => true, "fault" => true, "members" => %{}, "type" => "structure"}, "RemoveTargetsResultEntryList" => %{"member" => %{"shape" => "RemoveTargetsResultEntry"}, "type" => "list"}, "RuleArn" => %{"max" => 1600, "min" => 1, "type" => "string"}, "ListTargetsByRuleResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Targets" => %{"shape" => "TargetList"}}, "type" => "structure"}, "RuleDescription" => %{"max" => 512, "type" => "string"}, "ListRulesRequest" => %{"members" => %{"Limit" => %{"shape" => "LimitMax100"}, "NamePrefix" => %{"shape" => "RuleName"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeRuleRequest" => %{"members" => %{"Name" => %{"shape" => "RuleName"}}, "required" => ["Name"], "type" => "structure"}, "EventId" => %{"type" => "string"}, "KinesisParameters" => %{"members" => %{"PartitionKeyPath" => %{"shape" => "TargetPartitionKeyPath"}}, "required" => ["PartitionKeyPath"], "type" => "structure"}, "LimitMin1" => %{"min" => 1, "type" => "integer"}, "ListRulesResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Rules" => %{"shape" => "RuleResponseList"}}, "type" => "structure"}, "ListRuleNamesByTargetRequest" => %{"members" => %{"Limit" => %{"shape" => "LimitMax100"}, "NextToken" => %{"shape" => "NextToken"}, "TargetArn" => %{"shape" => "TargetArn"}}, "required" => ["TargetArn"], "type" => "structure"}, "ListRuleNamesByTargetResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "RuleNames" => %{"shape" => "RuleNameList"}}, "type" => "structure"}, "InputTransformer" => %{"members" => %{"InputPathsMap" => %{"shape" => "TransformerPaths"}, "InputTemplate" => %{"shape" => "TransformerInput"}}, "required" => ["InputTemplate"], "type" => "structure"}, "DescribeEventBusRequest" => %{"members" => %{}, "type" => "structure"}, "TargetIdList" => %{"max" => 100, "member" => %{"shape" => "TargetId"}, "min" => 1, "type" => "list"}, "TargetPartitionKeyPath" => %{"max" => 256, "type" => "string"}, "TestEventPatternResponse" => %{"members" => %{"Result" => %{"shape" => "Boolean"}}, "type" => "structure"}, "RunCommandTargets" => %{"max" => 5, "member" => %{"shape" => "RunCommandTarget"}, "min" => 1, "type" => "list"}, "EcsParameters" => %{"members" => %{"TaskCount" => %{"shape" => "LimitMin1"}, "TaskDefinitionArn" => %{"shape" => "Arn"}}, "required" => ["TaskDefinitionArn"], "type" => "structure"}, "ErrorCode" => %{"type" => "string"}, "RuleState" => %{"enum" => ["ENABLED", "DISABLED"], "type" => "string"}, "EventPattern" => %{"max" => 2048, "type" => "string"}, "Action" => %{"max" => 64, "min" => 1, "pattern" => "events:[a-zA-Z]+", "type" => "string"}, "RunCommandTargetKey" => %{"max" => 128, "min" => 1, "pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$", "type" => "string"}, "EventResourceList" => %{"member" => %{"shape" => "EventResource"}, "type" => "list"}, "RoleArn" => %{"max" => 1600, "min" => 1, "type" => "string"}, "RuleNameList" => %{"member" => %{"shape" => "RuleName"}, "type" => "list"}, "PutPermissionRequest" => %{"members" => %{"Action" => %{"shape" => "Action"}, "Principal" => %{"shape" => "Principal"}, "StatementId" => %{"shape" => "StatementId"}}, "required" => ["Action", "Principal", "StatementId"], "type" => "structure"}, "StatementId" => %{"max" => 64, "min" => 1, "pattern" => "[a-zA-Z0-9-_]+", "type" => "string"}, "PutTargetsResultEntry" => %{"members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "ErrorMessage" => %{"shape" => "ErrorMessage"}, "TargetId" => %{"shape" => "TargetId"}}, "type" => "structure"}, "RuleResponseList" => %{"member" => %{"shape" => "Rule"}, "type" => "list"}, "RunCommandTargetValue" => %{"max" => 256, "min" => 1, "type" => "string"}, "DescribeEventBusResponse" => %{"members" => %{"Arn" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Policy" => %{"shape" => "String"}}, "type" => "structure"}, "EventTime" => %{"type" => "timestamp"}, "RemoveTargetsResponse" => %{"members" => %{"FailedEntries" => %{"shape" => "RemoveTargetsResultEntryList"}, "FailedEntryCount" => %{"shape" => "Integer"}}, "type" => "structure"}, "PolicyLengthExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RemoveTargetsResultEntry" => %{"members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "ErrorMessage" => %{"shape" => "ErrorMessage"}, "TargetId" => %{"shape" => "TargetId"}}, "type" => "structure"}, "ScheduleExpression" => %{"max" => 256, "type" => "string"}, "RunCommandTarget" => %{"members" => %{"Key" => %{"shape" => "RunCommandTargetKey"}, "Values" => %{"shape" => "RunCommandTargetValues"}}, "required" => ["Key", "Values"], "type" => "structure"}, "LimitMax100" => %{"max" => 100, "min" => 1, "type" => "integer"}, "RunCommandParameters" => %{"members" => %{"RunCommandTargets" => %{"shape" => "RunCommandTargets"}}, "required" => ["RunCommandTargets"], "type" => "structure"}, "Arn" => %{"max" => 1600, "min" => 1, "type" => "string"}, "PutEventsResultEntry" => %{"members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "ErrorMessage" => %{"shape" => "ErrorMessage"}, "EventId" => %{"shape" => "EventId"}}, "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TargetId" => %{"max" => 64, "min" => 1, "pattern" => "[\\.\\-_A-Za-z0-9]+", "type" => "string"}, "PutRuleRequest" => %{"members" => %{"Description" => %{"shape" => "RuleDescription"}, "EventPattern" => %{"shape" => "EventPattern"}, "Name" => %{"shape" => "RuleName"}, "RoleArn" => %{"shape" => "RoleArn"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "State" => %{"shape" => "RuleState"}}, "required" => ["Name"], "type" => "structure"}, "PutTargetsResultEntryList" => %{"member" => %{"shape" => "PutTargetsResultEntry"}, "type" => "list"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PutEventsRequestEntryList" => %{"max" => 10, "member" => %{"shape" => "PutEventsRequestEntry"}, "min" => 1, "type" => "list"}, "PutTargetsRequest" => %{"members" => %{"Rule" => %{"shape" => "RuleName"}, "Targets" => %{"shape" => "TargetList"}}, "required" => ["Rule", "Targets"], "type" => "structure"}, "RunCommandTargetValues" => %{"max" => 50, "member" => %{"shape" => "RunCommandTargetValue"}, "min" => 1, "type" => "list"}, "RuleName" => %{"max" => 64, "min" => 1, "pattern" => "[\\.\\-_A-Za-z0-9]+", "type" => "string"}, "TransformerPaths" => %{"key" => %{"shape" => "InputTransformerPathKey"}, "max" => 10, "type" => "map", "value" => %{"shape" => "TargetInputPath"}}, "InputTransformerPathKey" => %{"max" => 256, "min" => 1, "pattern" => "[A-Za-z0-9\\_\\-]+", "type" => "string"}, "TargetInput" => %{"max" => 8192, "type" => "string"}, "Principal" => %{"max" => 12, "min" => 1, "pattern" => "(\\d{12}|\\*)", "type" => "string"}, "DeleteRuleRequest" => %{"members" => %{"Name" => %{"shape" => "RuleName"}}, "required" => ["Name"], "type" => "structure"}, "RemovePermissionRequest" => %{"members" => %{"StatementId" => %{"shape" => "StatementId"}}, "required" => ["StatementId"], "type" => "structure"}, "TestEventPatternRequest" => %{"members" => %{"Event" => %{"shape" => "String"}, "EventPattern" => %{"shape" => "EventPattern"}}, "required" => ["EventPattern", "Event"], "type" => "structure"}, "TargetInputPath" => %{"max" => 256, "type" => "string"}, "Rule" => %{"members" => %{"Arn" => %{"shape" => "RuleArn"}, "Description" => %{"shape" => "RuleDescription"}, "EventPattern" => %{"shape" => "EventPattern"}, "Name" => %{"shape" => "RuleName"}, "RoleArn" => %{"shape" => "RoleArn"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "State" => %{"shape" => "RuleState"}}, "type" => "structure"}, "TargetArn" => %{"max" => 1600, "min" => 1, "type" => "string"}, "EventResource" => %{"type" => "string"}, "PutEventsResultEntryList" => %{"member" => %{"shape" => "PutEventsResultEntry"}, "type" => "list"}, "EnableRuleRequest" => %{"members" => %{"Name" => %{"shape" => "RuleName"}}, "required" => ["Name"], "type" => "structure"}, "ListTargetsByRuleRequest" => %{"members" => %{"Limit" => %{"shape" => "LimitMax100"}, "NextToken" => %{"shape" => "NextToken"}, "Rule" => %{"shape" => "RuleName"}}, "required" => ["Rule"], "type" => "structure"}, "RemoveTargetsRequest" => %{"members" => %{"Ids" => %{"shape" => "TargetIdList"}, "Rule" => %{"shape" => "RuleName"}}, "required" => ["Rule", "Ids"], "type" => "structure"}, "TargetList" => %{"max" => 100, "member" => %{"shape" => "Target"}, "min" => 1, "type" => "list"}, "InvalidEventPatternException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "DisableRuleRequest" => %{"members" => %{"Name" => %{"shape" => "RuleName"}}, "required" => ["Name"], "type" => "structure"}, "NextToken" => %{"max" => 2048, "min" => 1, "type" => "string"}, "ConcurrentModificationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeRuleResponse" => %{"members" => %{"Arn" => %{"shape" => "RuleArn"}, "Description" => %{"shape" => "RuleDescription"}, "EventPattern" => %{"shape" => "EventPattern"}, "Name" => %{"shape" => "RuleName"}, "RoleArn" => %{"shape" => "RoleArn"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "State" => %{"shape" => "RuleState"}}, "type" => "structure"}, "PutEventsRequestEntry" => %{"members" => %{"Detail" => %{"shape" => "String"}, "DetailType" => %{"shape" => "String"}, "Resources" => %{"shape" => "EventResourceList"}, "Source" => %{"shape" => "String"}, "Time" => %{"shape" => "EventTime"}}, "type" => "structure"}}
  end
end