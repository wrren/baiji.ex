defmodule Baiji.ElasticLoadBalancing do
  @moduledoc """
  Elastic Load Balancing

  A load balancer distributes incoming traffic across your EC2 instances.
  This enables you to increase the availability of your application. The load
  balancer also monitors the health of its registered instances and ensures
  that it routes traffic only to healthy instances. You configure your load
  balancer to accept incoming traffic by specifying one or more listeners,
  which are configured with a protocol and port number for connections from
  clients to the load balancer and a protocol and port number for connections
  from the load balancer to the instances.

  Elastic Load Balancing supports two types of load balancers: Classic Load
  Balancers and Application Load Balancers (new). A Classic Load Balancer
  makes routing and load balancing decisions either at the transport layer
  (TCP/SSL) or the application layer (HTTP/HTTPS), and supports either
  EC2-Classic or a VPC. An Application Load Balancer makes routing and load
  balancing decisions at the application layer (HTTP/HTTPS), supports
  path-based routing, and can route requests to one or more ports on each EC2
  instance or container instance in your virtual private cloud (VPC). For
  more information, see the [Elastic Load Balancing User
  Guide](http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html).

  This reference covers the 2012-06-01 API, which supports Classic Load
  Balancers. The 2015-12-01 API supports Application Load Balancers.

  To get started, create a load balancer with one or more listeners using
  `CreateLoadBalancer`. Register your instances with the load balancer using
  `RegisterInstancesWithLoadBalancer`.

  All Elastic Load Balancing operations are *idempotent*, which means that
  they complete at most one time. If you repeat an operation, it succeeds
  with a 200 OK response code.
  """

  @doc """
  Adds the specified tags to the specified load balancer. Each load balancer
  can have a maximum of 10 tags.

  Each tag consists of a key and an optional value. If a tag with the same
  key is already associated with the load balancer, `AddTags` updates its
  value.

  For more information, see [Tag Your Classic Load
  Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html)
  in the *Classic Load Balancer Guide*.
  """
  def add_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddTags",
      method:           :post,
      input_shape:      "AddTagsInput",
      output_shape:     "AddTagsOutput",
      output_wrapper:   "AddTagsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates one or more security groups with your load balancer in a virtual
  private cloud (VPC). The specified security groups override the previously
  associated security groups.

  For more information, see [Security Groups for Load Balancers in a
  VPC](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups)
  in the *Classic Load Balancer Guide*.
  """
  def apply_security_groups_to_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ApplySecurityGroupsToLoadBalancer",
      method:           :post,
      input_shape:      "ApplySecurityGroupsToLoadBalancerInput",
      output_shape:     "ApplySecurityGroupsToLoadBalancerOutput",
      output_wrapper:   "ApplySecurityGroupsToLoadBalancerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds one or more subnets to the set of configured subnets for the specified
  load balancer.

  The load balancer evenly distributes requests across all registered
  subnets. For more information, see [Add or Remove Subnets for Your Load
  Balancer in a
  VPC](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html)
  in the *Classic Load Balancer Guide*.
  """
  def attach_load_balancer_to_subnets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AttachLoadBalancerToSubnets",
      method:           :post,
      input_shape:      "AttachLoadBalancerToSubnetsInput",
      output_shape:     "AttachLoadBalancerToSubnetsOutput",
      output_wrapper:   "AttachLoadBalancerToSubnetsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Specifies the health check settings to use when evaluating the health state
  of your EC2 instances.

  For more information, see [Configure Health Checks for Your Load
  Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html)
  in the *Classic Load Balancer Guide*.
  """
  def configure_health_check(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConfigureHealthCheck",
      method:           :post,
      input_shape:      "ConfigureHealthCheckInput",
      output_shape:     "ConfigureHealthCheckOutput",
      output_wrapper:   "ConfigureHealthCheckResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates a stickiness policy with sticky session lifetimes that follow
  that of an application-generated cookie. This policy can be associated only
  with HTTP/HTTPS listeners.

  This policy is similar to the policy created by
  `CreateLBCookieStickinessPolicy`, except that the lifetime of the special
  Elastic Load Balancing cookie, `AWSELB`, follows the lifetime of the
  application-generated cookie specified in the policy configuration. The
  load balancer only inserts a new stickiness cookie when the application
  response includes a new application cookie.

  If the application cookie is explicitly removed or expires, the session
  stops being sticky until a new application cookie is issued.

  For more information, see [Application-Controlled Session
  Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application)
  in the *Classic Load Balancer Guide*.
  """
  def create_app_cookie_stickiness_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateAppCookieStickinessPolicy",
      method:           :post,
      input_shape:      "CreateAppCookieStickinessPolicyInput",
      output_shape:     "CreateAppCookieStickinessPolicyOutput",
      output_wrapper:   "CreateAppCookieStickinessPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates a stickiness policy with sticky session lifetimes controlled by
  the lifetime of the browser (user-agent) or a specified expiration period.
  This policy can be associated only with HTTP/HTTPS listeners.

  When a load balancer implements this policy, the load balancer uses a
  special cookie to track the instance for each request. When the load
  balancer receives a request, it first checks to see if this cookie is
  present in the request. If so, the load balancer sends the request to the
  application server specified in the cookie. If not, the load balancer sends
  the request to a server that is chosen based on the existing load-balancing
  algorithm.

  A cookie is inserted into the response for binding subsequent requests from
  the same user to that server. The validity of the cookie is based on the
  cookie expiration time, which is specified in the policy configuration.

  For more information, see [Duration-Based Session
  Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration)
  in the *Classic Load Balancer Guide*.
  """
  def create_l_b_cookie_stickiness_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateLBCookieStickinessPolicy",
      method:           :post,
      input_shape:      "CreateLBCookieStickinessPolicyInput",
      output_shape:     "CreateLBCookieStickinessPolicyOutput",
      output_wrapper:   "CreateLBCookieStickinessPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a Classic Load Balancer.

  You can add listeners, security groups, subnets, and tags when you create
  your load balancer, or you can add them later using
  `CreateLoadBalancerListeners`, `ApplySecurityGroupsToLoadBalancer`,
  `AttachLoadBalancerToSubnets`, and `AddTags`.

  To describe your current load balancers, see `DescribeLoadBalancers`. When
  you are finished with a load balancer, you can delete it using
  `DeleteLoadBalancer`.

  You can create up to 20 load balancers per region per account. You can
  request an increase for the number of load balancers for your account. For
  more information, see [Limits for Your Classic Load
  Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html)
  in the *Classic Load Balancer Guide*.
  """
  def create_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateLoadBalancer",
      method:           :post,
      input_shape:      "CreateAccessPointInput",
      output_shape:     "CreateAccessPointOutput",
      output_wrapper:   "CreateLoadBalancerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates one or more listeners for the specified load balancer. If a
  listener with the specified port does not already exist, it is created;
  otherwise, the properties of the new listener must match the properties of
  the existing listener.

  For more information, see [Listeners for Your Classic Load
  Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html)
  in the *Classic Load Balancer Guide*.
  """
  def create_load_balancer_listeners(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateLoadBalancerListeners",
      method:           :post,
      input_shape:      "CreateLoadBalancerListenerInput",
      output_shape:     "CreateLoadBalancerListenerOutput",
      output_wrapper:   "CreateLoadBalancerListenersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a policy with the specified attributes for the specified load
  balancer.

  Policies are settings that are saved for your load balancer and that can be
  applied to the listener or the application server, depending on the policy
  type.
  """
  def create_load_balancer_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateLoadBalancerPolicy",
      method:           :post,
      input_shape:      "CreateLoadBalancerPolicyInput",
      output_shape:     "CreateLoadBalancerPolicyOutput",
      output_wrapper:   "CreateLoadBalancerPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified load balancer.

  If you are attempting to recreate a load balancer, you must reconfigure all
  settings. The DNS name associated with a deleted load balancer are no
  longer usable. The name and associated DNS record of the deleted load
  balancer no longer exist and traffic sent to any of its IP addresses is no
  longer delivered to your instances.

  If the load balancer does not exist or has already been deleted, the call
  to `DeleteLoadBalancer` still succeeds.
  """
  def delete_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteLoadBalancer",
      method:           :post,
      input_shape:      "DeleteAccessPointInput",
      output_shape:     "DeleteAccessPointOutput",
      output_wrapper:   "DeleteLoadBalancerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified listeners from the specified load balancer.
  """
  def delete_load_balancer_listeners(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteLoadBalancerListeners",
      method:           :post,
      input_shape:      "DeleteLoadBalancerListenerInput",
      output_shape:     "DeleteLoadBalancerListenerOutput",
      output_wrapper:   "DeleteLoadBalancerListenersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified policy from the specified load balancer. This policy
  must not be enabled for any listeners.
  """
  def delete_load_balancer_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteLoadBalancerPolicy",
      method:           :post,
      input_shape:      "DeleteLoadBalancerPolicyInput",
      output_shape:     "DeleteLoadBalancerPolicyOutput",
      output_wrapper:   "DeleteLoadBalancerPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deregisters the specified instances from the specified load balancer. After
  the instance is deregistered, it no longer receives traffic from the load
  balancer.

  You can use `DescribeLoadBalancers` to verify that the instance is
  deregistered from the load balancer.

  For more information, see [Register or De-Register EC2
  Instances](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html)
  in the *Classic Load Balancer Guide*.
  """
  def deregister_instances_from_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterInstancesFromLoadBalancer",
      method:           :post,
      input_shape:      "DeregisterEndPointsInput",
      output_shape:     "DeregisterEndPointsOutput",
      output_wrapper:   "DeregisterInstancesFromLoadBalancerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the current Elastic Load Balancing resource limits for your AWS
  account.

  For more information, see [Limits for Your Classic Load
  Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html)
  in the *Classic Load Balancer Guide*.
  """
  def describe_account_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAccountLimits",
      method:           :post,
      input_shape:      "DescribeAccountLimitsInput",
      output_shape:     "DescribeAccountLimitsOutput",
      output_wrapper:   "DescribeAccountLimitsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the state of the specified instances with respect to the
  specified load balancer. If no instances are specified, the call describes
  the state of all instances that are currently registered with the load
  balancer. If instances are specified, their state is returned even if they
  are no longer registered with the load balancer. The state of terminated
  instances is not returned.
  """
  def describe_instance_health(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInstanceHealth",
      method:           :post,
      input_shape:      "DescribeEndPointStateInput",
      output_shape:     "DescribeEndPointStateOutput",
      output_wrapper:   "DescribeInstanceHealthResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the attributes for the specified load balancer.
  """
  def describe_load_balancer_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBalancerAttributes",
      method:           :post,
      input_shape:      "DescribeLoadBalancerAttributesInput",
      output_shape:     "DescribeLoadBalancerAttributesOutput",
      output_wrapper:   "DescribeLoadBalancerAttributesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the specified policies.

  If you specify a load balancer name, the action returns the descriptions of
  all policies created for the load balancer. If you specify a policy name
  associated with your load balancer, the action returns the description of
  that policy. If you don't specify a load balancer name, the action returns
  descriptions of the specified sample policies, or descriptions of all
  sample policies. The names of the sample policies have the `ELBSample-`
  prefix.
  """
  def describe_load_balancer_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBalancerPolicies",
      method:           :post,
      input_shape:      "DescribeLoadBalancerPoliciesInput",
      output_shape:     "DescribeLoadBalancerPoliciesOutput",
      output_wrapper:   "DescribeLoadBalancerPoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the specified load balancer policy types or all load balancer
  policy types.

  The description of each type indicates how it can be used. For example,
  some policies can be used only with layer 7 listeners, some policies can be
  used only with layer 4 listeners, and some policies can be used only with
  your EC2 instances.

  You can use `CreateLoadBalancerPolicy` to create a policy configuration for
  any of these policy types. Then, depending on the policy type, use either
  `SetLoadBalancerPoliciesOfListener` or
  `SetLoadBalancerPoliciesForBackendServer` to set the policy.
  """
  def describe_load_balancer_policy_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBalancerPolicyTypes",
      method:           :post,
      input_shape:      "DescribeLoadBalancerPolicyTypesInput",
      output_shape:     "DescribeLoadBalancerPolicyTypesOutput",
      output_wrapper:   "DescribeLoadBalancerPolicyTypesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the specified the load balancers. If no load balancers are
  specified, the call describes all of your load balancers.
  """
  def describe_load_balancers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBalancers",
      method:           :post,
      input_shape:      "DescribeAccessPointsInput",
      output_shape:     "DescribeAccessPointsOutput",
      output_wrapper:   "DescribeLoadBalancersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the tags associated with the specified load balancers.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      method:           :post,
      input_shape:      "DescribeTagsInput",
      output_shape:     "DescribeTagsOutput",
      output_wrapper:   "DescribeTagsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified subnets from the set of configured subnets for the
  load balancer.

  After a subnet is removed, all EC2 instances registered with the load
  balancer in the removed subnet go into the `OutOfService` state. Then, the
  load balancer balances the traffic among the remaining routable subnets.
  """
  def detach_load_balancer_from_subnets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DetachLoadBalancerFromSubnets",
      method:           :post,
      input_shape:      "DetachLoadBalancerFromSubnetsInput",
      output_shape:     "DetachLoadBalancerFromSubnetsOutput",
      output_wrapper:   "DetachLoadBalancerFromSubnetsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified Availability Zones from the set of Availability Zones
  for the specified load balancer.

  There must be at least one Availability Zone registered with a load
  balancer at all times. After an Availability Zone is removed, all instances
  registered with the load balancer that are in the removed Availability Zone
  go into the `OutOfService` state. Then, the load balancer attempts to
  equally balance the traffic among its remaining Availability Zones.

  For more information, see [Add or Remove Availability
  Zones](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html)
  in the *Classic Load Balancer Guide*.
  """
  def disable_availability_zones_for_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisableAvailabilityZonesForLoadBalancer",
      method:           :post,
      input_shape:      "RemoveAvailabilityZonesInput",
      output_shape:     "RemoveAvailabilityZonesOutput",
      output_wrapper:   "DisableAvailabilityZonesForLoadBalancerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds the specified Availability Zones to the set of Availability Zones for
  the specified load balancer.

  The load balancer evenly distributes requests across all its registered
  Availability Zones that contain instances.

  For more information, see [Add or Remove Availability
  Zones](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html)
  in the *Classic Load Balancer Guide*.
  """
  def enable_availability_zones_for_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "EnableAvailabilityZonesForLoadBalancer",
      method:           :post,
      input_shape:      "AddAvailabilityZonesInput",
      output_shape:     "AddAvailabilityZonesOutput",
      output_wrapper:   "EnableAvailabilityZonesForLoadBalancerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the attributes of the specified load balancer.

  You can modify the load balancer attributes, such as `AccessLogs`,
  `ConnectionDraining`, and `CrossZoneLoadBalancing` by either enabling or
  disabling them. Or, you can modify the load balancer attribute
  `ConnectionSettings` by specifying an idle connection timeout value for
  your load balancer.

  For more information, see the following in the *Classic Load Balancer
  Guide*:

  <ul> <li> [Cross-Zone Load
  Balancing](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html)

  </li> <li> [Connection
  Draining](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html)

  </li> <li> [Access
  Logs](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html)

  </li> <li> [Idle Connection
  Timeout](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html)

  </li> </ul>
  """
  def modify_load_balancer_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ModifyLoadBalancerAttributes",
      method:           :post,
      input_shape:      "ModifyLoadBalancerAttributesInput",
      output_shape:     "ModifyLoadBalancerAttributesOutput",
      output_wrapper:   "ModifyLoadBalancerAttributesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds the specified instances to the specified load balancer.

  The instance must be a running instance in the same network as the load
  balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances
  and a load balancer in a VPC with ClassicLink enabled, you can link the
  EC2-Classic instances to that VPC and then register the linked EC2-Classic
  instances with the load balancer in the VPC.

  Note that `RegisterInstanceWithLoadBalancer` completes when the request has
  been registered. Instance registration takes a little time to complete. To
  check the state of the registered instances, use `DescribeLoadBalancers` or
  `DescribeInstanceHealth`.

  After the instance is registered, it starts receiving traffic and requests
  from the load balancer. Any instance that is not in one of the Availability
  Zones registered for the load balancer is moved to the `OutOfService`
  state. If an Availability Zone is added to the load balancer later, any
  instances registered with the load balancer move to the `InService` state.

  To deregister instances from a load balancer, use
  `DeregisterInstancesFromLoadBalancer`.

  For more information, see [Register or De-Register EC2
  Instances](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html)
  in the *Classic Load Balancer Guide*.
  """
  def register_instances_with_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterInstancesWithLoadBalancer",
      method:           :post,
      input_shape:      "RegisterEndPointsInput",
      output_shape:     "RegisterEndPointsOutput",
      output_wrapper:   "RegisterInstancesWithLoadBalancerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes one or more tags from the specified load balancer.
  """
  def remove_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveTags",
      method:           :post,
      input_shape:      "RemoveTagsInput",
      output_shape:     "RemoveTagsOutput",
      output_wrapper:   "RemoveTagsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the certificate that terminates the specified listener's SSL
  connections. The specified certificate replaces any prior certificate that
  was used on the same load balancer and port.

  For more information about updating your SSL certificate, see [Replace the
  SSL Certificate for Your Load
  Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html)
  in the *Classic Load Balancer Guide*.
  """
  def set_load_balancer_listener_s_s_l_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetLoadBalancerListenerSSLCertificate",
      method:           :post,
      input_shape:      "SetLoadBalancerListenerSSLCertificateInput",
      output_shape:     "SetLoadBalancerListenerSSLCertificateOutput",
      output_wrapper:   "SetLoadBalancerListenerSSLCertificateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Replaces the set of policies associated with the specified port on which
  the EC2 instance is listening with a new set of policies. At this time,
  only the back-end server authentication policy type can be applied to the
  instance ports; this policy type is composed of multiple public key
  policies.

  Each time you use `SetLoadBalancerPoliciesForBackendServer` to enable the
  policies, use the `PolicyNames` parameter to list the policies that you
  want to enable.

  You can use `DescribeLoadBalancers` or `DescribeLoadBalancerPolicies` to
  verify that the policy is associated with the EC2 instance.

  For more information about enabling back-end instance authentication, see
  [Configure Back-end Instance
  Authentication](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt)
  in the *Classic Load Balancer Guide*. For more information about Proxy
  Protocol, see [Configure Proxy Protocol
  Support](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html)
  in the *Classic Load Balancer Guide*.
  """
  def set_load_balancer_policies_for_backend_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetLoadBalancerPoliciesForBackendServer",
      method:           :post,
      input_shape:      "SetLoadBalancerPoliciesForBackendServerInput",
      output_shape:     "SetLoadBalancerPoliciesForBackendServerOutput",
      output_wrapper:   "SetLoadBalancerPoliciesForBackendServerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Replaces the current set of policies for the specified load balancer port
  with the specified set of policies.

  To enable back-end server authentication, use
  `SetLoadBalancerPoliciesForBackendServer`.

  For more information about setting policies, see [Update the SSL
  Negotiation
  Configuration](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html),
  [Duration-Based Session
  Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration),
  and [Application-Controlled Session
  Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application)
  in the *Classic Load Balancer Guide*.
  """
  def set_load_balancer_policies_of_listener(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetLoadBalancerPoliciesOfListener",
      method:           :post,
      input_shape:      "SetLoadBalancerPoliciesOfListenerInput",
      output_shape:     "SetLoadBalancerPoliciesOfListenerOutput",
      output_wrapper:   "SetLoadBalancerPoliciesOfListenerResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "elasticloadbalancing",
      endpoint_prefix:  "elasticloadbalancing",
      type:             :xml,
      version:          "2012-06-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"DescribeLoadBalancerPolicyTypesInput" => %{"members" => %{"PolicyTypeNames" => %{"shape" => "PolicyTypeNames"}}, "type" => "structure"}, "PageSize" => %{"max" => 400, "min" => 1, "type" => "integer"}, "TagKeyOnly" => %{"members" => %{"Key" => %{"shape" => "TagKey"}}, "type" => "structure"}, "Listeners" => %{"member" => %{"shape" => "Listener"}, "type" => "list"}, "TagDescriptions" => %{"member" => %{"shape" => "TagDescription"}, "type" => "list"}, "Ports" => %{"member" => %{"shape" => "AccessPointPort"}, "type" => "list"}, "LBCookieStickinessPolicies" => %{"member" => %{"shape" => "LBCookieStickinessPolicy"}, "type" => "list"}, "DescribeLoadBalancerPolicyTypesOutput" => %{"members" => %{"PolicyTypeDescriptions" => %{"shape" => "PolicyTypeDescriptions"}}, "type" => "structure"}, "InvalidSubnetException" => %{"error" => %{"code" => "InvalidSubnet", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TagKeyList" => %{"member" => %{"shape" => "TagKeyOnly"}, "min" => 1, "type" => "list"}, "Subnets" => %{"member" => %{"shape" => "SubnetId"}, "type" => "list"}, "PolicyDescription" => %{"members" => %{"PolicyAttributeDescriptions" => %{"shape" => "PolicyAttributeDescriptions"}, "PolicyName" => %{"shape" => "PolicyName"}, "PolicyTypeName" => %{"shape" => "PolicyTypeName"}}, "type" => "structure"}, "AttachLoadBalancerToSubnetsInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "Subnets" => %{"shape" => "Subnets"}}, "required" => ["LoadBalancerName", "Subnets"], "type" => "structure"}, "BackendServerDescriptions" => %{"member" => %{"shape" => "BackendServerDescription"}, "type" => "list"}, "AddTagsOutput" => %{"members" => %{}, "type" => "structure"}, "SetLoadBalancerPoliciesForBackendServerOutput" => %{"members" => %{}, "type" => "structure"}, "DNSName" => %{"type" => "string"}, "S3BucketName" => %{"type" => "string"}, "CreateLoadBalancerListenerInput" => %{"members" => %{"Listeners" => %{"shape" => "Listeners"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName", "Listeners"], "type" => "structure"}, "PolicyTypeNames" => %{"member" => %{"shape" => "PolicyTypeName"}, "type" => "list"}, "Listener" => %{"members" => %{"InstancePort" => %{"shape" => "InstancePort"}, "InstanceProtocol" => %{"shape" => "Protocol"}, "LoadBalancerPort" => %{"shape" => "AccessPointPort"}, "Protocol" => %{"shape" => "Protocol"}, "SSLCertificateId" => %{"shape" => "SSLCertificateId"}}, "required" => ["Protocol", "LoadBalancerPort", "InstancePort"], "type" => "structure"}, "CreateLoadBalancerListenerOutput" => %{"members" => %{}, "type" => "structure"}, "SecurityGroupOwnerAlias" => %{"type" => "string"}, "RemoveTagsOutput" => %{"members" => %{}, "type" => "structure"}, "DeleteLoadBalancerListenerInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "LoadBalancerPorts" => %{"shape" => "Ports"}}, "required" => ["LoadBalancerName", "LoadBalancerPorts"], "type" => "structure"}, "PolicyTypeDescriptions" => %{"member" => %{"shape" => "PolicyTypeDescription"}, "type" => "list"}, "CrossZoneLoadBalancingEnabled" => %{"type" => "boolean"}, "TooManyAccessPointsException" => %{"error" => %{"code" => "TooManyLoadBalancers", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AttributeName" => %{"type" => "string"}, "DetachLoadBalancerFromSubnetsOutput" => %{"members" => %{"Subnets" => %{"shape" => "Subnets"}}, "type" => "structure"}, "PolicyAttributeTypeDescription" => %{"members" => %{"AttributeName" => %{"shape" => "AttributeName"}, "AttributeType" => %{"shape" => "AttributeType"}, "Cardinality" => %{"shape" => "Cardinality"}, "DefaultValue" => %{"shape" => "DefaultValue"}, "Description" => %{"shape" => "Description"}}, "type" => "structure"}, "DescribeAccessPointsOutput" => %{"members" => %{"LoadBalancerDescriptions" => %{"shape" => "LoadBalancerDescriptions"}, "NextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "DeregisterEndPointsOutput" => %{"members" => %{"Instances" => %{"shape" => "Instances"}}, "type" => "structure"}, "PolicyTypeDescription" => %{"members" => %{"Description" => %{"shape" => "Description"}, "PolicyAttributeTypeDescriptions" => %{"shape" => "PolicyAttributeTypeDescriptions"}, "PolicyTypeName" => %{"shape" => "PolicyTypeName"}}, "type" => "structure"}, "PolicyDescriptions" => %{"member" => %{"shape" => "PolicyDescription"}, "type" => "list"}, "DuplicatePolicyNameException" => %{"error" => %{"code" => "DuplicatePolicyName", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteLoadBalancerPolicyInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "PolicyName" => %{"shape" => "PolicyName"}}, "required" => ["LoadBalancerName", "PolicyName"], "type" => "structure"}, "DetachLoadBalancerFromSubnetsInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "Subnets" => %{"shape" => "Subnets"}}, "required" => ["LoadBalancerName", "Subnets"], "type" => "structure"}, "InvalidConfigurationRequestException" => %{"error" => %{"code" => "InvalidConfigurationRequest", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "LoadBalancerAttributeNotFoundException" => %{"error" => %{"code" => "LoadBalancerAttributeNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AddTagsInput" => %{"members" => %{"LoadBalancerNames" => %{"shape" => "LoadBalancerNames"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["LoadBalancerNames", "Tags"], "type" => "structure"}, "SetLoadBalancerPoliciesOfListenerOutput" => %{"members" => %{}, "type" => "structure"}, "Cardinality" => %{"type" => "string"}, "CreateLoadBalancerPolicyOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeLoadBalancerAttributesInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName"], "type" => "structure"}, "ListenerDescription" => %{"members" => %{"Listener" => %{"shape" => "Listener"}, "PolicyNames" => %{"shape" => "PolicyNames"}}, "type" => "structure"}, "AddAvailabilityZonesOutput" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}}, "type" => "structure"}, "LBCookieStickinessPolicy" => %{"members" => %{"CookieExpirationPeriod" => %{"shape" => "CookieExpirationPeriod"}, "PolicyName" => %{"shape" => "PolicyName"}}, "type" => "structure"}, "InstanceId" => %{"type" => "string"}, "Name" => %{"type" => "string"}, "CreateAppCookieStickinessPolicyInput" => %{"members" => %{"CookieName" => %{"shape" => "CookieName"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}, "PolicyName" => %{"shape" => "PolicyName"}}, "required" => ["LoadBalancerName", "PolicyName", "CookieName"], "type" => "structure"}, "RemoveAvailabilityZonesOutput" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}}, "type" => "structure"}, "Limit" => %{"members" => %{"Max" => %{"shape" => "Max"}, "Name" => %{"shape" => "Name"}}, "type" => "structure"}, "ReasonCode" => %{"type" => "string"}, "AccessPointPort" => %{"type" => "integer"}, "LoadBalancerDescription" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "BackendServerDescriptions" => %{"shape" => "BackendServerDescriptions"}, "CanonicalHostedZoneName" => %{"shape" => "DNSName"}, "CanonicalHostedZoneNameID" => %{"shape" => "DNSName"}, "CreatedTime" => %{"shape" => "CreatedTime"}, "DNSName" => %{"shape" => "DNSName"}, "HealthCheck" => %{"shape" => "HealthCheck"}, "Instances" => %{"shape" => "Instances"}, "ListenerDescriptions" => %{"shape" => "ListenerDescriptions"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}, "Policies" => %{"shape" => "Policies"}, "Scheme" => %{"shape" => "LoadBalancerScheme"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}, "SourceSecurityGroup" => %{"shape" => "SourceSecurityGroup"}, "Subnets" => %{"shape" => "Subnets"}, "VPCId" => %{"shape" => "VPCId"}}, "type" => "structure"}, "AdditionalAttributeValue" => %{"max" => 256, "pattern" => "^[a-zA-Z0-9.]+$", "type" => "string"}, "ListenerDescriptions" => %{"member" => %{"shape" => "ListenerDescription"}, "type" => "list"}, "DuplicateTagKeysException" => %{"error" => %{"code" => "DuplicateTagKeys", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "IdleTimeout" => %{"max" => 3600, "min" => 1, "type" => "integer"}, "CreateLBCookieStickinessPolicyOutput" => %{"members" => %{}, "type" => "structure"}, "Description" => %{"type" => "string"}, "AccessLogEnabled" => %{"type" => "boolean"}, "DescribeEndPointStateInput" => %{"members" => %{"Instances" => %{"shape" => "Instances"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName"], "type" => "structure"}, "DependencyThrottleException" => %{"error" => %{"code" => "DependencyThrottle", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Limits" => %{"member" => %{"shape" => "Limit"}, "type" => "list"}, "AdditionalAttributes" => %{"max" => 10, "member" => %{"shape" => "AdditionalAttribute"}, "type" => "list"}, "DuplicateAccessPointNameException" => %{"error" => %{"code" => "DuplicateLoadBalancerName", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RemoveTagsInput" => %{"members" => %{"LoadBalancerNames" => %{"shape" => "LoadBalancerNames"}, "Tags" => %{"shape" => "TagKeyList"}}, "required" => ["LoadBalancerNames", "Tags"], "type" => "structure"}, "PolicyTypeNotFoundException" => %{"error" => %{"code" => "PolicyTypeNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SecurityGroups" => %{"member" => %{"shape" => "SecurityGroupId"}, "type" => "list"}, "SubnetNotFoundException" => %{"error" => %{"code" => "SubnetNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyLoadBalancerAttributesInput" => %{"members" => %{"LoadBalancerAttributes" => %{"shape" => "LoadBalancerAttributes"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName", "LoadBalancerAttributes"], "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key"], "type" => "structure"}, "DefaultValue" => %{"type" => "string"}, "AddAvailabilityZonesInput" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName", "AvailabilityZones"], "type" => "structure"}, "UnsupportedProtocolException" => %{"error" => %{"code" => "UnsupportedProtocol", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidSchemeException" => %{"error" => %{"code" => "InvalidScheme", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ConnectionDrainingTimeout" => %{"type" => "integer"}, "AppCookieStickinessPolicies" => %{"member" => %{"shape" => "AppCookieStickinessPolicy"}, "type" => "list"}, "RemoveAvailabilityZonesInput" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName", "AvailabilityZones"], "type" => "structure"}, "DescribeLoadBalancerPoliciesOutput" => %{"members" => %{"PolicyDescriptions" => %{"shape" => "PolicyDescriptions"}}, "type" => "structure"}, "LoadBalancerDescriptions" => %{"member" => %{"shape" => "LoadBalancerDescription"}, "type" => "list"}, "SecurityGroupName" => %{"type" => "string"}, "AttributeType" => %{"type" => "string"}, "AttachLoadBalancerToSubnetsOutput" => %{"members" => %{"Subnets" => %{"shape" => "Subnets"}}, "type" => "structure"}, "Policies" => %{"members" => %{"AppCookieStickinessPolicies" => %{"shape" => "AppCookieStickinessPolicies"}, "LBCookieStickinessPolicies" => %{"shape" => "LBCookieStickinessPolicies"}, "OtherPolicies" => %{"shape" => "PolicyNames"}}, "type" => "structure"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "min" => 1, "type" => "list"}, "InstancePort" => %{"max" => 65535, "min" => 1, "type" => "integer"}, "HealthCheckTarget" => %{"type" => "string"}, "ListenerNotFoundException" => %{"error" => %{"code" => "ListenerNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "LoadBalancerNamesMax20" => %{"max" => 20, "member" => %{"shape" => "AccessPointName"}, "min" => 1, "type" => "list"}, "TagValue" => %{"max" => 256, "min" => 0, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "InvalidSecurityGroupException" => %{"error" => %{"code" => "InvalidSecurityGroup", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AccessLogPrefix" => %{"type" => "string"}, "SecurityGroupId" => %{"type" => "string"}, "DescribeLoadBalancerPoliciesInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "PolicyNames" => %{"shape" => "PolicyNames"}}, "type" => "structure"}, "Instances" => %{"member" => %{"shape" => "Instance"}, "type" => "list"}, "AvailabilityZone" => %{"type" => "string"}, "PolicyAttributeDescription" => %{"members" => %{"AttributeName" => %{"shape" => "AttributeName"}, "AttributeValue" => %{"shape" => "AttributeValue"}}, "type" => "structure"}, "ConfigureHealthCheckInput" => %{"members" => %{"HealthCheck" => %{"shape" => "HealthCheck"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName", "HealthCheck"], "type" => "structure"}, "HealthyThreshold" => %{"max" => 10, "min" => 2, "type" => "integer"}, "CertificateNotFoundException" => %{"error" => %{"code" => "CertificateNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeAccountLimitsOutput" => %{"members" => %{"Limits" => %{"shape" => "Limits"}, "NextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "CreateLoadBalancerPolicyInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "PolicyAttributes" => %{"shape" => "PolicyAttributes"}, "PolicyName" => %{"shape" => "PolicyName"}, "PolicyTypeName" => %{"shape" => "PolicyTypeName"}}, "required" => ["LoadBalancerName", "PolicyName", "PolicyTypeName"], "type" => "structure"}, "Max" => %{"type" => "string"}, "TagDescription" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "ConnectionDrainingEnabled" => %{"type" => "boolean"}, "AccessLog" => %{"members" => %{"EmitInterval" => %{"shape" => "AccessLogInterval"}, "Enabled" => %{"shape" => "AccessLogEnabled"}, "S3BucketName" => %{"shape" => "S3BucketName"}, "S3BucketPrefix" => %{"shape" => "AccessLogPrefix"}}, "required" => ["Enabled"], "type" => "structure"}, "SetLoadBalancerPoliciesForBackendServerInput" => %{"members" => %{"InstancePort" => %{"shape" => "EndPointPort"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}, "PolicyNames" => %{"shape" => "PolicyNames"}}, "required" => ["LoadBalancerName", "InstancePort", "PolicyNames"], "type" => "structure"}, "DeregisterEndPointsInput" => %{"members" => %{"Instances" => %{"shape" => "Instances"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName", "Instances"], "type" => "structure"}, "AccessPointNotFoundException" => %{"error" => %{"code" => "LoadBalancerNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubnetId" => %{"type" => "string"}, "DescribeAccountLimitsInput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "PageSize" => %{"shape" => "PageSize"}}, "type" => "structure"}, "CreateAccessPointOutput" => %{"members" => %{"DNSName" => %{"shape" => "DNSName"}}, "type" => "structure"}, "CreateAppCookieStickinessPolicyOutput" => %{"members" => %{}, "type" => "structure"}, "InstanceState" => %{"members" => %{"Description" => %{"shape" => "Description"}, "InstanceId" => %{"shape" => "InstanceId"}, "ReasonCode" => %{"shape" => "ReasonCode"}, "State" => %{"shape" => "State"}}, "type" => "structure"}, "PolicyNotFoundException" => %{"error" => %{"code" => "PolicyNotFound", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SetLoadBalancerListenerSSLCertificateOutput" => %{"members" => %{}, "type" => "structure"}, "Protocol" => %{"type" => "string"}, "CreateAccessPointInput" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "Listeners" => %{"shape" => "Listeners"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}, "Scheme" => %{"shape" => "LoadBalancerScheme"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}, "Subnets" => %{"shape" => "Subnets"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["LoadBalancerName", "Listeners"], "type" => "structure"}, "ApplySecurityGroupsToLoadBalancerOutput" => %{"members" => %{"SecurityGroups" => %{"shape" => "SecurityGroups"}}, "type" => "structure"}, "CreatedTime" => %{"type" => "timestamp"}, "AvailabilityZones" => %{"member" => %{"shape" => "AvailabilityZone"}, "type" => "list"}, "ApplySecurityGroupsToLoadBalancerInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}}, "required" => ["LoadBalancerName", "SecurityGroups"], "type" => "structure"}, "PolicyAttributes" => %{"member" => %{"shape" => "PolicyAttribute"}, "type" => "list"}, "TooManyPoliciesException" => %{"error" => %{"code" => "TooManyPolicies", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PolicyAttributeDescriptions" => %{"member" => %{"shape" => "PolicyAttributeDescription"}, "type" => "list"}, "DescribeEndPointStateOutput" => %{"members" => %{"InstanceStates" => %{"shape" => "InstanceStates"}}, "type" => "structure"}, "ConfigureHealthCheckOutput" => %{"members" => %{"HealthCheck" => %{"shape" => "HealthCheck"}}, "type" => "structure"}, "Marker" => %{"type" => "string"}, "AdditionalAttributeKey" => %{"max" => 256, "pattern" => "^[a-zA-Z0-9.]+$", "type" => "string"}, "DescribeLoadBalancerAttributesOutput" => %{"members" => %{"LoadBalancerAttributes" => %{"shape" => "LoadBalancerAttributes"}}, "type" => "structure"}, "VPCId" => %{"type" => "string"}, "InvalidEndPointException" => %{"error" => %{"code" => "InvalidInstance", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PolicyAttribute" => %{"members" => %{"AttributeName" => %{"shape" => "AttributeName"}, "AttributeValue" => %{"shape" => "AttributeValue"}}, "type" => "structure"}, "UnhealthyThreshold" => %{"max" => 10, "min" => 2, "type" => "integer"}, "ModifyLoadBalancerAttributesOutput" => %{"members" => %{"LoadBalancerAttributes" => %{"shape" => "LoadBalancerAttributes"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "type" => "structure"}, "DeleteAccessPointOutput" => %{"members" => %{}, "type" => "structure"}, "DeleteLoadBalancerListenerOutput" => %{"members" => %{}, "type" => "structure"}, "LoadBalancerAttributes" => %{"members" => %{"AccessLog" => %{"shape" => "AccessLog"}, "AdditionalAttributes" => %{"shape" => "AdditionalAttributes"}, "ConnectionDraining" => %{"shape" => "ConnectionDraining"}, "ConnectionSettings" => %{"shape" => "ConnectionSettings"}, "CrossZoneLoadBalancing" => %{"shape" => "CrossZoneLoadBalancing"}}, "type" => "structure"}, "DescribeTagsOutput" => %{"members" => %{"TagDescriptions" => %{"shape" => "TagDescriptions"}}, "type" => "structure"}, "RegisterEndPointsOutput" => %{"members" => %{"Instances" => %{"shape" => "Instances"}}, "type" => "structure"}, "EndPointPort" => %{"type" => "integer"}, "LoadBalancerScheme" => %{"type" => "string"}, "PolicyTypeName" => %{"type" => "string"}, "TooManyTagsException" => %{"error" => %{"code" => "TooManyTags", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PolicyName" => %{"type" => "string"}, "CrossZoneLoadBalancing" => %{"members" => %{"Enabled" => %{"shape" => "CrossZoneLoadBalancingEnabled"}}, "required" => ["Enabled"], "type" => "structure"}, "SetLoadBalancerListenerSSLCertificateInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "LoadBalancerPort" => %{"shape" => "AccessPointPort"}, "SSLCertificateId" => %{"shape" => "SSLCertificateId"}}, "required" => ["LoadBalancerName", "LoadBalancerPort", "SSLCertificateId"], "type" => "structure"}, "AttributeValue" => %{"type" => "string"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "CookieName" => %{"type" => "string"}, "AccessPointName" => %{"type" => "string"}, "SourceSecurityGroup" => %{"members" => %{"GroupName" => %{"shape" => "SecurityGroupName"}, "OwnerAlias" => %{"shape" => "SecurityGroupOwnerAlias"}}, "type" => "structure"}, "DeleteAccessPointInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName"], "type" => "structure"}, "AdditionalAttribute" => %{"members" => %{"Key" => %{"shape" => "AdditionalAttributeKey"}, "Value" => %{"shape" => "AdditionalAttributeValue"}}, "type" => "structure"}, "ConnectionDraining" => %{"members" => %{"Enabled" => %{"shape" => "ConnectionDrainingEnabled"}, "Timeout" => %{"shape" => "ConnectionDrainingTimeout"}}, "required" => ["Enabled"], "type" => "structure"}, "SetLoadBalancerPoliciesOfListenerInput" => %{"members" => %{"LoadBalancerName" => %{"shape" => "AccessPointName"}, "LoadBalancerPort" => %{"shape" => "AccessPointPort"}, "PolicyNames" => %{"shape" => "PolicyNames"}}, "required" => ["LoadBalancerName", "LoadBalancerPort", "PolicyNames"], "type" => "structure"}, "ConnectionSettings" => %{"members" => %{"IdleTimeout" => %{"shape" => "IdleTimeout"}}, "required" => ["IdleTimeout"], "type" => "structure"}, "LoadBalancerNames" => %{"member" => %{"shape" => "AccessPointName"}, "type" => "list"}, "HealthCheck" => %{"members" => %{"HealthyThreshold" => %{"shape" => "HealthyThreshold"}, "Interval" => %{"shape" => "HealthCheckInterval"}, "Target" => %{"shape" => "HealthCheckTarget"}, "Timeout" => %{"shape" => "HealthCheckTimeout"}, "UnhealthyThreshold" => %{"shape" => "UnhealthyThreshold"}}, "required" => ["Target", "Interval", "Timeout", "UnhealthyThreshold", "HealthyThreshold"], "type" => "structure"}, "DuplicateListenerException" => %{"error" => %{"code" => "DuplicateListener", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "HealthCheckInterval" => %{"max" => 300, "min" => 5, "type" => "integer"}, "DescribeAccessPointsInput" => %{"members" => %{"LoadBalancerNames" => %{"shape" => "LoadBalancerNames"}, "Marker" => %{"shape" => "Marker"}, "PageSize" => %{"shape" => "PageSize"}}, "type" => "structure"}, "PolicyNames" => %{"member" => %{"shape" => "PolicyName"}, "type" => "list"}, "AppCookieStickinessPolicy" => %{"members" => %{"CookieName" => %{"shape" => "CookieName"}, "PolicyName" => %{"shape" => "PolicyName"}}, "type" => "structure"}, "CookieExpirationPeriod" => %{"type" => "long"}, "CreateLBCookieStickinessPolicyInput" => %{"members" => %{"CookieExpirationPeriod" => %{"shape" => "CookieExpirationPeriod"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}, "PolicyName" => %{"shape" => "PolicyName"}}, "required" => ["LoadBalancerName", "PolicyName"], "type" => "structure"}, "SSLCertificateId" => %{"type" => "string"}, "RegisterEndPointsInput" => %{"members" => %{"Instances" => %{"shape" => "Instances"}, "LoadBalancerName" => %{"shape" => "AccessPointName"}}, "required" => ["LoadBalancerName", "Instances"], "type" => "structure"}, "InstanceStates" => %{"member" => %{"shape" => "InstanceState"}, "type" => "list"}, "DeleteLoadBalancerPolicyOutput" => %{"members" => %{}, "type" => "structure"}, "HealthCheckTimeout" => %{"max" => 60, "min" => 2, "type" => "integer"}, "DescribeTagsInput" => %{"members" => %{"LoadBalancerNames" => %{"shape" => "LoadBalancerNamesMax20"}}, "required" => ["LoadBalancerNames"], "type" => "structure"}, "PolicyAttributeTypeDescriptions" => %{"member" => %{"shape" => "PolicyAttributeTypeDescription"}, "type" => "list"}, "AccessLogInterval" => %{"type" => "integer"}, "BackendServerDescription" => %{"members" => %{"InstancePort" => %{"shape" => "InstancePort"}, "PolicyNames" => %{"shape" => "PolicyNames"}}, "type" => "structure"}, "State" => %{"type" => "string"}, "Instance" => %{"members" => %{"InstanceId" => %{"shape" => "InstanceId"}}, "type" => "structure"}}
  end
end