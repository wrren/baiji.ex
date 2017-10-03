defmodule Baiji.AutoScaling do
  @moduledoc """
  Auto Scaling

  Auto Scaling is designed to automatically launch or terminate EC2 instances
  based on user-defined policies, schedules, and health checks. Use this
  service in conjunction with the Amazon CloudWatch and Elastic Load
  Balancing services.
  """
  
  @doc """
  Creates or updates a lifecycle hook for the specified Auto Scaling Group.

  A lifecycle hook tells Auto Scaling that you want to perform an action on
  an instance that is not actively in service; for example, either when the
  instance launches or before the instance terminates.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

  <ol> <li> (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Auto Scaling launches
  or terminates instances.

  </li> <li> (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role
  allows Auto Scaling to publish lifecycle notifications to the target.

  </li> <li> **Create the lifecycle hook. Specify whether the hook is used
  when the instances launch or terminate.**

  </li> <li> If you need more time, record the lifecycle action heartbeat to
  keep the instance in a pending state.

  </li> <li> If you finish before the timeout period ends, complete the
  lifecycle action.

  </li> </ol> For more information, see [Auto Scaling Lifecycle
  Hooks](http://docs.aws.amazon.com/autoscaling/latest/userguide/lifecycle-hooks.html)
  in the *Auto Scaling User Guide*.

  If you exceed your maximum limit of lifecycle hooks, which by default is 50
  per Auto Scaling group, the call fails. For information about updating this
  limit, see [AWS Service
  Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
  in the *Amazon Web Services General Reference*.
  """
  def put_lifecycle_hook(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutLifecycleHook",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "PutLifecycleHookType",
      output_shape:     "PutLifecycleHookAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more Auto Scaling instances.
  """
  def describe_auto_scaling_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAutoScalingInstances",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribeAutoScalingInstancesType",
      output_shape:     "AutoScalingInstancesType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Moves the specified instances into the standby state.

  For more information, see [Temporarily Removing Instances from Your Auto
  Scaling
  Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-enter-exit-standby.html)
  in the *Auto Scaling User Guide*.
  """
  def enter_standby(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnterStandby",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "EnterStandbyQuery",
      output_shape:     "EnterStandbyAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Resumes the specified suspended Auto Scaling processes, or all suspended
  process, for the specified Auto Scaling group.

  For more information, see [Suspending and Resuming Auto Scaling
  Processes](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html)
  in the *Auto Scaling User Guide*.
  """
  def resume_processes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResumeProcesses",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "ScalingProcessQuery",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the available CloudWatch metrics for Auto Scaling.

  Note that the `GroupStandbyInstances` metric is not returned by default.
  You must explicitly request this metric when calling
  `EnableMetricsCollection`.
  """
  def describe_metric_collection_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMetricCollectionTypes",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "DescribeMetricCollectionTypesAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the scaling process types for use with `ResumeProcesses` and
  `SuspendProcesses`.
  """
  def describe_scaling_process_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScalingProcessTypes",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "ProcessesType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified notification.
  """
  def delete_notification_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteNotificationConfiguration",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DeleteNotificationConfigurationType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates or updates a policy for an Auto Scaling group. To update an
  existing policy, use the existing policy name and set the parameters you
  want to change. Any existing parameter not changed in an update to an
  existing policy is not changed in this update request.

  If you exceed your maximum limit of step adjustments, which by default is
  20 per region, the call fails. For information about updating this limit,
  see [AWS Service
  Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
  in the *Amazon Web Services General Reference*.
  """
  def put_scaling_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutScalingPolicy",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "PutScalingPolicyType",
      output_shape:     "PolicyARNType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the actions scheduled for your Auto Scaling group that haven't
  run. To describe the actions that have already run, use
  `DescribeScalingActivities`.
  """
  def describe_scheduled_actions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScheduledActions",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribeScheduledActionsType",
      output_shape:     "ScheduledActionsType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the load balancers for the specified Auto Scaling group.

  Note that this operation describes only Classic Load Balancers. If you have
  Application Load Balancers, use `DescribeLoadBalancerTargetGroups` instead.
  """
  def describe_load_balancers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBalancers",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribeLoadBalancersRequest",
      output_shape:     "DescribeLoadBalancersResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Completes the lifecycle action for the specified token or instance with the
  specified result.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

  <ol> <li> (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Auto Scaling launches
  or terminates instances.

  </li> <li> (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role
  allows Auto Scaling to publish lifecycle notifications to the target.

  </li> <li> Create the lifecycle hook. Specify whether the hook is used when
  the instances launch or terminate.

  </li> <li> If you need more time, record the lifecycle action heartbeat to
  keep the instance in a pending state.

  </li> <li> **If you finish before the timeout period ends, complete the
  lifecycle action.**

  </li> </ol> For more information, see [Auto Scaling
  Lifecycle](http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html)
  in the *Auto Scaling User Guide*.
  """
  def complete_lifecycle_action(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CompleteLifecycleAction",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "CompleteLifecycleActionType",
      output_shape:     "CompleteLifecycleActionAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes one or more instances from the specified Auto Scaling group.

  After the instances are detached, you can manage them independent of the
  Auto Scaling group.

  If you do not specify the option to decrement the desired capacity, Auto
  Scaling launches instances to replace the ones that are detached.

  If there is a Classic Load Balancer attached to the Auto Scaling group, the
  instances are deregistered from the load balancer. If there are target
  groups attached to the Auto Scaling group, the instances are deregistered
  from the target groups.

  For more information, see [Detach EC2 Instances from Your Auto Scaling
  Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/detach-instance-asg.html)
  in the *Auto Scaling User Guide*.
  """
  def detach_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DetachInstances",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DetachInstancesQuery",
      output_shape:     "DetachInstancesAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more launch configurations.
  """
  def describe_launch_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLaunchConfigurations",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "LaunchConfigurationNamesType",
      output_shape:     "LaunchConfigurationsType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the notification types that are supported by Auto Scaling.
  """
  def describe_auto_scaling_notification_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAutoScalingNotificationTypes",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "DescribeAutoScalingNotificationTypesAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Attaches one or more target groups to the specified Auto Scaling group.

  To describe the target groups for an Auto Scaling group, use
  `DescribeLoadBalancerTargetGroups`. To detach the target group from the
  Auto Scaling group, use `DetachLoadBalancerTargetGroups`.

  For more information, see [Attach a Load Balancer to Your Auto Scaling
  Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-load-balancer-asg.html)
  in the *Auto Scaling User Guide*.
  """
  def attach_load_balancer_target_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AttachLoadBalancerTargetGroups",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "AttachLoadBalancerTargetGroupsType",
      output_shape:     "AttachLoadBalancerTargetGroupsResultType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the configuration for the specified Auto Scaling group.

  The new settings take effect on any scaling activities after this call
  returns. Scaling activities that are currently in progress aren't affected.

  To update an Auto Scaling group with a launch configuration with
  `InstanceMonitoring` set to `false`, you must first disable the collection
  of group metrics. Otherwise, you will get an error. If you have previously
  enabled the collection of group metrics, you can disable it using
  `DisableMetricsCollection`.

  Note the following:

  <ul> <li> If you specify a new value for `MinSize` without specifying a
  value for `DesiredCapacity`, and the new `MinSize` is larger than the
  current size of the group, we implicitly call `SetDesiredCapacity` to set
  the size of the group to the new value of `MinSize`.

  </li> <li> If you specify a new value for `MaxSize` without specifying a
  value for `DesiredCapacity`, and the new `MaxSize` is smaller than the
  current size of the group, we implicitly call `SetDesiredCapacity` to set
  the size of the group to the new value of `MaxSize`.

  </li> <li> All other optional parameters are left unchanged if not
  specified.

  </li> </ul>
  """
  def update_auto_scaling_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateAutoScalingGroup",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "UpdateAutoScalingGroupType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Terminates the specified instance and optionally adjusts the desired group
  size.

  This call simply makes a termination request. The instance is not
  terminated immediately.
  """
  def terminate_instance_in_auto_scaling_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TerminateInstanceInAutoScalingGroup",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "TerminateInstanceInAutoScalingGroupType",
      output_shape:     "ActivityType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a launch configuration.

  If you exceed your maximum limit of launch configurations, which by default
  is 100 per region, the call fails. For information about viewing and
  updating this limit, see `DescribeAccountLimits`.

  For more information, see [Launch
  Configurations](http://docs.aws.amazon.com/autoscaling/latest/userguide/LaunchConfiguration.html)
  in the *Auto Scaling User Guide*.
  """
  def create_launch_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateLaunchConfiguration",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "CreateLaunchConfigurationType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Configures an Auto Scaling group to send notifications when specified
  events take place. Subscribers to the specified topic can have messages
  delivered to an endpoint such as a web server or an email address.

  This configuration overwrites any existing configuration.

  For more information see [Getting SNS Notifications When Your Auto Scaling
  Group
  Scales](http://docs.aws.amazon.com/autoscaling/latest/userguide/ASGettingNotifications.html)
  in the *Auto Scaling User Guide*.
  """
  def put_notification_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutNotificationConfiguration",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "PutNotificationConfigurationType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified Auto Scaling group.

  If the group has instances or scaling activities in progress, you must
  specify the option to force the deletion in order for it to succeed.

  If the group has policies, deleting the group deletes the policies, the
  underlying alarm actions, and any alarm that no longer has an associated
  action.

  To remove instances from the Auto Scaling group before deleting it, call
  `DetachInstances` with the list of instances and the option to decrement
  the desired capacity so that Auto Scaling does not launch replacement
  instances.

  To terminate all instances before deleting the Auto Scaling group, call
  `UpdateAutoScalingGroup` and set the minimum size and desired capacity of
  the Auto Scaling group to zero.
  """
  def delete_auto_scaling_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteAutoScalingGroup",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DeleteAutoScalingGroupType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Moves the specified instances out of the standby state.

  For more information, see [Temporarily Removing Instances from Your Auto
  Scaling
  Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-enter-exit-standby.html)
  in the *Auto Scaling User Guide*.
  """
  def exit_standby(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ExitStandby",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "ExitStandbyQuery",
      output_shape:     "ExitStandbyAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Executes the specified policy.
  """
  def execute_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ExecutePolicy",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "ExecutePolicyType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Enables group metrics for the specified Auto Scaling group. For more
  information, see [Monitoring Your Auto Scaling Groups and
  Instances](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-monitoring.html)
  in the *Auto Scaling User Guide*.
  """
  def enable_metrics_collection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableMetricsCollection",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "EnableMetricsCollectionQuery",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more scaling activities for the specified Auto Scaling
  group.
  """
  def describe_scaling_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScalingActivities",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribeScalingActivitiesType",
      output_shape:     "ActivitiesType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified scheduled action.
  """
  def delete_scheduled_action(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteScheduledAction",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DeleteScheduledActionType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the policies for the specified Auto Scaling group.
  """
  def describe_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePolicies",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribePoliciesType",
      output_shape:     "PoliciesType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Detaches one or more target groups from the specified Auto Scaling group.
  """
  def detach_load_balancer_target_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DetachLoadBalancerTargetGroups",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DetachLoadBalancerTargetGroupsType",
      output_shape:     "DetachLoadBalancerTargetGroupsResultType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the lifecycle hooks for the specified Auto Scaling group.
  """
  def describe_lifecycle_hooks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLifecycleHooks",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribeLifecycleHooksType",
      output_shape:     "DescribeLifecycleHooksAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the target groups for the specified Auto Scaling group.
  """
  def describe_load_balancer_target_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBalancerTargetGroups",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribeLoadBalancerTargetGroupsRequest",
      output_shape:     "DescribeLoadBalancerTargetGroupsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified lifecycle hook.

  If there are any outstanding lifecycle actions, they are completed first
  (`ABANDON` for launching instances, `CONTINUE` for terminating instances).
  """
  def delete_lifecycle_hook(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteLifecycleHook",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DeleteLifecycleHookType",
      output_shape:     "DeleteLifecycleHookAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the instance protection settings of the specified instances.

  For more information, see [Instance
  Protection](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-termination.html#instance-protection)
  in the *Auto Scaling User Guide*.
  """
  def set_instance_protection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetInstanceProtection",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "SetInstanceProtectionQuery",
      output_shape:     "SetInstanceProtectionAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Suspends the specified Auto Scaling processes, or all processes, for the
  specified Auto Scaling group.

  Note that if you suspend either the `Launch` or `Terminate` process types,
  it can prevent other process types from functioning properly.

  To resume processes that have been suspended, use `ResumeProcesses`.

  For more information, see [Suspending and Resuming Auto Scaling
  Processes](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html)
  in the *Auto Scaling User Guide*.
  """
  def suspend_processes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SuspendProcesses",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "ScalingProcessQuery",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more Auto Scaling groups.
  """
  def describe_auto_scaling_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAutoScalingGroups",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "AutoScalingGroupNamesType",
      output_shape:     "AutoScalingGroupsType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Attaches one or more Classic Load Balancers to the specified Auto Scaling
  group.

  To attach an Application Load Balancer instead, see
  `AttachLoadBalancerTargetGroups`.

  To describe the load balancers for an Auto Scaling group, use
  `DescribeLoadBalancers`. To detach the load balancer from the Auto Scaling
  group, use `DetachLoadBalancers`.

  For more information, see [Attach a Load Balancer to Your Auto Scaling
  Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-load-balancer-asg.html)
  in the *Auto Scaling User Guide*.
  """
  def attach_load_balancers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AttachLoadBalancers",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "AttachLoadBalancersType",
      output_shape:     "AttachLoadBalancersResultType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified tags.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTags",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DeleteTagsType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disables group metrics for the specified Auto Scaling group.
  """
  def disable_metrics_collection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableMetricsCollection",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DisableMetricsCollectionQuery",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the available types of lifecycle hooks.
  """
  def describe_lifecycle_hook_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLifecycleHookTypes",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "DescribeLifecycleHookTypesAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified tags.

  You can use filters to limit the results. For example, you can query for
  the tags for a specific Auto Scaling group. You can specify multiple values
  for a filter. A tag must match at least one of the specified values for it
  to be included in the results.

  You can also specify multiple filters. The result includes information for
  a particular tag only if it matches all the filters. If there's no match,
  no special message is returned.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribeTagsType",
      output_shape:     "TagsType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates or updates tags for the specified Auto Scaling group.

  When you specify a tag with a key that already exists, the operation
  overwrites the previous tag definition, and you do not get an error
  message.

  For more information, see [Tagging Auto Scaling Groups and
  Instances](http://docs.aws.amazon.com/autoscaling/latest/userguide/autoscaling-tagging.html)
  in the *Auto Scaling User Guide*.
  """
  def create_or_update_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateOrUpdateTags",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "CreateOrUpdateTagsType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the policy adjustment types for use with `PutScalingPolicy`.
  """
  def describe_adjustment_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAdjustmentTypes",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "DescribeAdjustmentTypesAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified Auto Scaling policy.

  Deleting a policy deletes the underlying alarm action, but does not delete
  the alarm, even if it no longer has an associated action.
  """
  def delete_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeletePolicy",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DeletePolicyType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Records a heartbeat for the lifecycle action associated with the specified
  token or instance. This extends the timeout by the length of time defined
  using `PutLifecycleHook`.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

  <ol> <li> (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Auto Scaling launches
  or terminates instances.

  </li> <li> (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role
  allows Auto Scaling to publish lifecycle notifications to the target.

  </li> <li> Create the lifecycle hook. Specify whether the hook is used when
  the instances launch or terminate.

  </li> <li> **If you need more time, record the lifecycle action heartbeat
  to keep the instance in a pending state.**

  </li> <li> If you finish before the timeout period ends, complete the
  lifecycle action.

  </li> </ol> For more information, see [Auto Scaling
  Lifecycle](http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html)
  in the *Auto Scaling User Guide*.
  """
  def record_lifecycle_action_heartbeat(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RecordLifecycleActionHeartbeat",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "RecordLifecycleActionHeartbeatType",
      output_shape:     "RecordLifecycleActionHeartbeatAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets the size of the specified Auto Scaling group.

  For more information about desired capacity, see [What Is Auto
  Scaling?](http://docs.aws.amazon.com/autoscaling/latest/userguide/WhatIsAutoScaling.html)
  in the *Auto Scaling User Guide*.
  """
  def set_desired_capacity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetDesiredCapacity",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "SetDesiredCapacityType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Detaches one or more Classic Load Balancers from the specified Auto Scaling
  group.

  Note that this operation detaches only Classic Load Balancers. If you have
  Application Load Balancers, use `DetachLoadBalancerTargetGroups` instead.

  When you detach a load balancer, it enters the `Removing` state while
  deregistering the instances in the group. When all instances are
  deregistered, then you can no longer describe the load balancer using
  `DescribeLoadBalancers`. Note that the instances remain running.
  """
  def detach_load_balancers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DetachLoadBalancers",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DetachLoadBalancersType",
      output_shape:     "DetachLoadBalancersResultType",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an Auto Scaling group with the specified name and attributes.

  If you exceed your maximum limit of Auto Scaling groups, which by default
  is 20 per region, the call fails. For information about viewing and
  updating this limit, see `DescribeAccountLimits`.

  For more information, see [Auto Scaling
  Groups](http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroup.html)
  in the *Auto Scaling User Guide*.
  """
  def create_auto_scaling_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateAutoScalingGroup",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "CreateAutoScalingGroupType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Attaches one or more EC2 instances to the specified Auto Scaling group.

  When you attach instances, Auto Scaling increases the desired capacity of
  the group by the number of instances being attached. If the number of
  instances being attached plus the desired capacity of the group exceeds the
  maximum size of the group, the operation fails.

  If there is a Classic Load Balancer attached to your Auto Scaling group,
  the instances are also registered with the load balancer. If there are
  target groups attached to your Auto Scaling group, the instances are also
  registered with the target groups.

  For more information, see [Attach EC2 Instances to Your Auto Scaling
  Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-instance-asg.html)
  in the *Auto Scaling User Guide*.
  """
  def attach_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AttachInstances",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "AttachInstancesQuery",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the termination policies supported by Auto Scaling.
  """
  def describe_termination_policy_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTerminationPolicyTypes",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "DescribeTerminationPolicyTypesAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified launch configuration.

  The launch configuration must not be attached to an Auto Scaling group.
  When this call completes, the launch configuration is no longer available
  for use.
  """
  def delete_launch_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteLaunchConfiguration",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "LaunchConfigurationNameType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the notification actions associated with the specified Auto
  Scaling group.
  """
  def describe_notification_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNotificationConfigurations",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "DescribeNotificationConfigurationsType",
      output_shape:     "DescribeNotificationConfigurationsAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets the health status of the specified instance.

  For more information, see [Health
  Checks](http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html)
  in the *Auto Scaling User Guide*.
  """
  def set_instance_health(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetInstanceHealth",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "SetInstanceHealthQuery",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the current Auto Scaling resource limits for your AWS account.

  For information about requesting an increase in these limits, see [AWS
  Service
  Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
  in the *Amazon Web Services General Reference*.
  """
  def describe_account_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAccountLimits",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "DescribeAccountLimitsAnswer",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates or updates a scheduled scaling action for an Auto Scaling group.
  When updating a scheduled scaling action, if you leave a parameter
  unspecified, the corresponding value remains unchanged.

  For more information, see [Scheduled
  Scaling](http://docs.aws.amazon.com/autoscaling/latest/userguide/schedule_time.html)
  in the *Auto Scaling User Guide*.
  """
  def put_scheduled_update_group_action(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "autoscaling",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutScheduledUpdateGroupAction",
      
      endpoint_prefix:  "autoscaling",
      type:             :xml,
      version:          "2011-01-01",
      method:           :post,
      input_shape:      "PutScheduledUpdateGroupActionType",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"XmlStringMaxLen1600" => %{"max" => 1600, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "DeleteNotificationConfigurationType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "TopicARN" => %{"shape" => "ResourceName"}}, "required" => ["AutoScalingGroupName", "TopicARN"], "type" => "structure"}, "AdjustmentTypes" => %{"member" => %{"shape" => "AdjustmentType"}, "type" => "list"}, "XmlStringMaxLen511" => %{"max" => 511, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "Alarms" => %{"member" => %{"shape" => "Alarm"}, "type" => "list"}, "MetricGranularityType" => %{"members" => %{"Granularity" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "RecordLifecycleActionHeartbeatAnswer" => %{"members" => %{}, "type" => "structure"}, "ScheduledActionNames" => %{"member" => %{"shape" => "ResourceName"}, "type" => "list"}, "TimestampType" => %{"type" => "timestamp"}, "PolicyARNType" => %{"members" => %{"Alarms" => %{"shape" => "Alarms"}, "PolicyARN" => %{"shape" => "ResourceName"}}, "type" => "structure"}, "TagDescriptionList" => %{"member" => %{"shape" => "TagDescription"}, "type" => "list"}, "PutNotificationConfigurationType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "NotificationTypes" => %{"shape" => "AutoScalingNotificationTypes"}, "TopicARN" => %{"shape" => "ResourceName"}}, "required" => ["AutoScalingGroupName", "TopicARN", "NotificationTypes"], "type" => "structure"}, "MetricType" => %{"enum" => ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"], "type" => "string"}, "AttachLoadBalancersType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "LoadBalancerNames" => %{"shape" => "LoadBalancerNames"}}, "required" => ["AutoScalingGroupName", "LoadBalancerNames"], "type" => "structure"}, "ResourceContentionFault" => %{"error" => %{"code" => "ResourceContention", "httpStatusCode" => 500, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "AutoScalingInstanceDetails" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "XmlStringMaxLen255"}, "AvailabilityZone" => %{"shape" => "XmlStringMaxLen255"}, "HealthStatus" => %{"shape" => "XmlStringMaxLen32"}, "InstanceId" => %{"shape" => "XmlStringMaxLen19"}, "LaunchConfigurationName" => %{"shape" => "XmlStringMaxLen255"}, "LifecycleState" => %{"shape" => "XmlStringMaxLen32"}, "ProtectedFromScaleIn" => %{"shape" => "InstanceProtected"}}, "required" => ["InstanceId", "AutoScalingGroupName", "AvailabilityZone", "LifecycleState", "HealthStatus", "LaunchConfigurationName", "ProtectedFromScaleIn"], "type" => "structure"}, "ActivityType" => %{"members" => %{"Activity" => %{"shape" => "Activity"}}, "type" => "structure"}, "HealthCheckGracePeriod" => %{"type" => "integer"}, "BlockDeviceMappings" => %{"member" => %{"shape" => "BlockDeviceMapping"}, "type" => "list"}, "ClassicLinkVPCSecurityGroups" => %{"member" => %{"shape" => "XmlStringMaxLen255"}, "type" => "list"}, "Processes" => %{"member" => %{"shape" => "ProcessType"}, "type" => "list"}, "CreateOrUpdateTagsType" => %{"members" => %{"Tags" => %{"shape" => "Tags"}}, "required" => ["Tags"], "type" => "structure"}, "DescribeAutoScalingInstancesType" => %{"members" => %{"InstanceIds" => %{"shape" => "InstanceIds"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "DisableMetricsCollectionQuery" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "Metrics" => %{"shape" => "Metrics"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "CreateLaunchConfigurationType" => %{"members" => %{"AssociatePublicIpAddress" => %{"shape" => "AssociatePublicIpAddress"}, "BlockDeviceMappings" => %{"shape" => "BlockDeviceMappings"}, "ClassicLinkVPCId" => %{"shape" => "XmlStringMaxLen255"}, "ClassicLinkVPCSecurityGroups" => %{"shape" => "ClassicLinkVPCSecurityGroups"}, "EbsOptimized" => %{"shape" => "EbsOptimized"}, "IamInstanceProfile" => %{"shape" => "XmlStringMaxLen1600"}, "ImageId" => %{"shape" => "XmlStringMaxLen255"}, "InstanceId" => %{"shape" => "XmlStringMaxLen19"}, "InstanceMonitoring" => %{"shape" => "InstanceMonitoring"}, "InstanceType" => %{"shape" => "XmlStringMaxLen255"}, "KernelId" => %{"shape" => "XmlStringMaxLen255"}, "KeyName" => %{"shape" => "XmlStringMaxLen255"}, "LaunchConfigurationName" => %{"shape" => "XmlStringMaxLen255"}, "PlacementTenancy" => %{"shape" => "XmlStringMaxLen64"}, "RamdiskId" => %{"shape" => "XmlStringMaxLen255"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}, "SpotPrice" => %{"shape" => "SpotPrice"}, "UserData" => %{"shape" => "XmlStringUserData"}}, "required" => ["LaunchConfigurationName"], "type" => "structure"}, "PolicyTypes" => %{"member" => %{"shape" => "XmlStringMaxLen64"}, "type" => "list"}, "BlockDeviceEbsIops" => %{"max" => 20000, "min" => 100, "type" => "integer"}, "ScalingActivityInProgressFault" => %{"error" => %{"code" => "ScalingActivityInProgress", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "ProtectedFromScaleIn" => %{"type" => "boolean"}, "CompleteLifecycleActionAnswer" => %{"members" => %{}, "type" => "structure"}, "LaunchConfigurationsType" => %{"members" => %{"LaunchConfigurations" => %{"shape" => "LaunchConfigurations"}, "NextToken" => %{"shape" => "XmlString"}}, "required" => ["LaunchConfigurations"], "type" => "structure"}, "ScalingProcessQuery" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "ScalingProcesses" => %{"shape" => "ProcessNames"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "ProcessType" => %{"members" => %{"ProcessName" => %{"shape" => "XmlStringMaxLen255"}}, "required" => ["ProcessName"], "type" => "structure"}, "DeleteLifecycleHookAnswer" => %{"members" => %{}, "type" => "structure"}, "DescribeLifecycleHooksType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "LifecycleHookNames" => %{"shape" => "LifecycleHookNames"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "ExitStandbyQuery" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "InstanceIds" => %{"shape" => "InstanceIds"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "ShouldDecrementDesiredCapacity" => %{"type" => "boolean"}, "GlobalTimeout" => %{"type" => "integer"}, "MinAdjustmentStep" => %{"deprecated" => true, "type" => "integer"}, "EnableMetricsCollectionQuery" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "Granularity" => %{"shape" => "XmlStringMaxLen255"}, "Metrics" => %{"shape" => "Metrics"}}, "required" => ["AutoScalingGroupName", "Granularity"], "type" => "structure"}, "TerminationPolicies" => %{"member" => %{"shape" => "XmlStringMaxLen1600"}, "type" => "list"}, "AlreadyExistsFault" => %{"error" => %{"code" => "AlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "DescribeAdjustmentTypesAnswer" => %{"members" => %{"AdjustmentTypes" => %{"shape" => "AdjustmentTypes"}}, "type" => "structure"}, "DescribeLoadBalancersResponse" => %{"members" => %{"LoadBalancers" => %{"shape" => "LoadBalancerStates"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "PoliciesType" => %{"members" => %{"NextToken" => %{"shape" => "XmlString"}, "ScalingPolicies" => %{"shape" => "ScalingPolicies"}}, "type" => "structure"}, "XmlStringMaxLen2047" => %{"max" => 2047, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "AutoScalingGroupMinSize" => %{"type" => "integer"}, "DeleteAutoScalingGroupType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "ForceDelete" => %{"shape" => "ForceDelete"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "DescribeAutoScalingNotificationTypesAnswer" => %{"members" => %{"AutoScalingNotificationTypes" => %{"shape" => "AutoScalingNotificationTypes"}}, "type" => "structure"}, "SpotPrice" => %{"max" => 255, "min" => 1, "type" => "string"}, "MinAdjustmentMagnitude" => %{"type" => "integer"}, "DescribeScheduledActionsType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "EndTime" => %{"shape" => "TimestampType"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}, "ScheduledActionNames" => %{"shape" => "ScheduledActionNames"}, "StartTime" => %{"shape" => "TimestampType"}}, "type" => "structure"}, "LifecycleActionResult" => %{"type" => "string"}, "CompleteLifecycleActionType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "InstanceId" => %{"shape" => "XmlStringMaxLen19"}, "LifecycleActionResult" => %{"shape" => "LifecycleActionResult"}, "LifecycleActionToken" => %{"shape" => "LifecycleActionToken"}, "LifecycleHookName" => %{"shape" => "AsciiStringMaxLen255"}}, "required" => ["LifecycleHookName", "AutoScalingGroupName", "LifecycleActionResult"], "type" => "structure"}, "ProcessNames" => %{"member" => %{"shape" => "XmlStringMaxLen255"}, "type" => "list"}, "LoadBalancerTargetGroupState" => %{"members" => %{"LoadBalancerTargetGroupARN" => %{"shape" => "XmlStringMaxLen511"}, "State" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "AutoScalingInstances" => %{"member" => %{"shape" => "AutoScalingInstanceDetails"}, "type" => "list"}, "AutoScalingGroupMaxSize" => %{"type" => "integer"}, "LoadBalancerStates" => %{"member" => %{"shape" => "LoadBalancerState"}, "type" => "list"}, "ScalingPolicies" => %{"member" => %{"shape" => "ScalingPolicy"}, "type" => "list"}, "DetachLoadBalancersType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "LoadBalancerNames" => %{"shape" => "LoadBalancerNames"}}, "required" => ["AutoScalingGroupName", "LoadBalancerNames"], "type" => "structure"}, "LifecycleHook" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "DefaultResult" => %{"shape" => "LifecycleActionResult"}, "GlobalTimeout" => %{"shape" => "GlobalTimeout"}, "HeartbeatTimeout" => %{"shape" => "HeartbeatTimeout"}, "LifecycleHookName" => %{"shape" => "AsciiStringMaxLen255"}, "LifecycleTransition" => %{"shape" => "LifecycleTransition"}, "NotificationMetadata" => %{"shape" => "XmlStringMaxLen1023"}, "NotificationTargetARN" => %{"shape" => "ResourceName"}, "RoleARN" => %{"shape" => "ResourceName"}}, "type" => "structure"}, "MaxNumberOfLaunchConfigurations" => %{"type" => "integer"}, "Values" => %{"member" => %{"shape" => "XmlString"}, "type" => "list"}, "DescribeTerminationPolicyTypesAnswer" => %{"members" => %{"TerminationPolicyTypes" => %{"shape" => "TerminationPolicies"}}, "type" => "structure"}, "LifecycleTransition" => %{"type" => "string"}, "PutLifecycleHookAnswer" => %{"members" => %{}, "type" => "structure"}, "Activities" => %{"member" => %{"shape" => "Activity"}, "type" => "list"}, "InvalidNextToken" => %{"error" => %{"code" => "InvalidNextToken", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "Filter" => %{"members" => %{"Name" => %{"shape" => "XmlString"}, "Values" => %{"shape" => "Values"}}, "type" => "structure"}, "DetachLoadBalancersResultType" => %{"members" => %{}, "type" => "structure"}, "MetricDimensionValue" => %{"type" => "string"}, "PredefinedMetricSpecification" => %{"members" => %{"PredefinedMetricType" => %{"shape" => "MetricType"}, "ResourceLabel" => %{"shape" => "XmlStringMaxLen1023"}}, "required" => ["PredefinedMetricType"], "type" => "structure"}, "ScheduledActionsType" => %{"members" => %{"NextToken" => %{"shape" => "XmlString"}, "ScheduledUpdateGroupActions" => %{"shape" => "ScheduledUpdateGroupActions"}}, "type" => "structure"}, "Ebs" => %{"members" => %{"DeleteOnTermination" => %{"shape" => "BlockDeviceEbsDeleteOnTermination"}, "Encrypted" => %{"shape" => "BlockDeviceEbsEncrypted"}, "Iops" => %{"shape" => "BlockDeviceEbsIops"}, "SnapshotId" => %{"shape" => "XmlStringMaxLen255"}, "VolumeSize" => %{"shape" => "BlockDeviceEbsVolumeSize"}, "VolumeType" => %{"shape" => "BlockDeviceEbsVolumeType"}}, "type" => "structure"}, "PutScalingPolicyType" => %{"members" => %{"AdjustmentType" => %{"shape" => "XmlStringMaxLen255"}, "AutoScalingGroupName" => %{"shape" => "ResourceName"}, "Cooldown" => %{"shape" => "Cooldown"}, "EstimatedInstanceWarmup" => %{"shape" => "EstimatedInstanceWarmup"}, "MetricAggregationType" => %{"shape" => "XmlStringMaxLen32"}, "MinAdjustmentMagnitude" => %{"shape" => "MinAdjustmentMagnitude"}, "MinAdjustmentStep" => %{"shape" => "MinAdjustmentStep"}, "PolicyName" => %{"shape" => "XmlStringMaxLen255"}, "PolicyType" => %{"shape" => "XmlStringMaxLen64"}, "ScalingAdjustment" => %{"shape" => "PolicyIncrement"}, "StepAdjustments" => %{"shape" => "StepAdjustments"}, "TargetTrackingConfiguration" => %{"shape" => "TargetTrackingConfiguration"}}, "required" => ["AutoScalingGroupName", "PolicyName"], "type" => "structure"}, "ProcessesType" => %{"members" => %{"Processes" => %{"shape" => "Processes"}}, "type" => "structure"}, "TargetGroupARNs" => %{"member" => %{"shape" => "XmlStringMaxLen511"}, "type" => "list"}, "BlockDeviceEbsDeleteOnTermination" => %{"type" => "boolean"}, "TagsType" => %{"members" => %{"NextToken" => %{"shape" => "XmlString"}, "Tags" => %{"shape" => "TagDescriptionList"}}, "type" => "structure"}, "DescribeLoadBalancersRequest" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "DescribeTagsType" => %{"members" => %{"Filters" => %{"shape" => "Filters"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "DescribeLifecycleHookTypesAnswer" => %{"members" => %{"LifecycleHookTypes" => %{"shape" => "AutoScalingNotificationTypes"}}, "type" => "structure"}, "XmlStringMaxLen1023" => %{"max" => 1023, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "RecordLifecycleActionHeartbeatType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "InstanceId" => %{"shape" => "XmlStringMaxLen19"}, "LifecycleActionToken" => %{"shape" => "LifecycleActionToken"}, "LifecycleHookName" => %{"shape" => "AsciiStringMaxLen255"}}, "required" => ["LifecycleHookName", "AutoScalingGroupName"], "type" => "structure"}, "SecurityGroups" => %{"member" => %{"shape" => "XmlString"}, "type" => "list"}, "DeleteTagsType" => %{"members" => %{"Tags" => %{"shape" => "Tags"}}, "required" => ["Tags"], "type" => "structure"}, "DescribeMetricCollectionTypesAnswer" => %{"members" => %{"Granularities" => %{"shape" => "MetricGranularityTypes"}, "Metrics" => %{"shape" => "MetricCollectionTypes"}}, "type" => "structure"}, "ActivityIds" => %{"member" => %{"shape" => "XmlString"}, "type" => "list"}, "Tags" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "PropagateAtLaunch" => %{"shape" => "PropagateAtLaunch"}, "ResourceId" => %{"shape" => "XmlString"}, "ResourceType" => %{"shape" => "XmlString"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key"], "type" => "structure"}, "MetricUnit" => %{"type" => "string"}, "DeleteScheduledActionType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "ScheduledActionName" => %{"shape" => "ResourceName"}}, "required" => ["AutoScalingGroupName", "ScheduledActionName"], "type" => "structure"}, "LifecycleActionToken" => %{"max" => 36, "min" => 36, "type" => "string"}, "MetricScale" => %{"type" => "double"}, "LimitExceededFault" => %{"error" => %{"code" => "LimitExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "NumberOfLaunchConfigurations" => %{"type" => "integer"}, "AutoScalingGroupDesiredCapacity" => %{"type" => "integer"}, "AutoScalingGroupsType" => %{"members" => %{"AutoScalingGroups" => %{"shape" => "AutoScalingGroups"}, "NextToken" => %{"shape" => "XmlString"}}, "required" => ["AutoScalingGroups"], "type" => "structure"}, "AdjustmentType" => %{"members" => %{"AdjustmentType" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "EnterStandbyAnswer" => %{"members" => %{"Activities" => %{"shape" => "Activities"}}, "type" => "structure"}, "LoadBalancerState" => %{"members" => %{"LoadBalancerName" => %{"shape" => "XmlStringMaxLen255"}, "State" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "ScheduledUpdateGroupActions" => %{"member" => %{"shape" => "ScheduledUpdateGroupAction"}, "type" => "list"}, "MetricNamespace" => %{"type" => "string"}, "AssociatePublicIpAddress" => %{"type" => "boolean"}, "AsciiStringMaxLen255" => %{"max" => 255, "min" => 1, "pattern" => "[A-Za-z0-9\\-_\\/]+", "type" => "string"}, "TagValue" => %{"max" => 256, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "DetachInstancesAnswer" => %{"members" => %{"Activities" => %{"shape" => "Activities"}}, "type" => "structure"}, "XmlStringMaxLen64" => %{"max" => 64, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "MetricName" => %{"type" => "string"}, "Metrics" => %{"member" => %{"shape" => "XmlStringMaxLen255"}, "type" => "list"}, "MaxRecords" => %{"type" => "integer"}, "HeartbeatTimeout" => %{"type" => "integer"}, "XmlStringMaxLen19" => %{"max" => 19, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "UpdateAutoScalingGroupType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "DefaultCooldown" => %{"shape" => "Cooldown"}, "DesiredCapacity" => %{"shape" => "AutoScalingGroupDesiredCapacity"}, "HealthCheckGracePeriod" => %{"shape" => "HealthCheckGracePeriod"}, "HealthCheckType" => %{"shape" => "XmlStringMaxLen32"}, "LaunchConfigurationName" => %{"shape" => "ResourceName"}, "MaxSize" => %{"shape" => "AutoScalingGroupMaxSize"}, "MinSize" => %{"shape" => "AutoScalingGroupMinSize"}, "NewInstancesProtectedFromScaleIn" => %{"shape" => "InstanceProtected"}, "PlacementGroup" => %{"shape" => "XmlStringMaxLen255"}, "TerminationPolicies" => %{"shape" => "TerminationPolicies"}, "VPCZoneIdentifier" => %{"shape" => "XmlStringMaxLen2047"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "XmlString" => %{"pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "LifecycleHookNames" => %{"max" => 50, "member" => %{"shape" => "AsciiStringMaxLen255"}, "type" => "list"}, "Instances" => %{"member" => %{"shape" => "Instance"}, "type" => "list"}, "ScalingPolicy" => %{"members" => %{"AdjustmentType" => %{"shape" => "XmlStringMaxLen255"}, "Alarms" => %{"shape" => "Alarms"}, "AutoScalingGroupName" => %{"shape" => "XmlStringMaxLen255"}, "Cooldown" => %{"shape" => "Cooldown"}, "EstimatedInstanceWarmup" => %{"shape" => "EstimatedInstanceWarmup"}, "MetricAggregationType" => %{"shape" => "XmlStringMaxLen32"}, "MinAdjustmentMagnitude" => %{"shape" => "MinAdjustmentMagnitude"}, "MinAdjustmentStep" => %{"shape" => "MinAdjustmentStep"}, "PolicyARN" => %{"shape" => "ResourceName"}, "PolicyName" => %{"shape" => "XmlStringMaxLen255"}, "PolicyType" => %{"shape" => "XmlStringMaxLen64"}, "ScalingAdjustment" => %{"shape" => "PolicyIncrement"}, "StepAdjustments" => %{"shape" => "StepAdjustments"}, "TargetTrackingConfiguration" => %{"shape" => "TargetTrackingConfiguration"}}, "type" => "structure"}, "PolicyIncrement" => %{"type" => "integer"}, "SuspendedProcesses" => %{"member" => %{"shape" => "SuspendedProcess"}, "type" => "list"}, "DeleteLifecycleHookType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "LifecycleHookName" => %{"shape" => "AsciiStringMaxLen255"}}, "required" => ["LifecycleHookName", "AutoScalingGroupName"], "type" => "structure"}, "TerminateInstanceInAutoScalingGroupType" => %{"members" => %{"InstanceId" => %{"shape" => "XmlStringMaxLen19"}, "ShouldDecrementDesiredCapacity" => %{"shape" => "ShouldDecrementDesiredCapacity"}}, "required" => ["InstanceId", "ShouldDecrementDesiredCapacity"], "type" => "structure"}, "InstanceMonitoring" => %{"members" => %{"Enabled" => %{"shape" => "MonitoringEnabled"}}, "type" => "structure"}, "ForceDelete" => %{"type" => "boolean"}, "LaunchConfiguration" => %{"members" => %{"AssociatePublicIpAddress" => %{"shape" => "AssociatePublicIpAddress"}, "BlockDeviceMappings" => %{"shape" => "BlockDeviceMappings"}, "ClassicLinkVPCId" => %{"shape" => "XmlStringMaxLen255"}, "ClassicLinkVPCSecurityGroups" => %{"shape" => "ClassicLinkVPCSecurityGroups"}, "CreatedTime" => %{"shape" => "TimestampType"}, "EbsOptimized" => %{"shape" => "EbsOptimized"}, "IamInstanceProfile" => %{"shape" => "XmlStringMaxLen1600"}, "ImageId" => %{"shape" => "XmlStringMaxLen255"}, "InstanceMonitoring" => %{"shape" => "InstanceMonitoring"}, "InstanceType" => %{"shape" => "XmlStringMaxLen255"}, "KernelId" => %{"shape" => "XmlStringMaxLen255"}, "KeyName" => %{"shape" => "XmlStringMaxLen255"}, "LaunchConfigurationARN" => %{"shape" => "ResourceName"}, "LaunchConfigurationName" => %{"shape" => "XmlStringMaxLen255"}, "PlacementTenancy" => %{"shape" => "XmlStringMaxLen64"}, "RamdiskId" => %{"shape" => "XmlStringMaxLen255"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}, "SpotPrice" => %{"shape" => "SpotPrice"}, "UserData" => %{"shape" => "XmlStringUserData"}}, "required" => ["LaunchConfigurationName", "ImageId", "InstanceType", "CreatedTime"], "type" => "structure"}, "TagDescription" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "PropagateAtLaunch" => %{"shape" => "PropagateAtLaunch"}, "ResourceId" => %{"shape" => "XmlString"}, "ResourceType" => %{"shape" => "XmlString"}, "Value" => %{"shape" => "TagValue"}}, "type" => "structure"}, "Filters" => %{"member" => %{"shape" => "Filter"}, "type" => "list"}, "PropagateAtLaunch" => %{"type" => "boolean"}, "LifecycleState" => %{"enum" => ["Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby"], "type" => "string"}, "DescribeNotificationConfigurationsType" => %{"members" => %{"AutoScalingGroupNames" => %{"shape" => "AutoScalingGroupNames"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "MetricDimensions" => %{"member" => %{"shape" => "MetricDimension"}, "type" => "list"}, "MetricDimension" => %{"members" => %{"Name" => %{"shape" => "MetricDimensionName"}, "Value" => %{"shape" => "MetricDimensionValue"}}, "required" => ["Name", "Value"], "type" => "structure"}, "DescribePoliciesType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}, "PolicyNames" => %{"shape" => "PolicyNames"}, "PolicyTypes" => %{"shape" => "PolicyTypes"}}, "type" => "structure"}, "EnabledMetrics" => %{"member" => %{"shape" => "EnabledMetric"}, "type" => "list"}, "ScheduledUpdateGroupAction" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "XmlStringMaxLen255"}, "DesiredCapacity" => %{"shape" => "AutoScalingGroupDesiredCapacity"}, "EndTime" => %{"shape" => "TimestampType"}, "MaxSize" => %{"shape" => "AutoScalingGroupMaxSize"}, "MinSize" => %{"shape" => "AutoScalingGroupMinSize"}, "Recurrence" => %{"shape" => "XmlStringMaxLen255"}, "ScheduledActionARN" => %{"shape" => "ResourceName"}, "ScheduledActionName" => %{"shape" => "XmlStringMaxLen255"}, "StartTime" => %{"shape" => "TimestampType"}, "Time" => %{"shape" => "TimestampType"}}, "type" => "structure"}, "DescribeLifecycleHooksAnswer" => %{"members" => %{"LifecycleHooks" => %{"shape" => "LifecycleHooks"}}, "type" => "structure"}, "InstanceProtected" => %{"type" => "boolean"}, "NotificationConfigurations" => %{"member" => %{"shape" => "NotificationConfiguration"}, "type" => "list"}, "SetDesiredCapacityType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "DesiredCapacity" => %{"shape" => "AutoScalingGroupDesiredCapacity"}, "HonorCooldown" => %{"shape" => "HonorCooldown"}}, "required" => ["AutoScalingGroupName", "DesiredCapacity"], "type" => "structure"}, "LaunchConfigurationNames" => %{"member" => %{"shape" => "ResourceName"}, "type" => "list"}, "NoDevice" => %{"type" => "boolean"}, "DetachLoadBalancerTargetGroupsType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "TargetGroupARNs" => %{"shape" => "TargetGroupARNs"}}, "required" => ["AutoScalingGroupName", "TargetGroupARNs"], "type" => "structure"}, "HonorCooldown" => %{"type" => "boolean"}, "AttachInstancesQuery" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "InstanceIds" => %{"shape" => "InstanceIds"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "AutoScalingGroups" => %{"member" => %{"shape" => "AutoScalingGroup"}, "type" => "list"}, "CreateAutoScalingGroupType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "XmlStringMaxLen255"}, "AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "DefaultCooldown" => %{"shape" => "Cooldown"}, "DesiredCapacity" => %{"shape" => "AutoScalingGroupDesiredCapacity"}, "HealthCheckGracePeriod" => %{"shape" => "HealthCheckGracePeriod"}, "HealthCheckType" => %{"shape" => "XmlStringMaxLen32"}, "InstanceId" => %{"shape" => "XmlStringMaxLen19"}, "LaunchConfigurationName" => %{"shape" => "ResourceName"}, "LifecycleHookSpecificationList" => %{"shape" => "LifecycleHookSpecifications"}, "LoadBalancerNames" => %{"shape" => "LoadBalancerNames"}, "MaxSize" => %{"shape" => "AutoScalingGroupMaxSize"}, "MinSize" => %{"shape" => "AutoScalingGroupMinSize"}, "NewInstancesProtectedFromScaleIn" => %{"shape" => "InstanceProtected"}, "PlacementGroup" => %{"shape" => "XmlStringMaxLen255"}, "Tags" => %{"shape" => "Tags"}, "TargetGroupARNs" => %{"shape" => "TargetGroupARNs"}, "TerminationPolicies" => %{"shape" => "TerminationPolicies"}, "VPCZoneIdentifier" => %{"shape" => "XmlStringMaxLen2047"}}, "required" => ["AutoScalingGroupName", "MinSize", "MaxSize"], "type" => "structure"}, "NumberOfAutoScalingGroups" => %{"type" => "integer"}, "EnterStandbyQuery" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "InstanceIds" => %{"shape" => "InstanceIds"}, "ShouldDecrementDesiredCapacity" => %{"shape" => "ShouldDecrementDesiredCapacity"}}, "required" => ["AutoScalingGroupName", "ShouldDecrementDesiredCapacity"], "type" => "structure"}, "AvailabilityZones" => %{"member" => %{"shape" => "XmlStringMaxLen255"}, "min" => 1, "type" => "list"}, "PutLifecycleHookType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "DefaultResult" => %{"shape" => "LifecycleActionResult"}, "HeartbeatTimeout" => %{"shape" => "HeartbeatTimeout"}, "LifecycleHookName" => %{"shape" => "AsciiStringMaxLen255"}, "LifecycleTransition" => %{"shape" => "LifecycleTransition"}, "NotificationMetadata" => %{"shape" => "XmlStringMaxLen1023"}, "NotificationTargetARN" => %{"shape" => "NotificationTargetResourceName"}, "RoleARN" => %{"shape" => "ResourceName"}}, "required" => ["LifecycleHookName", "AutoScalingGroupName"], "type" => "structure"}, "DescribeNotificationConfigurationsAnswer" => %{"members" => %{"NextToken" => %{"shape" => "XmlString"}, "NotificationConfigurations" => %{"shape" => "NotificationConfigurations"}}, "required" => ["NotificationConfigurations"], "type" => "structure"}, "CustomizedMetricSpecification" => %{"members" => %{"Dimensions" => %{"shape" => "MetricDimensions"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "MetricNamespace"}, "Statistic" => %{"shape" => "MetricStatistic"}, "Unit" => %{"shape" => "MetricUnit"}}, "required" => ["MetricName", "Namespace", "Statistic"], "type" => "structure"}, "BlockDeviceEbsEncrypted" => %{"type" => "boolean"}, "Activity" => %{"members" => %{"ActivityId" => %{"shape" => "XmlString"}, "AutoScalingGroupName" => %{"shape" => "XmlStringMaxLen255"}, "Cause" => %{"shape" => "XmlStringMaxLen1023"}, "Description" => %{"shape" => "XmlString"}, "Details" => %{"shape" => "XmlString"}, "EndTime" => %{"shape" => "TimestampType"}, "Progress" => %{"shape" => "Progress"}, "StartTime" => %{"shape" => "TimestampType"}, "StatusCode" => %{"shape" => "ScalingActivityStatusCode"}, "StatusMessage" => %{"shape" => "XmlStringMaxLen255"}}, "required" => ["ActivityId", "AutoScalingGroupName", "Cause", "StartTime", "StatusCode"], "type" => "structure"}, "EnabledMetric" => %{"members" => %{"Granularity" => %{"shape" => "XmlStringMaxLen255"}, "Metric" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "MetricCollectionType" => %{"members" => %{"Metric" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "MetricGranularityTypes" => %{"member" => %{"shape" => "MetricGranularityType"}, "type" => "list"}, "XmlStringMaxLen255" => %{"max" => 255, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "AttachLoadBalancersResultType" => %{"members" => %{}, "type" => "structure"}, "LaunchConfigurations" => %{"member" => %{"shape" => "LaunchConfiguration"}, "type" => "list"}, "SetInstanceHealthQuery" => %{"members" => %{"HealthStatus" => %{"shape" => "XmlStringMaxLen32"}, "InstanceId" => %{"shape" => "XmlStringMaxLen19"}, "ShouldRespectGracePeriod" => %{"shape" => "ShouldRespectGracePeriod"}}, "required" => ["InstanceId", "HealthStatus"], "type" => "structure"}, "EstimatedInstanceWarmup" => %{"type" => "integer"}, "BlockDeviceEbsVolumeSize" => %{"max" => 16384, "min" => 1, "type" => "integer"}, "ExecutePolicyType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "BreachThreshold" => %{"shape" => "MetricScale"}, "HonorCooldown" => %{"shape" => "HonorCooldown"}, "MetricValue" => %{"shape" => "MetricScale"}, "PolicyName" => %{"shape" => "ResourceName"}}, "required" => ["PolicyName"], "type" => "structure"}, "DeletePolicyType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "PolicyName" => %{"shape" => "ResourceName"}}, "required" => ["PolicyName"], "type" => "structure"}, "ShouldRespectGracePeriod" => %{"type" => "boolean"}, "SetInstanceProtectionAnswer" => %{"members" => %{}, "type" => "structure"}, "MetricCollectionTypes" => %{"member" => %{"shape" => "MetricCollectionType"}, "type" => "list"}, "XmlStringMaxLen32" => %{"max" => 32, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "StepAdjustments" => %{"member" => %{"shape" => "StepAdjustment"}, "type" => "list"}, "Progress" => %{"type" => "integer"}, "StepAdjustment" => %{"members" => %{"MetricIntervalLowerBound" => %{"shape" => "MetricScale"}, "MetricIntervalUpperBound" => %{"shape" => "MetricScale"}, "ScalingAdjustment" => %{"shape" => "PolicyIncrement"}}, "required" => ["ScalingAdjustment"], "type" => "structure"}, "DisableScaleIn" => %{"type" => "boolean"}, "TargetTrackingConfiguration" => %{"members" => %{"CustomizedMetricSpecification" => %{"shape" => "CustomizedMetricSpecification"}, "DisableScaleIn" => %{"shape" => "DisableScaleIn"}, "PredefinedMetricSpecification" => %{"shape" => "PredefinedMetricSpecification"}, "TargetValue" => %{"shape" => "MetricScale"}}, "required" => ["TargetValue"], "type" => "structure"}, "DescribeLoadBalancerTargetGroupsRequest" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}}, "required" => ["AutoScalingGroupName"], "type" => "structure"}, "DescribeScalingActivitiesType" => %{"members" => %{"ActivityIds" => %{"shape" => "ActivityIds"}, "AutoScalingGroupName" => %{"shape" => "ResourceName"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "ScalingActivityStatusCode" => %{"enum" => ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"], "type" => "string"}, "BlockDeviceEbsVolumeType" => %{"max" => 255, "min" => 1, "type" => "string"}, "DescribeLoadBalancerTargetGroupsResponse" => %{"members" => %{"LoadBalancerTargetGroups" => %{"shape" => "LoadBalancerTargetGroupStates"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "AutoScalingInstancesType" => %{"members" => %{"AutoScalingInstances" => %{"shape" => "AutoScalingInstances"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "LaunchConfigurationNamesType" => %{"members" => %{"LaunchConfigurationNames" => %{"shape" => "LaunchConfigurationNames"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "DescribeAccountLimitsAnswer" => %{"members" => %{"MaxNumberOfAutoScalingGroups" => %{"shape" => "MaxNumberOfAutoScalingGroups"}, "MaxNumberOfLaunchConfigurations" => %{"shape" => "MaxNumberOfLaunchConfigurations"}, "NumberOfAutoScalingGroups" => %{"shape" => "NumberOfAutoScalingGroups"}, "NumberOfLaunchConfigurations" => %{"shape" => "NumberOfLaunchConfigurations"}}, "type" => "structure"}, "Cooldown" => %{"type" => "integer"}, "AutoScalingNotificationTypes" => %{"member" => %{"shape" => "XmlStringMaxLen255"}, "type" => "list"}, "InstanceIds" => %{"member" => %{"shape" => "XmlStringMaxLen19"}, "type" => "list"}, "DetachInstancesQuery" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "InstanceIds" => %{"shape" => "InstanceIds"}, "ShouldDecrementDesiredCapacity" => %{"shape" => "ShouldDecrementDesiredCapacity"}}, "required" => ["AutoScalingGroupName", "ShouldDecrementDesiredCapacity"], "type" => "structure"}, "LifecycleHookSpecification" => %{"members" => %{"DefaultResult" => %{"shape" => "LifecycleActionResult"}, "HeartbeatTimeout" => %{"shape" => "HeartbeatTimeout"}, "LifecycleHookName" => %{"shape" => "AsciiStringMaxLen255"}, "LifecycleTransition" => %{"shape" => "LifecycleTransition"}, "NotificationMetadata" => %{"shape" => "XmlStringMaxLen1023"}, "NotificationTargetARN" => %{"shape" => "NotificationTargetResourceName"}, "RoleARN" => %{"shape" => "ResourceName"}}, "required" => ["LifecycleHookName"], "type" => "structure"}, "SetInstanceProtectionQuery" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "InstanceIds" => %{"shape" => "InstanceIds"}, "ProtectedFromScaleIn" => %{"shape" => "ProtectedFromScaleIn"}}, "required" => ["InstanceIds", "AutoScalingGroupName", "ProtectedFromScaleIn"], "type" => "structure"}, "MonitoringEnabled" => %{"type" => "boolean"}, "DetachLoadBalancerTargetGroupsResultType" => %{"members" => %{}, "type" => "structure"}, "MaxNumberOfAutoScalingGroups" => %{"type" => "integer"}, "XmlStringUserData" => %{"max" => 21847, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "AutoScalingGroupNamesType" => %{"members" => %{"AutoScalingGroupNames" => %{"shape" => "AutoScalingGroupNames"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "XmlString"}}, "type" => "structure"}, "EbsOptimized" => %{"type" => "boolean"}, "AutoScalingGroupNames" => %{"member" => %{"shape" => "ResourceName"}, "type" => "list"}, "ResourceInUseFault" => %{"error" => %{"code" => "ResourceInUse", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "AutoScalingGroup" => %{"members" => %{"AutoScalingGroupARN" => %{"shape" => "ResourceName"}, "AutoScalingGroupName" => %{"shape" => "XmlStringMaxLen255"}, "AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "CreatedTime" => %{"shape" => "TimestampType"}, "DefaultCooldown" => %{"shape" => "Cooldown"}, "DesiredCapacity" => %{"shape" => "AutoScalingGroupDesiredCapacity"}, "EnabledMetrics" => %{"shape" => "EnabledMetrics"}, "HealthCheckGracePeriod" => %{"shape" => "HealthCheckGracePeriod"}, "HealthCheckType" => %{"shape" => "XmlStringMaxLen32"}, "Instances" => %{"shape" => "Instances"}, "LaunchConfigurationName" => %{"shape" => "XmlStringMaxLen255"}, "LoadBalancerNames" => %{"shape" => "LoadBalancerNames"}, "MaxSize" => %{"shape" => "AutoScalingGroupMaxSize"}, "MinSize" => %{"shape" => "AutoScalingGroupMinSize"}, "NewInstancesProtectedFromScaleIn" => %{"shape" => "InstanceProtected"}, "PlacementGroup" => %{"shape" => "XmlStringMaxLen255"}, "Status" => %{"shape" => "XmlStringMaxLen255"}, "SuspendedProcesses" => %{"shape" => "SuspendedProcesses"}, "Tags" => %{"shape" => "TagDescriptionList"}, "TargetGroupARNs" => %{"shape" => "TargetGroupARNs"}, "TerminationPolicies" => %{"shape" => "TerminationPolicies"}, "VPCZoneIdentifier" => %{"shape" => "XmlStringMaxLen2047"}}, "required" => ["AutoScalingGroupName", "MinSize", "MaxSize", "DesiredCapacity", "DefaultCooldown", "AvailabilityZones", "HealthCheckType", "CreatedTime"], "type" => "structure"}, "NotificationTargetResourceName" => %{"max" => 1600, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "ResourceName" => %{"max" => 1600, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "ExitStandbyAnswer" => %{"members" => %{"Activities" => %{"shape" => "Activities"}}, "type" => "structure"}, "LoadBalancerNames" => %{"member" => %{"shape" => "XmlStringMaxLen255"}, "type" => "list"}, "LifecycleHooks" => %{"member" => %{"shape" => "LifecycleHook"}, "type" => "list"}, "LifecycleHookSpecifications" => %{"member" => %{"shape" => "LifecycleHookSpecification"}, "type" => "list"}, "PolicyNames" => %{"member" => %{"shape" => "ResourceName"}, "type" => "list"}, "NotificationConfiguration" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "NotificationType" => %{"shape" => "XmlStringMaxLen255"}, "TopicARN" => %{"shape" => "ResourceName"}}, "type" => "structure"}, "LoadBalancerTargetGroupStates" => %{"member" => %{"shape" => "LoadBalancerTargetGroupState"}, "type" => "list"}, "MetricDimensionName" => %{"type" => "string"}, "LaunchConfigurationNameType" => %{"members" => %{"LaunchConfigurationName" => %{"shape" => "ResourceName"}}, "required" => ["LaunchConfigurationName"], "type" => "structure"}, "SuspendedProcess" => %{"members" => %{"ProcessName" => %{"shape" => "XmlStringMaxLen255"}, "SuspensionReason" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "ActivitiesType" => %{"members" => %{"Activities" => %{"shape" => "Activities"}, "NextToken" => %{"shape" => "XmlString"}}, "required" => ["Activities"], "type" => "structure"}, "BlockDeviceMapping" => %{"members" => %{"DeviceName" => %{"shape" => "XmlStringMaxLen255"}, "Ebs" => %{"shape" => "Ebs"}, "NoDevice" => %{"shape" => "NoDevice"}, "VirtualName" => %{"shape" => "XmlStringMaxLen255"}}, "required" => ["DeviceName"], "type" => "structure"}, "PutScheduledUpdateGroupActionType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "DesiredCapacity" => %{"shape" => "AutoScalingGroupDesiredCapacity"}, "EndTime" => %{"shape" => "TimestampType"}, "MaxSize" => %{"shape" => "AutoScalingGroupMaxSize"}, "MinSize" => %{"shape" => "AutoScalingGroupMinSize"}, "Recurrence" => %{"shape" => "XmlStringMaxLen255"}, "ScheduledActionName" => %{"shape" => "XmlStringMaxLen255"}, "StartTime" => %{"shape" => "TimestampType"}, "Time" => %{"shape" => "TimestampType"}}, "required" => ["AutoScalingGroupName", "ScheduledActionName"], "type" => "structure"}, "Alarm" => %{"members" => %{"AlarmARN" => %{"shape" => "ResourceName"}, "AlarmName" => %{"shape" => "XmlStringMaxLen255"}}, "type" => "structure"}, "AttachLoadBalancerTargetGroupsResultType" => %{"members" => %{}, "type" => "structure"}, "MetricStatistic" => %{"enum" => ["Average", "Minimum", "Maximum", "SampleCount", "Sum"], "type" => "string"}, "Instance" => %{"members" => %{"AvailabilityZone" => %{"shape" => "XmlStringMaxLen255"}, "HealthStatus" => %{"shape" => "XmlStringMaxLen32"}, "InstanceId" => %{"shape" => "XmlStringMaxLen19"}, "LaunchConfigurationName" => %{"shape" => "XmlStringMaxLen255"}, "LifecycleState" => %{"shape" => "LifecycleState"}, "ProtectedFromScaleIn" => %{"shape" => "InstanceProtected"}}, "required" => ["InstanceId", "AvailabilityZone", "LifecycleState", "HealthStatus", "LaunchConfigurationName", "ProtectedFromScaleIn"], "type" => "structure"}, "AttachLoadBalancerTargetGroupsType" => %{"members" => %{"AutoScalingGroupName" => %{"shape" => "ResourceName"}, "TargetGroupARNs" => %{"shape" => "TargetGroupARNs"}}, "required" => ["AutoScalingGroupName", "TargetGroupARNs"], "type" => "structure"}}
  end
end