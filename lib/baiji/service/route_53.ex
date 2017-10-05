defmodule Baiji.Route53 do
  @moduledoc """

  """

  @doc """
  Creates resource record sets in a specified hosted zone based on the
  settings in a specified traffic policy version. In addition,
  `CreateTrafficPolicyInstance` associates the resource record sets with a
  specified domain name (such as example.com) or subdomain name (such as
  www.example.com). Amazon Route 53 responds to DNS queries for the domain or
  subdomain name by using the resource record sets that
  `CreateTrafficPolicyInstance` created.
  """
  def create_traffic_policy_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicyinstance",
      input:            input,
      options:          options,
      action:           "CreateTrafficPolicyInstance",
      method:           :post,
      input_shape:      "CreateTrafficPolicyInstanceRequest",
      output_shape:     "CreateTrafficPolicyInstanceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of your hosted zones in lexicographic order. The response
  includes a `HostedZones` child element for each hosted zone created by the
  current AWS account.

  `ListHostedZonesByName` sorts hosted zones by name with the labels
  reversed. For example:

  `com.example.www.`

  Note the trailing dot, which can change the sort order in some
  circumstances.

  If the domain name includes escape characters or Punycode,
  `ListHostedZonesByName` alphabetizes the domain name using the escaped or
  Punycoded value, which is the format that Amazon Route 53 saves in its
  database. For example, to create a hosted zone for exämple.com, you specify
  ex\344mple.com for the domain name. `ListHostedZonesByName` alphabetizes it
  as:

  `com.ex\344mple.`

  The labels are reversed and alphabetized using the escaped value. For more
  information about valid domain name formats, including internationalized
  domain names, see [DNS Domain Name
  Format](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html)
  in the *Amazon Route 53 Developer Guide*.

  Amazon Route 53 returns up to 100 items in each response. If you have a lot
  of hosted zones, use the `MaxItems` parameter to list them in groups of up
  to 100. The response includes values that help navigate from one group of
  `MaxItems` hosted zones to the next:

  <ul> <li> The `DNSName` and `HostedZoneId` elements in the response contain
  the values, if any, specified for the `dnsname` and `hostedzoneid`
  parameters in the request that produced the current response.

  </li> <li> The `MaxItems` element in the response contains the value, if
  any, that you specified for the `maxitems` parameter in the request that
  produced the current response.

  </li> <li> If the value of `IsTruncated` in the response is true, there are
  more hosted zones associated with the current AWS account.

  If `IsTruncated` is false, this response includes the last hosted zone that
  is associated with the current account. The `NextDNSName` element and
  `NextHostedZoneId` elements are omitted from the response.

  </li> <li> The `NextDNSName` and `NextHostedZoneId` elements in the
  response contain the domain name and the hosted zone ID of the next hosted
  zone that is associated with the current AWS account. If you want to list
  more hosted zones, make another call to `ListHostedZonesByName`, and
  specify the value of `NextDNSName` and `NextHostedZoneId` in the `dnsname`
  and `hostedzoneid` parameters, respectively.

  </li> </ul>
  """
  def list_hosted_zones_by_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzonesbyname",
      input:            input,
      options:          options,
      action:           "ListHostedZonesByName",
      method:           :get,
      input_shape:      "ListHostedZonesByNameRequest",
      output_shape:     "ListHostedZonesByNameResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a health check.

  <important> Amazon Route 53 does not prevent you from deleting a health
  check even if the health check is associated with one or more resource
  record sets. If you delete a health check and you don't update the
  associated resource record sets, the future status of the health check
  can't be predicted and may change. This will affect the routing of DNS
  queries for your DNS failover configuration. For more information, see
  [Replacing and Deleting Health
  Checks](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html)
  in the *Amazon Route 53 Developer Guide*.

  </important>
  """
  def delete_health_check(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/healthcheck/{HealthCheckId}",
      input:            input,
      options:          options,
      action:           "DeleteHealthCheck",
      method:           :delete,
      input_shape:      "DeleteHealthCheckRequest",
      output_shape:     "DeleteHealthCheckResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the resource record sets in a specified hosted zone that were
  created based on the settings in a specified traffic policy version.

  When you update a traffic policy instance, Amazon Route 53 continues to
  respond to DNS queries for the root resource record set name (such as
  example.com) while it replaces one group of resource record sets with
  another. Amazon Route 53 performs the following operations:

  <ol> <li> Amazon Route 53 creates a new group of resource record sets based
  on the specified traffic policy. This is true regardless of how significant
  the differences are between the existing resource record sets and the new
  resource record sets.

  </li> <li> When all of the new resource record sets have been created,
  Amazon Route 53 starts to respond to DNS queries for the root resource
  record set name (such as example.com) by using the new resource record
  sets.

  </li> <li> Amazon Route 53 deletes the old group of resource record sets
  that are associated with the root resource record set name.

  </li> </ol>
  """
  def update_traffic_policy_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicyinstance/{Id}",
      input:            input,
      options:          options,
      action:           "UpdateTrafficPolicyInstance",
      method:           :post,
      input_shape:      "UpdateTrafficPolicyInstanceRequest",
      output_shape:     "UpdateTrafficPolicyInstanceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates an Amazon VPC with a private hosted zone.

  <important> To perform the association, the VPC and the private hosted zone
  must already exist. You can't convert a public hosted zone into a private
  hosted zone.

  </important> <note> If you want to associate a VPC that was created by
  using one AWS account with a private hosted zone that was created by using
  a different account, the AWS account that created the private hosted zone
  must first submit a `CreateVPCAssociationAuthorization` request. Then the
  account that created the VPC must submit an `AssociateVPCWithHostedZone`
  request.

  </note>
  """
  def associate_v_p_c_with_hosted_zone(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}/associatevpc",
      input:            input,
      options:          options,
      action:           "AssociateVPCWithHostedZone",
      method:           :post,
      input_shape:      "AssociateVPCWithHostedZoneRequest",
      output_shape:     "AssociateVPCWithHostedZoneResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new health check.

  For information about adding health checks to resource record sets, see
  `ResourceRecordSet$HealthCheckId` in `ChangeResourceRecordSets`.

  **ELB Load Balancers**

  If you're registering EC2 instances with an Elastic Load Balancing (ELB)
  load balancer, do not create Amazon Route 53 health checks for the EC2
  instances. When you register an EC2 instance with a load balancer, you
  configure settings for an ELB health check, which performs a similar
  function to an Amazon Route 53 health check.

  **Private Hosted Zones**

  You can associate health checks with failover resource record sets in a
  private hosted zone. Note the following:

  <ul> <li> Amazon Route 53 health checkers are outside the VPC. To check the
  health of an endpoint within a VPC by IP address, you must assign a public
  IP address to the instance in the VPC.

  </li> <li> You can configure a health checker to check the health of an
  external resource that the instance relies on, such as a database server.

  </li> <li> You can create a CloudWatch metric, associate an alarm with the
  metric, and then create a health check that is based on the state of the
  alarm. For example, you might create a CloudWatch metric that checks the
  status of the Amazon EC2 `StatusCheckFailed` metric, add an alarm to the
  metric, and then create a health check that is based on the state of the
  alarm. For information about creating CloudWatch metrics and alarms by
  using the CloudWatch console, see the [Amazon CloudWatch User
  Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html).

  </li> </ul>
  """
  def create_health_check(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/healthcheck",
      input:            input,
      options:          options,
      action:           "CreateHealthCheck",
      method:           :post,
      input_shape:      "CreateHealthCheckRequest",
      output_shape:     "CreateHealthCheckResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about all of the versions for a specified traffic policy.

  Traffic policy versions are listed in numerical order by `VersionNumber`.
  """
  def list_traffic_policy_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicies/{Id}/versions",
      input:            input,
      options:          options,
      action:           "ListTrafficPolicyVersions",
      method:           :get,
      input_shape:      "ListTrafficPolicyVersionsRequest",
      output_shape:     "ListTrafficPolicyVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the traffic policy instances that you created in a
  specified hosted zone.

  <note> After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon
  Route 53 creates the resource record sets that are specified in the traffic
  policy definition. For more information, see the `State` response element.

  </note> Amazon Route 53 returns a maximum of 100 items in each response. If
  you have a lot of traffic policy instances, you can use the `MaxItems`
  parameter to list them in groups of up to 100.
  """
  def list_traffic_policy_instances_by_hosted_zone(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicyinstances/hostedzone",
      input:            input,
      options:          options,
      action:           "ListTrafficPolicyInstancesByHostedZone",
      method:           :get,
      input_shape:      "ListTrafficPolicyInstancesByHostedZoneRequest",
      output_shape:     "ListTrafficPolicyInstancesByHostedZoneResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists tags for one health check or hosted zone.

  For information about using tags for cost allocation, see [Using Cost
  Allocation
  Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/tags/{ResourceType}/{ResourceId}",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      method:           :get,
      input_shape:      "ListTagsForResourceRequest",
      output_shape:     "ListTagsForResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds, edits, or deletes tags for a health check or a hosted zone.

  For information about using tags for cost allocation, see [Using Cost
  Allocation
  Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def change_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/tags/{ResourceType}/{ResourceId}",
      input:            input,
      options:          options,
      action:           "ChangeTagsForResource",
      method:           :post,
      input_shape:      "ChangeTagsForResourceRequest",
      output_shape:     "ChangeTagsForResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new public hosted zone, which you use to specify how the Domain
  Name System (DNS) routes traffic on the Internet for a domain, such as
  example.com, and its subdomains.

  <important> You can't convert a public hosted zones to a private hosted
  zone or vice versa. Instead, you must create a new hosted zone with the
  same name and create new resource record sets.

  </important> For more information about charges for hosted zones, see
  [Amazon Route 53 Pricing](http://aws.amazon.com/route53/pricing/).

  Note the following:

  <ul> <li> You can't create a hosted zone for a top-level domain (TLD).

  </li> <li> Amazon Route 53 automatically creates a default SOA record and
  four NS records for the zone. For more information about SOA and NS
  records, see [NS and SOA Records that Amazon Route 53 Creates for a Hosted
  Zone](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html)
  in the *Amazon Route 53 Developer Guide*.

  If you want to use the same name servers for multiple hosted zones, you can
  optionally associate a reusable delegation set with the hosted zone. See
  the `DelegationSetId` element.

  </li> <li> If your domain is registered with a registrar other than Amazon
  Route 53, you must update the name servers with your registrar to make
  Amazon Route 53 your DNS service. For more information, see [Configuring
  Amazon Route 53 as your DNS
  Service](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/creating-migrating.html)
  in the *Amazon Route 53 Developer Guide*.

  </li> </ul> When you submit a `CreateHostedZone` request, the initial
  status of the hosted zone is `PENDING`. This means that the NS and SOA
  records are not yet available on all Amazon Route 53 DNS servers. When the
  NS and SOA records are available, the status of the zone changes to
  `INSYNC`.
  """
  def create_hosted_zone(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone",
      input:            input,
      options:          options,
      action:           "CreateHostedZone",
      method:           :post,
      input_shape:      "CreateHostedZoneRequest",
      output_shape:     "CreateHostedZoneResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a configuration for DNS query logging. After you create a query
  logging configuration, Amazon Route 53 begins to publish log data to an
  Amazon CloudWatch Logs log group.

  DNS query logs contain information about the queries that Amazon Route 53
  receives for a specified public hosted zone, such as the following:

  <ul> <li> Amazon Route 53 edge location that responded to the DNS query

  </li> <li> Domain or subdomain that was requested

  </li> <li> DNS record type, such as A or AAAA

  </li> <li> DNS response code, such as `NoError` or `ServFail`

  </li> </ul> <dl> <dt>Log Group and Resource Policy</dt> <dd> Before you
  create a query logging configuration, perform the following operations.

  <note> If you create a query logging configuration using the Amazon Route
  53 console, Amazon Route 53 performs these operations automatically.

  </note> <ol> <li> Create a CloudWatch Logs log group, and make note of the
  ARN, which you specify when you create a query logging configuration. Note
  the following:

  <ul> <li> You must create the log group in the us-east-1 region.

  </li> <li> You must use the same AWS account to create the log group and
  the hosted zone that you want to configure query logging for.

  </li> <li> When you create log groups for query logging, we recommend that
  you use a consistent prefix, for example:

  `/aws/route53/*hosted zone name* `

  In the next step, you'll create a resource policy, which controls access to
  one or more log groups and the associated AWS resources, such as Amazon
  Route 53 hosted zones. There's a limit on the number of resource policies
  that you can create, so we recommend that you use a consistent prefix so
  you can use the same resource policy for all the log groups that you create
  for query logging.

  </li> </ul> </li> <li> Create a CloudWatch Logs resource policy, and give
  it the permissions that Amazon Route 53 needs to create log streams and to
  to send query logs to log streams. For the value of `Resource`, specify the
  ARN for the log group that you created in the previous step. To use the
  same resource policy for all the CloudWatch Logs log groups that you
  created for query logging configurations, replace the hosted zone name with
  `*`, for example:

  `arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*`

  <note> You can't use the CloudWatch console to create or edit a resource
  policy. You must use the CloudWatch API, one of the AWS SDKs, or the AWS
  CLI.

  </note> </li> </ol> </dd> <dt>Log Streams and Edge Locations</dt> <dd> When
  Amazon Route 53 finishes creating the configuration for DNS query logging,
  it does the following:

  <ul> <li> Creates a log stream for an edge location the first time that the
  edge location responds to DNS queries for the specified hosted zone. That
  log stream is used to log all queries that Amazon Route 53 responds to for
  that edge location.

  </li> <li> Begins to send query logs to the applicable log stream.

  </li> </ul> The name of each log stream is in the following format:

  ` *hosted zone ID*/*edge location code* `

  The edge location code is a three-letter code and an arbitrarily assigned
  number, for example, DFW3. The three-letter code typically corresponds with
  the International Air Transport Association airport code for an airport
  near the edge location. (These abbreviations might change in the future.)
  For a list of edge locations, see "The Amazon Route 53 Global Network" on
  the [Amazon Route 53 Product
  Details](http://aws.amazon.com/route53/details/) page.

  </dd> <dt>Queries That Are Logged</dt> <dd> Query logs contain only the
  queries that DNS resolvers forward to Amazon Route 53. If a DNS resolver
  has already cached the response to a query (such as the IP address for a
  load balancer for example.com), the resolver will continue to return the
  cached response. It doesn't forward another query to Amazon Route 53 until
  the TTL for the corresponding resource record set expires. Depending on how
  many DNS queries are submitted for a resource record set, and depending on
  the TTL for that resource record set, query logs might contain information
  about only one query out of every several thousand queries that are
  submitted to DNS. For more information about how DNS works, see [Routing
  Internet Traffic to Your Website or Web
  Application](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html)
  in the *Amazon Route 53 Developer Guide*.

  </dd> <dt>Log File Format</dt> <dd> For a list of the values in each query
  log and the format of each value, see [Logging DNS
  Queries](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html)
  in the *Amazon Route 53 Developer Guide*.

  </dd> <dt>Pricing</dt> <dd> For information about charges for query logs,
  see [Amazon CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  </dd> <dt>How to Stop Logging</dt> <dd> If you want Amazon Route 53 to stop
  sending query logs to CloudWatch Logs, delete the query logging
  configuration. For more information, see `DeleteQueryLoggingConfig`.

  </dd> </dl>
  """
  def create_query_logging_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/queryloggingconfig",
      input:            input,
      options:          options,
      action:           "CreateQueryLoggingConfig",
      method:           :post,
      input_shape:      "CreateQueryLoggingConfigRequest",
      output_shape:     "CreateQueryLoggingConfigResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the configurations for DNS query logging that are associated with the
  current AWS account or the configuration that is associated with a
  specified hosted zone.

  For more information about DNS query logs, see `CreateQueryLoggingConfig`.
  Additional information, including the format of DNS query logs, appears in
  [Logging DNS
  Queries](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  def list_query_logging_configs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/queryloggingconfig",
      input:            input,
      options:          options,
      action:           "ListQueryLoggingConfigs",
      method:           :get,
      input_shape:      "ListQueryLoggingConfigsRequest",
      output_shape:     "ListQueryLoggingConfigsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieve a list of the health checks that are associated with the current
  AWS account.
  """
  def list_health_checks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/healthcheck",
      input:            input,
      options:          options,
      action:           "ListHealthChecks",
      method:           :get,
      input_shape:      "ListHealthChecksRequest",
      output_shape:     "ListHealthChecksResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of the public and private hosted zones that are associated
  with the current AWS account. The response includes a `HostedZones` child
  element for each hosted zone.

  Amazon Route 53 returns a maximum of 100 items in each response. If you
  have a lot of hosted zones, you can use the `maxitems` parameter to list
  them in groups of up to 100.
  """
  def list_hosted_zones(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone",
      input:            input,
      options:          options,
      action:           "ListHostedZones",
      method:           :get,
      input_shape:      "ListHostedZonesRequest",
      output_shape:     "ListHostedZonesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of supported geo locations.

  Countries are listed first, and continents are listed last. If Amazon Route
  53 supports subdivisions for a country (for example, states or provinces),
  the subdivisions for that country are listed in alphabetical order
  immediately after the corresponding country.
  """
  def list_geo_locations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/geolocations",
      input:            input,
      options:          options,
      action:           "ListGeoLocations",
      method:           :get,
      input_shape:      "ListGeoLocationsRequest",
      output_shape:     "ListGeoLocationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the comment for a specified traffic policy version.
  """
  def update_traffic_policy_comment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicy/{Id}/{Version}",
      input:            input,
      options:          options,
      action:           "UpdateTrafficPolicyComment",
      method:           :post,
      input_shape:      "UpdateTrafficPolicyCommentRequest",
      output_shape:     "UpdateTrafficPolicyCommentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the latest version for every traffic policy that is
  associated with the current AWS account. Policies are listed in the order
  in which they were created.
  """
  def list_traffic_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicies",
      input:            input,
      options:          options,
      action:           "ListTrafficPolicies",
      method:           :get,
      input_shape:      "ListTrafficPoliciesRequest",
      output_shape:     "ListTrafficPoliciesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the resource record sets in a specified hosted zone.

  `ListResourceRecordSets` returns up to 100 resource record sets at a time
  in ASCII order, beginning at a position specified by the `name` and `type`
  elements. The action sorts results first by DNS name with the labels
  reversed, for example:

  `com.example.www.`

  Note the trailing dot, which can change the sort order in some
  circumstances.

  When multiple records have the same DNS name, the action sorts results by
  the record type.

  You can use the name and type elements to adjust the beginning position of
  the list of resource record sets returned:

  <dl> <dt>If you do not specify Name or Type</dt> <dd> The results begin
  with the first resource record set that the hosted zone contains.

  </dd> <dt>If you specify Name but not Type</dt> <dd> The results begin with
  the first resource record set in the list whose name is greater than or
  equal to `Name`.

  </dd> <dt>If you specify Type but not Name</dt> <dd> Amazon Route 53
  returns the `InvalidInput` error.

  </dd> <dt>If you specify both Name and Type</dt> <dd> The results begin
  with the first resource record set in the list whose name is greater than
  or equal to `Name`, and whose type is greater than or equal to `Type`.

  </dd> </dl> This action returns the most current version of the records.
  This includes records that are `PENDING`, and that are not yet available on
  all Amazon Route 53 DNS servers.

  To ensure that you get an accurate listing of the resource record sets for
  a hosted zone at a point in time, do not submit a
  `ChangeResourceRecordSets` request while you're paging through the results
  of a `ListResourceRecordSets` request. If you do, some pages may display
  results without the latest changes while other pages display results with
  the latest changes.
  """
  def list_resource_record_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}/rrset",
      input:            input,
      options:          options,
      action:           "ListResourceRecordSets",
      method:           :get,
      input_shape:      "ListResourceRecordSetsRequest",
      output_shape:     "ListResourceRecordSetsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the current status of a change batch request. The status is one of
  the following values:

  <ul> <li> `PENDING` indicates that the changes in this request have not
  propagated to all Amazon Route 53 DNS servers. This is the initial status
  of all change batch requests.

  </li> <li> `INSYNC` indicates that the changes have propagated to all
  Amazon Route 53 DNS servers.

  </li> </ul>
  """
  def get_change(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/change/{Id}",
      input:            input,
      options:          options,
      action:           "GetChange",
      method:           :get,
      input_shape:      "GetChangeRequest",
      output_shape:     "GetChangeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes authorization to submit an `AssociateVPCWithHostedZone` request to
  associate a specified VPC with a hosted zone that was created by a
  different account. You must use the account that created the hosted zone to
  submit a `DeleteVPCAssociationAuthorization` request.

  <important> Sending this request only prevents the AWS account that created
  the VPC from associating the VPC with the Amazon Route 53 hosted zone in
  the future. If the VPC is already associated with the hosted zone,
  `DeleteVPCAssociationAuthorization` won't disassociate the VPC from the
  hosted zone. If you want to delete an existing association, use
  `DisassociateVPCFromHostedZone`.

  </important>
  """
  def delete_v_p_c_association_authorization(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation",
      input:            input,
      options:          options,
      action:           "DeleteVPCAssociationAuthorization",
      method:           :post,
      input_shape:      "DeleteVPCAssociationAuthorizationRequest",
      output_shape:     "DeleteVPCAssociationAuthorizationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the value that Amazon Route 53 returns in response to a DNS request
  for a specified record name and type. You can optionally specify the IP
  address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet
  mask.
  """
  def test_d_n_s_answer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/testdnsanswer",
      input:            input,
      options:          options,
      action:           "TestDNSAnswer",
      method:           :get,
      input_shape:      "TestDNSAnswerRequest",
      output_shape:     "TestDNSAnswerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a list of the VPCs that were created by other accounts and that can be
  associated with a specified hosted zone because you've submitted one or
  more `CreateVPCAssociationAuthorization` requests.

  The response includes a `VPCs` element with a `VPC` child element for each
  VPC that can be associated with the hosted zone.
  """
  def list_v_p_c_association_authorizations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}/authorizevpcassociation",
      input:            input,
      options:          options,
      action:           "ListVPCAssociationAuthorizations",
      method:           :get,
      input_shape:      "ListVPCAssociationAuthorizationsRequest",
      output_shape:     "ListVPCAssociationAuthorizationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a reusable delegation set.

  <important> You can delete a reusable delegation set only if it isn't
  associated with any hosted zones.

  </important> To verify that the reusable delegation set is not associated
  with any hosted zones, submit a `GetReusableDelegationSet` request and
  specify the ID of the reusable delegation set that you want to delete.
  """
  def delete_reusable_delegation_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/delegationset/{Id}",
      input:            input,
      options:          options,
      action:           "DeleteReusableDelegationSet",
      method:           :delete,
      input_shape:      "DeleteReusableDelegationSetRequest",
      output_shape:     "DeleteReusableDelegationSetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the comment for a specified hosted zone.
  """
  def update_hosted_zone_comment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}",
      input:            input,
      options:          options,
      action:           "UpdateHostedZoneComment",
      method:           :post,
      input_shape:      "UpdateHostedZoneCommentRequest",
      output_shape:     "UpdateHostedZoneCommentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a delegation set (a group of four name servers) that can be reused
  by multiple hosted zones. If a hosted zoned ID is specified,
  `CreateReusableDelegationSet` marks the delegation set associated with that
  zone as reusable

  <note> A reusable delegation set can't be associated with a private hosted
  zone.

  </note> For information on how to use a reusable delegation set to
  configure white label name servers, see [Configuring White Label Name
  Servers](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html).
  """
  def create_reusable_delegation_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/delegationset",
      input:            input,
      options:          options,
      action:           "CreateReusableDelegationSet",
      method:           :post,
      input_shape:      "CreateReusableDelegationSetRequest",
      output_shape:     "CreateReusableDelegationSetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Authorizes the AWS account that created a specified VPC to submit an
  `AssociateVPCWithHostedZone` request to associate the VPC with a specified
  hosted zone that was created by a different account. To submit a
  `CreateVPCAssociationAuthorization` request, you must use the account that
  created the hosted zone. After you authorize the association, use the
  account that created the VPC to submit an `AssociateVPCWithHostedZone`
  request.

  <note> If you want to associate multiple VPCs that you created by using one
  account with a hosted zone that you created by using a different account,
  you must submit one authorization request for each VPC.

  </note>
  """
  def create_v_p_c_association_authorization(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}/authorizevpcassociation",
      input:            input,
      options:          options,
      action:           "CreateVPCAssociationAuthorization",
      method:           :post,
      input_shape:      "CreateVPCAssociationAuthorizationRequest",
      output_shape:     "CreateVPCAssociationAuthorizationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the traffic policy instances that you created by
  using the current AWS account.

  <note> After you submit an `UpdateTrafficPolicyInstance` request, there's a
  brief delay while Amazon Route 53 creates the resource record sets that are
  specified in the traffic policy definition. For more information, see the
  `State` response element.

  </note> Amazon Route 53 returns a maximum of 100 items in each response. If
  you have a lot of traffic policy instances, you can use the `MaxItems`
  parameter to list them in groups of up to 100.
  """
  def list_traffic_policy_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicyinstances",
      input:            input,
      options:          options,
      action:           "ListTrafficPolicyInstances",
      method:           :get,
      input_shape:      "ListTrafficPolicyInstancesRequest",
      output_shape:     "ListTrafficPolicyInstancesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a traffic policy instance and all of the resource record sets that
  Amazon Route 53 created when you created the instance.

  <note> In the Amazon Route 53 console, traffic policy instances are known
  as policy records.

  </note>
  """
  def delete_traffic_policy_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicyinstance/{Id}",
      input:            input,
      options:          options,
      action:           "DeleteTrafficPolicyInstance",
      method:           :delete,
      input_shape:      "DeleteTrafficPolicyInstanceRequest",
      output_shape:     "DeleteTrafficPolicyInstanceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a traffic policy.
  """
  def delete_traffic_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicy/{Id}/{Version}",
      input:            input,
      options:          options,
      action:           "DeleteTrafficPolicy",
      method:           :delete,
      input_shape:      "DeleteTrafficPolicyRequest",
      output_shape:     "DeleteTrafficPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a specific traffic policy version.
  """
  def get_traffic_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicy/{Id}/{Version}",
      input:            input,
      options:          options,
      action:           "GetTrafficPolicy",
      method:           :get,
      input_shape:      "GetTrafficPolicyRequest",
      output_shape:     "GetTrafficPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists tags for up to 10 health checks or hosted zones.

  For information about using tags for cost allocation, see [Using Cost
  Allocation
  Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def list_tags_for_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/tags/{ResourceType}",
      input:            input,
      options:          options,
      action:           "ListTagsForResources",
      method:           :post,
      input_shape:      "ListTagsForResourcesRequest",
      output_shape:     "ListTagsForResourcesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the reason that a specified health check failed most recently.
  """
  def get_health_check_last_failure_reason(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason",
      input:            input,
      options:          options,
      action:           "GetHealthCheckLastFailureReason",
      method:           :get,
      input_shape:      "GetHealthCheckLastFailureReasonRequest",
      output_shape:     "GetHealthCheckLastFailureReasonResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the number of traffic policy instances that are associated with the
  current AWS account.
  """
  def get_traffic_policy_instance_count(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicyinstancecount",
      input:            input,
      options:          options,
      action:           "GetTrafficPolicyInstanceCount",
      method:           :get,
      input_shape:      "GetTrafficPolicyInstanceCountRequest",
      output_shape:     "GetTrafficPolicyInstanceCountResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates, changes, or deletes a resource record set, which contains
  authoritative DNS information for a specified domain name or subdomain
  name. For example, you can use `ChangeResourceRecordSets` to create a
  resource record set that routes traffic for test.example.com to a web
  server that has an IP address of 192.0.2.44.

  **Change Batches and Transactional Changes**

  The request body must include a document with a
  `ChangeResourceRecordSetsRequest` element. The request body contains a list
  of change items, known as a change batch. Change batches are considered
  transactional changes. When using the Amazon Route 53 API to change
  resource record sets, Amazon Route 53 either makes all or none of the
  changes in a change batch request. This ensures that Amazon Route 53 never
  partially implements the intended changes to the resource record sets in a
  hosted zone.

  For example, a change batch request that deletes the `CNAME` record for
  www.example.com and creates an alias resource record set for
  www.example.com. Amazon Route 53 deletes the first resource record set and
  creates the second resource record set in a single operation. If either the
  `DELETE` or the `CREATE` action fails, then both changes (plus any other
  changes in the batch) fail, and the original `CNAME` record continues to
  exist.

  <important> Due to the nature of transactional changes, you can't delete
  the same resource record set more than once in a single change batch. If
  you attempt to delete the same change batch more than once, Amazon Route 53
  returns an `InvalidChangeBatch` error.

  </important> **Traffic Flow**

  To create resource record sets for complex routing configurations, use
  either the traffic flow visual editor in the Amazon Route 53 console or the
  API actions for traffic policies and traffic policy instances. Save the
  configuration as a traffic policy, then associate the traffic policy with
  one or more domain names (such as example.com) or subdomain names (such as
  www.example.com), in the same hosted zone or in multiple hosted zones. You
  can roll back the updates if the new configuration isn't performing as
  expected. For more information, see [Using Traffic Flow to Route DNS
  Traffic](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html)
  in the *Amazon Route 53 Developer Guide*.

  **Create, Delete, and Upsert**

  Use `ChangeResourceRecordsSetsRequest` to perform the following actions:

  <ul> <li> `CREATE`: Creates a resource record set that has the specified
  values.

  </li> <li> `DELETE`: Deletes an existing resource record set that has the
  specified values.

  </li> <li> `UPSERT`: If a resource record set does not already exist, AWS
  creates it. If a resource set does exist, Amazon Route 53 updates it with
  the values in the request.

  </li> </ul> **Syntaxes for Creating, Updating, and Deleting Resource Record
  Sets**

  The syntax for a request depends on the type of resource record set that
  you want to create, delete, or update, such as weighted, alias, or
  failover. The XML elements in your request must appear in the order listed
  in the syntax.

  For an example for each type of resource record set, see "Examples."

  Don't refer to the syntax in the "Parameter Syntax" section, which includes
  all of the elements for every kind of resource record set that you can
  create, delete, or update by using `ChangeResourceRecordSets`.

  **Change Propagation to Amazon Route 53 DNS Servers**

  When you submit a `ChangeResourceRecordSets` request, Amazon Route 53
  propagates your changes to all of the Amazon Route 53 authoritative DNS
  servers. While your changes are propagating, `GetChange` returns a status
  of `PENDING`. When propagation is complete, `GetChange` returns a status of
  `INSYNC`. Changes generally propagate to all Amazon Route 53 name servers
  within 60 seconds. For more information, see `GetChange`.

  **Limits on ChangeResourceRecordSets Requests**

  For information about the limits on a `ChangeResourceRecordSets` request,
  see
  [Limits](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  def change_resource_record_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}/rrset/",
      input:            input,
      options:          options,
      action:           "ChangeResourceRecordSets",
      method:           :post,
      input_shape:      "ChangeResourceRecordSetsRequest",
      output_shape:     "ChangeResourceRecordSetsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a specified health check.
  """
  def get_health_check(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/healthcheck/{HealthCheckId}",
      input:            input,
      options:          options,
      action:           "GetHealthCheck",
      method:           :get,
      input_shape:      "GetHealthCheckRequest",
      output_shape:     "GetHealthCheckResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the number of health checks that are associated with the current
  AWS account.
  """
  def get_health_check_count(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/healthcheckcount",
      input:            input,
      options:          options,
      action:           "GetHealthCheckCount",
      method:           :get,
      input_shape:      "GetHealthCheckCountRequest",
      output_shape:     "GetHealthCheckCountResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about whether a specified geographic location is supported
  for Amazon Route 53 geolocation resource record sets.

  Use the following syntax to determine whether a continent is supported for
  geolocation:

  `GET /2013-04-01/geolocation?ContinentCode=*two-letter abbreviation for a
  continent* `

  Use the following syntax to determine whether a country is supported for
  geolocation:

  `GET /2013-04-01/geolocation?CountryCode=*two-character country code* `

  Use the following syntax to determine whether a subdivision of a country is
  supported for geolocation:

  `GET /2013-04-01/geolocation?CountryCode=*two-character country
  code*&amp;SubdivisionCode=*subdivision code* `
  """
  def get_geo_location(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/geolocation",
      input:            input,
      options:          options,
      action:           "GetGeoLocation",
      method:           :get,
      input_shape:      "GetGeoLocationRequest",
      output_shape:     "GetGeoLocationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new version of an existing traffic policy. When you create a new
  version of a traffic policy, you specify the ID of the traffic policy that
  you want to update and a JSON-formatted document that describes the new
  version. You use traffic policies to create multiple DNS resource record
  sets for one domain name (such as example.com) or one subdomain name (such
  as www.example.com). You can create a maximum of 1000 versions of a traffic
  policy. If you reach the limit and need to create another version, you'll
  need to start a new traffic policy.
  """
  def create_traffic_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicy/{Id}",
      input:            input,
      options:          options,
      action:           "CreateTrafficPolicyVersion",
      method:           :post,
      input_shape:      "CreateTrafficPolicyVersionRequest",
      output_shape:     "CreateTrafficPolicyVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an existing health check. Note that some values can't be updated.

  For more information about updating health checks, see [Creating, Updating,
  and Deleting Health
  Checks](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  def update_health_check(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/healthcheck/{HealthCheckId}",
      input:            input,
      options:          options,
      action:           "UpdateHealthCheck",
      method:           :post,
      input_shape:      "UpdateHealthCheckRequest",
      output_shape:     "UpdateHealthCheckResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a configuration for DNS query logging. If you delete a
  configuration, Amazon Route 53 stops sending query logs to CloudWatch Logs.
  Amazon Route 53 doesn't delete any logs that are already in CloudWatch
  Logs.

  For more information about DNS query logs, see `CreateQueryLoggingConfig`.
  """
  def delete_query_logging_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/queryloggingconfig/{Id}",
      input:            input,
      options:          options,
      action:           "DeleteQueryLoggingConfig",
      method:           :delete,
      input_shape:      "DeleteQueryLoggingConfigRequest",
      output_shape:     "DeleteQueryLoggingConfigResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a specified configuration for DNS query logging.

  For more information about DNS query logs, see `CreateQueryLoggingConfig`
  and [Logging DNS
  Queries](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html).
  """
  def get_query_logging_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/queryloggingconfig/{Id}",
      input:            input,
      options:          options,
      action:           "GetQueryLoggingConfig",
      method:           :get,
      input_shape:      "GetQueryLoggingConfigRequest",
      output_shape:     "GetQueryLoggingConfigResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a specified reusable delegation set, including
  the four name servers that are assigned to the delegation set.
  """
  def get_reusable_delegation_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/delegationset/{Id}",
      input:            input,
      options:          options,
      action:           "GetReusableDelegationSet",
      method:           :get,
      input_shape:      "GetReusableDelegationSetRequest",
      output_shape:     "GetReusableDelegationSetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociates a VPC from a Amazon Route 53 private hosted zone.

  <note> You can't disassociate the last VPC from a private hosted zone.

  </note> <important> You can't disassociate a VPC from a private hosted zone
  when only one VPC is associated with the hosted zone. You also can't
  convert a private hosted zone into a public hosted zone.

  </important>
  """
  def disassociate_v_p_c_from_hosted_zone(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}/disassociatevpc",
      input:            input,
      options:          options,
      action:           "DisassociateVPCFromHostedZone",
      method:           :post,
      input_shape:      "DisassociateVPCFromHostedZoneRequest",
      output_shape:     "DisassociateVPCFromHostedZoneResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a specified hosted zone including the four name
  servers assigned to the hosted zone.
  """
  def get_hosted_zone(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}",
      input:            input,
      options:          options,
      action:           "GetHostedZone",
      method:           :get,
      input_shape:      "GetHostedZoneRequest",
      output_shape:     "GetHostedZoneResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a specified traffic policy instance.

  <note> After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon
  Route 53 creates the resource record sets that are specified in the traffic
  policy definition. For more information, see the `State` response element.

  </note> <note> In the Amazon Route 53 console, traffic policy instances are
  known as policy records.

  </note>
  """
  def get_traffic_policy_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicyinstance/{Id}",
      input:            input,
      options:          options,
      action:           "GetTrafficPolicyInstance",
      method:           :get,
      input_shape:      "GetTrafficPolicyInstanceRequest",
      output_shape:     "GetTrafficPolicyInstanceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets status of a specified health check.
  """
  def get_health_check_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/healthcheck/{HealthCheckId}/status",
      input:            input,
      options:          options,
      action:           "GetHealthCheckStatus",
      method:           :get,
      input_shape:      "GetHealthCheckStatusRequest",
      output_shape:     "GetHealthCheckStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a hosted zone.

  <important> If the name servers for the hosted zone are associated with a
  domain and if you want to make the domain unavailable on the Internet, we
  recommend that you delete the name servers from the domain to prevent
  future DNS queries from possibly being misrouted. If the domain is
  registered with Amazon Route 53, see `UpdateDomainNameservers`. If the
  domain is registered with another registrar, use the method provided by the
  registrar to delete name servers for the domain.

  Some domain registries don't allow you to remove all of the name servers
  for a domain. If the registry for your domain requires one or more name
  servers, we recommend that you delete the hosted zone only if you transfer
  DNS service to another service provider, and you replace the name servers
  for the domain with name servers from the new provider.

  </important> You can delete a hosted zone only if it contains only the
  default SOA record and NS resource record sets. If the hosted zone contains
  other resource record sets, you must delete them before you can delete the
  hosted zone. If you try to delete a hosted zone that contains other
  resource record sets, the request fails, and Amazon Route 53 returns a
  `HostedZoneNotEmpty` error. For information about deleting records from
  your hosted zone, see `ChangeResourceRecordSets`.

  To verify that the hosted zone has been deleted, do one of the following:

  <ul> <li> Use the `GetHostedZone` action to request information about the
  hosted zone.

  </li> <li> Use the `ListHostedZones` action to get a list of the hosted
  zones associated with the current AWS account.

  </li> </ul>
  """
  def delete_hosted_zone(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzone/{Id}",
      input:            input,
      options:          options,
      action:           "DeleteHostedZone",
      method:           :delete,
      input_shape:      "DeleteHostedZoneRequest",
      output_shape:     "DeleteHostedZoneResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of the reusable delegation sets that are associated with
  the current AWS account.
  """
  def list_reusable_delegation_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/delegationset",
      input:            input,
      options:          options,
      action:           "ListReusableDelegationSets",
      method:           :get,
      input_shape:      "ListReusableDelegationSetsRequest",
      output_shape:     "ListReusableDelegationSetsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a traffic policy, which you use to create multiple DNS resource
  record sets for one domain name (such as example.com) or one subdomain name
  (such as www.example.com).
  """
  def create_traffic_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicy",
      input:            input,
      options:          options,
      action:           "CreateTrafficPolicy",
      method:           :post,
      input_shape:      "CreateTrafficPolicyRequest",
      output_shape:     "CreateTrafficPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the number of hosted zones that are associated with the current
  AWS account.
  """
  def get_hosted_zone_count(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/hostedzonecount",
      input:            input,
      options:          options,
      action:           "GetHostedZoneCount",
      method:           :get,
      input_shape:      "GetHostedZoneCountRequest",
      output_shape:     "GetHostedZoneCountResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the traffic policy instances that you created by
  using a specify traffic policy version.

  <note> After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon
  Route 53 creates the resource record sets that are specified in the traffic
  policy definition. For more information, see the `State` response element.

  </note> Amazon Route 53 returns a maximum of 100 items in each response. If
  you have a lot of traffic policy instances, you can use the `MaxItems`
  parameter to list them in groups of up to 100.
  """
  def list_traffic_policy_instances_by_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/trafficpolicyinstances/trafficpolicy",
      input:            input,
      options:          options,
      action:           "ListTrafficPolicyInstancesByPolicy",
      method:           :get,
      input_shape:      "ListTrafficPolicyInstancesByPolicyRequest",
      output_shape:     "ListTrafficPolicyInstancesByPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  `GetCheckerIpRanges` still works, but we recommend that you download
  ip-ranges.json, which includes IP address ranges for all AWS services. For
  more information, see [IP Address Ranges of Amazon Route 53
  Servers](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  def get_checker_ip_ranges(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2013-04-01/checkeripranges",
      input:            input,
      options:          options,
      action:           "GetCheckerIpRanges",
      method:           :get,
      input_shape:      "GetCheckerIpRangesRequest",
      output_shape:     "GetCheckerIpRangesResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "route53",
      endpoint_prefix:  "route53",
      type:             :rest_xml,
      version:          "2013-04-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"TestDNSAnswerRequest" => %{"members" => %{"EDNS0ClientSubnetIP" => %{"location" => "querystring", "locationName" => "edns0clientsubnetip", "shape" => "IPAddress"}, "EDNS0ClientSubnetMask" => %{"location" => "querystring", "locationName" => "edns0clientsubnetmask", "shape" => "SubnetMask"}, "HostedZoneId" => %{"location" => "querystring", "locationName" => "hostedzoneid", "shape" => "ResourceId"}, "RecordName" => %{"location" => "querystring", "locationName" => "recordname", "shape" => "DNSName"}, "RecordType" => %{"location" => "querystring", "locationName" => "recordtype", "shape" => "RRType"}, "ResolverIP" => %{"location" => "querystring", "locationName" => "resolverip", "shape" => "IPAddress"}}, "required" => ["HostedZoneId", "RecordName", "RecordType"], "type" => "structure"}, "NoSuchHealthCheck" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UpdateTrafficPolicyInstanceRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "TrafficPolicyInstanceId"}, "TTL" => %{"shape" => "TTL"}, "TrafficPolicyId" => %{"shape" => "TrafficPolicyId"}, "TrafficPolicyVersion" => %{"shape" => "TrafficPolicyVersion"}}, "required" => ["Id", "TTL", "TrafficPolicyId", "TrafficPolicyVersion"], "type" => "structure"}, "HealthCheckRegionList" => %{"max" => 64, "member" => %{"locationName" => "Region", "shape" => "HealthCheckRegion"}, "min" => 3, "type" => "list"}, "HealthCheckRegion" => %{"enum" => ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"], "max" => 64, "min" => 1, "type" => "string"}, "ListTagsForResourcesRequest" => %{"members" => %{"ResourceIds" => %{"shape" => "TagResourceIdList"}, "ResourceType" => %{"location" => "uri", "locationName" => "ResourceType", "shape" => "TagResourceType"}}, "required" => ["ResourceType", "ResourceIds"], "type" => "structure"}, "RequestInterval" => %{"max" => 30, "min" => 10, "type" => "integer"}, "ListTagsForResourceResponse" => %{"members" => %{"ResourceTagSet" => %{"shape" => "ResourceTagSet"}}, "required" => ["ResourceTagSet"], "type" => "structure"}, "TrafficPolicyDocument" => %{"max" => 102400, "type" => "string"}, "Statistic" => %{"enum" => ["Average", "Sum", "SampleCount", "Maximum", "Minimum"], "type" => "string"}, "ListQueryLoggingConfigsRequest" => %{"members" => %{"HostedZoneId" => %{"location" => "querystring", "locationName" => "hostedzoneid", "shape" => "ResourceId"}, "MaxResults" => %{"location" => "querystring", "locationName" => "maxresults", "shape" => "MaxResults"}, "NextToken" => %{"location" => "querystring", "locationName" => "nexttoken", "shape" => "PaginationToken"}}, "type" => "structure"}, "IPAddressCidr" => %{"type" => "string"}, "InsufficientCloudWatchLogsResourcePolicy" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetTrafficPolicyInstanceCountResponse" => %{"members" => %{"TrafficPolicyInstanceCount" => %{"shape" => "TrafficPolicyInstanceCount"}}, "required" => ["TrafficPolicyInstanceCount"], "type" => "structure"}, "IsPrivateZone" => %{"type" => "boolean"}, "AlarmIdentifier" => %{"members" => %{"Name" => %{"shape" => "AlarmName"}, "Region" => %{"shape" => "CloudWatchRegion"}}, "required" => ["Region", "Name"], "type" => "structure"}, "GeoLocationCountryName" => %{"max" => 64, "min" => 1, "type" => "string"}, "ListTrafficPolicyInstancesRequest" => %{"members" => %{"HostedZoneIdMarker" => %{"location" => "querystring", "locationName" => "hostedzoneid", "shape" => "ResourceId"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}, "TrafficPolicyInstanceNameMarker" => %{"location" => "querystring", "locationName" => "trafficpolicyinstancename", "shape" => "DNSName"}, "TrafficPolicyInstanceTypeMarker" => %{"location" => "querystring", "locationName" => "trafficpolicyinstancetype", "shape" => "RRType"}}, "type" => "structure"}, "GetChangeRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}}, "required" => ["Id"], "type" => "structure"}, "ChangeAction" => %{"enum" => ["CREATE", "DELETE", "UPSERT"], "type" => "string"}, "TagKeyList" => %{"max" => 10, "member" => %{"locationName" => "Key", "shape" => "TagKey"}, "min" => 1, "type" => "list"}, "CloudWatchRegion" => %{"enum" => ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"], "max" => 64, "min" => 1, "type" => "string"}, "ErrorMessages" => %{"member" => %{"locationName" => "Message", "shape" => "ErrorMessage"}, "type" => "list"}, "DNSName" => %{"max" => 1024, "type" => "string"}, "ChangeTagsForResourceRequest" => %{"members" => %{"AddTags" => %{"shape" => "TagList"}, "RemoveTagKeys" => %{"shape" => "TagKeyList"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "TagResourceId"}, "ResourceType" => %{"location" => "uri", "locationName" => "ResourceType", "shape" => "TagResourceType"}}, "required" => ["ResourceType", "ResourceId"], "type" => "structure"}, "DeleteHostedZoneRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}}, "required" => ["Id"], "type" => "structure"}, "ListTrafficPoliciesRequest" => %{"members" => %{"MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}, "TrafficPolicyIdMarker" => %{"location" => "querystring", "locationName" => "trafficpolicyid", "shape" => "TrafficPolicyId"}}, "type" => "structure"}, "ListHealthChecksRequest" => %{"members" => %{"Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarker"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}}, "type" => "structure"}, "ChangeBatch" => %{"members" => %{"Changes" => %{"shape" => "Changes"}, "Comment" => %{"shape" => "ResourceDescription"}}, "required" => ["Changes"], "type" => "structure"}, "VPCs" => %{"member" => %{"locationName" => "VPC", "shape" => "VPC"}, "min" => 1, "type" => "list"}, "PageTruncated" => %{"type" => "boolean"}, "ListVPCAssociationAuthorizationsResponse" => %{"members" => %{"HostedZoneId" => %{"shape" => "ResourceId"}, "NextToken" => %{"shape" => "PaginationToken"}, "VPCs" => %{"shape" => "VPCs"}}, "required" => ["HostedZoneId", "VPCs"], "type" => "structure"}, "DisassociateVPCFromHostedZoneResponse" => %{"members" => %{"ChangeInfo" => %{"shape" => "ChangeInfo"}}, "required" => ["ChangeInfo"], "type" => "structure"}, "TestDNSAnswerResponse" => %{"members" => %{"Nameserver" => %{"shape" => "Nameserver"}, "Protocol" => %{"shape" => "TransportProtocol"}, "RecordData" => %{"shape" => "RecordData"}, "RecordName" => %{"shape" => "DNSName"}, "RecordType" => %{"shape" => "RRType"}, "ResponseCode" => %{"shape" => "DNSRCode"}}, "required" => ["Nameserver", "RecordName", "RecordType", "RecordData", "ResponseCode", "Protocol"], "type" => "structure"}, "GetHostedZoneCountRequest" => %{"members" => %{}, "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "ResourceRecordSet" => %{"members" => %{"AliasTarget" => %{"shape" => "AliasTarget"}, "Failover" => %{"shape" => "ResourceRecordSetFailover"}, "GeoLocation" => %{"shape" => "GeoLocation"}, "HealthCheckId" => %{"shape" => "HealthCheckId"}, "MultiValueAnswer" => %{"shape" => "ResourceRecordSetMultiValueAnswer"}, "Name" => %{"shape" => "DNSName"}, "Region" => %{"shape" => "ResourceRecordSetRegion"}, "ResourceRecords" => %{"shape" => "ResourceRecords"}, "SetIdentifier" => %{"shape" => "ResourceRecordSetIdentifier"}, "TTL" => %{"shape" => "TTL"}, "TrafficPolicyInstanceId" => %{"shape" => "TrafficPolicyInstanceId"}, "Type" => %{"shape" => "RRType"}, "Weight" => %{"shape" => "ResourceRecordSetWeight"}}, "required" => ["Name", "Type"], "type" => "structure"}, "GeoLocationSubdivisionCode" => %{"max" => 3, "min" => 1, "type" => "string"}, "InvalidInput" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "QueryLoggingConfigId" => %{"max" => 36, "min" => 1, "type" => "string"}, "HealthChecks" => %{"member" => %{"locationName" => "HealthCheck", "shape" => "HealthCheck"}, "type" => "list"}, "InvalidArgument" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DeleteVPCAssociationAuthorizationResponse" => %{"members" => %{}, "type" => "structure"}, "ListTrafficPolicyVersionsResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "PageTruncated"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "TrafficPolicies" => %{"shape" => "TrafficPolicies"}, "TrafficPolicyVersionMarker" => %{"shape" => "TrafficPolicyVersionMarker"}}, "required" => ["TrafficPolicies", "IsTruncated", "TrafficPolicyVersionMarker", "MaxItems"], "type" => "structure"}, "DeleteTrafficPolicyInstanceResponse" => %{"members" => %{}, "type" => "structure"}, "TrafficPolicyInstanceCount" => %{"type" => "integer"}, "HostedZoneConfig" => %{"members" => %{"Comment" => %{"shape" => "ResourceDescription"}, "PrivateZone" => %{"shape" => "IsPrivateZone"}}, "type" => "structure"}, "Changes" => %{"member" => %{"locationName" => "Change", "shape" => "Change"}, "min" => 1, "type" => "list"}, "TagResourceType" => %{"enum" => ["healthcheck", "hostedzone"], "type" => "string"}, "GetHostedZoneRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}}, "required" => ["Id"], "type" => "structure"}, "InvalidVPCId" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TrafficPolicy" => %{"members" => %{"Comment" => %{"shape" => "TrafficPolicyComment"}, "Document" => %{"shape" => "TrafficPolicyDocument"}, "Id" => %{"shape" => "TrafficPolicyId"}, "Name" => %{"shape" => "TrafficPolicyName"}, "Type" => %{"shape" => "RRType"}, "Version" => %{"shape" => "TrafficPolicyVersion"}}, "required" => ["Id", "Version", "Name", "Type", "Document"], "type" => "structure"}, "HealthThreshold" => %{"max" => 256, "min" => 0, "type" => "integer"}, "ListTrafficPoliciesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "PageTruncated"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "TrafficPolicyIdMarker" => %{"shape" => "TrafficPolicyId"}, "TrafficPolicySummaries" => %{"shape" => "TrafficPolicySummaries"}}, "required" => ["TrafficPolicySummaries", "IsTruncated", "TrafficPolicyIdMarker", "MaxItems"], "type" => "structure"}, "DeleteReusableDelegationSetRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}}, "required" => ["Id"], "type" => "structure"}, "TimeStamp" => %{"type" => "timestamp"}, "DimensionList" => %{"max" => 10, "member" => %{"locationName" => "Dimension", "shape" => "Dimension"}, "type" => "list"}, "DeleteHealthCheckRequest" => %{"members" => %{"HealthCheckId" => %{"location" => "uri", "locationName" => "HealthCheckId", "shape" => "HealthCheckId"}}, "required" => ["HealthCheckId"], "type" => "structure"}, "DeleteVPCAssociationAuthorizationRequest" => %{"members" => %{"HostedZoneId" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}, "VPC" => %{"shape" => "VPC"}}, "required" => ["HostedZoneId", "VPC"], "type" => "structure"}, "DisassociateVPCComment" => %{"type" => "string"}, "HealthCheckCount" => %{"type" => "long"}, "InvalidTrafficPolicyDocument" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "HostedZoneRRSetCount" => %{"type" => "long"}, "Port" => %{"max" => 65535, "min" => 1, "type" => "integer"}, "GetGeoLocationResponse" => %{"members" => %{"GeoLocationDetails" => %{"shape" => "GeoLocationDetails"}}, "required" => ["GeoLocationDetails"], "type" => "structure"}, "GetQueryLoggingConfigResponse" => %{"members" => %{"QueryLoggingConfig" => %{"shape" => "QueryLoggingConfig"}}, "required" => ["QueryLoggingConfig"], "type" => "structure"}, "DelegationSetNameServers" => %{"member" => %{"locationName" => "NameServer", "shape" => "DNSName"}, "min" => 1, "type" => "list"}, "GetHealthCheckLastFailureReasonResponse" => %{"members" => %{"HealthCheckObservations" => %{"shape" => "HealthCheckObservations"}}, "required" => ["HealthCheckObservations"], "type" => "structure"}, "DNSRCode" => %{"type" => "string"}, "TooManyHostedZones" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ChangeResourceRecordSetsRequest" => %{"members" => %{"ChangeBatch" => %{"shape" => "ChangeBatch"}, "HostedZoneId" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}}, "required" => ["HostedZoneId", "ChangeBatch"], "type" => "structure"}, "ChangeStatus" => %{"enum" => ["PENDING", "INSYNC"], "type" => "string"}, "SearchString" => %{"max" => 255, "type" => "string"}, "GetHealthCheckLastFailureReasonRequest" => %{"members" => %{"HealthCheckId" => %{"location" => "uri", "locationName" => "HealthCheckId", "shape" => "HealthCheckId"}}, "required" => ["HealthCheckId"], "type" => "structure"}, "ListVPCAssociationAuthorizationsRequest" => %{"members" => %{"HostedZoneId" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}, "MaxResults" => %{"location" => "querystring", "locationName" => "maxresults", "shape" => "MaxResults"}, "NextToken" => %{"location" => "querystring", "locationName" => "nexttoken", "shape" => "PaginationToken"}}, "required" => ["HostedZoneId"], "type" => "structure"}, "ListHealthChecksResponse" => %{"members" => %{"HealthChecks" => %{"shape" => "HealthChecks"}, "IsTruncated" => %{"shape" => "PageTruncated"}, "Marker" => %{"shape" => "PageMarker"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "NextMarker" => %{"shape" => "PageMarker"}}, "required" => ["HealthChecks", "Marker", "IsTruncated", "MaxItems"], "type" => "structure"}, "UpdateTrafficPolicyInstanceResponse" => %{"members" => %{"TrafficPolicyInstance" => %{"shape" => "TrafficPolicyInstance"}}, "required" => ["TrafficPolicyInstance"], "type" => "structure"}, "DeleteReusableDelegationSetResponse" => %{"members" => %{}, "type" => "structure"}, "ListTagsForResourcesResponse" => %{"members" => %{"ResourceTagSets" => %{"shape" => "ResourceTagSetList"}}, "required" => ["ResourceTagSets"], "type" => "structure"}, "InvalidChangeBatch" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}, "messages" => %{"shape" => "ErrorMessages"}}, "type" => "structure"}, "GetGeoLocationRequest" => %{"members" => %{"ContinentCode" => %{"location" => "querystring", "locationName" => "continentcode", "shape" => "GeoLocationContinentCode"}, "CountryCode" => %{"location" => "querystring", "locationName" => "countrycode", "shape" => "GeoLocationCountryCode"}, "SubdivisionCode" => %{"location" => "querystring", "locationName" => "subdivisioncode", "shape" => "GeoLocationSubdivisionCode"}}, "type" => "structure"}, "IncompatibleVersion" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListHostedZonesRequest" => %{"members" => %{"DelegationSetId" => %{"location" => "querystring", "locationName" => "delegationsetid", "shape" => "ResourceId"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarker"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}}, "type" => "structure"}, "ResourceTagSetList" => %{"member" => %{"locationName" => "ResourceTagSet", "shape" => "ResourceTagSet"}, "type" => "list"}, "DeleteTrafficPolicyResponse" => %{"members" => %{}, "type" => "structure"}, "ListTagsForResourceRequest" => %{"members" => %{"ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "TagResourceId"}, "ResourceType" => %{"location" => "uri", "locationName" => "ResourceType", "shape" => "TagResourceType"}}, "required" => ["ResourceType", "ResourceId"], "type" => "structure"}, "DelegationSetNotReusable" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ResourceTagSet" => %{"members" => %{"ResourceId" => %{"shape" => "TagResourceId"}, "ResourceType" => %{"shape" => "TagResourceType"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "DeleteHostedZoneResponse" => %{"members" => %{"ChangeInfo" => %{"shape" => "ChangeInfo"}}, "required" => ["ChangeInfo"], "type" => "structure"}, "TrafficPolicyInUse" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DisassociateVPCFromHostedZoneRequest" => %{"members" => %{"Comment" => %{"shape" => "DisassociateVPCComment"}, "HostedZoneId" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}, "VPC" => %{"shape" => "VPC"}}, "required" => ["HostedZoneId", "VPC"], "type" => "structure"}, "TrafficPolicyAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateReusableDelegationSetRequest" => %{"members" => %{"CallerReference" => %{"shape" => "Nonce"}, "HostedZoneId" => %{"shape" => "ResourceId"}}, "required" => ["CallerReference"], "type" => "structure"}, "DelegationSet" => %{"members" => %{"CallerReference" => %{"shape" => "Nonce"}, "Id" => %{"shape" => "ResourceId"}, "NameServers" => %{"shape" => "DelegationSetNameServers"}}, "required" => ["NameServers"], "type" => "structure"}, "ListTrafficPolicyVersionsRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "TrafficPolicyId"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}, "TrafficPolicyVersionMarker" => %{"location" => "querystring", "locationName" => "trafficpolicyversion", "shape" => "TrafficPolicyVersionMarker"}}, "required" => ["Id"], "type" => "structure"}, "CreateQueryLoggingConfigResponse" => %{"members" => %{"Location" => %{"location" => "header", "locationName" => "Location", "shape" => "ResourceURI"}, "QueryLoggingConfig" => %{"shape" => "QueryLoggingConfig"}}, "required" => ["QueryLoggingConfig", "Location"], "type" => "structure"}, "GetReusableDelegationSetResponse" => %{"members" => %{"DelegationSet" => %{"shape" => "DelegationSet"}}, "required" => ["DelegationSet"], "type" => "structure"}, "GetTrafficPolicyInstanceCountRequest" => %{"members" => %{}, "type" => "structure"}, "IPAddress" => %{"max" => 45, "pattern" => "(^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$)", "type" => "string"}, "DeleteTrafficPolicyInstanceRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "TrafficPolicyInstanceId"}}, "required" => ["Id"], "type" => "structure"}, "TrafficPolicyInstanceAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LimitsExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "NoSuchGeoLocation" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetCheckerIpRangesRequest" => %{"members" => %{}, "type" => "structure"}, "ResourceDescription" => %{"max" => 256, "type" => "string"}, "FailureThreshold" => %{"max" => 10, "min" => 1, "type" => "integer"}, "ListTrafficPolicyInstancesResponse" => %{"members" => %{"HostedZoneIdMarker" => %{"shape" => "ResourceId"}, "IsTruncated" => %{"shape" => "PageTruncated"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "TrafficPolicyInstanceNameMarker" => %{"shape" => "DNSName"}, "TrafficPolicyInstanceTypeMarker" => %{"shape" => "RRType"}, "TrafficPolicyInstances" => %{"shape" => "TrafficPolicyInstances"}}, "required" => ["TrafficPolicyInstances", "IsTruncated", "MaxItems"], "type" => "structure"}, "NoSuchQueryLoggingConfig" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GeoLocationContinentCode" => %{"max" => 2, "min" => 2, "type" => "string"}, "GetTrafficPolicyRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "TrafficPolicyId"}, "Version" => %{"location" => "uri", "locationName" => "Version", "shape" => "TrafficPolicyVersion"}}, "required" => ["Id", "Version"], "type" => "structure"}, "TrafficPolicyInstanceState" => %{"type" => "string"}, "ResourceRecordSetRegion" => %{"enum" => ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-west-2", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1", "ap-south-1"], "max" => 64, "min" => 1, "type" => "string"}, "UpdateHostedZoneCommentResponse" => %{"members" => %{"HostedZone" => %{"shape" => "HostedZone"}}, "required" => ["HostedZone"], "type" => "structure"}, "VPCRegion" => %{"enum" => ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "ca-central-1", "cn-north-1"], "max" => 64, "min" => 1, "type" => "string"}, "TrafficPolicyInstanceId" => %{"max" => 36, "min" => 1, "type" => "string"}, "CreateHostedZoneResponse" => %{"members" => %{"ChangeInfo" => %{"shape" => "ChangeInfo"}, "DelegationSet" => %{"shape" => "DelegationSet"}, "HostedZone" => %{"shape" => "HostedZone"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "ResourceURI"}, "VPC" => %{"shape" => "VPC"}}, "required" => ["HostedZone", "ChangeInfo", "DelegationSet", "Location"], "type" => "structure"}, "TrafficPolicyId" => %{"max" => 36, "min" => 1, "type" => "string"}, "CreateTrafficPolicyVersionResponse" => %{"members" => %{"Location" => %{"location" => "header", "locationName" => "Location", "shape" => "ResourceURI"}, "TrafficPolicy" => %{"shape" => "TrafficPolicy"}}, "required" => ["TrafficPolicy", "Location"], "type" => "structure"}, "Message" => %{"max" => 1024, "type" => "string"}, "FullyQualifiedDomainName" => %{"max" => 255, "type" => "string"}, "GetTrafficPolicyInstanceResponse" => %{"members" => %{"TrafficPolicyInstance" => %{"shape" => "TrafficPolicyInstance"}}, "required" => ["TrafficPolicyInstance"], "type" => "structure"}, "InvalidDomainName" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetHealthCheckResponse" => %{"members" => %{"HealthCheck" => %{"shape" => "HealthCheck"}}, "required" => ["HealthCheck"], "type" => "structure"}, "UpdateHealthCheckResponse" => %{"members" => %{"HealthCheck" => %{"shape" => "HealthCheck"}}, "required" => ["HealthCheck"], "type" => "structure"}, "QueryLoggingConfigs" => %{"member" => %{"locationName" => "QueryLoggingConfig", "shape" => "QueryLoggingConfig"}, "type" => "list"}, "HealthCheckId" => %{"max" => 64, "type" => "string"}, "InvalidPaginationToken" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ResourceRecordSetIdentifier" => %{"max" => 128, "min" => 1, "type" => "string"}, "GetHealthCheckCountRequest" => %{"members" => %{}, "type" => "structure"}, "CreateTrafficPolicyResponse" => %{"members" => %{"Location" => %{"location" => "header", "locationName" => "Location", "shape" => "ResourceURI"}, "TrafficPolicy" => %{"shape" => "TrafficPolicy"}}, "required" => ["TrafficPolicy", "Location"], "type" => "structure"}, "UpdateTrafficPolicyCommentResponse" => %{"members" => %{"TrafficPolicy" => %{"shape" => "TrafficPolicy"}}, "required" => ["TrafficPolicy"], "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "type" => "structure"}, "Inverted" => %{"type" => "boolean"}, "PublicZoneVPCAssociation" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TagResourceId" => %{"max" => 64, "type" => "string"}, "TrafficPolicyInstances" => %{"member" => %{"locationName" => "TrafficPolicyInstance", "shape" => "TrafficPolicyInstance"}, "type" => "list"}, "TrafficPolicyInstance" => %{"members" => %{"HostedZoneId" => %{"shape" => "ResourceId"}, "Id" => %{"shape" => "TrafficPolicyInstanceId"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "DNSName"}, "State" => %{"shape" => "TrafficPolicyInstanceState"}, "TTL" => %{"shape" => "TTL"}, "TrafficPolicyId" => %{"shape" => "TrafficPolicyId"}, "TrafficPolicyType" => %{"shape" => "RRType"}, "TrafficPolicyVersion" => %{"shape" => "TrafficPolicyVersion"}}, "required" => ["Id", "HostedZoneId", "Name", "TTL", "State", "Message", "TrafficPolicyId", "TrafficPolicyVersion", "TrafficPolicyType"], "type" => "structure"}, "CreateHealthCheckResponse" => %{"members" => %{"HealthCheck" => %{"shape" => "HealthCheck"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "ResourceURI"}}, "required" => ["HealthCheck", "Location"], "type" => "structure"}, "HostedZoneCount" => %{"type" => "long"}, "ResourceRecordSetFailover" => %{"enum" => ["PRIMARY", "SECONDARY"], "type" => "string"}, "ResourcePath" => %{"max" => 255, "type" => "string"}, "NoSuchChange" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UpdateTrafficPolicyCommentRequest" => %{"members" => %{"Comment" => %{"shape" => "TrafficPolicyComment"}, "Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "TrafficPolicyId"}, "Version" => %{"location" => "uri", "locationName" => "Version", "shape" => "TrafficPolicyVersion"}}, "required" => ["Id", "Version", "Comment"], "type" => "structure"}, "ListHostedZonesResponse" => %{"members" => %{"HostedZones" => %{"shape" => "HostedZones"}, "IsTruncated" => %{"shape" => "PageTruncated"}, "Marker" => %{"shape" => "PageMarker"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "NextMarker" => %{"shape" => "PageMarker"}}, "required" => ["HostedZones", "Marker", "IsTruncated", "MaxItems"], "type" => "structure"}, "HealthCheckObservations" => %{"member" => %{"locationName" => "HealthCheckObservation", "shape" => "HealthCheckObservation"}, "type" => "list"}, "RecordData" => %{"member" => %{"locationName" => "RecordDataEntry", "shape" => "RecordDataEntry"}, "type" => "list"}, "TagList" => %{"max" => 10, "member" => %{"locationName" => "Tag", "shape" => "Tag"}, "min" => 1, "type" => "list"}, "MaxResults" => %{"type" => "string"}, "RRType" => %{"enum" => ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA"], "type" => "string"}, "TagValue" => %{"max" => 256, "type" => "string"}, "TrafficPolicyComment" => %{"max" => 1024, "type" => "string"}, "GetHealthCheckStatusRequest" => %{"members" => %{"HealthCheckId" => %{"location" => "uri", "locationName" => "HealthCheckId", "shape" => "HealthCheckId"}}, "required" => ["HealthCheckId"], "type" => "structure"}, "MetricName" => %{"max" => 255, "min" => 1, "type" => "string"}, "RData" => %{"max" => 4000, "type" => "string"}, "GetHostedZoneResponse" => %{"members" => %{"DelegationSet" => %{"shape" => "DelegationSet"}, "HostedZone" => %{"shape" => "HostedZone"}, "VPCs" => %{"shape" => "VPCs"}}, "required" => ["HostedZone"], "type" => "structure"}, "AliasTarget" => %{"members" => %{"DNSName" => %{"shape" => "DNSName"}, "EvaluateTargetHealth" => %{"shape" => "AliasHealthEnabled"}, "HostedZoneId" => %{"shape" => "ResourceId"}}, "required" => ["HostedZoneId", "DNSName", "EvaluateTargetHealth"], "type" => "structure"}, "GeoLocation" => %{"members" => %{"ContinentCode" => %{"shape" => "GeoLocationContinentCode"}, "CountryCode" => %{"shape" => "GeoLocationCountryCode"}, "SubdivisionCode" => %{"shape" => "GeoLocationSubdivisionCode"}}, "type" => "structure"}, "ChildHealthCheckList" => %{"max" => 256, "member" => %{"locationName" => "ChildHealthCheck", "shape" => "HealthCheckId"}, "type" => "list"}, "GetHealthCheckStatusResponse" => %{"members" => %{"HealthCheckObservations" => %{"shape" => "HealthCheckObservations"}}, "required" => ["HealthCheckObservations"], "type" => "structure"}, "StatusReport" => %{"members" => %{"CheckedTime" => %{"shape" => "TimeStamp"}, "Status" => %{"shape" => "Status"}}, "type" => "structure"}, "TooManyHealthChecks" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ThrottlingException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "NotAuthorizedException" => %{"error" => %{"httpStatusCode" => 401}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetChangeResponse" => %{"members" => %{"ChangeInfo" => %{"shape" => "ChangeInfo"}}, "required" => ["ChangeInfo"], "type" => "structure"}, "CreateTrafficPolicyInstanceRequest" => %{"members" => %{"HostedZoneId" => %{"shape" => "ResourceId"}, "Name" => %{"shape" => "DNSName"}, "TTL" => %{"shape" => "TTL"}, "TrafficPolicyId" => %{"shape" => "TrafficPolicyId"}, "TrafficPolicyVersion" => %{"shape" => "TrafficPolicyVersion"}}, "required" => ["HostedZoneId", "Name", "TTL", "TrafficPolicyId", "TrafficPolicyVersion"], "type" => "structure"}, "AssociateVPCComment" => %{"type" => "string"}, "InsufficientDataHealthStatus" => %{"enum" => ["Healthy", "Unhealthy", "LastKnownStatus"], "type" => "string"}, "Dimension" => %{"members" => %{"Name" => %{"shape" => "DimensionField"}, "Value" => %{"shape" => "DimensionField"}}, "required" => ["Name", "Value"], "type" => "structure"}, "CloudWatchAlarmConfiguration" => %{"members" => %{"ComparisonOperator" => %{"shape" => "ComparisonOperator"}, "Dimensions" => %{"shape" => "DimensionList"}, "EvaluationPeriods" => %{"shape" => "EvaluationPeriods"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "Namespace"}, "Period" => %{"shape" => "Period"}, "Statistic" => %{"shape" => "Statistic"}, "Threshold" => %{"shape" => "Threshold"}}, "required" => ["EvaluationPeriods", "Threshold", "ComparisonOperator", "Period", "MetricName", "Namespace", "Statistic"], "type" => "structure"}, "TransportProtocol" => %{"type" => "string"}, "HostedZoneNotEmpty" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "EnableSNI" => %{"type" => "boolean"}, "ListHostedZonesByNameResponse" => %{"members" => %{"DNSName" => %{"shape" => "DNSName"}, "HostedZoneId" => %{"shape" => "ResourceId"}, "HostedZones" => %{"shape" => "HostedZones"}, "IsTruncated" => %{"shape" => "PageTruncated"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "NextDNSName" => %{"shape" => "DNSName"}, "NextHostedZoneId" => %{"shape" => "ResourceId"}}, "required" => ["HostedZones", "IsTruncated", "MaxItems"], "type" => "structure"}, "VPCAssociationNotFound" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GeoLocationDetails" => %{"members" => %{"ContinentCode" => %{"shape" => "GeoLocationContinentCode"}, "ContinentName" => %{"shape" => "GeoLocationContinentName"}, "CountryCode" => %{"shape" => "GeoLocationCountryCode"}, "CountryName" => %{"shape" => "GeoLocationCountryName"}, "SubdivisionCode" => %{"shape" => "GeoLocationSubdivisionCode"}, "SubdivisionName" => %{"shape" => "GeoLocationSubdivisionName"}}, "type" => "structure"}, "TrafficPolicies" => %{"member" => %{"locationName" => "TrafficPolicy", "shape" => "TrafficPolicy"}, "type" => "list"}, "CreateReusableDelegationSetResponse" => %{"members" => %{"DelegationSet" => %{"shape" => "DelegationSet"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "ResourceURI"}}, "required" => ["DelegationSet", "Location"], "type" => "structure"}, "VPCAssociationAuthorizationNotFound" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetHealthCheckRequest" => %{"members" => %{"HealthCheckId" => %{"location" => "uri", "locationName" => "HealthCheckId", "shape" => "HealthCheckId"}}, "required" => ["HealthCheckId"], "type" => "structure"}, "ResourceId" => %{"max" => 32, "type" => "string"}, "ResourceRecords" => %{"member" => %{"locationName" => "ResourceRecord", "shape" => "ResourceRecord"}, "min" => 1, "type" => "list"}, "ListTrafficPolicyInstancesByHostedZoneRequest" => %{"members" => %{"HostedZoneId" => %{"location" => "querystring", "locationName" => "id", "shape" => "ResourceId"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}, "TrafficPolicyInstanceNameMarker" => %{"location" => "querystring", "locationName" => "trafficpolicyinstancename", "shape" => "DNSName"}, "TrafficPolicyInstanceTypeMarker" => %{"location" => "querystring", "locationName" => "trafficpolicyinstancetype", "shape" => "RRType"}}, "required" => ["HostedZoneId"], "type" => "structure"}, "PriorRequestNotComplete" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TooManyVPCAssociationAuthorizations" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Status" => %{"type" => "string"}, "Change" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "ResourceRecordSet" => %{"shape" => "ResourceRecordSet"}}, "required" => ["Action", "ResourceRecordSet"], "type" => "structure"}, "GeoLocationDetailsList" => %{"member" => %{"locationName" => "GeoLocationDetails", "shape" => "GeoLocationDetails"}, "type" => "list"}, "GetTrafficPolicyInstanceRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "TrafficPolicyInstanceId"}}, "required" => ["Id"], "type" => "structure"}, "QueryLoggingConfig" => %{"members" => %{"CloudWatchLogsLogGroupArn" => %{"shape" => "CloudWatchLogsLogGroupArn"}, "HostedZoneId" => %{"shape" => "ResourceId"}, "Id" => %{"shape" => "QueryLoggingConfigId"}}, "required" => ["Id", "HostedZoneId", "CloudWatchLogsLogGroupArn"], "type" => "structure"}, "DelegationSetNotAvailable" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DelegationSets" => %{"member" => %{"locationName" => "DelegationSet", "shape" => "DelegationSet"}, "type" => "list"}, "LastVPCAssociation" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "AssociateVPCWithHostedZoneRequest" => %{"members" => %{"Comment" => %{"shape" => "AssociateVPCComment"}, "HostedZoneId" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}, "VPC" => %{"shape" => "VPC"}}, "required" => ["HostedZoneId", "VPC"], "type" => "structure"}, "HealthCheckVersionMismatch" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListGeoLocationsRequest" => %{"members" => %{"MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}, "StartContinentCode" => %{"location" => "querystring", "locationName" => "startcontinentcode", "shape" => "GeoLocationContinentCode"}, "StartCountryCode" => %{"location" => "querystring", "locationName" => "startcountrycode", "shape" => "GeoLocationCountryCode"}, "StartSubdivisionCode" => %{"location" => "querystring", "locationName" => "startsubdivisioncode", "shape" => "GeoLocationSubdivisionCode"}}, "type" => "structure"}, "HostedZones" => %{"member" => %{"locationName" => "HostedZone", "shape" => "HostedZone"}, "type" => "list"}, "ComparisonOperator" => %{"enum" => ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"], "type" => "string"}, "GetQueryLoggingConfigRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "QueryLoggingConfigId"}}, "required" => ["Id"], "type" => "structure"}, "GeoLocationContinentName" => %{"max" => 32, "min" => 1, "type" => "string"}, "GetCheckerIpRangesResponse" => %{"members" => %{"CheckerIpRanges" => %{"shape" => "CheckerIpRanges"}}, "required" => ["CheckerIpRanges"], "type" => "structure"}, "AliasHealthEnabled" => %{"type" => "boolean"}, "CreateHostedZoneRequest" => %{"members" => %{"CallerReference" => %{"shape" => "Nonce"}, "DelegationSetId" => %{"shape" => "ResourceId"}, "HostedZoneConfig" => %{"shape" => "HostedZoneConfig"}, "Name" => %{"shape" => "DNSName"}, "VPC" => %{"shape" => "VPC"}}, "required" => ["Name", "CallerReference"], "type" => "structure"}, "ListGeoLocationsResponse" => %{"members" => %{"GeoLocationDetailsList" => %{"shape" => "GeoLocationDetailsList"}, "IsTruncated" => %{"shape" => "PageTruncated"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "NextContinentCode" => %{"shape" => "GeoLocationContinentCode"}, "NextCountryCode" => %{"shape" => "GeoLocationCountryCode"}, "NextSubdivisionCode" => %{"shape" => "GeoLocationSubdivisionCode"}}, "required" => ["GeoLocationDetailsList", "IsTruncated", "MaxItems"], "type" => "structure"}, "NoSuchDelegationSet" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "NoSuchTrafficPolicy" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "HealthCheckType" => %{"enum" => ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC"], "type" => "string"}, "CreateVPCAssociationAuthorizationResponse" => %{"members" => %{"HostedZoneId" => %{"shape" => "ResourceId"}, "VPC" => %{"shape" => "VPC"}}, "required" => ["HostedZoneId", "VPC"], "type" => "structure"}, "RecordDataEntry" => %{"max" => 512, "min" => 0, "type" => "string"}, "Threshold" => %{"type" => "double"}, "UpdateHealthCheckRequest" => %{"members" => %{"AlarmIdentifier" => %{"shape" => "AlarmIdentifier"}, "ChildHealthChecks" => %{"shape" => "ChildHealthCheckList"}, "EnableSNI" => %{"shape" => "EnableSNI"}, "FailureThreshold" => %{"shape" => "FailureThreshold"}, "FullyQualifiedDomainName" => %{"shape" => "FullyQualifiedDomainName"}, "HealthCheckId" => %{"location" => "uri", "locationName" => "HealthCheckId", "shape" => "HealthCheckId"}, "HealthCheckVersion" => %{"shape" => "HealthCheckVersion"}, "HealthThreshold" => %{"shape" => "HealthThreshold"}, "IPAddress" => %{"shape" => "IPAddress"}, "InsufficientDataHealthStatus" => %{"shape" => "InsufficientDataHealthStatus"}, "Inverted" => %{"shape" => "Inverted"}, "Port" => %{"shape" => "Port"}, "Regions" => %{"shape" => "HealthCheckRegionList"}, "ResourcePath" => %{"shape" => "ResourcePath"}, "SearchString" => %{"shape" => "SearchString"}}, "required" => ["HealthCheckId"], "type" => "structure"}, "ListTrafficPolicyInstancesByPolicyResponse" => %{"members" => %{"HostedZoneIdMarker" => %{"shape" => "ResourceId"}, "IsTruncated" => %{"shape" => "PageTruncated"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "TrafficPolicyInstanceNameMarker" => %{"shape" => "DNSName"}, "TrafficPolicyInstanceTypeMarker" => %{"shape" => "RRType"}, "TrafficPolicyInstances" => %{"shape" => "TrafficPolicyInstances"}}, "required" => ["TrafficPolicyInstances", "IsTruncated", "MaxItems"], "type" => "structure"}, "TooManyTrafficPolicies" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DimensionField" => %{"max" => 255, "min" => 1, "type" => "string"}, "HealthCheckInUse" => %{"deprecated" => true, "error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateVPCAssociationAuthorizationRequest" => %{"members" => %{"HostedZoneId" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}, "VPC" => %{"shape" => "VPC"}}, "required" => ["HostedZoneId", "VPC"], "type" => "structure"}, "QueryLoggingConfigAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateHealthCheckRequest" => %{"members" => %{"CallerReference" => %{"shape" => "HealthCheckNonce"}, "HealthCheckConfig" => %{"shape" => "HealthCheckConfig"}}, "required" => ["CallerReference", "HealthCheckConfig"], "type" => "structure"}, "Nameserver" => %{"max" => 255, "min" => 0, "type" => "string"}, "ResourceURI" => %{"max" => 1024, "type" => "string"}, "VPCId" => %{"max" => 1024, "type" => "string"}, "HealthCheckConfig" => %{"members" => %{"AlarmIdentifier" => %{"shape" => "AlarmIdentifier"}, "ChildHealthChecks" => %{"shape" => "ChildHealthCheckList"}, "EnableSNI" => %{"shape" => "EnableSNI"}, "FailureThreshold" => %{"shape" => "FailureThreshold"}, "FullyQualifiedDomainName" => %{"shape" => "FullyQualifiedDomainName"}, "HealthThreshold" => %{"shape" => "HealthThreshold"}, "IPAddress" => %{"shape" => "IPAddress"}, "InsufficientDataHealthStatus" => %{"shape" => "InsufficientDataHealthStatus"}, "Inverted" => %{"shape" => "Inverted"}, "MeasureLatency" => %{"shape" => "MeasureLatency"}, "Port" => %{"shape" => "Port"}, "Regions" => %{"shape" => "HealthCheckRegionList"}, "RequestInterval" => %{"shape" => "RequestInterval"}, "ResourcePath" => %{"shape" => "ResourcePath"}, "SearchString" => %{"shape" => "SearchString"}, "Type" => %{"shape" => "HealthCheckType"}}, "required" => ["Type"], "type" => "structure"}, "GeoLocationCountryCode" => %{"max" => 2, "min" => 1, "type" => "string"}, "SubnetMask" => %{"max" => 3, "min" => 0, "type" => "string"}, "HealthCheckVersion" => %{"min" => 1, "type" => "long"}, "CloudWatchLogsLogGroupArn" => %{"type" => "string"}, "GetHealthCheckCountResponse" => %{"members" => %{"HealthCheckCount" => %{"shape" => "HealthCheckCount"}}, "required" => ["HealthCheckCount"], "type" => "structure"}, "CreateTrafficPolicyInstanceResponse" => %{"members" => %{"Location" => %{"location" => "header", "locationName" => "Location", "shape" => "ResourceURI"}, "TrafficPolicyInstance" => %{"shape" => "TrafficPolicyInstance"}}, "required" => ["TrafficPolicyInstance", "Location"], "type" => "structure"}, "PaginationToken" => %{"max" => 256, "type" => "string"}, "ListReusableDelegationSetsResponse" => %{"members" => %{"DelegationSets" => %{"shape" => "DelegationSets"}, "IsTruncated" => %{"shape" => "PageTruncated"}, "Marker" => %{"shape" => "PageMarker"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "NextMarker" => %{"shape" => "PageMarker"}}, "required" => ["DelegationSets", "Marker", "IsTruncated", "MaxItems"], "type" => "structure"}, "TTL" => %{"max" => 2147483647, "min" => 0, "type" => "long"}, "Period" => %{"min" => 60, "type" => "integer"}, "GetReusableDelegationSetRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}}, "required" => ["Id"], "type" => "structure"}, "ChangeInfo" => %{"members" => %{"Comment" => %{"shape" => "ResourceDescription"}, "Id" => %{"shape" => "ResourceId"}, "Status" => %{"shape" => "ChangeStatus"}, "SubmittedAt" => %{"shape" => "TimeStamp"}}, "required" => ["Id", "Status", "SubmittedAt"], "type" => "structure"}, "TrafficPolicyVersion" => %{"max" => 1000, "min" => 1, "type" => "integer"}, "GeoLocationSubdivisionName" => %{"max" => 64, "min" => 1, "type" => "string"}, "MeasureLatency" => %{"type" => "boolean"}, "ListReusableDelegationSetsRequest" => %{"members" => %{"Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarker"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}}, "type" => "structure"}, "ListResourceRecordSetsRequest" => %{"members" => %{"HostedZoneId" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}, "StartRecordIdentifier" => %{"location" => "querystring", "locationName" => "identifier", "shape" => "ResourceRecordSetIdentifier"}, "StartRecordName" => %{"location" => "querystring", "locationName" => "name", "shape" => "DNSName"}, "StartRecordType" => %{"location" => "querystring", "locationName" => "type", "shape" => "RRType"}}, "required" => ["HostedZoneId"], "type" => "structure"}, "GetHostedZoneCountResponse" => %{"members" => %{"HostedZoneCount" => %{"shape" => "HostedZoneCount"}}, "required" => ["HostedZoneCount"], "type" => "structure"}, "ListHostedZonesByNameRequest" => %{"members" => %{"DNSName" => %{"location" => "querystring", "locationName" => "dnsname", "shape" => "DNSName"}, "HostedZoneId" => %{"location" => "querystring", "locationName" => "hostedzoneid", "shape" => "ResourceId"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}}, "type" => "structure"}, "TrafficPolicyVersionMarker" => %{"max" => 4, "type" => "string"}, "ChangeResourceRecordSetsResponse" => %{"members" => %{"ChangeInfo" => %{"shape" => "ChangeInfo"}}, "required" => ["ChangeInfo"], "type" => "structure"}, "ListTrafficPolicyInstancesByPolicyRequest" => %{"members" => %{"HostedZoneIdMarker" => %{"location" => "querystring", "locationName" => "hostedzoneid", "shape" => "ResourceId"}, "MaxItems" => %{"location" => "querystring", "locationName" => "maxitems", "shape" => "PageMaxItems"}, "TrafficPolicyId" => %{"location" => "querystring", "locationName" => "id", "shape" => "TrafficPolicyId"}, "TrafficPolicyInstanceNameMarker" => %{"location" => "querystring", "locationName" => "trafficpolicyinstancename", "shape" => "DNSName"}, "TrafficPolicyInstanceTypeMarker" => %{"location" => "querystring", "locationName" => "trafficpolicyinstancetype", "shape" => "RRType"}, "TrafficPolicyVersion" => %{"location" => "querystring", "locationName" => "version", "shape" => "TrafficPolicyVersion"}}, "required" => ["TrafficPolicyId", "TrafficPolicyVersion"], "type" => "structure"}, "TagKey" => %{"max" => 128, "type" => "string"}, "ResourceRecordSetWeight" => %{"max" => 255, "min" => 0, "type" => "long"}, "TrafficPolicySummary" => %{"members" => %{"Id" => %{"shape" => "TrafficPolicyId"}, "LatestVersion" => %{"shape" => "TrafficPolicyVersion"}, "Name" => %{"shape" => "TrafficPolicyName"}, "TrafficPolicyCount" => %{"shape" => "TrafficPolicyVersion"}, "Type" => %{"shape" => "RRType"}}, "required" => ["Id", "Name", "Type", "LatestVersion", "TrafficPolicyCount"], "type" => "structure"}, "ChangeTagsForResourceResponse" => %{"members" => %{}, "type" => "structure"}, "HealthCheckNonce" => %{"max" => 64, "min" => 1, "type" => "string"}, "AlarmName" => %{"max" => 256, "min" => 1, "type" => "string"}, "ConcurrentModification" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "EvaluationPeriods" => %{"min" => 1, "type" => "integer"}, "HealthCheckObservation" => %{"members" => %{"IPAddress" => %{"shape" => "IPAddress"}, "Region" => %{"shape" => "HealthCheckRegion"}, "StatusReport" => %{"shape" => "StatusReport"}}, "type" => "structure"}, "TrafficPolicyName" => %{"max" => 512, "type" => "string"}, "CheckerIpRanges" => %{"member" => %{"shape" => "IPAddressCidr"}, "type" => "list"}, "ResourceRecordSetMultiValueAnswer" => %{"type" => "boolean"}, "HostedZoneNotFound" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "NoSuchHostedZone" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateTrafficPolicyVersionRequest" => %{"members" => %{"Comment" => %{"shape" => "TrafficPolicyComment"}, "Document" => %{"shape" => "TrafficPolicyDocument"}, "Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "TrafficPolicyId"}}, "required" => ["Id", "Document"], "type" => "structure"}, "HostedZone" => %{"members" => %{"CallerReference" => %{"shape" => "Nonce"}, "Config" => %{"shape" => "HostedZoneConfig"}, "Id" => %{"shape" => "ResourceId"}, "Name" => %{"shape" => "DNSName"}, "ResourceRecordSetCount" => %{"shape" => "HostedZoneRRSetCount"}}, "required" => ["Id", "Name", "CallerReference"], "type" => "structure"}, "Nonce" => %{"max" => 128, "min" => 1, "type" => "string"}, "DelegationSetAlreadyReusable" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Namespace" => %{"max" => 255, "min" => 1, "type" => "string"}, "ListTrafficPolicyInstancesByHostedZoneResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "PageTruncated"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "TrafficPolicyInstanceNameMarker" => %{"shape" => "DNSName"}, "TrafficPolicyInstanceTypeMarker" => %{"shape" => "RRType"}, "TrafficPolicyInstances" => %{"shape" => "TrafficPolicyInstances"}}, "required" => ["TrafficPolicyInstances", "IsTruncated", "MaxItems"], "type" => "structure"}, "TagResourceIdList" => %{"max" => 10, "member" => %{"locationName" => "ResourceId", "shape" => "TagResourceId"}, "min" => 1, "type" => "list"}, "AssociateVPCWithHostedZoneResponse" => %{"members" => %{"ChangeInfo" => %{"shape" => "ChangeInfo"}}, "required" => ["ChangeInfo"], "type" => "structure"}, "CreateQueryLoggingConfigRequest" => %{"members" => %{"CloudWatchLogsLogGroupArn" => %{"shape" => "CloudWatchLogsLogGroupArn"}, "HostedZoneId" => %{"shape" => "ResourceId"}}, "required" => ["HostedZoneId", "CloudWatchLogsLogGroupArn"], "type" => "structure"}, "DelegationSetAlreadyCreated" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PageMarker" => %{"max" => 64, "type" => "string"}, "HealthCheck" => %{"members" => %{"CallerReference" => %{"shape" => "HealthCheckNonce"}, "CloudWatchAlarmConfiguration" => %{"shape" => "CloudWatchAlarmConfiguration"}, "HealthCheckConfig" => %{"shape" => "HealthCheckConfig"}, "HealthCheckVersion" => %{"shape" => "HealthCheckVersion"}, "Id" => %{"shape" => "HealthCheckId"}}, "required" => ["Id", "CallerReference", "HealthCheckConfig", "HealthCheckVersion"], "type" => "structure"}, "NoSuchCloudWatchLogsLogGroup" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "VPC" => %{"members" => %{"VPCId" => %{"shape" => "VPCId"}, "VPCRegion" => %{"shape" => "VPCRegion"}}, "type" => "structure"}, "UpdateHostedZoneCommentRequest" => %{"members" => %{"Comment" => %{"shape" => "ResourceDescription"}, "Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "ResourceId"}}, "required" => ["Id"], "type" => "structure"}, "DeleteTrafficPolicyRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "TrafficPolicyId"}, "Version" => %{"location" => "uri", "locationName" => "Version", "shape" => "TrafficPolicyVersion"}}, "required" => ["Id", "Version"], "type" => "structure"}, "PageMaxItems" => %{"type" => "string"}, "ResourceRecordSets" => %{"member" => %{"locationName" => "ResourceRecordSet", "shape" => "ResourceRecordSet"}, "type" => "list"}, "DeleteQueryLoggingConfigResponse" => %{"members" => %{}, "type" => "structure"}, "HostedZoneAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ResourceRecord" => %{"members" => %{"Value" => %{"shape" => "RData"}}, "required" => ["Value"], "type" => "structure"}, "DeleteHealthCheckResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteQueryLoggingConfigRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "QueryLoggingConfigId"}}, "required" => ["Id"], "type" => "structure"}, "TooManyTrafficPolicyInstances" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListQueryLoggingConfigsResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}, "QueryLoggingConfigs" => %{"shape" => "QueryLoggingConfigs"}}, "required" => ["QueryLoggingConfigs"], "type" => "structure"}, "HealthCheckAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "NoSuchTrafficPolicyInstance" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateTrafficPolicyRequest" => %{"members" => %{"Comment" => %{"shape" => "TrafficPolicyComment"}, "Document" => %{"shape" => "TrafficPolicyDocument"}, "Name" => %{"shape" => "TrafficPolicyName"}}, "required" => ["Name", "Document"], "type" => "structure"}, "ListResourceRecordSetsResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "PageTruncated"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "NextRecordIdentifier" => %{"shape" => "ResourceRecordSetIdentifier"}, "NextRecordName" => %{"shape" => "DNSName"}, "NextRecordType" => %{"shape" => "RRType"}, "ResourceRecordSets" => %{"shape" => "ResourceRecordSets"}}, "required" => ["ResourceRecordSets", "IsTruncated", "MaxItems"], "type" => "structure"}, "ConflictingDomainExists" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DelegationSetInUse" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetTrafficPolicyResponse" => %{"members" => %{"TrafficPolicy" => %{"shape" => "TrafficPolicy"}}, "required" => ["TrafficPolicy"], "type" => "structure"}, "ConflictingTypes" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TrafficPolicySummaries" => %{"member" => %{"locationName" => "TrafficPolicySummary", "shape" => "TrafficPolicySummary"}, "type" => "list"}}
  end
end