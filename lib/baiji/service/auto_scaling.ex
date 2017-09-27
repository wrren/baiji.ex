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
      input:    input,
      options:  options,
      action:   "PutLifecycleHook",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes one or more Auto Scaling instances.
  """
  def describe_auto_scaling_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeAutoScalingInstances",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Moves the specified instances into `Standby` mode.

  For more information, see [Auto Scaling
  Lifecycle](http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html)
  in the *Auto Scaling User Guide*.
  """
  def enter_standby(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "EnterStandby",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "ResumeProcesses",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DescribeMetricCollectionTypes",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the scaling process types for use with `ResumeProcesses` and
  `SuspendProcesses`.
  """
  def describe_scaling_process_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeScalingProcessTypes",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified notification.
  """
  def delete_notification_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteNotificationConfiguration",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "PutScalingPolicy",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the actions scheduled for your Auto Scaling group that haven't
  run. To describe the actions that have already run, use
  `DescribeScalingActivities`.
  """
  def describe_scheduled_actions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeScheduledActions",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the load balancers for the specified Auto Scaling group.

  Note that this operation describes only Classic Load Balancers. If you have
  Application Load Balancers, use `DescribeLoadBalancerTargetGroups` instead.
  """
  def describe_load_balancers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeLoadBalancers",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "CompleteLifecycleAction",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Removes one or more instances from the specified Auto Scaling group.

  After the instances are detached, you can manage them independently from
  the rest of the Auto Scaling group.

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
      input:    input,
      options:  options,
      action:   "DetachInstances",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes one or more launch configurations.
  """
  def describe_launch_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeLaunchConfigurations",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the notification types that are supported by Auto Scaling.
  """
  def describe_auto_scaling_notification_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeAutoScalingNotificationTypes",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "AttachLoadBalancerTargetGroups",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Updates the configuration for the specified Auto Scaling group.

  To update an Auto Scaling group with a launch configuration with
  `InstanceMonitoring` set to `False`, you must first disable the collection
  of group metrics. Otherwise, you will get an error. If you have previously
  enabled the collection of group metrics, you can disable it using
  `DisableMetricsCollection`.

  The new settings are registered upon the completion of this call. Any
  launch configuration settings take effect on any triggers after this call
  returns. Scaling activities that are currently in progress aren't affected.

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
      input:    input,
      options:  options,
      action:   "UpdateAutoScalingGroup",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "TerminateInstanceInAutoScalingGroup",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "CreateLaunchConfiguration",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "PutNotificationConfiguration",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteAutoScalingGroup",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Moves the specified instances out of `Standby` mode.

  For more information, see [Auto Scaling
  Lifecycle](http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html)
  in the *Auto Scaling User Guide*.
  """
  def exit_standby(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ExitStandby",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Executes the specified policy.
  """
  def execute_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ExecutePolicy",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "EnableMetricsCollection",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes one or more scaling activities for the specified Auto Scaling
  group.
  """
  def describe_scaling_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeScalingActivities",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified scheduled action.
  """
  def delete_scheduled_action(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteScheduledAction",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the policies for the specified Auto Scaling group.
  """
  def describe_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribePolicies",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Detaches one or more target groups from the specified Auto Scaling group.
  """
  def detach_load_balancer_target_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DetachLoadBalancerTargetGroups",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the lifecycle hooks for the specified Auto Scaling group.
  """
  def describe_lifecycle_hooks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeLifecycleHooks",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the target groups for the specified Auto Scaling group.
  """
  def describe_load_balancer_target_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeLoadBalancerTargetGroups",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified lifecycle hook.

  If there are any outstanding lifecycle actions, they are completed first
  (`ABANDON` for launching instances, `CONTINUE` for terminating instances).
  """
  def delete_lifecycle_hook(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteLifecycleHook",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "SetInstanceProtection",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "SuspendProcesses",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes one or more Auto Scaling groups.
  """
  def describe_auto_scaling_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeAutoScalingGroups",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "AttachLoadBalancers",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified tags.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteTags",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Disables group metrics for the specified Auto Scaling group.
  """
  def disable_metrics_collection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisableMetricsCollection",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the available types of lifecycle hooks.
  """
  def describe_lifecycle_hook_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeLifecycleHookTypes",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DescribeTags",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "CreateOrUpdateTags",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the policy adjustment types for use with `PutScalingPolicy`.
  """
  def describe_adjustment_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeAdjustmentTypes",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified Auto Scaling policy.

  Deleting a policy deletes the underlying alarm action, but does not delete
  the alarm, even if it no longer has an associated action.
  """
  def delete_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeletePolicy",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "RecordLifecycleActionHeartbeat",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "SetDesiredCapacity",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DetachLoadBalancers",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "CreateAutoScalingGroup",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "AttachInstances",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the termination policies supported by Auto Scaling.
  """
  def describe_termination_policy_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeTerminationPolicyTypes",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteLaunchConfiguration",
      type:     :xml,
      method:   :post
    }
  end
  
  @doc """
  Describes the notification actions associated with the specified Auto
  Scaling group.
  """
  def describe_notification_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeNotificationConfigurations",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "SetInstanceHealth",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DescribeAccountLimits",
      type:     :xml,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "PutScheduledUpdateGroupAction",
      type:     :xml,
      method:   :post
    }
  end
  
end