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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
    }
  end
  
end