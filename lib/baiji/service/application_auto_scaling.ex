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
      service:        "application-autoscaling",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteScalingPolicy",
      
      target_prefix:  "AnyScaleFrontendService",
      
      type:           :json,
      method:         :post
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
      service:        "application-autoscaling",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeregisterScalableTarget",
      
      target_prefix:  "AnyScaleFrontendService",
      
      type:           :json,
      method:         :post
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
      service:        "application-autoscaling",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeScalableTargets",
      
      target_prefix:  "AnyScaleFrontendService",
      
      type:           :json,
      method:         :post
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
      service:        "application-autoscaling",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeScalingActivities",
      
      target_prefix:  "AnyScaleFrontendService",
      
      type:           :json,
      method:         :post
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
      service:        "application-autoscaling",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeScalingPolicies",
      
      target_prefix:  "AnyScaleFrontendService",
      
      type:           :json,
      method:         :post
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
      service:        "application-autoscaling",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PutScalingPolicy",
      
      target_prefix:  "AnyScaleFrontendService",
      
      type:           :json,
      method:         :post
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
      service:        "application-autoscaling",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RegisterScalableTarget",
      
      target_prefix:  "AnyScaleFrontendService",
      
      type:           :json,
      method:         :post
    }
  end
  
end