defmodule Baiji.ApplicationAutoScaling do
  @moduledoc """
  With Application Auto Scaling, you can automatically scale your AWS
  resources. The experience similar to that of [Auto
  Scaling](https://aws.amazon.com/autoscaling/). You can use Application Auto
  Scaling to accomplish the following tasks:

  <ul> <li> Define scaling policies to automatically scale your AWS resources

  </li> <li> Scale your resources in response to CloudWatch alarms

  </li> <li> View the history of your scaling events

  </li> </ul> Application Auto Scaling can scale the following AWS resources:

  <ul> <li> Amazon ECS services. For more information, see [Service Auto
  Scaling](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  </li> <li> Amazon EC2 Spot fleets. For more information, see [Automatic
  Scaling for Spot
  Fleet](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-auto-scaling.html)
  in the *Amazon EC2 User Guide*.

  </li> <li> Amazon EMR clusters. For more information, see [Using Automatic
  Scaling in Amazon
  EMR](http://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-automatic-scaling.html)
  in the *Amazon EMR Management Guide*.

  </li> <li> AppStream 2.0 fleets. For more information, see [Fleet Auto
  Scaling for Amazon AppStream
  2.0](http://docs.aws.amazon.com/appstream2/latest/developerguide/autoscaling.html)
  in the *Amazon AppStream 2.0 Developer Guide*.

  </li> <li> Provisioned read and write capacity for Amazon DynamoDB tables
  and global secondary indexes. For more information, see [Managing
  Throughput Capacity Automatically with DynamoDB Auto
  Scaling](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/AutoScaling.html)
  in the *Amazon DynamoDB Developer Guide*.

  </li> </ul> For a list of supported regions, see [AWS Regions and
  Endpoints: Application Auto
  Scaling](http://docs.aws.amazon.com/general/latest/gr/rande.html#as-app_region)
  in the *AWS General Reference*.
  """
  
  @doc """
  Deletes the specified Application Auto Scaling scaling policy.

  Deleting a policy deletes the underlying alarm action, but does not delete
  the CloudWatch alarm associated with the scaling policy, even if it no
  longer has an associated action.

  To create a scaling policy or update an existing one, see
  `PutScalingPolicy`.
  """
  def delete_scaling_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "application-autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteScalingPolicy",
      
      target_prefix:    "AnyScaleFrontendService",
      
      endpoint_prefix:  "autoscaling",
      type:             :json,
      version:          "2016-02-06",
      method:           :post,
      input_shape:      "DeleteScalingPolicyRequest",
      output_shape:     "DeleteScalingPolicyResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deregisters a scalable target.

  Deregistering a scalable target deletes the scaling policies that are
  associated with it.

  To create a scalable target or update an existing one, see
  `RegisterScalableTarget`.
  """
  def deregister_scalable_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "application-autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterScalableTarget",
      
      target_prefix:    "AnyScaleFrontendService",
      
      endpoint_prefix:  "autoscaling",
      type:             :json,
      version:          "2016-02-06",
      method:           :post,
      input_shape:      "DeregisterScalableTargetRequest",
      output_shape:     "DeregisterScalableTargetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides descriptive information about the scalable targets in the
  specified namespace.

  You can filter the results using the `ResourceIds` and `ScalableDimension`
  parameters.

  To create a scalable target or update an existing one, see
  `RegisterScalableTarget`. If you are no longer using a scalable target, you
  can deregister it using `DeregisterScalableTarget`.
  """
  def describe_scalable_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "application-autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScalableTargets",
      
      target_prefix:    "AnyScaleFrontendService",
      
      endpoint_prefix:  "autoscaling",
      type:             :json,
      version:          "2016-02-06",
      method:           :post,
      input_shape:      "DescribeScalableTargetsRequest",
      output_shape:     "DescribeScalableTargetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides descriptive information about the scaling activities in the
  specified namespace from the previous six weeks.

  You can filter the results using the `ResourceId` and `ScalableDimension`
  parameters.

  Scaling activities are triggered by CloudWatch alarms that are associated
  with scaling policies. To view the scaling policies for a service
  namespace, see `DescribeScalingPolicies`. To create a scaling policy or
  update an existing one, see `PutScalingPolicy`.
  """
  def describe_scaling_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "application-autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScalingActivities",
      
      target_prefix:    "AnyScaleFrontendService",
      
      endpoint_prefix:  "autoscaling",
      type:             :json,
      version:          "2016-02-06",
      method:           :post,
      input_shape:      "DescribeScalingActivitiesRequest",
      output_shape:     "DescribeScalingActivitiesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides descriptive information about the scaling policies in the
  specified namespace.

  You can filter the results using the `ResourceId`, `ScalableDimension`, and
  `PolicyNames` parameters.

  To create a scaling policy or update an existing one, see
  `PutScalingPolicy`. If you are no longer using a scaling policy, you can
  delete it using `DeleteScalingPolicy`.
  """
  def describe_scaling_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "application-autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScalingPolicies",
      
      target_prefix:    "AnyScaleFrontendService",
      
      endpoint_prefix:  "autoscaling",
      type:             :json,
      version:          "2016-02-06",
      method:           :post,
      input_shape:      "DescribeScalingPoliciesRequest",
      output_shape:     "DescribeScalingPoliciesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates or updates a policy for an Application Auto Scaling scalable
  target.

  Each scalable target is identified by a service namespace, resource ID, and
  scalable dimension. A scaling policy applies to the scalable target
  identified by those three attributes. You cannot create a scaling policy
  without first registering a scalable target using `RegisterScalableTarget`.

  To update a policy, specify its policy name and the parameters that you
  want to change. Any parameters that you don't specify are not changed by
  this update request.

  You can view the scaling policies for a service namespace using
  `DescribeScalingPolicies`. If you are no longer using a scaling policy, you
  can delete it using `DeleteScalingPolicy`.
  """
  def put_scaling_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "application-autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutScalingPolicy",
      
      target_prefix:    "AnyScaleFrontendService",
      
      endpoint_prefix:  "autoscaling",
      type:             :json,
      version:          "2016-02-06",
      method:           :post,
      input_shape:      "PutScalingPolicyRequest",
      output_shape:     "PutScalingPolicyResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Registers or updates a scalable target. A scalable target is a resource
  that Application Auto Scaling can scale out or scale in. After you have
  registered a scalable target, you can use this operation to update the
  minimum and maximum values for your scalable dimension.

  After you register a scalable target, you can create and apply scaling
  policies using `PutScalingPolicy`. You can view the scaling policies for a
  service namespace using `DescribeScalableTargets`. If you are no longer
  using a scalable target, you can deregister it using
  `DeregisterScalableTarget`.
  """
  def register_scalable_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "application-autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterScalableTarget",
      
      target_prefix:    "AnyScaleFrontendService",
      
      endpoint_prefix:  "autoscaling",
      type:             :json,
      version:          "2016-02-06",
      method:           :post,
      input_shape:      "RegisterScalableTargetRequest",
      output_shape:     "RegisterScalableTargetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"PutScalingPolicyRequest" => %{"members" => %{"PolicyName" => %{"shape" => "PolicyName"}, "PolicyType" => %{"shape" => "PolicyType"}, "ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}, "StepScalingPolicyConfiguration" => %{"shape" => "StepScalingPolicyConfiguration"}, "TargetTrackingScalingPolicyConfiguration" => %{"shape" => "TargetTrackingScalingPolicyConfiguration"}}, "required" => ["PolicyName", "ServiceNamespace", "ResourceId", "ScalableDimension"], "type" => "structure"}, "Alarms" => %{"member" => %{"shape" => "Alarm"}, "type" => "list"}, "TimestampType" => %{"type" => "timestamp"}, "MetricType" => %{"enum" => ["DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization"], "type" => "string"}, "DeleteScalingPolicyResponse" => %{"members" => %{}, "type" => "structure"}, "ConcurrentUpdateException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "DeregisterScalableTargetRequest" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}}, "required" => ["ServiceNamespace", "ResourceId", "ScalableDimension"], "type" => "structure"}, "ScalableTargets" => %{"member" => %{"shape" => "ScalableTarget"}, "type" => "list"}, "RegisterScalableTargetRequest" => %{"members" => %{"MaxCapacity" => %{"shape" => "ResourceCapacity"}, "MinCapacity" => %{"shape" => "ResourceCapacity"}, "ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "RoleARN" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}}, "required" => ["ServiceNamespace", "ResourceId", "ScalableDimension"], "type" => "structure"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PutScalingPolicyResponse" => %{"members" => %{"Alarms" => %{"shape" => "Alarms"}, "PolicyARN" => %{"shape" => "ResourceIdMaxLen1600"}}, "required" => ["PolicyARN"], "type" => "structure"}, "ScalingActivities" => %{"member" => %{"shape" => "ScalingActivity"}, "type" => "list"}, "MinAdjustmentMagnitude" => %{"type" => "integer"}, "ScalingPolicies" => %{"member" => %{"shape" => "ScalingPolicy"}, "type" => "list"}, "MetricDimensionValue" => %{"type" => "string"}, "PredefinedMetricSpecification" => %{"members" => %{"PredefinedMetricType" => %{"shape" => "MetricType"}, "ResourceLabel" => %{"shape" => "ResourceLabel"}}, "required" => ["PredefinedMetricType"], "type" => "structure"}, "ServiceNamespace" => %{"enum" => ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb"], "type" => "string"}, "MetricUnit" => %{"type" => "string"}, "MetricScale" => %{"type" => "double"}, "AdjustmentType" => %{"enum" => ["ChangeInCapacity", "PercentChangeInCapacity", "ExactCapacity"], "type" => "string"}, "DescribeScalingPoliciesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "XmlString"}, "PolicyNames" => %{"shape" => "ResourceIdsMaxLen1600"}, "ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}}, "required" => ["ServiceNamespace"], "type" => "structure"}, "MetricNamespace" => %{"type" => "string"}, "MaxResults" => %{"type" => "integer"}, "MetricName" => %{"type" => "string"}, "ValidationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ScalingActivity" => %{"members" => %{"ActivityId" => %{"shape" => "ResourceId"}, "Cause" => %{"shape" => "XmlString"}, "Description" => %{"shape" => "XmlString"}, "Details" => %{"shape" => "XmlString"}, "EndTime" => %{"shape" => "TimestampType"}, "ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}, "StartTime" => %{"shape" => "TimestampType"}, "StatusCode" => %{"shape" => "ScalingActivityStatusCode"}, "StatusMessage" => %{"shape" => "XmlString"}}, "required" => ["ActivityId", "ServiceNamespace", "ResourceId", "ScalableDimension", "Description", "Cause", "StartTime", "StatusCode"], "type" => "structure"}, "XmlString" => %{"pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "ScalingPolicy" => %{"members" => %{"Alarms" => %{"shape" => "Alarms"}, "CreationTime" => %{"shape" => "TimestampType"}, "PolicyARN" => %{"shape" => "ResourceIdMaxLen1600"}, "PolicyName" => %{"shape" => "PolicyName"}, "PolicyType" => %{"shape" => "PolicyType"}, "ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}, "StepScalingPolicyConfiguration" => %{"shape" => "StepScalingPolicyConfiguration"}, "TargetTrackingScalingPolicyConfiguration" => %{"shape" => "TargetTrackingScalingPolicyConfiguration"}}, "required" => ["PolicyARN", "PolicyName", "ServiceNamespace", "ResourceId", "ScalableDimension", "PolicyType", "CreationTime"], "type" => "structure"}, "DescribeScalingPoliciesResponse" => %{"members" => %{"NextToken" => %{"shape" => "XmlString"}, "ScalingPolicies" => %{"shape" => "ScalingPolicies"}}, "type" => "structure"}, "ResourceCapacity" => %{"type" => "integer"}, "LimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ResourceId" => %{"pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "MetricDimensions" => %{"member" => %{"shape" => "MetricDimension"}, "type" => "list"}, "ScalableDimension" => %{"enum" => ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"], "type" => "string"}, "MetricDimension" => %{"members" => %{"Name" => %{"shape" => "MetricDimensionName"}, "Value" => %{"shape" => "MetricDimensionValue"}}, "required" => ["Name", "Value"], "type" => "structure"}, "FailedResourceAccessException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InternalServiceException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DeleteScalingPolicyRequest" => %{"members" => %{"PolicyName" => %{"shape" => "ResourceIdMaxLen1600"}, "ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}}, "required" => ["PolicyName", "ServiceNamespace", "ResourceId", "ScalableDimension"], "type" => "structure"}, "ScalingAdjustment" => %{"type" => "integer"}, "DescribeScalingActivitiesResponse" => %{"members" => %{"NextToken" => %{"shape" => "XmlString"}, "ScalingActivities" => %{"shape" => "ScalingActivities"}}, "type" => "structure"}, "MetricAggregationType" => %{"enum" => ["Average", "Minimum", "Maximum"], "type" => "string"}, "DescribeScalableTargetsResponse" => %{"members" => %{"NextToken" => %{"shape" => "XmlString"}, "ScalableTargets" => %{"shape" => "ScalableTargets"}}, "type" => "structure"}, "RegisterScalableTargetResponse" => %{"members" => %{}, "type" => "structure"}, "CustomizedMetricSpecification" => %{"members" => %{"Dimensions" => %{"shape" => "MetricDimensions"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "MetricNamespace"}, "Statistic" => %{"shape" => "MetricStatistic"}, "Unit" => %{"shape" => "MetricUnit"}}, "required" => ["MetricName", "Namespace", "Statistic"], "type" => "structure"}, "TargetTrackingScalingPolicyConfiguration" => %{"members" => %{"CustomizedMetricSpecification" => %{"shape" => "CustomizedMetricSpecification"}, "DisableScaleIn" => %{"shape" => "DisableScaleIn"}, "PredefinedMetricSpecification" => %{"shape" => "PredefinedMetricSpecification"}, "ScaleInCooldown" => %{"shape" => "Cooldown"}, "ScaleOutCooldown" => %{"shape" => "Cooldown"}, "TargetValue" => %{"shape" => "MetricScale"}}, "required" => ["TargetValue"], "type" => "structure"}, "StepAdjustments" => %{"member" => %{"shape" => "StepAdjustment"}, "type" => "list"}, "StepAdjustment" => %{"members" => %{"MetricIntervalLowerBound" => %{"shape" => "MetricScale"}, "MetricIntervalUpperBound" => %{"shape" => "MetricScale"}, "ScalingAdjustment" => %{"shape" => "ScalingAdjustment"}}, "required" => ["ScalingAdjustment"], "type" => "structure"}, "DisableScaleIn" => %{"type" => "boolean"}, "DescribeScalingActivitiesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "XmlString"}, "ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}}, "required" => ["ServiceNamespace"], "type" => "structure"}, "DescribeScalableTargetsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "XmlString"}, "ResourceIds" => %{"shape" => "ResourceIdsMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}}, "required" => ["ServiceNamespace"], "type" => "structure"}, "ScalingActivityStatusCode" => %{"enum" => ["Pending", "InProgress", "Successful", "Overridden", "Unfulfilled", "Failed"], "type" => "string"}, "PolicyName" => %{"max" => 256, "min" => 1, "pattern" => "\\p{Print}+", "type" => "string"}, "ObjectNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Cooldown" => %{"type" => "integer"}, "StepScalingPolicyConfiguration" => %{"members" => %{"AdjustmentType" => %{"shape" => "AdjustmentType"}, "Cooldown" => %{"shape" => "Cooldown"}, "MetricAggregationType" => %{"shape" => "MetricAggregationType"}, "MinAdjustmentMagnitude" => %{"shape" => "MinAdjustmentMagnitude"}, "StepAdjustments" => %{"shape" => "StepAdjustments"}}, "type" => "structure"}, "ResourceIdMaxLen1600" => %{"max" => 1600, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "ResourceIdsMaxLen1600" => %{"member" => %{"shape" => "ResourceIdMaxLen1600"}, "type" => "list"}, "ResourceLabel" => %{"max" => 1023, "min" => 1, "type" => "string"}, "DeregisterScalableTargetResponse" => %{"members" => %{}, "type" => "structure"}, "ScalableTarget" => %{"members" => %{"CreationTime" => %{"shape" => "TimestampType"}, "MaxCapacity" => %{"shape" => "ResourceCapacity"}, "MinCapacity" => %{"shape" => "ResourceCapacity"}, "ResourceId" => %{"shape" => "ResourceIdMaxLen1600"}, "RoleARN" => %{"shape" => "ResourceIdMaxLen1600"}, "ScalableDimension" => %{"shape" => "ScalableDimension"}, "ServiceNamespace" => %{"shape" => "ServiceNamespace"}}, "required" => ["ServiceNamespace", "ResourceId", "ScalableDimension", "MinCapacity", "MaxCapacity", "RoleARN", "CreationTime"], "type" => "structure"}, "MetricDimensionName" => %{"type" => "string"}, "PolicyType" => %{"enum" => ["StepScaling", "TargetTrackingScaling"], "type" => "string"}, "Alarm" => %{"members" => %{"AlarmARN" => %{"shape" => "ResourceId"}, "AlarmName" => %{"shape" => "ResourceId"}}, "required" => ["AlarmName", "AlarmARN"], "type" => "structure"}, "MetricStatistic" => %{"enum" => ["Average", "Minimum", "Maximum", "SampleCount", "Sum"], "type" => "string"}}
  end
end