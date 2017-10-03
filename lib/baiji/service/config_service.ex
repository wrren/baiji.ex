defmodule Baiji.ConfigService do
  @moduledoc """
  AWS Config

  AWS Config provides a way to keep track of the configurations of all the
  AWS resources associated with your AWS account. You can use AWS Config to
  get the current and historical configurations of each AWS resource and also
  to get information about the relationship between the resources. An AWS
  resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic
  Block Store (EBS) volume, an Elastic network Interface (ENI), or a security
  group. For a complete list of resources currently supported by AWS Config,
  see [Supported AWS
  Resources](http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).

  You can access and manage AWS Config through the AWS Management Console,
  the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS
  SDKs for AWS Config

  This reference guide contains documentation for the AWS Config API and the
  AWS CLI commands that you can use to manage AWS Config.

  The AWS Config API uses the Signature Version 4 protocol for signing
  requests. For more information about how to sign a request with this
  protocol, see [Signature Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  For detailed information about AWS Config features and their associated
  actions or commands, as well as how to work with AWS Management Console,
  see [What Is AWS
  Config?](http://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
  in the *AWS Config Developer Guide*.
  """

  @doc """
  Deletes the specified AWS Config rule and all of its evaluation results.

  AWS Config sets the state of a rule to `DELETING` until the deletion is
  complete. You cannot update a rule while it is in this state. If you make a
  `PutConfigRule` or `DeleteConfigRule` request for the rule, you will
  receive a `ResourceInUseException`.

  You can check the state of a rule by using the `DescribeConfigRules`
  request.
  """
  def delete_config_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteConfigRule",
      method:           :post,
      input_shape:      "DeleteConfigRuleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the configuration recorder.

  After the configuration recorder is deleted, AWS Config will not record
  resource configuration changes until you create a new configuration
  recorder.

  This action does not delete the configuration information that was
  previously recorded. You will be able to access the previously recorded
  information by using the `GetResourceConfigHistory` action, but you will
  not be able to access this information in the AWS Config console until you
  create a new configuration recorder.
  """
  def delete_configuration_recorder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteConfigurationRecorder",
      method:           :post,
      input_shape:      "DeleteConfigurationRecorderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the delivery channel.

  Before you can delete the delivery channel, you must stop the configuration
  recorder by using the `StopConfigurationRecorder` action.
  """
  def delete_delivery_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDeliveryChannel",
      method:           :post,
      input_shape:      "DeleteDeliveryChannelRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the evaluation results for the specified Config rule. You can
  specify one Config rule per request. After you delete the evaluation
  results, you can call the `StartConfigRulesEvaluation` API to start
  evaluating your AWS resources against the rule.
  """
  def delete_evaluation_results(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteEvaluationResults",
      method:           :post,
      input_shape:      "DeleteEvaluationResultsRequest",
      output_shape:     "DeleteEvaluationResultsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Schedules delivery of a configuration snapshot to the Amazon S3 bucket in
  the specified delivery channel. After the delivery has started, AWS Config
  sends following notifications using an Amazon SNS topic that you have
  specified.

  <ul> <li> Notification of starting the delivery.

  </li> <li> Notification of delivery completed, if the delivery was
  successfully completed.

  </li> <li> Notification of delivery failure, if the delivery failed to
  complete.

  </li> </ul>
  """
  def deliver_config_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeliverConfigSnapshot",
      method:           :post,
      input_shape:      "DeliverConfigSnapshotRequest",
      output_shape:     "DeliverConfigSnapshotResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Indicates whether the specified AWS Config rules are compliant. If a rule
  is noncompliant, this action returns the number of AWS resources that do
  not comply with the rule.

  A rule is compliant if all of the evaluated resources comply with it, and
  it is noncompliant if any of these resources do not comply.

  If AWS Config has no current evaluation results for the rule, it returns
  `INSUFFICIENT_DATA`. This result might indicate one of the following
  conditions:

  <ul> <li> AWS Config has never invoked an evaluation for the rule. To check
  whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get
  the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.

  </li> <li> The rule's AWS Lambda function is failing to send evaluation
  results to AWS Config. Verify that the role that you assigned to your
  configuration recorder includes the `config:PutEvaluations` permission. If
  the rule is a custom rule, verify that the AWS Lambda execution role
  includes the `config:PutEvaluations` permission.

  </li> <li> The rule's AWS Lambda function has returned `NOT_APPLICABLE` for
  all evaluation results. This can occur if the resources were deleted or
  removed from the rule's scope.

  </li> </ul>
  """
  def describe_compliance_by_config_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeComplianceByConfigRule",
      method:           :post,
      input_shape:      "DescribeComplianceByConfigRuleRequest",
      output_shape:     "DescribeComplianceByConfigRuleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Indicates whether the specified AWS resources are compliant. If a resource
  is noncompliant, this action returns the number of AWS Config rules that
  the resource does not comply with.

  A resource is compliant if it complies with all the AWS Config rules that
  evaluate it. It is noncompliant if it does not comply with one or more of
  these rules.

  If AWS Config has no current evaluation results for the resource, it
  returns `INSUFFICIENT_DATA`. This result might indicate one of the
  following conditions about the rules that evaluate the resource:

  <ul> <li> AWS Config has never invoked an evaluation for the rule. To check
  whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get
  the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.

  </li> <li> The rule's AWS Lambda function is failing to send evaluation
  results to AWS Config. Verify that the role that you assigned to your
  configuration recorder includes the `config:PutEvaluations` permission. If
  the rule is a custom rule, verify that the AWS Lambda execution role
  includes the `config:PutEvaluations` permission.

  </li> <li> The rule's AWS Lambda function has returned `NOT_APPLICABLE` for
  all evaluation results. This can occur if the resources were deleted or
  removed from the rule's scope.

  </li> </ul>
  """
  def describe_compliance_by_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeComplianceByResource",
      method:           :post,
      input_shape:      "DescribeComplianceByResourceRequest",
      output_shape:     "DescribeComplianceByResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns status information for each of your AWS managed Config rules. The
  status includes information such as the last time AWS Config invoked the
  rule, the last time AWS Config failed to invoke the rule, and the related
  error for the last failure.
  """
  def describe_config_rule_evaluation_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConfigRuleEvaluationStatus",
      method:           :post,
      input_shape:      "DescribeConfigRuleEvaluationStatusRequest",
      output_shape:     "DescribeConfigRuleEvaluationStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns details about your AWS Config rules.
  """
  def describe_config_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConfigRules",
      method:           :post,
      input_shape:      "DescribeConfigRulesRequest",
      output_shape:     "DescribeConfigRulesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the current status of the specified configuration recorder. If a
  configuration recorder is not specified, this action returns the status of
  all configuration recorder associated with the account.

  <note> Currently, you can specify only one configuration recorder per
  region in your account.

  </note>
  """
  def describe_configuration_recorder_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConfigurationRecorderStatus",
      method:           :post,
      input_shape:      "DescribeConfigurationRecorderStatusRequest",
      output_shape:     "DescribeConfigurationRecorderStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the details for the specified configuration recorders. If the
  configuration recorder is not specified, this action returns the details
  for all configuration recorders associated with the account.

  <note> Currently, you can specify only one configuration recorder per
  region in your account.

  </note>
  """
  def describe_configuration_recorders(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConfigurationRecorders",
      method:           :post,
      input_shape:      "DescribeConfigurationRecordersRequest",
      output_shape:     "DescribeConfigurationRecordersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the current status of the specified delivery channel. If a delivery
  channel is not specified, this action returns the current status of all
  delivery channels associated with the account.

  <note> Currently, you can specify only one delivery channel per region in
  your account.

  </note>
  """
  def describe_delivery_channel_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDeliveryChannelStatus",
      method:           :post,
      input_shape:      "DescribeDeliveryChannelStatusRequest",
      output_shape:     "DescribeDeliveryChannelStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns details about the specified delivery channel. If a delivery channel
  is not specified, this action returns the details of all delivery channels
  associated with the account.

  <note> Currently, you can specify only one delivery channel per region in
  your account.

  </note>
  """
  def describe_delivery_channels(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDeliveryChannels",
      method:           :post,
      input_shape:      "DescribeDeliveryChannelsRequest",
      output_shape:     "DescribeDeliveryChannelsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the evaluation results for the specified AWS Config rule. The
  results indicate which AWS resources were evaluated by the rule, when each
  resource was last evaluated, and whether each resource complies with the
  rule.
  """
  def get_compliance_details_by_config_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetComplianceDetailsByConfigRule",
      method:           :post,
      input_shape:      "GetComplianceDetailsByConfigRuleRequest",
      output_shape:     "GetComplianceDetailsByConfigRuleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the evaluation results for the specified AWS resource. The results
  indicate which AWS Config rules were used to evaluate the resource, when
  each rule was last used, and whether the resource complies with each rule.
  """
  def get_compliance_details_by_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetComplianceDetailsByResource",
      method:           :post,
      input_shape:      "GetComplianceDetailsByResourceRequest",
      output_shape:     "GetComplianceDetailsByResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the number of AWS Config rules that are compliant and noncompliant,
  up to a maximum of 25 for each.
  """
  def get_compliance_summary_by_config_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetComplianceSummaryByConfigRule",
      method:           :post,
      input_shape:      "",
      output_shape:     "GetComplianceSummaryByConfigRuleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the number of resources that are compliant and the number that are
  noncompliant. You can specify one or more resource types to get these
  numbers for each resource type. The maximum number returned is 100.
  """
  def get_compliance_summary_by_resource_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetComplianceSummaryByResourceType",
      method:           :post,
      input_shape:      "GetComplianceSummaryByResourceTypeRequest",
      output_shape:     "GetComplianceSummaryByResourceTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the resource types, the number of each resource type, and the total
  number of resources that AWS Config is recording in this region for your
  AWS account.

  <p class="title"> **Example**

  <ol> <li> AWS Config is recording three resource types in the US East
  (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3
  buckets.

  </li> <li> You make a call to the `GetDiscoveredResourceCounts` action and
  specify that you want all resource types.

  </li> <li> AWS Config returns the following:

  <ul> <li> The resource types (EC2 instances, IAM users, and S3 buckets)

  </li> <li> The number of each resource type (25, 20, and 15)

  </li> <li> The total number of all resources (60)

  </li> </ul> </li> </ol> The response is paginated. By default, AWS Config
  lists 100 `ResourceCount` objects on each page. You can customize this
  number with the `limit` parameter. The response includes a `nextToken`
  string. To get the next page of results, run the request again and specify
  the string for the `nextToken` parameter.

  <note> If you make a call to the `GetDiscoveredResourceCounts` action, you
  may not immediately receive resource counts in the following situations:

  <ul> <li> You are a new AWS Config customer

  </li> <li> You just enabled resource recording

  </li> </ul> It may take a few minutes for AWS Config to record and count
  your resources. Wait a few minutes and then retry the
  `GetDiscoveredResourceCounts` action.

  </note>
  """
  def get_discovered_resource_counts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDiscoveredResourceCounts",
      method:           :post,
      input_shape:      "GetDiscoveredResourceCountsRequest",
      output_shape:     "GetDiscoveredResourceCountsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of configuration items for the specified resource. The list
  contains details about each state of the resource during the specified time
  interval.

  The response is paginated. By default, AWS Config returns a limit of 10
  configuration items per page. You can customize this number with the
  `limit` parameter. The response includes a `nextToken` string. To get the
  next page of results, run the request again and specify the string for the
  `nextToken` parameter.

  <note> Each call to the API is limited to span a duration of seven days. It
  is likely that the number of records returned is smaller than the specified
  `limit`. In such cases, you can make another call, using the `nextToken`.

  </note>
  """
  def get_resource_config_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetResourceConfigHistory",
      method:           :post,
      input_shape:      "GetResourceConfigHistoryRequest",
      output_shape:     "GetResourceConfigHistoryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Accepts a resource type and returns a list of resource identifiers for the
  resources of that type. A resource identifier includes the resource type,
  ID, and (if available) the custom resource name. The results consist of
  resources that AWS Config has discovered, including those that AWS Config
  is not currently recording. You can narrow the results to include only
  resources that have specific resource IDs or a resource name.

  <note> You can specify either resource IDs or a resource name but not both
  in the same request.

  </note> The response is paginated. By default, AWS Config lists 100
  resource identifiers on each page. You can customize this number with the
  `limit` parameter. The response includes a `nextToken` string. To get the
  next page of results, run the request again and specify the string for the
  `nextToken` parameter.
  """
  def list_discovered_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDiscoveredResources",
      method:           :post,
      input_shape:      "ListDiscoveredResourcesRequest",
      output_shape:     "ListDiscoveredResourcesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds or updates an AWS Config rule for evaluating whether your AWS
  resources comply with your desired configurations.

  You can use this action for custom Config rules and AWS managed Config
  rules. A custom Config rule is a rule that you develop and maintain. An AWS
  managed Config rule is a customizable, predefined rule that AWS Config
  provides.

  If you are adding a new custom Config rule, you must first create the AWS
  Lambda function that the rule invokes to evaluate your resources. When you
  use the `PutConfigRule` action to add the rule to AWS Config, you must
  specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the
  function. Specify the ARN for the `SourceIdentifier` key. This key is part
  of the `Source` object, which is part of the `ConfigRule` object.

  If you are adding an AWS managed Config rule, specify the rule's identifier
  for the `SourceIdentifier` key. To reference AWS managed Config rule
  identifiers, see [About AWS Managed Config
  Rules](http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).

  For any new rule that you add, specify the `ConfigRuleName` in the
  `ConfigRule` object. Do not specify the `ConfigRuleArn` or the
  `ConfigRuleId`. These values are generated by AWS Config for new rules.

  If you are updating a rule that you added previously, you can specify the
  rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the
  `ConfigRule` data type that you use in this request.

  The maximum number of rules that AWS Config supports is 50.

  For more information about requesting a rule limit increase, see [AWS
  Config
  Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config)
  in the *AWS General Reference Guide*.

  For more information about developing and using AWS Config rules, see
  [Evaluating AWS Resource Configurations with AWS
  Config](http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html)
  in the *AWS Config Developer Guide*.
  """
  def put_config_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutConfigRule",
      method:           :post,
      input_shape:      "PutConfigRuleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new configuration recorder to record the selected resource
  configurations.

  You can use this action to change the role `roleARN` and/or the
  `recordingGroup` of an existing recorder. To change the role, call the
  action on the existing configuration recorder and specify a role.

  <note> Currently, you can specify only one configuration recorder per
  region in your account.

  If `ConfigurationRecorder` does not have the **recordingGroup** parameter
  specified, the default is to record all supported resource types.

  </note>
  """
  def put_configuration_recorder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutConfigurationRecorder",
      method:           :post,
      input_shape:      "PutConfigurationRecorderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a delivery channel object to deliver configuration information to
  an Amazon S3 bucket and Amazon SNS topic.

  Before you can create a delivery channel, you must create a configuration
  recorder.

  You can use this action to change the Amazon S3 bucket or an Amazon SNS
  topic of the existing delivery channel. To change the Amazon S3 bucket or
  an Amazon SNS topic, call this action and specify the changed values for
  the S3 bucket and the SNS topic. If you specify a different value for
  either the S3 bucket or the SNS topic, this action will keep the existing
  value for the parameter that is not changed.

  <note> You can have only one delivery channel per region in your account.

  </note>
  """
  def put_delivery_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutDeliveryChannel",
      method:           :post,
      input_shape:      "PutDeliveryChannelRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by an AWS Lambda function to deliver evaluation results to AWS Config.
  This action is required in every AWS Lambda function that is invoked by an
  AWS Config rule.
  """
  def put_evaluations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutEvaluations",
      method:           :post,
      input_shape:      "PutEvaluationsRequest",
      output_shape:     "PutEvaluationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Runs an on-demand evaluation for the specified Config rules against the
  last known configuration state of the resources. Use
  `StartConfigRulesEvaluation` when you want to test a rule that you updated
  is working as expected. `StartConfigRulesEvaluation` does not re-record the
  latest configuration state for your resources; it re-runs an evaluation
  against the last known state of your resources.

  You can specify up to 25 Config rules per request.

  An existing `StartConfigRulesEvaluation` call must complete for the
  specified rules before you can call the API again. If you chose to have AWS
  Config stream to an Amazon SNS topic, you will receive a
  `ConfigRuleEvaluationStarted` notification when the evaluation starts.

  <note> You don't need to call the `StartConfigRulesEvaluation` API to run
  an evaluation for a new rule. When you create a new rule, AWS Config
  automatically evaluates your resources against the rule.

  </note> The `StartConfigRulesEvaluation` API is useful if you want to run
  on-demand evaluations, such as the following example:

  <ol> <li> You have a custom rule that evaluates your IAM resources every 24
  hours.

  </li> <li> You update your Lambda function to add additional conditions to
  your rule.

  </li> <li> Instead of waiting for the next periodic evaluation, you call
  the `StartConfigRulesEvaluation` API.

  </li> <li> AWS Config invokes your Lambda function and evaluates your IAM
  resources.

  </li> <li> Your custom rule will still run periodic evaluations every 24
  hours.

  </li> </ol>
  """
  def start_config_rules_evaluation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartConfigRulesEvaluation",
      method:           :post,
      input_shape:      "StartConfigRulesEvaluationRequest",
      output_shape:     "StartConfigRulesEvaluationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Starts recording configurations of the AWS resources you have selected to
  record in your AWS account.

  You must have created at least one delivery channel to successfully start
  the configuration recorder.
  """
  def start_configuration_recorder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartConfigurationRecorder",
      method:           :post,
      input_shape:      "StartConfigurationRecorderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops recording configurations of the AWS resources you have selected to
  record in your AWS account.
  """
  def stop_configuration_recorder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopConfigurationRecorder",
      method:           :post,
      input_shape:      "StopConfigurationRecorderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "config",
      target_prefix:    "StarlingDoveService",
      endpoint_prefix:  "config",
      type:             :json,
      version:          "2014-11-12",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"DescribeComplianceByResourceResponse" => %{"members" => %{"ComplianceByResources" => %{"shape" => "ComplianceByResources"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DeliveryChannelNameList" => %{"member" => %{"shape" => "ChannelName"}, "type" => "list"}, "ResourceCounts" => %{"member" => %{"shape" => "ResourceCount"}, "type" => "list"}, "DescribeConfigRuleEvaluationStatusRequest" => %{"members" => %{"ConfigRuleNames" => %{"shape" => "ConfigRuleNames"}, "Limit" => %{"shape" => "RuleLimit"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "GetComplianceSummaryByResourceTypeResponse" => %{"members" => %{"ComplianceSummariesByResourceType" => %{"shape" => "ComplianceSummariesByResourceType"}}, "type" => "structure"}, "ConfigurationStateId" => %{"type" => "string"}, "ConfigurationItemCaptureTime" => %{"type" => "timestamp"}, "ResourceType" => %{"enum" => ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack"], "type" => "string"}, "ComplianceSummary" => %{"members" => %{"ComplianceSummaryTimestamp" => %{"shape" => "Date"}, "CompliantResourceCount" => %{"shape" => "ComplianceContributorCount"}, "NonCompliantResourceCount" => %{"shape" => "ComplianceContributorCount"}}, "type" => "structure"}, "ResourceTypes" => %{"max" => 20, "member" => %{"shape" => "StringWithCharLimit256"}, "min" => 0, "type" => "list"}, "GetResourceConfigHistoryResponse" => %{"members" => %{"configurationItems" => %{"shape" => "ConfigurationItemList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "MaximumExecutionFrequency" => %{"enum" => ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"], "type" => "string"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "InsufficientPermissionsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidS3KeyPrefixException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidSNSTopicARNException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ComplianceByConfigRule" => %{"members" => %{"Compliance" => %{"shape" => "Compliance"}, "ConfigRuleName" => %{"shape" => "StringWithCharLimit64"}}, "type" => "structure"}, "Scope" => %{"members" => %{"ComplianceResourceId" => %{"shape" => "BaseResourceId"}, "ComplianceResourceTypes" => %{"shape" => "ComplianceResourceTypes"}, "TagKey" => %{"shape" => "StringWithCharLimit128"}, "TagValue" => %{"shape" => "StringWithCharLimit256"}}, "type" => "structure"}, "DeleteConfigRuleRequest" => %{"members" => %{"ConfigRuleName" => %{"shape" => "StringWithCharLimit64"}}, "required" => ["ConfigRuleName"], "type" => "structure"}, "MaxNumberOfConfigRulesExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ChannelName" => %{"max" => 256, "min" => 1, "type" => "string"}, "RelatedEventList" => %{"member" => %{"shape" => "RelatedEvent"}, "type" => "list"}, "GetDiscoveredResourceCountsRequest" => %{"members" => %{"limit" => %{"shape" => "Limit"}, "nextToken" => %{"shape" => "NextToken"}, "resourceTypes" => %{"shape" => "ResourceTypes"}}, "type" => "structure"}, "ListDiscoveredResourcesRequest" => %{"members" => %{"includeDeletedResources" => %{"shape" => "Boolean"}, "limit" => %{"shape" => "Limit"}, "nextToken" => %{"shape" => "NextToken"}, "resourceIds" => %{"shape" => "ResourceIdList"}, "resourceName" => %{"shape" => "ResourceName"}, "resourceType" => %{"shape" => "ResourceType"}}, "required" => ["resourceType"], "type" => "structure"}, "ResourceTypeList" => %{"member" => %{"shape" => "ResourceType"}, "type" => "list"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RelationshipList" => %{"member" => %{"shape" => "Relationship"}, "type" => "list"}, "ChronologicalOrder" => %{"enum" => ["Reverse", "Forward"], "type" => "string"}, "ConfigurationItemMD5Hash" => %{"type" => "string"}, "SupplementaryConfigurationValue" => %{"type" => "string"}, "ResourceInUseException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ResourceCreationTime" => %{"type" => "timestamp"}, "InvalidParameterValueException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteEvaluationResultsRequest" => %{"members" => %{"ConfigRuleName" => %{"shape" => "StringWithCharLimit64"}}, "required" => ["ConfigRuleName"], "type" => "structure"}, "ARN" => %{"type" => "string"}, "AccountId" => %{"type" => "string"}, "Name" => %{"type" => "string"}, "DescribeDeliveryChannelsResponse" => %{"members" => %{"DeliveryChannels" => %{"shape" => "DeliveryChannelList"}}, "type" => "structure"}, "ComplianceResourceTypes" => %{"max" => 100, "member" => %{"shape" => "StringWithCharLimit256"}, "min" => 0, "type" => "list"}, "Limit" => %{"max" => 100, "min" => 0, "type" => "integer"}, "NoAvailableDeliveryChannelException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "NoSuchConfigurationRecorderException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeConfigurationRecordersResponse" => %{"members" => %{"ConfigurationRecorders" => %{"shape" => "ConfigurationRecorderList"}}, "type" => "structure"}, "ConfigRuleNames" => %{"max" => 25, "member" => %{"shape" => "StringWithCharLimit64"}, "min" => 0, "type" => "list"}, "OrderingTimestamp" => %{"type" => "timestamp"}, "ConfigurationRecorderNameList" => %{"member" => %{"shape" => "RecorderName"}, "type" => "list"}, "DeleteConfigurationRecorderRequest" => %{"members" => %{"ConfigurationRecorderName" => %{"shape" => "RecorderName"}}, "required" => ["ConfigurationRecorderName"], "type" => "structure"}, "StopConfigurationRecorderRequest" => %{"members" => %{"ConfigurationRecorderName" => %{"shape" => "RecorderName"}}, "required" => ["ConfigurationRecorderName"], "type" => "structure"}, "DescribeDeliveryChannelStatusRequest" => %{"members" => %{"DeliveryChannelNames" => %{"shape" => "DeliveryChannelNameList"}}, "type" => "structure"}, "RelatedEvent" => %{"type" => "string"}, "LastDeliveryChannelDeleteFailedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Compliance" => %{"members" => %{"ComplianceContributorCount" => %{"shape" => "ComplianceContributorCount"}, "ComplianceType" => %{"shape" => "ComplianceType"}}, "type" => "structure"}, "ConfigRuleState" => %{"enum" => ["ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"], "type" => "string"}, "DeliveryChannelStatus" => %{"members" => %{"configHistoryDeliveryInfo" => %{"shape" => "ConfigExportDeliveryInfo"}, "configSnapshotDeliveryInfo" => %{"shape" => "ConfigExportDeliveryInfo"}, "configStreamDeliveryInfo" => %{"shape" => "ConfigStreamDeliveryInfo"}, "name" => %{"shape" => "String"}}, "type" => "structure"}, "RecordingGroup" => %{"members" => %{"allSupported" => %{"shape" => "AllSupported"}, "includeGlobalResourceTypes" => %{"shape" => "IncludeGlobalResourceTypes"}, "resourceTypes" => %{"shape" => "ResourceTypeList"}}, "type" => "structure"}, "Version" => %{"type" => "string"}, "Date" => %{"type" => "timestamp"}, "ConfigSnapshotDeliveryProperties" => %{"members" => %{"deliveryFrequency" => %{"shape" => "MaximumExecutionFrequency"}}, "type" => "structure"}, "ConfigRuleEvaluationStatus" => %{"members" => %{"ConfigRuleArn" => %{"shape" => "String"}, "ConfigRuleId" => %{"shape" => "String"}, "ConfigRuleName" => %{"shape" => "StringWithCharLimit64"}, "FirstActivatedTime" => %{"shape" => "Date"}, "FirstEvaluationStarted" => %{"shape" => "Boolean"}, "LastErrorCode" => %{"shape" => "String"}, "LastErrorMessage" => %{"shape" => "String"}, "LastFailedEvaluationTime" => %{"shape" => "Date"}, "LastFailedInvocationTime" => %{"shape" => "Date"}, "LastSuccessfulEvaluationTime" => %{"shape" => "Date"}, "LastSuccessfulInvocationTime" => %{"shape" => "Date"}}, "type" => "structure"}, "Evaluation" => %{"members" => %{"Annotation" => %{"shape" => "StringWithCharLimit256"}, "ComplianceResourceId" => %{"shape" => "BaseResourceId"}, "ComplianceResourceType" => %{"shape" => "StringWithCharLimit256"}, "ComplianceType" => %{"shape" => "ComplianceType"}, "OrderingTimestamp" => %{"shape" => "OrderingTimestamp"}}, "required" => ["ComplianceResourceType", "ComplianceResourceId", "ComplianceType", "OrderingTimestamp"], "type" => "structure"}, "PutConfigRuleRequest" => %{"members" => %{"ConfigRule" => %{"shape" => "ConfigRule"}}, "required" => ["ConfigRule"], "type" => "structure"}, "StringWithCharLimit256" => %{"max" => 256, "min" => 1, "type" => "string"}, "GetDiscoveredResourceCountsResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "resourceCounts" => %{"shape" => "ResourceCounts"}, "totalDiscoveredResources" => %{"shape" => "Long"}}, "type" => "structure"}, "SupplementaryConfigurationName" => %{"type" => "string"}, "EarlierTime" => %{"type" => "timestamp"}, "Tags" => %{"key" => %{"shape" => "Name"}, "type" => "map", "value" => %{"shape" => "Value"}}, "GetComplianceSummaryByConfigRuleResponse" => %{"members" => %{"ComplianceSummary" => %{"shape" => "ComplianceSummary"}}, "type" => "structure"}, "ComplianceTypes" => %{"max" => 3, "member" => %{"shape" => "ComplianceType"}, "min" => 0, "type" => "list"}, "EvaluationResults" => %{"member" => %{"shape" => "EvaluationResult"}, "type" => "list"}, "ListDiscoveredResourcesResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "resourceIdentifiers" => %{"shape" => "ResourceIdentifierList"}}, "type" => "structure"}, "RuleLimit" => %{"max" => 50, "min" => 0, "type" => "integer"}, "ComplianceType" => %{"enum" => ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"], "type" => "string"}, "PutEvaluationsResponse" => %{"members" => %{"FailedEvaluations" => %{"shape" => "Evaluations"}}, "type" => "structure"}, "InvalidLimitException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ResourceIdentifierList" => %{"member" => %{"shape" => "ResourceIdentifier"}, "type" => "list"}, "ConfigurationItemList" => %{"member" => %{"shape" => "ConfigurationItem"}, "type" => "list"}, "EmptiableStringWithCharLimit256" => %{"max" => 256, "min" => 0, "type" => "string"}, "PutConfigurationRecorderRequest" => %{"members" => %{"ConfigurationRecorder" => %{"shape" => "ConfigurationRecorder"}}, "required" => ["ConfigurationRecorder"], "type" => "structure"}, "NoSuchConfigRuleException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidConfigurationRecorderNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeConfigurationRecorderStatusRequest" => %{"members" => %{"ConfigurationRecorderNames" => %{"shape" => "ConfigurationRecorderNameList"}}, "type" => "structure"}, "Owner" => %{"enum" => ["CUSTOM_LAMBDA", "AWS"], "type" => "string"}, "ValidationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ConfigurationItemStatus" => %{"enum" => ["Ok", "Failed", "Discovered", "Deleted"], "type" => "string"}, "EvaluationResult" => %{"members" => %{"Annotation" => %{"shape" => "StringWithCharLimit256"}, "ComplianceType" => %{"shape" => "ComplianceType"}, "ConfigRuleInvokedTime" => %{"shape" => "Date"}, "EvaluationResultIdentifier" => %{"shape" => "EvaluationResultIdentifier"}, "ResultRecordedTime" => %{"shape" => "Date"}, "ResultToken" => %{"shape" => "String"}}, "type" => "structure"}, "ConfigurationItem" => %{"members" => %{"accountId" => %{"shape" => "AccountId"}, "arn" => %{"shape" => "ARN"}, "availabilityZone" => %{"shape" => "AvailabilityZone"}, "awsRegion" => %{"shape" => "AwsRegion"}, "configuration" => %{"shape" => "Configuration"}, "configurationItemCaptureTime" => %{"shape" => "ConfigurationItemCaptureTime"}, "configurationItemMD5Hash" => %{"shape" => "ConfigurationItemMD5Hash"}, "configurationItemStatus" => %{"shape" => "ConfigurationItemStatus"}, "configurationStateId" => %{"shape" => "ConfigurationStateId"}, "relatedEvents" => %{"shape" => "RelatedEventList"}, "relationships" => %{"shape" => "RelationshipList"}, "resourceCreationTime" => %{"shape" => "ResourceCreationTime"}, "resourceId" => %{"shape" => "ResourceId"}, "resourceName" => %{"shape" => "ResourceName"}, "resourceType" => %{"shape" => "ResourceType"}, "supplementaryConfiguration" => %{"shape" => "SupplementaryConfiguration"}, "tags" => %{"shape" => "Tags"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "ConfigurationRecorderList" => %{"member" => %{"shape" => "ConfigurationRecorder"}, "type" => "list"}, "NoSuchBucketException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Relationship" => %{"members" => %{"relationshipName" => %{"shape" => "RelationshipName"}, "resourceId" => %{"shape" => "ResourceId"}, "resourceName" => %{"shape" => "ResourceName"}, "resourceType" => %{"shape" => "ResourceType"}}, "type" => "structure"}, "AvailabilityZone" => %{"type" => "string"}, "ConfigStreamDeliveryInfo" => %{"members" => %{"lastErrorCode" => %{"shape" => "String"}, "lastErrorMessage" => %{"shape" => "String"}, "lastStatus" => %{"shape" => "DeliveryStatus"}, "lastStatusChangeTime" => %{"shape" => "Date"}}, "type" => "structure"}, "LaterTime" => %{"type" => "timestamp"}, "ResourceNotDiscoveredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "StringWithCharLimit1024" => %{"max" => 1024, "min" => 1, "type" => "string"}, "RecorderName" => %{"max" => 256, "min" => 1, "type" => "string"}, "InvalidResultTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ResourceId" => %{"type" => "string"}, "PutEvaluationsRequest" => %{"members" => %{"Evaluations" => %{"shape" => "Evaluations"}, "ResultToken" => %{"shape" => "String"}, "TestMode" => %{"shape" => "Boolean"}}, "required" => ["ResultToken"], "type" => "structure"}, "DescribeConfigRulesRequest" => %{"members" => %{"ConfigRuleNames" => %{"shape" => "ConfigRuleNames"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "Long" => %{"type" => "long"}, "EvaluationResultIdentifier" => %{"members" => %{"EvaluationResultQualifier" => %{"shape" => "EvaluationResultQualifier"}, "OrderingTimestamp" => %{"shape" => "Date"}}, "type" => "structure"}, "DeliverConfigSnapshotResponse" => %{"members" => %{"configSnapshotId" => %{"shape" => "String"}}, "type" => "structure"}, "RelationshipName" => %{"type" => "string"}, "EventSource" => %{"enum" => ["aws.config"], "type" => "string"}, "Value" => %{"type" => "string"}, "GetResourceConfigHistoryRequest" => %{"members" => %{"chronologicalOrder" => %{"shape" => "ChronologicalOrder"}, "earlierTime" => %{"shape" => "EarlierTime"}, "laterTime" => %{"shape" => "LaterTime"}, "limit" => %{"shape" => "Limit"}, "nextToken" => %{"shape" => "NextToken"}, "resourceId" => %{"shape" => "ResourceId"}, "resourceType" => %{"shape" => "ResourceType"}}, "required" => ["resourceType", "resourceId"], "type" => "structure"}, "ConfigRuleEvaluationStatusList" => %{"member" => %{"shape" => "ConfigRuleEvaluationStatus"}, "type" => "list"}, "DeliveryChannel" => %{"members" => %{"configSnapshotDeliveryProperties" => %{"shape" => "ConfigSnapshotDeliveryProperties"}, "name" => %{"shape" => "ChannelName"}, "s3BucketName" => %{"shape" => "String"}, "s3KeyPrefix" => %{"shape" => "String"}, "snsTopicARN" => %{"shape" => "String"}}, "type" => "structure"}, "ComplianceByConfigRules" => %{"member" => %{"shape" => "ComplianceByConfigRule"}, "type" => "list"}, "GetComplianceSummaryByResourceTypeRequest" => %{"members" => %{"ResourceTypes" => %{"shape" => "ResourceTypes"}}, "type" => "structure"}, "ResourceCount" => %{"members" => %{"count" => %{"shape" => "Long"}, "resourceType" => %{"shape" => "ResourceType"}}, "type" => "structure"}, "ConfigExportDeliveryInfo" => %{"members" => %{"lastAttemptTime" => %{"shape" => "Date"}, "lastErrorCode" => %{"shape" => "String"}, "lastErrorMessage" => %{"shape" => "String"}, "lastStatus" => %{"shape" => "DeliveryStatus"}, "lastSuccessfulTime" => %{"shape" => "Date"}, "nextDeliveryTime" => %{"shape" => "Date"}}, "type" => "structure"}, "InvalidTimeRangeException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "IncludeGlobalResourceTypes" => %{"type" => "boolean"}, "MaxNumberOfDeliveryChannelsExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ConfigurationRecorderStatus" => %{"members" => %{"lastErrorCode" => %{"shape" => "String"}, "lastErrorMessage" => %{"shape" => "String"}, "lastStartTime" => %{"shape" => "Date"}, "lastStatus" => %{"shape" => "RecorderStatus"}, "lastStatusChangeTime" => %{"shape" => "Date"}, "lastStopTime" => %{"shape" => "Date"}, "name" => %{"shape" => "String"}, "recording" => %{"shape" => "Boolean"}}, "type" => "structure"}, "DescribeDeliveryChannelStatusResponse" => %{"members" => %{"DeliveryChannelsStatus" => %{"shape" => "DeliveryChannelStatusList"}}, "type" => "structure"}, "MessageType" => %{"enum" => ["ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification", "OversizedConfigurationItemChangeNotification"], "type" => "string"}, "GetComplianceDetailsByConfigRuleResponse" => %{"members" => %{"EvaluationResults" => %{"shape" => "EvaluationResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ConfigRules" => %{"member" => %{"shape" => "ConfigRule"}, "type" => "list"}, "StringWithCharLimit64" => %{"max" => 64, "min" => 1, "type" => "string"}, "DescribeConfigurationRecordersRequest" => %{"members" => %{"ConfigurationRecorderNames" => %{"shape" => "ConfigurationRecorderNameList"}}, "type" => "structure"}, "DeliverConfigSnapshotRequest" => %{"members" => %{"deliveryChannelName" => %{"shape" => "ChannelName"}}, "required" => ["deliveryChannelName"], "type" => "structure"}, "InvalidDeliveryChannelNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AllSupported" => %{"type" => "boolean"}, "SourceDetails" => %{"max" => 25, "member" => %{"shape" => "SourceDetail"}, "min" => 0, "type" => "list"}, "NoSuchDeliveryChannelException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeConfigRuleEvaluationStatusResponse" => %{"members" => %{"ConfigRulesEvaluationStatus" => %{"shape" => "ConfigRuleEvaluationStatusList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeComplianceByResourceRequest" => %{"members" => %{"ComplianceTypes" => %{"shape" => "ComplianceTypes"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}, "ResourceId" => %{"shape" => "BaseResourceId"}, "ResourceType" => %{"shape" => "StringWithCharLimit256"}}, "type" => "structure"}, "DescribeDeliveryChannelsRequest" => %{"members" => %{"DeliveryChannelNames" => %{"shape" => "DeliveryChannelNameList"}}, "type" => "structure"}, "InvalidRecordingGroupException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InsufficientDeliveryPolicyException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "SourceDetail" => %{"members" => %{"EventSource" => %{"shape" => "EventSource"}, "MaximumExecutionFrequency" => %{"shape" => "MaximumExecutionFrequency"}, "MessageType" => %{"shape" => "MessageType"}}, "type" => "structure"}, "GetComplianceDetailsByConfigRuleRequest" => %{"members" => %{"ComplianceTypes" => %{"shape" => "ComplianceTypes"}, "ConfigRuleName" => %{"shape" => "StringWithCharLimit64"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["ConfigRuleName"], "type" => "structure"}, "ReevaluateConfigRuleNames" => %{"max" => 25, "member" => %{"shape" => "StringWithCharLimit64"}, "min" => 1, "type" => "list"}, "InvalidRoleException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "StartConfigRulesEvaluationResponse" => %{"members" => %{}, "type" => "structure"}, "StartConfigurationRecorderRequest" => %{"members" => %{"ConfigurationRecorderName" => %{"shape" => "RecorderName"}}, "required" => ["ConfigurationRecorderName"], "type" => "structure"}, "DeleteDeliveryChannelRequest" => %{"members" => %{"DeliveryChannelName" => %{"shape" => "ChannelName"}}, "required" => ["DeliveryChannelName"], "type" => "structure"}, "PutDeliveryChannelRequest" => %{"members" => %{"DeliveryChannel" => %{"shape" => "DeliveryChannel"}}, "required" => ["DeliveryChannel"], "type" => "structure"}, "DescribeConfigurationRecorderStatusResponse" => %{"members" => %{"ConfigurationRecordersStatus" => %{"shape" => "ConfigurationRecorderStatusList"}}, "type" => "structure"}, "DeliveryChannelStatusList" => %{"member" => %{"shape" => "DeliveryChannelStatus"}, "type" => "list"}, "ConfigRule" => %{"members" => %{"ConfigRuleArn" => %{"shape" => "String"}, "ConfigRuleId" => %{"shape" => "String"}, "ConfigRuleName" => %{"shape" => "StringWithCharLimit64"}, "ConfigRuleState" => %{"shape" => "ConfigRuleState"}, "Description" => %{"shape" => "EmptiableStringWithCharLimit256"}, "InputParameters" => %{"shape" => "StringWithCharLimit1024"}, "MaximumExecutionFrequency" => %{"shape" => "MaximumExecutionFrequency"}, "Scope" => %{"shape" => "Scope"}, "Source" => %{"shape" => "Source"}}, "required" => ["Source"], "type" => "structure"}, "GetComplianceDetailsByResourceRequest" => %{"members" => %{"ComplianceTypes" => %{"shape" => "ComplianceTypes"}, "NextToken" => %{"shape" => "String"}, "ResourceId" => %{"shape" => "BaseResourceId"}, "ResourceType" => %{"shape" => "StringWithCharLimit256"}}, "required" => ["ResourceType", "ResourceId"], "type" => "structure"}, "GetComplianceDetailsByResourceResponse" => %{"members" => %{"EvaluationResults" => %{"shape" => "EvaluationResults"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "StartConfigRulesEvaluationRequest" => %{"members" => %{"ConfigRuleNames" => %{"shape" => "ReevaluateConfigRuleNames"}}, "type" => "structure"}, "ConfigurationRecorder" => %{"members" => %{"name" => %{"shape" => "RecorderName"}, "recordingGroup" => %{"shape" => "RecordingGroup"}, "roleARN" => %{"shape" => "String"}}, "type" => "structure"}, "ComplianceByResource" => %{"members" => %{"Compliance" => %{"shape" => "Compliance"}, "ResourceId" => %{"shape" => "BaseResourceId"}, "ResourceType" => %{"shape" => "StringWithCharLimit256"}}, "type" => "structure"}, "ComplianceByResources" => %{"member" => %{"shape" => "ComplianceByResource"}, "type" => "list"}, "ComplianceSummariesByResourceType" => %{"member" => %{"shape" => "ComplianceSummaryByResourceType"}, "type" => "list"}, "MaxNumberOfConfigurationRecordersExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ResourceDeletionTime" => %{"type" => "timestamp"}, "RecorderStatus" => %{"enum" => ["Pending", "Success", "Failure"], "type" => "string"}, "DescribeComplianceByConfigRuleResponse" => %{"members" => %{"ComplianceByConfigRules" => %{"shape" => "ComplianceByConfigRules"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "Source" => %{"members" => %{"Owner" => %{"shape" => "Owner"}, "SourceDetails" => %{"shape" => "SourceDetails"}, "SourceIdentifier" => %{"shape" => "StringWithCharLimit256"}}, "required" => ["Owner", "SourceIdentifier"], "type" => "structure"}, "ResourceName" => %{"type" => "string"}, "ComplianceContributorCount" => %{"members" => %{"CapExceeded" => %{"shape" => "Boolean"}, "CappedCount" => %{"shape" => "Integer"}}, "type" => "structure"}, "NoAvailableConfigurationRecorderException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeComplianceByConfigRuleRequest" => %{"members" => %{"ComplianceTypes" => %{"shape" => "ComplianceTypes"}, "ConfigRuleNames" => %{"shape" => "ConfigRuleNames"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DeliveryChannelList" => %{"member" => %{"shape" => "DeliveryChannel"}, "type" => "list"}, "Evaluations" => %{"max" => 100, "member" => %{"shape" => "Evaluation"}, "min" => 0, "type" => "list"}, "Integer" => %{"type" => "integer"}, "DeliveryStatus" => %{"enum" => ["Success", "Failure", "Not_Applicable"], "type" => "string"}, "ResourceIdList" => %{"member" => %{"shape" => "ResourceId"}, "type" => "list"}, "StringWithCharLimit128" => %{"max" => 128, "min" => 1, "type" => "string"}, "Configuration" => %{"type" => "string"}, "BaseResourceId" => %{"max" => 768, "min" => 1, "type" => "string"}, "SupplementaryConfiguration" => %{"key" => %{"shape" => "SupplementaryConfigurationName"}, "type" => "map", "value" => %{"shape" => "SupplementaryConfigurationValue"}}, "NextToken" => %{"type" => "string"}, "ConfigurationRecorderStatusList" => %{"member" => %{"shape" => "ConfigurationRecorderStatus"}, "type" => "list"}, "NoRunningConfigurationRecorderException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AwsRegion" => %{"type" => "string"}, "EvaluationResultQualifier" => %{"members" => %{"ConfigRuleName" => %{"shape" => "StringWithCharLimit64"}, "ResourceId" => %{"shape" => "BaseResourceId"}, "ResourceType" => %{"shape" => "StringWithCharLimit256"}}, "type" => "structure"}, "DeleteEvaluationResultsResponse" => %{"members" => %{}, "type" => "structure"}, "ResourceIdentifier" => %{"members" => %{"resourceDeletionTime" => %{"shape" => "ResourceDeletionTime"}, "resourceId" => %{"shape" => "ResourceId"}, "resourceName" => %{"shape" => "ResourceName"}, "resourceType" => %{"shape" => "ResourceType"}}, "type" => "structure"}, "DescribeConfigRulesResponse" => %{"members" => %{"ConfigRules" => %{"shape" => "ConfigRules"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ComplianceSummaryByResourceType" => %{"members" => %{"ComplianceSummary" => %{"shape" => "ComplianceSummary"}, "ResourceType" => %{"shape" => "StringWithCharLimit256"}}, "type" => "structure"}}
  end
end