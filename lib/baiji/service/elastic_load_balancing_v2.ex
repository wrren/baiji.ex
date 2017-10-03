defmodule Baiji.ElasticLoadBalancingv2 do
  @moduledoc """
  Elastic Load Balancing

  A load balancer distributes incoming traffic across targets, such as your
  EC2 instances. This enables you to increase the availability of your
  application. The load balancer also monitors the health of its registered
  targets and ensures that it routes traffic only to healthy targets. You
  configure your load balancer to accept incoming traffic by specifying one
  or more listeners, which are configured with a protocol and port number for
  connections from clients to the load balancer. You configure a target group
  with a protocol and port number for connections from the load balancer to
  the targets, and with health check settings to be used when checking the
  health status of the targets.

  Elastic Load Balancing supports the following types of load balancers:
  Application Load Balancers, Network Load Balancers, and Classic Load
  Balancers.

  An Application Load Balancer makes routing and load balancing decisions at
  the application layer (HTTP/HTTPS). A Network Load Balancer makes routing
  and load balancing decisions at the transport layer (TCP). Both Application
  Load Balancers and Network Load Balancers can route requests to one or more
  ports on each EC2 instance or container instance in your virtual private
  cloud (VPC).

  A Classic Load Balancer makes routing and load balancing decisions either
  at the transport layer (TCP/SSL) or the application layer (HTTP/HTTPS), and
  supports either EC2-Classic or a VPC. For more information, see the
  [Elastic Load Balancing User
  Guide](http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).

  This reference covers the 2015-12-01 API, which supports Application Load
  Balancers and Network Load Balancers. The 2012-06-01 API supports Classic
  Load Balancers.

  To get started, complete the following tasks:

  <ol> <li> Create a load balancer using `CreateLoadBalancer`.

  </li> <li> Create a target group using `CreateTargetGroup`.

  </li> <li> Register targets for the target group using `RegisterTargets`.

  </li> <li> Create one or more listeners for your load balancer using
  `CreateListener`.

  </li> </ol> To delete a load balancer and its related resources, complete
  the following tasks:

  <ol> <li> Delete the load balancer using `DeleteLoadBalancer`.

  </li> <li> Delete the target group using `DeleteTargetGroup`.

  </li> </ol> All Elastic Load Balancing operations are idempotent, which
  means that they complete at most one time. If you repeat an operation, it
  succeeds.
  """
  
  @doc """
  Adds the specified tags to the specified Elastic Load Balancing resource.
  You can tag your Application Load Balancers, Network Load Balancers, and
  your target groups.

  Each tag consists of a key and an optional value. If a resource already has
  a tag with the same key, `AddTags` updates its value.

  To list the current tags for your resources, use `DescribeTags`. To remove
  tags from your resources, use `RemoveTags`.
  """
  def add_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTags",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "AddTagsInput",
      output_shape:     "AddTagsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a listener for the specified Application Load Balancer or Network
  Load Balancer.

  You can create up to 10 listeners per load balancer.

  To update a listener, use `ModifyListener`. When you are finished with a
  listener, you can delete it using `DeleteListener`. If you are finished
  with both the listener and the load balancer, you can delete them both
  using `DeleteLoadBalancer`.

  For more information, see [Listeners for Your Application Load
  Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html)
  in the *Application Load Balancers Guide* and [Listeners for Your Network
  Load
  Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html)
  in the *Network Load Balancers Guide*.
  """
  def create_listener(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateListener",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "CreateListenerInput",
      output_shape:     "CreateListenerOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an Application Load Balancer or a Network Load Balancer.

  When you create a load balancer, you can specify security groups, subnets,
  IP address type, and tags. Otherwise, you could do so later using
  `SetSecurityGroups`, `SetSubnets`, `SetIpAddressType`, and `AddTags`.

  To create listeners for your load balancer, use `CreateListener`. To
  describe your current load balancers, see `DescribeLoadBalancers`. When you
  are finished with a load balancer, you can delete it using
  `DeleteLoadBalancer`.

  You can create up to 20 load balancers per region per account. You can
  request an increase for the number of load balancers for your account. For
  more information, see [Limits for Your Application Load
  Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)
  in the *Application Load Balancers Guide* and [Limits for Your Network Load
  Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)
  in the *Network Load Balancers Guide*.

  For more information, see [Application Load
  Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html)
  in the *Application Load Balancers Guide* and [Network Load
  Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html)
  in the *Network Load Balancers Guide*.
  """
  def create_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateLoadBalancer",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "CreateLoadBalancerInput",
      output_shape:     "CreateLoadBalancerOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a rule for the specified listener. The listener must be associated
  with an Application Load Balancer.

  Rules are evaluated in priority order, from the lowest value to the highest
  value. When the condition for a rule is met, the specified action is taken.
  If no conditions are met, the action for the default rule is taken. For
  more information, see [Listener
  Rules](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules)
  in the *Application Load Balancers Guide*.

  To view your current rules, use `DescribeRules`. To update a rule, use
  `ModifyRule`. To set the priorities of your rules, use `SetRulePriorities`.
  To delete a rule, use `DeleteRule`.
  """
  def create_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateRule",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "CreateRuleInput",
      output_shape:     "CreateRuleOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a target group.

  To register targets with the target group, use `RegisterTargets`. To update
  the health check settings for the target group, use `ModifyTargetGroup`. To
  monitor the health of targets in the target group, use
  `DescribeTargetHealth`.

  To route traffic to the targets in a target group, specify the target group
  in an action using `CreateListener` or `CreateRule`.

  To delete a target group, use `DeleteTargetGroup`.

  For more information, see [Target Groups for Your Application Load
  Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html)
  in the *Application Load Balancers Guide* or [Target Groups for Your
  Network Load
  Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html)
  in the *Network Load Balancers Guide*.
  """
  def create_target_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateTargetGroup",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "CreateTargetGroupInput",
      output_shape:     "CreateTargetGroupOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified listener.

  Alternatively, your listener is deleted when you delete the load balancer
  it is attached to using `DeleteLoadBalancer`.
  """
  def delete_listener(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteListener",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DeleteListenerInput",
      output_shape:     "DeleteListenerOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified Application Load Balancer or Network Load Balancer
  and its attached listeners.

  You can't delete a load balancer if deletion protection is enabled. If the
  load balancer does not exist or has already been deleted, the call
  succeeds.

  Deleting a load balancer does not affect its registered targets. For
  example, your EC2 instances continue to run and are still registered to
  their target groups. If you no longer need these EC2 instances, you can
  stop or terminate them.
  """
  def delete_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteLoadBalancer",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DeleteLoadBalancerInput",
      output_shape:     "DeleteLoadBalancerOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified rule.
  """
  def delete_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRule",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DeleteRuleInput",
      output_shape:     "DeleteRuleOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified target group.

  You can delete a target group if it is not referenced by any actions.
  Deleting a target group also deletes any associated health checks.
  """
  def delete_target_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTargetGroup",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DeleteTargetGroupInput",
      output_shape:     "DeleteTargetGroupOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deregisters the specified targets from the specified target group. After
  the targets are deregistered, they no longer receive traffic from the load
  balancer.
  """
  def deregister_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterTargets",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DeregisterTargetsInput",
      output_shape:     "DeregisterTargetsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the current Elastic Load Balancing resource limits for your AWS
  account.

  For more information, see [Limits for Your Application Load
  Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)
  in the *Application Load Balancer Guide* or [Limits for Your Network Load
  Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)
  in the *Network Load Balancers Guide*.
  """
  def describe_account_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAccountLimits",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeAccountLimitsInput",
      output_shape:     "DescribeAccountLimitsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified listeners or the listeners for the specified
  Application Load Balancer or Network Load Balancer. You must specify either
  a load balancer or one or more listeners.
  """
  def describe_listeners(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeListeners",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeListenersInput",
      output_shape:     "DescribeListenersOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the attributes for the specified Application Load Balancer or
  Network Load Balancer.
  """
  def describe_load_balancer_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBalancerAttributes",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeLoadBalancerAttributesInput",
      output_shape:     "DescribeLoadBalancerAttributesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified load balancers or all of your load balancers.

  To describe the listeners for a load balancer, use `DescribeListeners`. To
  describe the attributes for a load balancer, use
  `DescribeLoadBalancerAttributes`.
  """
  def describe_load_balancers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBalancers",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeLoadBalancersInput",
      output_shape:     "DescribeLoadBalancersOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified rules or the rules for the specified listener. You
  must specify either a listener or one or more rules.
  """
  def describe_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeRules",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeRulesInput",
      output_shape:     "DescribeRulesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified policies or all policies used for SSL negotiation.

  For more information, see [Security
  Policies](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
  in the *Application Load Balancers Guide*.
  """
  def describe_s_s_l_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSSLPolicies",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeSSLPoliciesInput",
      output_shape:     "DescribeSSLPoliciesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the tags for the specified resources. You can describe the tags
  for one or more Application Load Balancers, Network Load Balancers, and
  target groups.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeTagsInput",
      output_shape:     "DescribeTagsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the attributes for the specified target group.
  """
  def describe_target_group_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTargetGroupAttributes",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeTargetGroupAttributesInput",
      output_shape:     "DescribeTargetGroupAttributesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified target groups or all of your target groups. By
  default, all target groups are described. Alternatively, you can specify
  one of the following to filter the results: the ARN of the load balancer,
  the names of one or more target groups, or the ARNs of one or more target
  groups.

  To describe the targets for a target group, use `DescribeTargetHealth`. To
  describe the attributes of a target group, use
  `DescribeTargetGroupAttributes`.
  """
  def describe_target_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTargetGroups",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeTargetGroupsInput",
      output_shape:     "DescribeTargetGroupsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the health of the specified targets or all of your targets.
  """
  def describe_target_health(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTargetHealth",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "DescribeTargetHealthInput",
      output_shape:     "DescribeTargetHealthOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the specified properties of the specified listener.

  Any properties that you do not specify retain their current values.
  However, changing the protocol from HTTPS to HTTP removes the security
  policy and SSL certificate properties. If you change the protocol from HTTP
  to HTTPS, you must add the security policy and server certificate.
  """
  def modify_listener(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyListener",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "ModifyListenerInput",
      output_shape:     "ModifyListenerOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the specified attributes of the specified Application Load
  Balancer or Network Load Balancer.

  If any of the specified attributes can't be modified as requested, the call
  fails. Any existing attributes that you do not modify retain their current
  values.
  """
  def modify_load_balancer_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyLoadBalancerAttributes",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "ModifyLoadBalancerAttributesInput",
      output_shape:     "ModifyLoadBalancerAttributesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the specified rule.

  Any existing properties that you do not modify retain their current values.

  To modify the default action, use `ModifyListener`.
  """
  def modify_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyRule",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "ModifyRuleInput",
      output_shape:     "ModifyRuleOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the health checks used when evaluating the health state of the
  targets in the specified target group.

  To monitor the health of the targets, use `DescribeTargetHealth`.
  """
  def modify_target_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyTargetGroup",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "ModifyTargetGroupInput",
      output_shape:     "ModifyTargetGroupOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the specified attributes of the specified target group.
  """
  def modify_target_group_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyTargetGroupAttributes",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "ModifyTargetGroupAttributesInput",
      output_shape:     "ModifyTargetGroupAttributesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Registers the specified targets with the specified target group.

  By default, the load balancer routes requests to registered targets using
  the protocol and port number for the target group. Alternatively, you can
  override the port for a target when you register it.

  The target must be in the virtual private cloud (VPC) that you specified
  for the target group. If the target is an EC2 instance, it must be in the
  `running` state when you register it.

  Network Load Balancers do not support the following instance types as
  targets: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3,
  and T1.

  To remove a target from a target group, use `DeregisterTargets`.
  """
  def register_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterTargets",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "RegisterTargetsInput",
      output_shape:     "RegisterTargetsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes the specified tags from the specified Elastic Load Balancing
  resource.

  To list the current tags for your resources, use `DescribeTags`.
  """
  def remove_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTags",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "RemoveTagsInput",
      output_shape:     "RemoveTagsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets the type of IP addresses used by the subnets of the specified
  Application Load Balancer or Network Load Balancer.

  Note that Network Load Balancers must use `ipv4`.
  """
  def set_ip_address_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetIpAddressType",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "SetIpAddressTypeInput",
      output_shape:     "SetIpAddressTypeOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets the priorities of the specified rules.

  You can reorder the rules as long as there are no priority conflicts in the
  new order. Any existing rules that you do not specify retain their current
  priority.
  """
  def set_rule_priorities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetRulePriorities",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "SetRulePrioritiesInput",
      output_shape:     "SetRulePrioritiesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Associates the specified security groups with the specified Application
  Load Balancer. The specified security groups override the previously
  associated security groups.

  Note that you can't specify a security group for a Network Load Balancer.
  """
  def set_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetSecurityGroups",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "SetSecurityGroupsInput",
      output_shape:     "SetSecurityGroupsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Enables the Availability Zone for the specified subnets for the specified
  Application Load Balancer. The specified subnets replace the previously
  enabled subnets.

  Note that you can't change the subnets for a Network Load Balancer.
  """
  def set_subnets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticloadbalancingv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetSubnets",
      
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2015-12-01",
      method:           :post,
      input_shape:      "SetSubnetsInput",
      output_shape:     "SetSubnetsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"LoadBalancerArns" => %{"member" => %{"shape" => "LoadBalancerArn"}, "type" => "list"}, "PageSize" => %{"max" => 400, "min" => 1, "type" => "integer"}, "Listeners" => %{"member" => %{"shape" => "Listener"}, "type" => "list"}, "ModifyListenerInput" => %{"members" => %{"Certificates" => %{"shape" => "CertificateList"}, "DefaultActions" => %{"shape" => "Actions"}, "ListenerArn" => %{"shape" => "ListenerArn"}, "Port" => %{"shape" => "Port"}, "Protocol" => %{"shape" => "ProtocolEnum"}, "SslPolicy" => %{"shape" => "SslPolicyName"}}, "required" => ["ListenerArn"], "type" => "structure"}, "TagDescriptions" => %{"member" => %{"shape" => "TagDescription"}, "type" => "list"}, "TagKeys" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "ActionTypeEnum" => %{"enum" => ["forward"], "type" => "string"}, "RuleArns" => %{"member" => %{"shape" => "RuleArn"}, "type" => "list"}, "HttpCode" => %{"type" => "string"}, "Rules" => %{"member" => %{"shape" => "Rule"}, "type" => "list"}, "DeleteTargetGroupInput" => %{"members" => %{"TargetGroupArn" => %{"shape" => "TargetGroupArn"}}, "required" => ["TargetGroupArn"], "type" => "structure"}, "LoadBalancerTypeEnum" => %{"enum" => ["application", "network"], "type" => "string"}, "CanonicalHostedZoneId" => %{"type" => "string"}, "InvalidSubnetException" => %{"error" => %{"code" => "InvalidSubnet", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Subnets" => %{"member" => %{"shape" => "SubnetId"}, "type" => "list"}, "TargetGroupArns" => %{"member" => %{"shape" => "TargetGroupArn"}, "type" => "list"}, "AddTagsOutput" => %{"members" => %{}, "type" => "structure"}, "PriorityInUseException" => %{"error" => %{"code" => "PriorityInUse", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RuleNotFoundException" => %{"error" => %{"code" => "RuleNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DNSName" => %{"type" => "string"}, "SslPolicyNames" => %{"member" => %{"shape" => "SslPolicyName"}, "type" => "list"}, "LoadBalancerName" => %{"type" => "string"}, "LoadBalancerAttributeValue" => %{"max" => 1024, "type" => "string"}, "Listener" => %{"members" => %{"Certificates" => %{"shape" => "CertificateList"}, "DefaultActions" => %{"shape" => "Actions"}, "ListenerArn" => %{"shape" => "ListenerArn"}, "LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}, "Port" => %{"shape" => "Port"}, "Protocol" => %{"shape" => "ProtocolEnum"}, "SslPolicy" => %{"shape" => "SslPolicyName"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "IncompatibleProtocolsException" => %{"error" => %{"code" => "IncompatibleProtocols", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeListenersOutput" => %{"members" => %{"Listeners" => %{"shape" => "Listeners"}, "NextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "TargetHealthDescription" => %{"members" => %{"HealthCheckPort" => %{"shape" => "HealthCheckPort"}, "Target" => %{"shape" => "TargetDescription"}, "TargetHealth" => %{"shape" => "TargetHealth"}}, "type" => "structure"}, "CreateTargetGroupInput" => %{"members" => %{"HealthCheckIntervalSeconds" => %{"shape" => "HealthCheckIntervalSeconds"}, "HealthCheckPath" => %{"shape" => "Path"}, "HealthCheckPort" => %{"shape" => "HealthCheckPort"}, "HealthCheckProtocol" => %{"shape" => "ProtocolEnum"}, "HealthCheckTimeoutSeconds" => %{"shape" => "HealthCheckTimeoutSeconds"}, "HealthyThresholdCount" => %{"shape" => "HealthCheckThresholdCount"}, "Matcher" => %{"shape" => "Matcher"}, "Name" => %{"shape" => "TargetGroupName"}, "Port" => %{"shape" => "Port"}, "Protocol" => %{"shape" => "ProtocolEnum"}, "TargetType" => %{"shape" => "TargetTypeEnum"}, "UnhealthyThresholdCount" => %{"shape" => "HealthCheckThresholdCount"}, "VpcId" => %{"shape" => "VpcId"}}, "required" => ["Name", "Protocol", "Port", "VpcId"], "type" => "structure"}, "CreateListenerInput" => %{"members" => %{"Certificates" => %{"shape" => "CertificateList"}, "DefaultActions" => %{"shape" => "Actions"}, "LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}, "Port" => %{"shape" => "Port"}, "Protocol" => %{"shape" => "ProtocolEnum"}, "SslPolicy" => %{"shape" => "SslPolicyName"}}, "required" => ["LoadBalancerArn", "Protocol", "Port", "DefaultActions"], "type" => "structure"}, "RemoveTagsOutput" => %{"members" => %{}, "type" => "structure"}, "CreateLoadBalancerInput" => %{"members" => %{"IpAddressType" => %{"shape" => "IpAddressType"}, "Name" => %{"shape" => "LoadBalancerName"}, "Scheme" => %{"shape" => "LoadBalancerSchemeEnum"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}, "SubnetMappings" => %{"shape" => "SubnetMappings"}, "Subnets" => %{"shape" => "Subnets"}, "Tags" => %{"shape" => "TagList"}, "Type" => %{"shape" => "LoadBalancerTypeEnum"}}, "required" => ["Name"], "type" => "structure"}, "TargetDescriptions" => %{"member" => %{"shape" => "TargetDescription"}, "type" => "list"}, "TargetDescription" => %{"members" => %{"AvailabilityZone" => %{"shape" => "ZoneName"}, "Id" => %{"shape" => "TargetId"}, "Port" => %{"shape" => "Port"}}, "required" => ["Id"], "type" => "structure"}, "ProtocolEnum" => %{"enum" => ["HTTP", "HTTPS", "TCP"], "type" => "string"}, "SetSubnetsInput" => %{"members" => %{"LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}, "SubnetMappings" => %{"shape" => "SubnetMappings"}, "Subnets" => %{"shape" => "Subnets"}}, "required" => ["LoadBalancerArn", "Subnets"], "type" => "structure"}, "CipherName" => %{"type" => "string"}, "RegisterTargetsInput" => %{"members" => %{"TargetGroupArn" => %{"shape" => "TargetGroupArn"}, "Targets" => %{"shape" => "TargetDescriptions"}}, "required" => ["TargetGroupArn", "Targets"], "type" => "structure"}, "HealthCheckThresholdCount" => %{"max" => 10, "min" => 2, "type" => "integer"}, "TooManyCertificatesException" => %{"error" => %{"code" => "TooManyCertificates", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeListenersInput" => %{"members" => %{"ListenerArns" => %{"shape" => "ListenerArns"}, "LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}, "Marker" => %{"shape" => "Marker"}, "PageSize" => %{"shape" => "PageSize"}}, "type" => "structure"}, "LoadBalancerAddresses" => %{"member" => %{"shape" => "LoadBalancerAddress"}, "type" => "list"}, "DescribeTargetHealthInput" => %{"members" => %{"TargetGroupArn" => %{"shape" => "TargetGroupArn"}, "Targets" => %{"shape" => "TargetDescriptions"}}, "required" => ["TargetGroupArn"], "type" => "structure"}, "SslPolicies" => %{"member" => %{"shape" => "SslPolicy"}, "type" => "list"}, "DescribeRulesInput" => %{"members" => %{"ListenerArn" => %{"shape" => "ListenerArn"}, "Marker" => %{"shape" => "Marker"}, "PageSize" => %{"shape" => "PageSize"}, "RuleArns" => %{"shape" => "RuleArns"}}, "type" => "structure"}, "Port" => %{"max" => 65535, "min" => 1, "type" => "integer"}, "LoadBalancer" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "CanonicalHostedZoneId" => %{"shape" => "CanonicalHostedZoneId"}, "CreatedTime" => %{"shape" => "CreatedTime"}, "DNSName" => %{"shape" => "DNSName"}, "IpAddressType" => %{"shape" => "IpAddressType"}, "LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}, "LoadBalancerName" => %{"shape" => "LoadBalancerName"}, "Scheme" => %{"shape" => "LoadBalancerSchemeEnum"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}, "State" => %{"shape" => "LoadBalancerState"}, "Type" => %{"shape" => "LoadBalancerTypeEnum"}, "VpcId" => %{"shape" => "VpcId"}}, "type" => "structure"}, "RuleArn" => %{"type" => "string"}, "ResourceInUseException" => %{"error" => %{"code" => "ResourceInUse", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "HealthUnavailableException" => %{"error" => %{"code" => "HealthUnavailable", "httpStatusCode" => 500}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateListenerOutput" => %{"members" => %{"Listeners" => %{"shape" => "Listeners"}}, "type" => "structure"}, "DuplicateLoadBalancerNameException" => %{"error" => %{"code" => "DuplicateLoadBalancerName", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidConfigurationRequestException" => %{"error" => %{"code" => "InvalidConfigurationRequest", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AddTagsInput" => %{"members" => %{"ResourceArns" => %{"shape" => "ResourceArns"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceArns", "Tags"], "type" => "structure"}, "DescribeLoadBalancerAttributesInput" => %{"members" => %{"LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}}, "required" => ["LoadBalancerArn"], "type" => "structure"}, "SetIpAddressTypeInput" => %{"members" => %{"IpAddressType" => %{"shape" => "IpAddressType"}, "LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}}, "required" => ["LoadBalancerArn", "IpAddressType"], "type" => "structure"}, "Name" => %{"type" => "string"}, "SslProtocol" => %{"type" => "string"}, "CreateLoadBalancerOutput" => %{"members" => %{"LoadBalancers" => %{"shape" => "LoadBalancers"}}, "type" => "structure"}, "Limit" => %{"members" => %{"Max" => %{"shape" => "Max"}, "Name" => %{"shape" => "Name"}}, "type" => "structure"}, "DescribeTargetGroupAttributesInput" => %{"members" => %{"TargetGroupArn" => %{"shape" => "TargetGroupArn"}}, "required" => ["TargetGroupArn"], "type" => "structure"}, "TargetHealthReasonEnum" => %{"enum" => ["Elb.RegistrationInProgress", "Elb.InitialHealthChecking", "Target.ResponseCodeMismatch", "Target.Timeout", "Target.FailedHealthChecks", "Target.NotRegistered", "Target.NotInUse", "Target.DeregistrationInProgress", "Target.InvalidState", "Target.IpUnusable", "Elb.InternalError"], "type" => "string"}, "AllocationIdNotFoundException" => %{"error" => %{"code" => "AllocationIdNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RulePriorityList" => %{"member" => %{"shape" => "RulePriorityPair"}, "type" => "list"}, "TargetGroupNotFoundException" => %{"error" => %{"code" => "TargetGroupNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CertificateArn" => %{"type" => "string"}, "TargetGroupAttributeValue" => %{"type" => "string"}, "DuplicateTagKeysException" => %{"error" => %{"code" => "DuplicateTagKeys", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyTargetGroupInput" => %{"members" => %{"HealthCheckIntervalSeconds" => %{"shape" => "HealthCheckIntervalSeconds"}, "HealthCheckPath" => %{"shape" => "Path"}, "HealthCheckPort" => %{"shape" => "HealthCheckPort"}, "HealthCheckProtocol" => %{"shape" => "ProtocolEnum"}, "HealthCheckTimeoutSeconds" => %{"shape" => "HealthCheckTimeoutSeconds"}, "HealthyThresholdCount" => %{"shape" => "HealthCheckThresholdCount"}, "Matcher" => %{"shape" => "Matcher"}, "TargetGroupArn" => %{"shape" => "TargetGroupArn"}, "UnhealthyThresholdCount" => %{"shape" => "HealthCheckThresholdCount"}}, "required" => ["TargetGroupArn"], "type" => "structure"}, "ConditionFieldName" => %{"max" => 64, "type" => "string"}, "DescribeRulesOutput" => %{"members" => %{"NextMarker" => %{"shape" => "Marker"}, "Rules" => %{"shape" => "Rules"}}, "type" => "structure"}, "TargetGroupArn" => %{"type" => "string"}, "Description" => %{"type" => "string"}, "TargetGroupName" => %{"type" => "string"}, "TooManyTargetGroupsException" => %{"error" => %{"code" => "TooManyTargetGroups", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TargetHealth" => %{"members" => %{"Description" => %{"shape" => "Description"}, "Reason" => %{"shape" => "TargetHealthReasonEnum"}, "State" => %{"shape" => "TargetHealthStateEnum"}}, "type" => "structure"}, "VpcId" => %{"type" => "string"}, "ModifyRuleOutput" => %{"members" => %{"Rules" => %{"shape" => "Rules"}}, "type" => "structure"}, "Limits" => %{"member" => %{"shape" => "Limit"}, "type" => "list"}, "Action" => %{"members" => %{"TargetGroupArn" => %{"shape" => "TargetGroupArn"}, "Type" => %{"shape" => "ActionTypeEnum"}}, "required" => ["Type", "TargetGroupArn"], "type" => "structure"}, "Path" => %{"max" => 1024, "min" => 1, "type" => "string"}, "ZoneName" => %{"type" => "string"}, "CreateRuleOutput" => %{"members" => %{"Rules" => %{"shape" => "Rules"}}, "type" => "structure"}, "HealthCheckIntervalSeconds" => %{"max" => 300, "min" => 5, "type" => "integer"}, "TargetGroupAttributeKey" => %{"max" => 256, "pattern" => "^[a-zA-Z0-9._]+$", "type" => "string"}, "RemoveTagsInput" => %{"members" => %{"ResourceArns" => %{"shape" => "ResourceArns"}, "TagKeys" => %{"shape" => "TagKeys"}}, "required" => ["ResourceArns", "TagKeys"], "type" => "structure"}, "TargetGroupAttribute" => %{"members" => %{"Key" => %{"shape" => "TargetGroupAttributeKey"}, "Value" => %{"shape" => "TargetGroupAttributeValue"}}, "type" => "structure"}, "SecurityGroups" => %{"member" => %{"shape" => "SecurityGroupId"}, "type" => "list"}, "ResourceArns" => %{"member" => %{"shape" => "ResourceArn"}, "type" => "list"}, "DescribeTargetGroupAttributesOutput" => %{"members" => %{"Attributes" => %{"shape" => "TargetGroupAttributes"}}, "type" => "structure"}, "TooManyRulesException" => %{"error" => %{"code" => "TooManyRules", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubnetNotFoundException" => %{"error" => %{"code" => "SubnetNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SetIpAddressTypeOutput" => %{"members" => %{"IpAddressType" => %{"shape" => "IpAddressType"}}, "type" => "structure"}, "ModifyLoadBalancerAttributesInput" => %{"members" => %{"Attributes" => %{"shape" => "LoadBalancerAttributes"}, "LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}}, "required" => ["LoadBalancerArn", "Attributes"], "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key"], "type" => "structure"}, "StateReason" => %{"type" => "string"}, "UnsupportedProtocolException" => %{"error" => %{"code" => "UnsupportedProtocol", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidSchemeException" => %{"error" => %{"code" => "InvalidScheme", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubnetMapping" => %{"members" => %{"AllocationId" => %{"shape" => "AllocationId"}, "SubnetId" => %{"shape" => "SubnetId"}}, "type" => "structure"}, "TargetGroup" => %{"members" => %{"HealthCheckIntervalSeconds" => %{"shape" => "HealthCheckIntervalSeconds"}, "HealthCheckPath" => %{"shape" => "Path"}, "HealthCheckPort" => %{"shape" => "HealthCheckPort"}, "HealthCheckProtocol" => %{"shape" => "ProtocolEnum"}, "HealthCheckTimeoutSeconds" => %{"shape" => "HealthCheckTimeoutSeconds"}, "HealthyThresholdCount" => %{"shape" => "HealthCheckThresholdCount"}, "LoadBalancerArns" => %{"shape" => "LoadBalancerArns"}, "Matcher" => %{"shape" => "Matcher"}, "Port" => %{"shape" => "Port"}, "Protocol" => %{"shape" => "ProtocolEnum"}, "TargetGroupArn" => %{"shape" => "TargetGroupArn"}, "TargetGroupName" => %{"shape" => "TargetGroupName"}, "TargetType" => %{"shape" => "TargetTypeEnum"}, "UnhealthyThresholdCount" => %{"shape" => "HealthCheckThresholdCount"}, "VpcId" => %{"shape" => "VpcId"}}, "type" => "structure"}, "ModifyTargetGroupAttributesOutput" => %{"members" => %{"Attributes" => %{"shape" => "TargetGroupAttributes"}}, "type" => "structure"}, "TargetGroups" => %{"member" => %{"shape" => "TargetGroup"}, "type" => "list"}, "DeleteListenerOutput" => %{"members" => %{}, "type" => "structure"}, "TargetHealthDescriptions" => %{"member" => %{"shape" => "TargetHealthDescription"}, "type" => "list"}, "DescribeSSLPoliciesInput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "Names" => %{"shape" => "SslPolicyNames"}, "PageSize" => %{"shape" => "PageSize"}}, "type" => "structure"}, "SSLPolicyNotFoundException" => %{"error" => %{"code" => "SSLPolicyNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ListOfString" => %{"member" => %{"shape" => "StringValue"}, "type" => "list"}, "LoadBalancerAddress" => %{"members" => %{"AllocationId" => %{"shape" => "AllocationId"}, "IpAddress" => %{"shape" => "IpAddress"}}, "type" => "structure"}, "Cipher" => %{"members" => %{"Name" => %{"shape" => "CipherName"}, "Priority" => %{"shape" => "CipherPriority"}}, "type" => "structure"}, "ModifyRuleInput" => %{"members" => %{"Actions" => %{"shape" => "Actions"}, "Conditions" => %{"shape" => "RuleConditionList"}, "RuleArn" => %{"shape" => "RuleArn"}}, "required" => ["RuleArn"], "type" => "structure"}, "TargetTypeEnum" => %{"enum" => ["instance", "ip"], "type" => "string"}, "LoadBalancerState" => %{"members" => %{"Code" => %{"shape" => "LoadBalancerStateEnum"}, "Reason" => %{"shape" => "StateReason"}}, "type" => "structure"}, "SetSecurityGroupsInput" => %{"members" => %{"LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}}, "required" => ["LoadBalancerArn", "SecurityGroups"], "type" => "structure"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "min" => 1, "type" => "list"}, "CertificateList" => %{"member" => %{"shape" => "Certificate"}, "type" => "list"}, "LoadBalancerArn" => %{"type" => "string"}, "ListenerNotFoundException" => %{"error" => %{"code" => "ListenerNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TagValue" => %{"max" => 256, "min" => 0, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "CreateRuleInput" => %{"members" => %{"Actions" => %{"shape" => "Actions"}, "Conditions" => %{"shape" => "RuleConditionList"}, "ListenerArn" => %{"shape" => "ListenerArn"}, "Priority" => %{"shape" => "RulePriority"}}, "required" => ["ListenerArn", "Conditions", "Priority", "Actions"], "type" => "structure"}, "LoadBalancerStateEnum" => %{"enum" => ["active", "provisioning", "active_impaired", "failed"], "type" => "string"}, "LoadBalancerAttributeKey" => %{"max" => 256, "pattern" => "^[a-zA-Z0-9._]+$", "type" => "string"}, "DuplicateTargetGroupNameException" => %{"error" => %{"code" => "DuplicateTargetGroupName", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "LoadBalancerAttribute" => %{"members" => %{"Key" => %{"shape" => "LoadBalancerAttributeKey"}, "Value" => %{"shape" => "LoadBalancerAttributeValue"}}, "type" => "structure"}, "InvalidSecurityGroupException" => %{"error" => %{"code" => "InvalidSecurityGroup", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TargetGroupNames" => %{"member" => %{"shape" => "TargetGroupName"}, "type" => "list"}, "DescribeLoadBalancersInput" => %{"members" => %{"LoadBalancerArns" => %{"shape" => "LoadBalancerArns"}, "Marker" => %{"shape" => "Marker"}, "Names" => %{"shape" => "LoadBalancerNames"}, "PageSize" => %{"shape" => "PageSize"}}, "type" => "structure"}, "RuleCondition" => %{"members" => %{"Field" => %{"shape" => "ConditionFieldName"}, "Values" => %{"shape" => "ListOfString"}}, "type" => "structure"}, "CreateTargetGroupOutput" => %{"members" => %{"TargetGroups" => %{"shape" => "TargetGroups"}}, "type" => "structure"}, "TooManyRegistrationsForTargetIdException" => %{"error" => %{"code" => "TooManyRegistrationsForTargetId", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RulePriorityPair" => %{"members" => %{"Priority" => %{"shape" => "RulePriority"}, "RuleArn" => %{"shape" => "RuleArn"}}, "type" => "structure"}, "ListenerArns" => %{"member" => %{"shape" => "ListenerArn"}, "type" => "list"}, "SecurityGroupId" => %{"type" => "string"}, "AllocationId" => %{"type" => "string"}, "AvailabilityZone" => %{"members" => %{"LoadBalancerAddresses" => %{"shape" => "LoadBalancerAddresses"}, "SubnetId" => %{"shape" => "SubnetId"}, "ZoneName" => %{"shape" => "ZoneName"}}, "type" => "structure"}, "CertificateNotFoundException" => %{"error" => %{"code" => "CertificateNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteLoadBalancerOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeAccountLimitsOutput" => %{"members" => %{"Limits" => %{"shape" => "Limits"}, "NextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "DescribeLoadBalancersOutput" => %{"members" => %{"LoadBalancers" => %{"shape" => "LoadBalancers"}, "NextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "Max" => %{"type" => "string"}, "TagDescription" => %{"members" => %{"ResourceArn" => %{"shape" => "ResourceArn"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "ListenerArn" => %{"type" => "string"}, "TargetId" => %{"type" => "string"}, "ResourceArn" => %{"type" => "string"}, "SubnetId" => %{"type" => "string"}, "DescribeAccountLimitsInput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "PageSize" => %{"shape" => "PageSize"}}, "type" => "structure"}, "RegisterTargetsOutput" => %{"members" => %{}, "type" => "structure"}, "DeleteLoadBalancerInput" => %{"members" => %{"LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}}, "required" => ["LoadBalancerArn"], "type" => "structure"}, "DeleteRuleInput" => %{"members" => %{"RuleArn" => %{"shape" => "RuleArn"}}, "required" => ["RuleArn"], "type" => "structure"}, "SubnetMappings" => %{"member" => %{"shape" => "SubnetMapping"}, "type" => "list"}, "IpAddress" => %{"type" => "string"}, "OperationNotPermittedException" => %{"error" => %{"code" => "OperationNotPermitted", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "HealthCheckTimeoutSeconds" => %{"max" => 60, "min" => 2, "type" => "integer"}, "CreatedTime" => %{"type" => "timestamp"}, "AvailabilityZones" => %{"member" => %{"shape" => "AvailabilityZone"}, "type" => "list"}, "IpAddressType" => %{"enum" => ["ipv4", "dualstack"], "type" => "string"}, "ModifyTargetGroupAttributesInput" => %{"members" => %{"Attributes" => %{"shape" => "TargetGroupAttributes"}, "TargetGroupArn" => %{"shape" => "TargetGroupArn"}}, "required" => ["TargetGroupArn", "Attributes"], "type" => "structure"}, "DescribeSSLPoliciesOutput" => %{"members" => %{"NextMarker" => %{"shape" => "Marker"}, "SslPolicies" => %{"shape" => "SslPolicies"}}, "type" => "structure"}, "DeleteTargetGroupOutput" => %{"members" => %{}, "type" => "structure"}, "Marker" => %{"type" => "string"}, "SslPolicy" => %{"members" => %{"Ciphers" => %{"shape" => "Ciphers"}, "Name" => %{"shape" => "SslPolicyName"}, "SslProtocols" => %{"shape" => "SslProtocols"}}, "type" => "structure"}, "DescribeLoadBalancerAttributesOutput" => %{"members" => %{"Attributes" => %{"shape" => "LoadBalancerAttributes"}}, "type" => "structure"}, "DeregisterTargetsInput" => %{"members" => %{"TargetGroupArn" => %{"shape" => "TargetGroupArn"}, "Targets" => %{"shape" => "TargetDescriptions"}}, "required" => ["TargetGroupArn", "Targets"], "type" => "structure"}, "IsDefault" => %{"type" => "boolean"}, "Matcher" => %{"members" => %{"HttpCode" => %{"shape" => "HttpCode"}}, "required" => ["HttpCode"], "type" => "structure"}, "TooManyLoadBalancersException" => %{"error" => %{"code" => "TooManyLoadBalancers", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SslProtocols" => %{"member" => %{"shape" => "SslProtocol"}, "type" => "list"}, "SetSubnetsOutput" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}}, "type" => "structure"}, "SslPolicyName" => %{"type" => "string"}, "InvalidTargetException" => %{"error" => %{"code" => "InvalidTarget", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyLoadBalancerAttributesOutput" => %{"members" => %{"Attributes" => %{"shape" => "LoadBalancerAttributes"}}, "type" => "structure"}, "ModifyTargetGroupOutput" => %{"members" => %{"TargetGroups" => %{"shape" => "TargetGroups"}}, "type" => "structure"}, "CipherPriority" => %{"type" => "integer"}, "LoadBalancerAttributes" => %{"max" => 20, "member" => %{"shape" => "LoadBalancerAttribute"}, "type" => "list"}, "DeregisterTargetsOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeTargetGroupsOutput" => %{"members" => %{"NextMarker" => %{"shape" => "Marker"}, "TargetGroups" => %{"shape" => "TargetGroups"}}, "type" => "structure"}, "LoadBalancerNotFoundException" => %{"error" => %{"code" => "LoadBalancerNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeTagsOutput" => %{"members" => %{"TagDescriptions" => %{"shape" => "TagDescriptions"}}, "type" => "structure"}, "TooManyTagsException" => %{"error" => %{"code" => "TooManyTags", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteListenerInput" => %{"members" => %{"ListenerArn" => %{"shape" => "ListenerArn"}}, "required" => ["ListenerArn"], "type" => "structure"}, "Rule" => %{"members" => %{"Actions" => %{"shape" => "Actions"}, "Conditions" => %{"shape" => "RuleConditionList"}, "IsDefault" => %{"shape" => "IsDefault"}, "Priority" => %{"shape" => "String"}, "RuleArn" => %{"shape" => "RuleArn"}}, "type" => "structure"}, "TooManyListenersException" => %{"error" => %{"code" => "TooManyListeners", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "TargetGroupAttributes" => %{"member" => %{"shape" => "TargetGroupAttribute"}, "type" => "list"}, "LoadBalancerSchemeEnum" => %{"enum" => ["internet-facing", "internal"], "type" => "string"}, "TargetGroupAssociationLimitException" => %{"error" => %{"code" => "TargetGroupAssociationLimit", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TargetHealthStateEnum" => %{"enum" => ["initial", "healthy", "unhealthy", "unused", "draining", "unavailable"], "type" => "string"}, "StringValue" => %{"type" => "string"}, "DeleteRuleOutput" => %{"members" => %{}, "type" => "structure"}, "Ciphers" => %{"member" => %{"shape" => "Cipher"}, "type" => "list"}, "LoadBalancerNames" => %{"member" => %{"shape" => "LoadBalancerName"}, "type" => "list"}, "LoadBalancers" => %{"member" => %{"shape" => "LoadBalancer"}, "type" => "list"}, "DuplicateListenerException" => %{"error" => %{"code" => "DuplicateListener", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TooManyTargetsException" => %{"error" => %{"code" => "TooManyTargets", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AvailabilityZoneNotSupportedException" => %{"error" => %{"code" => "AvailabilityZoneNotSupported", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RuleConditionList" => %{"member" => %{"shape" => "RuleCondition"}, "type" => "list"}, "SetRulePrioritiesOutput" => %{"members" => %{"Rules" => %{"shape" => "Rules"}}, "type" => "structure"}, "SetSecurityGroupsOutput" => %{"members" => %{"SecurityGroupIds" => %{"shape" => "SecurityGroups"}}, "type" => "structure"}, "SetRulePrioritiesInput" => %{"members" => %{"RulePriorities" => %{"shape" => "RulePriorityList"}}, "required" => ["RulePriorities"], "type" => "structure"}, "HealthCheckPort" => %{"type" => "string"}, "Certificate" => %{"members" => %{"CertificateArn" => %{"shape" => "CertificateArn"}}, "type" => "structure"}, "RulePriority" => %{"max" => 50000, "min" => 1, "type" => "integer"}, "DescribeTargetHealthOutput" => %{"members" => %{"TargetHealthDescriptions" => %{"shape" => "TargetHealthDescriptions"}}, "type" => "structure"}, "DescribeTagsInput" => %{"members" => %{"ResourceArns" => %{"shape" => "ResourceArns"}}, "required" => ["ResourceArns"], "type" => "structure"}, "Actions" => %{"member" => %{"shape" => "Action"}, "type" => "list"}, "ModifyListenerOutput" => %{"members" => %{"Listeners" => %{"shape" => "Listeners"}}, "type" => "structure"}, "DescribeTargetGroupsInput" => %{"members" => %{"LoadBalancerArn" => %{"shape" => "LoadBalancerArn"}, "Marker" => %{"shape" => "Marker"}, "Names" => %{"shape" => "TargetGroupNames"}, "PageSize" => %{"shape" => "PageSize"}, "TargetGroupArns" => %{"shape" => "TargetGroupArns"}}, "type" => "structure"}}
  end
end