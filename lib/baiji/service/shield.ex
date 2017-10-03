defmodule Baiji.Shield do
  @moduledoc """
  AWS Shield Advanced

  This is the *AWS Shield Advanced API Reference*. This guide is for
  developers who need detailed information about the AWS Shield Advanced API
  actions, data types, and errors. For detailed information about AWS WAF and
  AWS Shield Advanced features and an overview of how to use the AWS WAF and
  AWS Shield Advanced APIs, see the [AWS WAF and AWS Shield Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """

  @doc """
  Enables AWS Shield Advanced for a specific AWS resource. The resource can
  be an Amazon CloudFront distribution, Elastic Load Balancing load balancer,
  or an Amazon Route 53 hosted zone.
  """
  def create_protection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateProtection",
      method:           :post,
      input_shape:      "CreateProtectionRequest",
      output_shape:     "CreateProtectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Activates AWS Shield Advanced for an account.
  """
  def create_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateSubscription",
      method:           :post,
      input_shape:      "CreateSubscriptionRequest",
      output_shape:     "CreateSubscriptionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an AWS Shield Advanced `Protection`.
  """
  def delete_protection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteProtection",
      method:           :post,
      input_shape:      "DeleteProtectionRequest",
      output_shape:     "DeleteProtectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes AWS Shield Advanced from an account.
  """
  def delete_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteSubscription",
      method:           :post,
      input_shape:      "DeleteSubscriptionRequest",
      output_shape:     "DeleteSubscriptionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the details of a DDoS attack.
  """
  def describe_attack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAttack",
      method:           :post,
      input_shape:      "DescribeAttackRequest",
      output_shape:     "DescribeAttackResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the details of a `Protection` object.
  """
  def describe_protection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeProtection",
      method:           :post,
      input_shape:      "DescribeProtectionRequest",
      output_shape:     "DescribeProtectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provides details about the AWS Shield Advanced subscription for an account.
  """
  def describe_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeSubscription",
      method:           :post,
      input_shape:      "DescribeSubscriptionRequest",
      output_shape:     "DescribeSubscriptionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns all ongoing DDoS attacks or all DDoS attacks during a specified
  time period.
  """
  def list_attacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAttacks",
      method:           :post,
      input_shape:      "ListAttacksRequest",
      output_shape:     "ListAttacksResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all `Protection` objects for the account.
  """
  def list_protections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListProtections",
      method:           :post,
      input_shape:      "ListProtectionsRequest",
      output_shape:     "ListProtectionsResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "shield",
      target_prefix:    "AWSShield_20160616",
      endpoint_prefix:  "shield",
      type:             :json,
      version:          "2016-06-02",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"DeleteSubscriptionRequest" => %{"members" => %{}, "type" => "structure"}, "ListAttacksResponse" => %{"members" => %{"AttackSummaries" => %{"shape" => "AttackSummaries"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "ListAttacksRequest" => %{"members" => %{"EndTime" => %{"shape" => "TimeRange"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "Token"}, "ResourceArns" => %{"shape" => "ResourceArnFilterList"}, "StartTime" => %{"shape" => "TimeRange"}}, "type" => "structure"}, "CreateProtectionResponse" => %{"members" => %{"ProtectionId" => %{"shape" => "ProtectionId"}}, "type" => "structure"}, "DurationInSeconds" => %{"min" => 0, "type" => "long"}, "InvalidParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "SummarizedAttackVectorList" => %{"member" => %{"shape" => "SummarizedAttackVector"}, "type" => "list"}, "LimitsExceededException" => %{"exception" => true, "members" => %{"Limit" => %{"shape" => "LimitNumber"}, "Type" => %{"shape" => "LimitType"}, "message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DescribeSubscriptionResponse" => %{"members" => %{"Subscription" => %{"shape" => "Subscription"}}, "type" => "structure"}, "LimitNumber" => %{"type" => "long"}, "DeleteProtectionResponse" => %{"members" => %{}, "type" => "structure"}, "TimeRange" => %{"members" => %{"FromInclusive" => %{"shape" => "AttackTimestamp"}, "ToExclusive" => %{"shape" => "AttackTimestamp"}}, "type" => "structure"}, "CreateSubscriptionResponse" => %{"members" => %{}, "type" => "structure"}, "OptimisticLockException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "AttackSummary" => %{"members" => %{"AttackId" => %{"shape" => "String"}, "AttackVectors" => %{"shape" => "AttackVectorDescriptionList"}, "EndTime" => %{"shape" => "AttackTimestamp"}, "ResourceArn" => %{"shape" => "String"}, "StartTime" => %{"shape" => "AttackTimestamp"}}, "type" => "structure"}, "Token" => %{"min" => 1, "type" => "string"}, "DescribeProtectionRequest" => %{"members" => %{"ProtectionId" => %{"shape" => "ProtectionId"}}, "required" => ["ProtectionId"], "type" => "structure"}, "DescribeAttackRequest" => %{"members" => %{"AttackId" => %{"shape" => "AttackId"}}, "required" => ["AttackId"], "type" => "structure"}, "AttackSummaries" => %{"member" => %{"shape" => "AttackSummary"}, "type" => "list"}, "SummarizedAttackVector" => %{"members" => %{"VectorCounters" => %{"shape" => "SummarizedCounterList"}, "VectorType" => %{"shape" => "String"}}, "required" => ["VectorType"], "type" => "structure"}, "SubResourceSummary" => %{"members" => %{"AttackVectors" => %{"shape" => "SummarizedAttackVectorList"}, "Counters" => %{"shape" => "SummarizedCounterList"}, "Id" => %{"shape" => "String"}, "Type" => %{"shape" => "SubResourceType"}}, "type" => "structure"}, "errorMessage" => %{"type" => "string"}, "CreateSubscriptionRequest" => %{"members" => %{}, "type" => "structure"}, "ListProtectionsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "AttackTimestamp" => %{"type" => "timestamp"}, "Timestamp" => %{"type" => "timestamp"}, "Protections" => %{"member" => %{"shape" => "Protection"}, "type" => "list"}, "DeleteProtectionRequest" => %{"members" => %{"ProtectionId" => %{"shape" => "ProtectionId"}}, "required" => ["ProtectionId"], "type" => "structure"}, "InternalErrorException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "MaxResults" => %{"box" => true, "max" => 100, "min" => 0, "type" => "integer"}, "MitigationList" => %{"member" => %{"shape" => "Mitigation"}, "type" => "list"}, "Subscription" => %{"members" => %{"StartTime" => %{"shape" => "Timestamp"}, "TimeCommitmentInSeconds" => %{"shape" => "DurationInSeconds"}}, "type" => "structure"}, "ListProtectionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "Protections" => %{"shape" => "Protections"}}, "type" => "structure"}, "DescribeSubscriptionRequest" => %{"members" => %{}, "type" => "structure"}, "Double" => %{"type" => "double"}, "ResourceArn" => %{"min" => 1, "type" => "string"}, "AttackVectorDescription" => %{"members" => %{"VectorType" => %{"shape" => "String"}}, "required" => ["VectorType"], "type" => "structure"}, "LimitType" => %{"type" => "string"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "SummarizedCounter" => %{"members" => %{"Average" => %{"shape" => "Double"}, "Max" => %{"shape" => "Double"}, "N" => %{"shape" => "Integer"}, "Name" => %{"shape" => "String"}, "Sum" => %{"shape" => "Double"}, "Unit" => %{"shape" => "String"}}, "type" => "structure"}, "ProtectionId" => %{"max" => 36, "min" => 1, "pattern" => "[a-zA-Z0-9\\\\-]*", "type" => "string"}, "ProtectionName" => %{"max" => 128, "min" => 1, "pattern" => "[ a-zA-Z0-9_\\\\.\\\\-]*", "type" => "string"}, "DeleteSubscriptionResponse" => %{"members" => %{}, "type" => "structure"}, "InvalidResourceException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DescribeProtectionResponse" => %{"members" => %{"Protection" => %{"shape" => "Protection"}}, "type" => "structure"}, "AttackVectorDescriptionList" => %{"member" => %{"shape" => "AttackVectorDescription"}, "type" => "list"}, "AttackId" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9\\\\-]*", "type" => "string"}, "InvalidOperationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Mitigation" => %{"members" => %{"MitigationName" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeAttackResponse" => %{"members" => %{"Attack" => %{"shape" => "AttackDetail"}}, "type" => "structure"}, "SubResourceSummaryList" => %{"member" => %{"shape" => "SubResourceSummary"}, "type" => "list"}, "CreateProtectionRequest" => %{"members" => %{"Name" => %{"shape" => "ProtectionName"}, "ResourceArn" => %{"shape" => "ResourceArn"}}, "required" => ["Name", "ResourceArn"], "type" => "structure"}, "ResourceAlreadyExistsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "ResourceArnFilterList" => %{"member" => %{"shape" => "ResourceArn"}, "type" => "list"}, "SubResourceType" => %{"enum" => ["IP", "URL"], "type" => "string"}, "SummarizedCounterList" => %{"member" => %{"shape" => "SummarizedCounter"}, "type" => "list"}, "Protection" => %{"members" => %{"Id" => %{"shape" => "ProtectionId"}, "Name" => %{"shape" => "ProtectionName"}, "ResourceArn" => %{"shape" => "ResourceArn"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "AttackDetail" => %{"members" => %{"AttackCounters" => %{"shape" => "SummarizedCounterList"}, "AttackId" => %{"shape" => "AttackId"}, "EndTime" => %{"shape" => "AttackTimestamp"}, "Mitigations" => %{"shape" => "MitigationList"}, "ResourceArn" => %{"shape" => "ResourceArn"}, "StartTime" => %{"shape" => "AttackTimestamp"}, "SubResources" => %{"shape" => "SubResourceSummaryList"}}, "type" => "structure"}, "LockedSubscriptionException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}}
  end
end