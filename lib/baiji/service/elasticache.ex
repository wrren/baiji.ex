defmodule Baiji.Elasticache do
  @moduledoc """
  Amazon ElastiCache

  Amazon ElastiCache is a web service that makes it easier to set up,
  operate, and scale a distributed cache in the cloud.

  With ElastiCache, customers get all of the benefits of a high-performance,
  in-memory cache with less of the administrative burden involved in
  launching and managing a distributed cache. The service makes setup,
  scaling, and cluster failure handling much simpler than in a self-managed
  cache deployment.

  In addition, through integration with Amazon CloudWatch, customers get
  enhanced visibility into the key performance statistics associated with
  their cache and can receive alarms if a part of their cache runs hot.
  """
  
  @doc """
  Lists available reserved cache node offerings.
  """
  def describe_reserved_cache_nodes_offerings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReservedCacheNodesOfferings",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates a new cache security group. Use a cache security group to control
  access to one or more cache clusters.

  Cache security groups are only used when you are creating a cache cluster
  outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are
  creating a cache cluster inside of a VPC, use a cache subnet group instead.
  For more information, see
  [CreateCacheSubnetGroup](http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html).
  """
  def create_cache_security_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateCacheSecurityGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns a list of cache subnet group descriptions. If a subnet group name
  is specified, the list contains only the description of that group.
  """
  def describe_cache_subnet_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCacheSubnetGroups",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified cache parameter group. You cannot delete a cache
  parameter group if it is associated with any cache clusters.
  """
  def delete_cache_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteCacheParameterGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns a list of cache security group descriptions. If a cache security
  group name is specified, the list contains only the description of that
  group.
  """
  def describe_cache_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCacheSecurityGroups",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Modifies the settings for a replication group.

  <important> Due to current limitations on Redis (cluster mode disabled),
  this operation or parameter is not supported on Redis (cluster mode
  enabled) replication groups.

  </important> <note> This operation is valid for Redis only.

  </note>
  """
  def modify_replication_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyReplicationGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Lists all available node types that you can scale your Redis cluster's or
  replication group's current node type up to.

  When you use the `ModifyCacheCluster` or `ModifyReplicationGroup`
  operations to scale up your cluster or replication group, the value of the
  `CacheNodeType` parameter must be one of the node types returned by this
  operation.
  """
  def list_allowed_node_type_modifications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAllowedNodeTypeModifications",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates a new cache subnet group.

  Use this parameter only when you are creating a cluster in an Amazon
  Virtual Private Cloud (Amazon VPC).
  """
  def create_cache_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateCacheSubnetGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns events related to cache clusters, cache security groups, and cache
  parameter groups. You can obtain events specific to a particular cache
  cluster, cache security group, or cache parameter group by providing the
  name as a parameter.

  By default, only the events occurring within the last hour are returned;
  however, you can retrieve up to 14 days' worth of events if necessary.
  """
  def describe_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEvents",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Removes the tags identified by the `TagKeys` list from the named resource.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemoveTagsFromResource",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Lists all cost allocation tags currently on the named resource. A `cost
  allocation tag` is a key-value pair where the key is case-sensitive and the
  value is optional. You can use cost allocation tags to categorize and track
  your AWS costs.

  You can have a maximum of 50 cost allocation tags on an ElastiCache
  resource. For more information, see [Using Cost Allocation Tags in Amazon
  ElastiCache](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/BestPractices.html).
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListTagsForResource",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled)
  replication group.

  A Redis (cluster mode disabled) replication group is a collection of cache
  clusters, where one of the cache clusters is a read/write primary and the
  others are read-only replicas. Writes to the primary are asynchronously
  propagated to the replicas.

  A Redis (cluster mode enabled) replication group is a collection of 1 to 15
  node groups (shards). Each node group (shard) has one read/write primary
  node and up to 5 read-only replica nodes. Writes to the primary are
  asynchronously propagated to the replicas. Redis (cluster mode enabled)
  replication groups partition the data across node groups (shards).

  When a Redis (cluster mode disabled) replication group has been
  successfully created, you can add one or more read replicas to it, up to a
  total of 5 read replicas. You cannot alter a Redis (cluster mode enabled)
  replication group after it has been created. However, if you need to
  increase or decrease the number of node groups (console: shards), you can
  avail yourself of ElastiCache for Redis' enhanced backup and restore. For
  more information, see [Restoring From a Backup with Cluster
  Resizing](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/backups-restoring.html)
  in the *ElastiCache User Guide*.

  <note> This operation is valid for Redis only.

  </note>
  """
  def create_replication_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateReplicationGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates a new Amazon ElastiCache cache parameter group. An ElastiCache
  cache parameter group is a collection of parameters and their values that
  are applied to all of the nodes in any cache cluster or replication group
  using the CacheParameterGroup.

  A newly created CacheParameterGroup is an exact duplicate of the default
  parameter group for the CacheParameterGroupFamily. To customize the newly
  created CacheParameterGroup you can change the values of specific
  parameters. For more information, see:

  <ul> <li>
  [ModifyCacheParameterGroup](http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html)
  in the ElastiCache API Reference.

  </li> <li> [Parameters and Parameter
  Groups](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/ParameterGroups.html)
  in the ElastiCache User Guide.

  </li> </ul>
  """
  def create_cache_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateCacheParameterGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns information about all provisioned cache clusters if no cache
  cluster identifier is specified, or about a specific cache cluster if a
  cache cluster identifier is supplied.

  By default, abbreviated information about the cache clusters is returned.
  You can use the optional *ShowCacheNodeInfo* flag to retrieve detailed
  information about the cache nodes associated with the cache clusters. These
  details include the DNS address and port for the cache node endpoint.

  If the cluster is in the *creating* state, only cluster-level information
  is displayed until all of the nodes are successfully provisioned.

  If the cluster is in the *deleting* state, only cluster-level information
  is displayed.

  If cache nodes are currently being added to the cache cluster, node
  endpoint information and creation time for the additional nodes are not
  displayed until they are completely provisioned. When the cache cluster
  state is *available*, the cluster is ready for use.

  If cache nodes are currently being removed from the cache cluster, no
  endpoint information for the removed nodes is displayed.
  """
  def describe_cache_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCacheClusters",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Modifies the parameters of a cache parameter group. You can modify up to 20
  parameters in a single request by submitting a list parameter name and
  value pairs.
  """
  def modify_cache_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyCacheParameterGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates a copy of an entire cache cluster or replication group at a
  specific moment in time.

  <note> This operation is valid for Redis only.

  </note>
  """
  def create_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateSnapshot",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes a cache subnet group.

  <note> You cannot delete a cache subnet group if it is associated with any
  cache clusters.

  </note>
  """
  def delete_cache_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteCacheSubnetGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes a cache security group.

  <note> You cannot delete a cache security group if it is associated with
  any cache clusters.

  </note>
  """
  def delete_cache_security_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteCacheSecurityGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Modifies the settings for a cache cluster. You can use this operation to
  change one or more cluster configuration parameters by specifying the
  parameters and the new values.
  """
  def modify_cache_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyCacheCluster",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns a list of the available cache engines and their versions.
  """
  def describe_cache_engine_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCacheEngineVersions",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Revokes ingress from a cache security group. Use this operation to disallow
  access from an Amazon EC2 security group that had been previously
  authorized.
  """
  def revoke_cache_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RevokeCacheSecurityGroupIngress",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Makes a copy of an existing snapshot.

  <note> This operation is valid for Redis only.

  </note> <important> Users or groups that have permissions to use the
  `CopySnapshot` operation can create their own Amazon S3 buckets and copy
  snapshots to it. To control access to your snapshots, use an IAM policy to
  control who has the ability to use the `CopySnapshot` operation. For more
  information about using IAM to control the use of ElastiCache operations,
  see [Exporting
  Snapshots](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html)
  and [Authentication &amp; Access
  Control](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/IAM.html).

  </important> You could receive the following error messages.

  <p class="title"> **Error Messages**

  <ul> <li> **Error Message:** The S3 bucket %s is outside of the region.

  **Solution:** Create an Amazon S3 bucket in the same region as your
  snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket)
  in the ElastiCache User Guide.

  </li> <li> **Error Message:** The S3 bucket %s does not exist.

  **Solution:** Create an Amazon S3 bucket in the same region as your
  snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket)
  in the ElastiCache User Guide.

  </li> <li> **Error Message:** The S3 bucket %s is not owned by the
  authenticated user.

  **Solution:** Create an Amazon S3 bucket in the same region as your
  snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket)
  in the ElastiCache User Guide.

  </li> <li> **Error Message:** The authenticated user does not have
  sufficient permissions to perform the desired activity.

  **Solution:** Contact your system administrator to get the needed
  permissions.

  </li> <li> **Error Message:** The S3 bucket %s already contains an object
  with key %s.

  **Solution:** Give the `TargetSnapshotName` a new and unique value. If
  exporting a snapshot, you could alternatively create a new Amazon S3 bucket
  and use this same value for `TargetSnapshotName`.

  </li> <li> **Error Message: ** ElastiCache has not been granted READ
  permissions %s on the S3 Bucket.

  **Solution:** Add List and Read permissions on the bucket. For more
  information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
  Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess)
  in the ElastiCache User Guide.

  </li> <li> **Error Message: ** ElastiCache has not been granted WRITE
  permissions %s on the S3 Bucket.

  **Solution:** Add Upload/Delete permissions on the bucket. For more
  information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
  Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess)
  in the ElastiCache User Guide.

  </li> <li> **Error Message: ** ElastiCache has not been granted READ_ACP
  permissions %s on the S3 Bucket.

  **Solution:** Add View Permissions on the bucket. For more information, see
  [Step 2: Grant ElastiCache Access to Your Amazon S3
  Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess)
  in the ElastiCache User Guide.

  </li> </ul>
  """
  def copy_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CopySnapshot",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Reboots some, or all, of the cache nodes within a provisioned cache
  cluster. This operation applies any modified cache parameter groups to the
  cache cluster. The reboot operation takes place as soon as possible, and
  results in a momentary outage to the cache cluster. During the reboot, the
  cache cluster status is set to REBOOTING.

  The reboot causes the contents of the cache (for each cache node being
  rebooted) to be lost.

  When the reboot is complete, a cache cluster event is created.
  """
  def reboot_cache_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RebootCacheCluster",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes an existing replication group. By default, this operation deletes
  the entire replication group, including the primary/primaries and all of
  the read replicas. If the replication group has only one primary, you can
  optionally delete only the read replicas, while retaining the primary by
  setting `RetainPrimaryCluster=true`.

  When you receive a successful response from this operation, Amazon
  ElastiCache immediately begins deleting the selected resources; you cannot
  cancel or revert this operation.

  <note> This operation is valid for Redis only.

  </note>
  """
  def delete_replication_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteReplicationGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns information about reserved cache nodes for this account, or about a
  specified reserved cache node.
  """
  def describe_reserved_cache_nodes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReservedCacheNodes",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Allows you to purchase a reserved cache node offering.
  """
  def purchase_reserved_cache_nodes_offering(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PurchaseReservedCacheNodesOffering",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Adds up to 50 cost allocation tags to the named resource. A cost allocation
  tag is a key-value pair where the key and value are case-sensitive. You can
  use cost allocation tags to categorize and track your AWS costs.

  When you apply tags to your ElastiCache resources, AWS generates a cost
  allocation report as a comma-separated value (CSV) file with your usage and
  costs aggregated by your tags. You can apply tags that represent business
  categories (such as cost centers, application names, or owners) to organize
  your costs across multiple services. For more information, see [Using Cost
  Allocation Tags in Amazon
  ElastiCache](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Tagging.html)
  in the *ElastiCache User Guide*.
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddTagsToResource",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes a previously provisioned cache cluster. `DeleteCacheCluster`
  deletes all associated cache nodes, node endpoints and the cache cluster
  itself. When you receive a successful response from this operation, Amazon
  ElastiCache immediately begins deleting the cache cluster; you cannot
  cancel or revert this operation.

  This operation cannot be used to delete a cache cluster that is the last
  read replica of a replication group or node group (shard) that has Multi-AZ
  mode enabled or a cache cluster from a Redis (cluster mode enabled)
  replication group.

  <important> Due to current limitations on Redis (cluster mode disabled),
  this operation or parameter is not supported on Redis (cluster mode
  enabled) replication groups.

  </important>
  """
  def delete_cache_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteCacheCluster",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns the detailed parameter list for a particular cache parameter group.
  """
  def describe_cache_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCacheParameters",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Represents the input of a `TestFailover` operation which test automatic
  failover on a specified node group (called shard in the console) in a
  replication group (called cluster in the console).

  <p class="title"> **Note the following**

  <ul> <li> A customer can use this operation to test automatic failover on
  up to 5 shards (called node groups in the ElastiCache API and AWS CLI) in
  any rolling 24-hour period.

  </li> <li> If calling this operation on shards in different clusters
  (called replication groups in the API and CLI), the calls can be made
  concurrently.

  </li> <li> If calling this operation multiple times on different shards in
  the same Redis (cluster mode enabled) replication group, the first node
  replacement must complete before a subsequent call can be made.

  </li> <li> To determine whether the node replacement is complete you can
  check Events using the Amazon ElastiCache console, the AWS CLI, or the
  ElastiCache API. Look for the following automatic failover related events,
  listed here in order of occurrance:

  <ol> <li> Replication group message: `Test Failover API called for node
  group &lt;node-group-id&gt;`

  </li> <li> Cache cluster message: `Failover from master node
  &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed`

  </li> <li> Replication group message: `Failover from master node
  &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed`

  </li> <li> Cache cluster message: `Recovering cache nodes &lt;node-id&gt;`

  </li> <li> Cache cluster message: `Finished recovery for cache nodes
  &lt;node-id&gt;`

  </li> </ol> For more information see:

  <ul> <li> [Viewing ElastiCache
  Events](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/ECEvents.Viewing.html)
  in the *ElastiCache User Guide*

  </li> <li>
  [DescribeEvents](http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html)
  in the ElastiCache API Reference

  </li> </ul> </li> </ul> Also see, [Testing Multi-AZ with Automatic
  Failover](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/AutoFailover.html#auto-failover-test)
  in the *ElastiCache User Guide*.
  """
  def test_failover(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "TestFailover",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns the default engine and system parameter information for the
  specified cache engine.
  """
  def describe_engine_default_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEngineDefaultParameters",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns a list of cache parameter group descriptions. If a cache parameter
  group name is specified, the list contains only the descriptions for that
  group.
  """
  def describe_cache_parameter_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCacheParameterGroups",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Modifies the parameters of a cache parameter group to the engine or system
  default value. You can reset specific parameters by submitting a list of
  parameter names. To reset the entire cache parameter group, specify the
  `ResetAllParameters` and `CacheParameterGroupName` parameters.
  """
  def reset_cache_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResetCacheParameterGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes an existing snapshot. When you receive a successful response from
  this operation, ElastiCache immediately begins deleting the snapshot; you
  cannot cancel or revert this operation.

  <note> This operation is valid for Redis only.

  </note>
  """
  def delete_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSnapshot",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Allows network ingress to a cache security group. Applications using
  ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups
  are used as the authorization mechanism.

  <note> You cannot authorize ingress from an Amazon EC2 security group in
  one region to an ElastiCache cluster in another region.

  </note>
  """
  def authorize_cache_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AuthorizeCacheSecurityGroupIngress",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns information about cache cluster or replication group snapshots. By
  default, `DescribeSnapshots` lists all of your snapshots; it can optionally
  describe a single snapshot, or just the snapshots associated with a
  particular cache cluster.

  <note> This operation is valid for Redis only.

  </note>
  """
  def describe_snapshots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSnapshots",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns information about a particular replication group. If no identifier
  is specified, `DescribeReplicationGroups` returns information about all
  replication groups.

  <note> This operation is valid for Redis only.

  </note>
  """
  def describe_replication_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReplicationGroups",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Modifies an existing cache subnet group.
  """
  def modify_cache_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyCacheSubnetGroup",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates a cache cluster. All nodes in the cache cluster run the same
  protocol-compliant cache engine software, either Memcached or Redis.

  <important> Due to current limitations on Redis (cluster mode disabled),
  this operation or parameter is not supported on Redis (cluster mode
  enabled) replication groups.

  </important>
  """
  def create_cache_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticache",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateCacheCluster",
      
      type:           :xml,
      method:         :post
    }
  end
  
end