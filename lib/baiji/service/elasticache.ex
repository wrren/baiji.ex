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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedCacheNodesOfferings",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeReservedCacheNodesOfferingsMessage",
      output_shape:     "ReservedCacheNodesOfferingMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCacheSecurityGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "CreateCacheSecurityGroupMessage",
      output_shape:     "CreateCacheSecurityGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of cache subnet group descriptions. If a subnet group name
  is specified, the list contains only the description of that group.
  """
  def describe_cache_subnet_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCacheSubnetGroups",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeCacheSubnetGroupsMessage",
      output_shape:     "CacheSubnetGroupMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified cache parameter group. You cannot delete a cache
  parameter group if it is associated with any cache clusters.
  """
  def delete_cache_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCacheParameterGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DeleteCacheParameterGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of cache security group descriptions. If a cache security
  group name is specified, the list contains only the description of that
  group.
  """
  def describe_cache_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCacheSecurityGroups",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeCacheSecurityGroupsMessage",
      output_shape:     "CacheSecurityGroupMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyReplicationGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "ModifyReplicationGroupMessage",
      output_shape:     "ModifyReplicationGroupResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAllowedNodeTypeModifications",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "ListAllowedNodeTypeModificationsMessage",
      output_shape:     "AllowedNodeTypeModificationsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new cache subnet group.

  Use this parameter only when you are creating a cluster in an Amazon
  Virtual Private Cloud (Amazon VPC).
  """
  def create_cache_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCacheSubnetGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "CreateCacheSubnetGroupMessage",
      output_shape:     "CreateCacheSubnetGroupResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEvents",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeEventsMessage",
      output_shape:     "EventsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes the tags identified by the `TagKeys` list from the named resource.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "RemoveTagsFromResourceMessage",
      output_shape:     "TagListMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "ListTagsForResourceMessage",
      output_shape:     "TagListMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateReplicationGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "CreateReplicationGroupMessage",
      output_shape:     "CreateReplicationGroupResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCacheParameterGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "CreateCacheParameterGroupMessage",
      output_shape:     "CreateCacheParameterGroupResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCacheClusters",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeCacheClustersMessage",
      output_shape:     "CacheClusterMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the parameters of a cache parameter group. You can modify up to 20
  parameters in a single request by submitting a list parameter name and
  value pairs.
  """
  def modify_cache_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyCacheParameterGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "ModifyCacheParameterGroupMessage",
      output_shape:     "CacheParameterGroupNameMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSnapshot",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "CreateSnapshotMessage",
      output_shape:     "CreateSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCacheSubnetGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DeleteCacheSubnetGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCacheSecurityGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DeleteCacheSecurityGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the settings for a cache cluster. You can use this operation to
  change one or more cluster configuration parameters by specifying the
  parameters and the new values.
  """
  def modify_cache_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyCacheCluster",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "ModifyCacheClusterMessage",
      output_shape:     "ModifyCacheClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of the available cache engines and their versions.
  """
  def describe_cache_engine_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCacheEngineVersions",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeCacheEngineVersionsMessage",
      output_shape:     "CacheEngineVersionMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Revokes ingress from a cache security group. Use this operation to disallow
  access from an Amazon EC2 security group that had been previously
  authorized.
  """
  def revoke_cache_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RevokeCacheSecurityGroupIngress",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "RevokeCacheSecurityGroupIngressMessage",
      output_shape:     "RevokeCacheSecurityGroupIngressResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopySnapshot",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "CopySnapshotMessage",
      output_shape:     "CopySnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RebootCacheCluster",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "RebootCacheClusterMessage",
      output_shape:     "RebootCacheClusterResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteReplicationGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DeleteReplicationGroupMessage",
      output_shape:     "DeleteReplicationGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about reserved cache nodes for this account, or about a
  specified reserved cache node.
  """
  def describe_reserved_cache_nodes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedCacheNodes",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeReservedCacheNodesMessage",
      output_shape:     "ReservedCacheNodeMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Allows you to purchase a reserved cache node offering.
  """
  def purchase_reserved_cache_nodes_offering(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PurchaseReservedCacheNodesOffering",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "PurchaseReservedCacheNodesOfferingMessage",
      output_shape:     "PurchaseReservedCacheNodesOfferingResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "AddTagsToResourceMessage",
      output_shape:     "TagListMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCacheCluster",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DeleteCacheClusterMessage",
      output_shape:     "DeleteCacheClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the detailed parameter list for a particular cache parameter group.
  """
  def describe_cache_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCacheParameters",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeCacheParametersMessage",
      output_shape:     "CacheParameterGroupDetails",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TestFailover",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "TestFailoverMessage",
      output_shape:     "TestFailoverResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the default engine and system parameter information for the
  specified cache engine.
  """
  def describe_engine_default_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEngineDefaultParameters",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeEngineDefaultParametersMessage",
      output_shape:     "DescribeEngineDefaultParametersResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of cache parameter group descriptions. If a cache parameter
  group name is specified, the list contains only the descriptions for that
  group.
  """
  def describe_cache_parameter_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCacheParameterGroups",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeCacheParameterGroupsMessage",
      output_shape:     "CacheParameterGroupsMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetCacheParameterGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "ResetCacheParameterGroupMessage",
      output_shape:     "CacheParameterGroupNameMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSnapshot",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DeleteSnapshotMessage",
      output_shape:     "DeleteSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AuthorizeCacheSecurityGroupIngress",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "AuthorizeCacheSecurityGroupIngressMessage",
      output_shape:     "AuthorizeCacheSecurityGroupIngressResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSnapshots",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeSnapshotsMessage",
      output_shape:     "DescribeSnapshotsListMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReplicationGroups",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "DescribeReplicationGroupsMessage",
      output_shape:     "ReplicationGroupMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies an existing cache subnet group.
  """
  def modify_cache_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyCacheSubnetGroup",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "ModifyCacheSubnetGroupMessage",
      output_shape:     "ModifyCacheSubnetGroupResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticache",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCacheCluster",
      
      endpoint_prefix:  "elasticache",
      type:             :xml,
      version:          "2015-02-02",
      method:           :post,
      input_shape:      "CreateCacheClusterMessage",
      output_shape:     "CreateCacheClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"ModifyCacheClusterResult" => %{"members" => %{"CacheCluster" => %{"shape" => "CacheCluster"}}, "type" => "structure"}, "KeyList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "PurchaseReservedCacheNodesOfferingMessage" => %{"members" => %{"CacheNodeCount" => %{"shape" => "IntegerOptional"}, "ReservedCacheNodeId" => %{"shape" => "String"}, "ReservedCacheNodesOfferingId" => %{"shape" => "String"}}, "required" => ["ReservedCacheNodesOfferingId"], "type" => "structure"}, "CacheNodeTypeSpecificValueList" => %{"member" => %{"locationName" => "CacheNodeTypeSpecificValue", "shape" => "CacheNodeTypeSpecificValue"}, "type" => "list"}, "SourceType" => %{"enum" => ["cache-cluster", "cache-parameter-group", "cache-security-group", "cache-subnet-group", "replication-group"], "type" => "string"}, "SubnetList" => %{"member" => %{"locationName" => "Subnet", "shape" => "Subnet"}, "type" => "list"}, "InvalidReplicationGroupStateFault" => %{"error" => %{"code" => "InvalidReplicationGroupState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PreferredAvailabilityZoneList" => %{"member" => %{"locationName" => "PreferredAvailabilityZone", "shape" => "String"}, "type" => "list"}, "CacheParameterGroupDetails" => %{"members" => %{"CacheNodeTypeSpecificParameters" => %{"shape" => "CacheNodeTypeSpecificParametersList"}, "Marker" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "type" => "structure"}, "CacheParameterGroupNameMessage" => %{"members" => %{"CacheParameterGroupName" => %{"shape" => "String"}}, "type" => "structure"}, "ReservedCacheNodesOfferingMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReservedCacheNodesOfferings" => %{"shape" => "ReservedCacheNodesOfferingList"}}, "type" => "structure"}, "Subnet" => %{"members" => %{"SubnetAvailabilityZone" => %{"shape" => "AvailabilityZone"}, "SubnetIdentifier" => %{"shape" => "String"}}, "type" => "structure"}, "TagListMessage" => %{"members" => %{"TagList" => %{"shape" => "TagList"}}, "type" => "structure"}, "Parameter" => %{"members" => %{"AllowedValues" => %{"shape" => "String"}, "ChangeType" => %{"shape" => "ChangeType"}, "DataType" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "IsModifiable" => %{"shape" => "Boolean"}, "MinimumEngineVersion" => %{"shape" => "String"}, "ParameterName" => %{"shape" => "String"}, "ParameterValue" => %{"shape" => "String"}, "Source" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidSnapshotStateFault" => %{"error" => %{"code" => "InvalidSnapshotState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeSnapshotsMessage" => %{"members" => %{"CacheClusterId" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ReplicationGroupId" => %{"shape" => "String"}, "ShowNodeGroupConfig" => %{"shape" => "BooleanOptional"}, "SnapshotName" => %{"shape" => "String"}, "SnapshotSource" => %{"shape" => "String"}}, "type" => "structure"}, "CacheSecurityGroupMessage" => %{"members" => %{"CacheSecurityGroups" => %{"shape" => "CacheSecurityGroups"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "EC2SecurityGroup" => %{"members" => %{"EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "ReservedCacheNodesOfferingNotFoundFault" => %{"error" => %{"code" => "ReservedCacheNodesOfferingNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "NodeSnapshotList" => %{"member" => %{"locationName" => "NodeSnapshot", "shape" => "NodeSnapshot"}, "type" => "list"}, "ClusterQuotaForCustomerExceededFault" => %{"error" => %{"code" => "ClusterQuotaForCustomerExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CacheNodeTypeSpecificParametersList" => %{"member" => %{"locationName" => "CacheNodeTypeSpecificParameter", "shape" => "CacheNodeTypeSpecificParameter"}, "type" => "list"}, "CacheParameterGroupQuotaExceededFault" => %{"error" => %{"code" => "CacheParameterGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AuthorizationNotFoundFault" => %{"error" => %{"code" => "AuthorizationNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CacheCluster" => %{"members" => %{"AutoMinorVersionUpgrade" => %{"shape" => "Boolean"}, "CacheClusterCreateTime" => %{"shape" => "TStamp"}, "CacheClusterId" => %{"shape" => "String"}, "CacheClusterStatus" => %{"shape" => "String"}, "CacheNodeType" => %{"shape" => "String"}, "CacheNodes" => %{"shape" => "CacheNodeList"}, "CacheParameterGroup" => %{"shape" => "CacheParameterGroupStatus"}, "CacheSecurityGroups" => %{"shape" => "CacheSecurityGroupMembershipList"}, "CacheSubnetGroupName" => %{"shape" => "String"}, "ClientDownloadLandingPage" => %{"shape" => "String"}, "ConfigurationEndpoint" => %{"shape" => "Endpoint"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "NotificationConfiguration" => %{"shape" => "NotificationConfiguration"}, "NumCacheNodes" => %{"shape" => "IntegerOptional"}, "PendingModifiedValues" => %{"shape" => "PendingModifiedValues"}, "PreferredAvailabilityZone" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}, "SecurityGroups" => %{"shape" => "SecurityGroupMembershipList"}, "SnapshotRetentionLimit" => %{"shape" => "IntegerOptional"}, "SnapshotWindow" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "TestFailoverNotAvailableFault" => %{"error" => %{"code" => "TestFailoverNotAvailableFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateCacheSecurityGroupMessage" => %{"members" => %{"CacheSecurityGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}}, "required" => ["CacheSecurityGroupName", "Description"], "type" => "structure"}, "ClusterIdList" => %{"member" => %{"locationName" => "ClusterId", "shape" => "String"}, "type" => "list"}, "CreateCacheSubnetGroupResult" => %{"members" => %{"CacheSubnetGroup" => %{"shape" => "CacheSubnetGroup"}}, "type" => "structure"}, "EventList" => %{"member" => %{"locationName" => "Event", "shape" => "Event"}, "type" => "list"}, "SecurityGroupMembership" => %{"members" => %{"SecurityGroupId" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "NodeGroup" => %{"members" => %{"NodeGroupId" => %{"shape" => "String"}, "NodeGroupMembers" => %{"shape" => "NodeGroupMemberList"}, "PrimaryEndpoint" => %{"shape" => "Endpoint"}, "Slots" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "SnapshotNotFoundFault" => %{"error" => %{"code" => "SnapshotNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CacheNodeList" => %{"member" => %{"locationName" => "CacheNode", "shape" => "CacheNode"}, "type" => "list"}, "SnapshotQuotaExceededFault" => %{"error" => %{"code" => "SnapshotQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TestFailoverMessage" => %{"members" => %{"NodeGroupId" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}}, "required" => ["ReplicationGroupId", "NodeGroupId"], "type" => "structure"}, "CreateSnapshotResult" => %{"members" => %{"Snapshot" => %{"shape" => "Snapshot"}}, "type" => "structure"}, "ReservedCacheNodeNotFoundFault" => %{"error" => %{"code" => "ReservedCacheNodeNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidParameterValueException" => %{"error" => %{"code" => "InvalidParameterValue", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "AwsQueryErrorMessage"}}, "type" => "structure"}, "DescribeReservedCacheNodesMessage" => %{"members" => %{"CacheNodeType" => %{"shape" => "String"}, "Duration" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "OfferingType" => %{"shape" => "String"}, "ProductDescription" => %{"shape" => "String"}, "ReservedCacheNodeId" => %{"shape" => "String"}, "ReservedCacheNodesOfferingId" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteCacheClusterResult" => %{"members" => %{"CacheCluster" => %{"shape" => "CacheCluster"}}, "type" => "structure"}, "ModifyCacheClusterMessage" => %{"members" => %{"AZMode" => %{"shape" => "AZMode"}, "ApplyImmediately" => %{"shape" => "Boolean"}, "AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "CacheClusterId" => %{"shape" => "String"}, "CacheNodeIdsToRemove" => %{"shape" => "CacheNodeIdsList"}, "CacheNodeType" => %{"shape" => "String"}, "CacheParameterGroupName" => %{"shape" => "String"}, "CacheSecurityGroupNames" => %{"shape" => "CacheSecurityGroupNameList"}, "EngineVersion" => %{"shape" => "String"}, "NewAvailabilityZones" => %{"shape" => "PreferredAvailabilityZoneList"}, "NotificationTopicArn" => %{"shape" => "String"}, "NotificationTopicStatus" => %{"shape" => "String"}, "NumCacheNodes" => %{"shape" => "IntegerOptional"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "SecurityGroupIds" => %{"shape" => "SecurityGroupIdsList"}, "SnapshotRetentionLimit" => %{"shape" => "IntegerOptional"}, "SnapshotWindow" => %{"shape" => "String"}}, "required" => ["CacheClusterId"], "type" => "structure"}, "CacheParameterGroupList" => %{"member" => %{"locationName" => "CacheParameterGroup", "shape" => "CacheParameterGroup"}, "type" => "list"}, "ReservedCacheNode" => %{"members" => %{"CacheNodeCount" => %{"shape" => "Integer"}, "CacheNodeType" => %{"shape" => "String"}, "Duration" => %{"shape" => "Integer"}, "FixedPrice" => %{"shape" => "Double"}, "OfferingType" => %{"shape" => "String"}, "ProductDescription" => %{"shape" => "String"}, "RecurringCharges" => %{"shape" => "RecurringChargeList"}, "ReservedCacheNodeId" => %{"shape" => "String"}, "ReservedCacheNodesOfferingId" => %{"shape" => "String"}, "StartTime" => %{"shape" => "TStamp"}, "State" => %{"shape" => "String"}, "UsagePrice" => %{"shape" => "Double"}}, "type" => "structure", "wrapper" => true}, "InvalidCacheParameterGroupStateFault" => %{"error" => %{"code" => "InvalidCacheParameterGroupState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RemoveTagsFromResourceMessage" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "TagKeys" => %{"shape" => "KeyList"}}, "required" => ["ResourceName", "TagKeys"], "type" => "structure"}, "CacheParameterGroup" => %{"members" => %{"CacheParameterGroupFamily" => %{"shape" => "String"}, "CacheParameterGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "DescribeCacheSubnetGroupsMessage" => %{"members" => %{"CacheSubnetGroupName" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "RebootCacheClusterResult" => %{"members" => %{"CacheCluster" => %{"shape" => "CacheCluster"}}, "type" => "structure"}, "CacheSecurityGroup" => %{"members" => %{"CacheSecurityGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "EC2SecurityGroups" => %{"shape" => "EC2SecurityGroupList"}, "OwnerId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "AuthorizationAlreadyExistsFault" => %{"error" => %{"code" => "AuthorizationAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateCacheClusterResult" => %{"members" => %{"CacheCluster" => %{"shape" => "CacheCluster"}}, "type" => "structure"}, "DescribeCacheEngineVersionsMessage" => %{"members" => %{"CacheParameterGroupFamily" => %{"shape" => "String"}, "DefaultOnly" => %{"shape" => "Boolean"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "AddTagsToResourceMessage" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceName", "Tags"], "type" => "structure"}, "ReservedCacheNodeList" => %{"member" => %{"locationName" => "ReservedCacheNode", "shape" => "ReservedCacheNode"}, "type" => "list"}, "NodeGroupNotFoundFault" => %{"error" => %{"code" => "NodeGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteSnapshotResult" => %{"members" => %{"Snapshot" => %{"shape" => "Snapshot"}}, "type" => "structure"}, "EngineDefaults" => %{"members" => %{"CacheNodeTypeSpecificParameters" => %{"shape" => "CacheNodeTypeSpecificParametersList"}, "CacheParameterGroupFamily" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "type" => "structure", "wrapper" => true}, "DeleteCacheSubnetGroupMessage" => %{"members" => %{"CacheSubnetGroupName" => %{"shape" => "String"}}, "required" => ["CacheSubnetGroupName"], "type" => "structure"}, "CacheSecurityGroups" => %{"member" => %{"locationName" => "CacheSecurityGroup", "shape" => "CacheSecurityGroup"}, "type" => "list"}, "DescribeReservedCacheNodesOfferingsMessage" => %{"members" => %{"CacheNodeType" => %{"shape" => "String"}, "Duration" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "OfferingType" => %{"shape" => "String"}, "ProductDescription" => %{"shape" => "String"}, "ReservedCacheNodesOfferingId" => %{"shape" => "String"}}, "type" => "structure"}, "CreateCacheParameterGroupResult" => %{"members" => %{"CacheParameterGroup" => %{"shape" => "CacheParameterGroup"}}, "type" => "structure"}, "AuthorizeCacheSecurityGroupIngressMessage" => %{"members" => %{"CacheSecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}}, "required" => ["CacheSecurityGroupName", "EC2SecurityGroupName", "EC2SecurityGroupOwnerId"], "type" => "structure"}, "NodeQuotaForClusterExceededFault" => %{"error" => %{"code" => "NodeQuotaForClusterExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyCacheSubnetGroupMessage" => %{"members" => %{"CacheSubnetGroupDescription" => %{"shape" => "String"}, "CacheSubnetGroupName" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}}, "required" => ["CacheSubnetGroupName"], "type" => "structure"}, "DescribeEngineDefaultParametersResult" => %{"members" => %{"EngineDefaults" => %{"shape" => "EngineDefaults"}}, "type" => "structure"}, "CacheSecurityGroupNameList" => %{"member" => %{"locationName" => "CacheSecurityGroupName", "shape" => "String"}, "type" => "list"}, "CacheSubnetGroupQuotaExceededFault" => %{"error" => %{"code" => "CacheSubnetGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PendingModifiedValues" => %{"members" => %{"CacheNodeIdsToRemove" => %{"shape" => "CacheNodeIdsList"}, "CacheNodeType" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "NumCacheNodes" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "PendingAutomaticFailoverStatus" => %{"enum" => ["enabled", "disabled"], "type" => "string"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "SnapshotArnsList" => %{"member" => %{"locationName" => "SnapshotArn", "shape" => "String"}, "type" => "list"}, "SnapshotAlreadyExistsFault" => %{"error" => %{"code" => "SnapshotAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AuthorizeCacheSecurityGroupIngressResult" => %{"members" => %{"CacheSecurityGroup" => %{"shape" => "CacheSecurityGroup"}}, "type" => "structure"}, "NodeGroupsPerReplicationGroupQuotaExceededFault" => %{"error" => %{"code" => "NodeGroupsPerReplicationGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RecurringCharge" => %{"members" => %{"RecurringChargeAmount" => %{"shape" => "Double"}, "RecurringChargeFrequency" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "Endpoint" => %{"members" => %{"Address" => %{"shape" => "String"}, "Port" => %{"shape" => "Integer"}}, "type" => "structure"}, "SubnetIdentifierList" => %{"member" => %{"locationName" => "SubnetIdentifier", "shape" => "String"}, "type" => "list"}, "CacheClusterMessage" => %{"members" => %{"CacheClusters" => %{"shape" => "CacheClusterList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "CacheSecurityGroupNotFoundFault" => %{"error" => %{"code" => "CacheSecurityGroupNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SecurityGroupMembershipList" => %{"member" => %{"shape" => "SecurityGroupMembership"}, "type" => "list"}, "CacheParameterGroupAlreadyExistsFault" => %{"error" => %{"code" => "CacheParameterGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeCacheClustersMessage" => %{"members" => %{"CacheClusterId" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ShowCacheClustersNotInReplicationGroups" => %{"shape" => "BooleanOptional"}, "ShowCacheNodeInfo" => %{"shape" => "BooleanOptional"}}, "type" => "structure"}, "ParameterNameValue" => %{"members" => %{"ParameterName" => %{"shape" => "String"}, "ParameterValue" => %{"shape" => "String"}}, "type" => "structure"}, "AllowedNodeTypeModificationsMessage" => %{"members" => %{"ScaleUpModifications" => %{"shape" => "NodeTypeList"}}, "type" => "structure"}, "TagList" => %{"member" => %{"locationName" => "Tag", "shape" => "Tag"}, "type" => "list"}, "TStamp" => %{"type" => "timestamp"}, "InvalidCacheClusterStateFault" => %{"error" => %{"code" => "InvalidCacheClusterState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CacheSecurityGroupMembership" => %{"members" => %{"CacheSecurityGroupName" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "CacheClusterList" => %{"member" => %{"locationName" => "CacheCluster", "shape" => "CacheCluster"}, "type" => "list"}, "ParameterNameValueList" => %{"member" => %{"locationName" => "ParameterNameValue", "shape" => "ParameterNameValue"}, "type" => "list"}, "SubnetInUse" => %{"error" => %{"code" => "SubnetInUse", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RevokeCacheSecurityGroupIngressResult" => %{"members" => %{"CacheSecurityGroup" => %{"shape" => "CacheSecurityGroup"}}, "type" => "structure"}, "CacheEngineVersionMessage" => %{"members" => %{"CacheEngineVersions" => %{"shape" => "CacheEngineVersionList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "CreateCacheSecurityGroupResult" => %{"members" => %{"CacheSecurityGroup" => %{"shape" => "CacheSecurityGroup"}}, "type" => "structure"}, "ReplicationGroupList" => %{"member" => %{"locationName" => "ReplicationGroup", "shape" => "ReplicationGroup"}, "type" => "list"}, "ModifyReplicationGroupMessage" => %{"members" => %{"ApplyImmediately" => %{"shape" => "Boolean"}, "AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AutomaticFailoverEnabled" => %{"shape" => "BooleanOptional"}, "CacheNodeType" => %{"shape" => "String"}, "CacheParameterGroupName" => %{"shape" => "String"}, "CacheSecurityGroupNames" => %{"shape" => "CacheSecurityGroupNameList"}, "EngineVersion" => %{"shape" => "String"}, "NodeGroupId" => %{"shape" => "String"}, "NotificationTopicArn" => %{"shape" => "String"}, "NotificationTopicStatus" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "PrimaryClusterId" => %{"shape" => "String"}, "ReplicationGroupDescription" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}, "SecurityGroupIds" => %{"shape" => "SecurityGroupIdsList"}, "SnapshotRetentionLimit" => %{"shape" => "IntegerOptional"}, "SnapshotWindow" => %{"shape" => "String"}, "SnapshottingClusterId" => %{"shape" => "String"}}, "required" => ["ReplicationGroupId"], "type" => "structure"}, "DescribeCacheSecurityGroupsMessage" => %{"members" => %{"CacheSecurityGroupName" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "InvalidSubnet" => %{"error" => %{"code" => "InvalidSubnet", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "NodeGroupConfigurationList" => %{"member" => %{"locationName" => "NodeGroupConfiguration", "shape" => "NodeGroupConfiguration"}, "type" => "list"}, "Double" => %{"type" => "double"}, "CreateSnapshotMessage" => %{"members" => %{"CacheClusterId" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}, "SnapshotName" => %{"shape" => "String"}}, "required" => ["SnapshotName"], "type" => "structure"}, "AvailabilityZone" => %{"members" => %{"Name" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "CacheSubnetQuotaExceededFault" => %{"error" => %{"code" => "CacheSubnetQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CacheSecurityGroupMembershipList" => %{"member" => %{"locationName" => "CacheSecurityGroup", "shape" => "CacheSecurityGroupMembership"}, "type" => "list"}, "CacheParameterGroupNotFoundFault" => %{"error" => %{"code" => "CacheParameterGroupNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CacheNodeTypeSpecificValue" => %{"members" => %{"CacheNodeType" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "TagQuotaPerResourceExceeded" => %{"error" => %{"code" => "TagQuotaPerResourceExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "BooleanOptional" => %{"type" => "boolean"}, "ListTagsForResourceMessage" => %{"members" => %{"ResourceName" => %{"shape" => "String"}}, "required" => ["ResourceName"], "type" => "structure"}, "DeleteReplicationGroupMessage" => %{"members" => %{"FinalSnapshotIdentifier" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}, "RetainPrimaryCluster" => %{"shape" => "BooleanOptional"}}, "required" => ["ReplicationGroupId"], "type" => "structure"}, "CacheParameterGroupsMessage" => %{"members" => %{"CacheParameterGroups" => %{"shape" => "CacheParameterGroupList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "CacheSecurityGroupAlreadyExistsFault" => %{"error" => %{"code" => "CacheSecurityGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyReplicationGroupResult" => %{"members" => %{"ReplicationGroup" => %{"shape" => "ReplicationGroup"}}, "type" => "structure"}, "TestFailoverResult" => %{"members" => %{"ReplicationGroup" => %{"shape" => "ReplicationGroup"}}, "type" => "structure"}, "InvalidVPCNetworkStateFault" => %{"error" => %{"code" => "InvalidVPCNetworkStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CacheSubnetGroupInUse" => %{"error" => %{"code" => "CacheSubnetGroupInUse", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ReservedCacheNodeMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReservedCacheNodes" => %{"shape" => "ReservedCacheNodeList"}}, "type" => "structure"}, "DeleteCacheSecurityGroupMessage" => %{"members" => %{"CacheSecurityGroupName" => %{"shape" => "String"}}, "required" => ["CacheSecurityGroupName"], "type" => "structure"}, "CacheNodeIdsList" => %{"member" => %{"locationName" => "CacheNodeId", "shape" => "String"}, "type" => "list"}, "DeleteSnapshotMessage" => %{"members" => %{"SnapshotName" => %{"shape" => "String"}}, "required" => ["SnapshotName"], "type" => "structure"}, "NodeGroupList" => %{"member" => %{"locationName" => "NodeGroup", "shape" => "NodeGroup"}, "type" => "list"}, "RevokeCacheSecurityGroupIngressMessage" => %{"members" => %{"CacheSecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}}, "required" => ["CacheSecurityGroupName", "EC2SecurityGroupName", "EC2SecurityGroupOwnerId"], "type" => "structure"}, "CacheClusterAlreadyExistsFault" => %{"error" => %{"code" => "CacheClusterAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateCacheClusterMessage" => %{"members" => %{"AZMode" => %{"shape" => "AZMode"}, "AuthToken" => %{"shape" => "String"}, "AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "CacheClusterId" => %{"shape" => "String"}, "CacheNodeType" => %{"shape" => "String"}, "CacheParameterGroupName" => %{"shape" => "String"}, "CacheSecurityGroupNames" => %{"shape" => "CacheSecurityGroupNameList"}, "CacheSubnetGroupName" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "NotificationTopicArn" => %{"shape" => "String"}, "NumCacheNodes" => %{"shape" => "IntegerOptional"}, "Port" => %{"shape" => "IntegerOptional"}, "PreferredAvailabilityZone" => %{"shape" => "String"}, "PreferredAvailabilityZones" => %{"shape" => "PreferredAvailabilityZoneList"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}, "SecurityGroupIds" => %{"shape" => "SecurityGroupIdsList"}, "SnapshotArns" => %{"shape" => "SnapshotArnsList"}, "SnapshotName" => %{"shape" => "String"}, "SnapshotRetentionLimit" => %{"shape" => "IntegerOptional"}, "SnapshotWindow" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["CacheClusterId"], "type" => "structure"}, "DeleteCacheClusterMessage" => %{"members" => %{"CacheClusterId" => %{"shape" => "String"}, "FinalSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["CacheClusterId"], "type" => "structure"}, "DescribeCacheParameterGroupsMessage" => %{"members" => %{"CacheParameterGroupName" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "InsufficientCacheClusterCapacityFault" => %{"error" => %{"code" => "InsufficientCacheClusterCapacity", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ReservedCacheNodeAlreadyExistsFault" => %{"error" => %{"code" => "ReservedCacheNodeAlreadyExists", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeEventsMessage" => %{"members" => %{"Duration" => %{"shape" => "IntegerOptional"}, "EndTime" => %{"shape" => "TStamp"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SourceIdentifier" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}, "StartTime" => %{"shape" => "TStamp"}}, "type" => "structure"}, "AZMode" => %{"enum" => ["single-az", "cross-az"], "type" => "string"}, "CacheParameterGroupStatus" => %{"members" => %{"CacheNodeIdsToReboot" => %{"shape" => "CacheNodeIdsList"}, "CacheParameterGroupName" => %{"shape" => "String"}, "ParameterApplyStatus" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeCacheParametersMessage" => %{"members" => %{"CacheParameterGroupName" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "Source" => %{"shape" => "String"}}, "required" => ["CacheParameterGroupName"], "type" => "structure"}, "SnapshotFeatureNotSupportedFault" => %{"error" => %{"code" => "SnapshotFeatureNotSupportedFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "APICallRateForCustomerExceededFault" => %{"error" => %{"code" => "APICallRateForCustomerExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteCacheParameterGroupMessage" => %{"members" => %{"CacheParameterGroupName" => %{"shape" => "String"}}, "required" => ["CacheParameterGroupName"], "type" => "structure"}, "AwsQueryErrorMessage" => %{"type" => "string"}, "ResetCacheParameterGroupMessage" => %{"members" => %{"CacheParameterGroupName" => %{"shape" => "String"}, "ParameterNameValues" => %{"shape" => "ParameterNameValueList"}, "ResetAllParameters" => %{"shape" => "Boolean"}}, "required" => ["CacheParameterGroupName"], "type" => "structure"}, "CacheEngineVersion" => %{"members" => %{"CacheEngineDescription" => %{"shape" => "String"}, "CacheEngineVersionDescription" => %{"shape" => "String"}, "CacheParameterGroupFamily" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}}, "type" => "structure"}, "CreateReplicationGroupMessage" => %{"members" => %{"AuthToken" => %{"shape" => "String"}, "AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AutomaticFailoverEnabled" => %{"shape" => "BooleanOptional"}, "CacheNodeType" => %{"shape" => "String"}, "CacheParameterGroupName" => %{"shape" => "String"}, "CacheSecurityGroupNames" => %{"shape" => "CacheSecurityGroupNameList"}, "CacheSubnetGroupName" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "NodeGroupConfiguration" => %{"shape" => "NodeGroupConfigurationList"}, "NotificationTopicArn" => %{"shape" => "String"}, "NumCacheClusters" => %{"shape" => "IntegerOptional"}, "NumNodeGroups" => %{"shape" => "IntegerOptional"}, "Port" => %{"shape" => "IntegerOptional"}, "PreferredCacheClusterAZs" => %{"shape" => "AvailabilityZonesList"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "PrimaryClusterId" => %{"shape" => "String"}, "ReplicasPerNodeGroup" => %{"shape" => "IntegerOptional"}, "ReplicationGroupDescription" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}, "SecurityGroupIds" => %{"shape" => "SecurityGroupIdsList"}, "SnapshotArns" => %{"shape" => "SnapshotArnsList"}, "SnapshotName" => %{"shape" => "String"}, "SnapshotRetentionLimit" => %{"shape" => "IntegerOptional"}, "SnapshotWindow" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ReplicationGroupId", "ReplicationGroupDescription"], "type" => "structure"}, "CacheNodeTypeSpecificParameter" => %{"members" => %{"AllowedValues" => %{"shape" => "String"}, "CacheNodeTypeSpecificValues" => %{"shape" => "CacheNodeTypeSpecificValueList"}, "ChangeType" => %{"shape" => "ChangeType"}, "DataType" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "IsModifiable" => %{"shape" => "Boolean"}, "MinimumEngineVersion" => %{"shape" => "String"}, "ParameterName" => %{"shape" => "String"}, "Source" => %{"shape" => "String"}}, "type" => "structure"}, "ReplicationGroupAlreadyExistsFault" => %{"error" => %{"code" => "ReplicationGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AvailabilityZonesList" => %{"member" => %{"locationName" => "AvailabilityZone", "shape" => "String"}, "type" => "list"}, "CreateCacheSubnetGroupMessage" => %{"members" => %{"CacheSubnetGroupDescription" => %{"shape" => "String"}, "CacheSubnetGroupName" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}}, "required" => ["CacheSubnetGroupName", "CacheSubnetGroupDescription", "SubnetIds"], "type" => "structure"}, "CacheClusterNotFoundFault" => %{"error" => %{"code" => "CacheClusterNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CopySnapshotResult" => %{"members" => %{"Snapshot" => %{"shape" => "Snapshot"}}, "type" => "structure"}, "InvalidParameterCombinationException" => %{"error" => %{"code" => "InvalidParameterCombination", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "AwsQueryErrorMessage"}}, "type" => "structure"}, "CreateReplicationGroupResult" => %{"members" => %{"ReplicationGroup" => %{"shape" => "ReplicationGroup"}}, "type" => "structure"}, "CacheSubnetGroupNotFoundFault" => %{"error" => %{"code" => "CacheSubnetGroupNotFoundFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidCacheSecurityGroupStateFault" => %{"error" => %{"code" => "InvalidCacheSecurityGroupState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AutomaticFailoverStatus" => %{"enum" => ["enabled", "disabled", "enabling", "disabling"], "type" => "string"}, "NodeQuotaForCustomerExceededFault" => %{"error" => %{"code" => "NodeQuotaForCustomerExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SecurityGroupIdsList" => %{"member" => %{"locationName" => "SecurityGroupId", "shape" => "String"}, "type" => "list"}, "RebootCacheClusterMessage" => %{"members" => %{"CacheClusterId" => %{"shape" => "String"}, "CacheNodeIdsToReboot" => %{"shape" => "CacheNodeIdsList"}}, "required" => ["CacheClusterId", "CacheNodeIdsToReboot"], "type" => "structure"}, "ModifyCacheParameterGroupMessage" => %{"members" => %{"CacheParameterGroupName" => %{"shape" => "String"}, "ParameterNameValues" => %{"shape" => "ParameterNameValueList"}}, "required" => ["CacheParameterGroupName", "ParameterNameValues"], "type" => "structure"}, "ReservedCacheNodeQuotaExceededFault" => %{"error" => %{"code" => "ReservedCacheNodeQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ParametersList" => %{"member" => %{"locationName" => "Parameter", "shape" => "Parameter"}, "type" => "list"}, "SnapshotList" => %{"member" => %{"locationName" => "Snapshot", "shape" => "Snapshot"}, "type" => "list"}, "EventsMessage" => %{"members" => %{"Events" => %{"shape" => "EventList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "NodeSnapshot" => %{"members" => %{"CacheClusterId" => %{"shape" => "String"}, "CacheNodeCreateTime" => %{"shape" => "TStamp"}, "CacheNodeId" => %{"shape" => "String"}, "CacheSize" => %{"shape" => "String"}, "NodeGroupConfiguration" => %{"shape" => "NodeGroupConfiguration"}, "NodeGroupId" => %{"shape" => "String"}, "SnapshotCreateTime" => %{"shape" => "TStamp"}}, "type" => "structure", "wrapper" => true}, "Event" => %{"members" => %{"Date" => %{"shape" => "TStamp"}, "Message" => %{"shape" => "String"}, "SourceIdentifier" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}}, "type" => "structure"}, "DescribeSnapshotsListMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "Snapshots" => %{"shape" => "SnapshotList"}}, "type" => "structure"}, "ReplicationGroupNotFoundFault" => %{"error" => %{"code" => "ReplicationGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Snapshot" => %{"members" => %{"AutoMinorVersionUpgrade" => %{"shape" => "Boolean"}, "AutomaticFailover" => %{"shape" => "AutomaticFailoverStatus"}, "CacheClusterCreateTime" => %{"shape" => "TStamp"}, "CacheClusterId" => %{"shape" => "String"}, "CacheNodeType" => %{"shape" => "String"}, "CacheParameterGroupName" => %{"shape" => "String"}, "CacheSubnetGroupName" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "NodeSnapshots" => %{"shape" => "NodeSnapshotList"}, "NumCacheNodes" => %{"shape" => "IntegerOptional"}, "NumNodeGroups" => %{"shape" => "IntegerOptional"}, "Port" => %{"shape" => "IntegerOptional"}, "PreferredAvailabilityZone" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "ReplicationGroupDescription" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}, "SnapshotName" => %{"shape" => "String"}, "SnapshotRetentionLimit" => %{"shape" => "IntegerOptional"}, "SnapshotSource" => %{"shape" => "String"}, "SnapshotStatus" => %{"shape" => "String"}, "SnapshotWindow" => %{"shape" => "String"}, "TopicArn" => %{"shape" => "String"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "IntegerOptional" => %{"type" => "integer"}, "ChangeType" => %{"enum" => ["immediate", "requires-reboot"], "type" => "string"}, "CacheNode" => %{"members" => %{"CacheNodeCreateTime" => %{"shape" => "TStamp"}, "CacheNodeId" => %{"shape" => "String"}, "CacheNodeStatus" => %{"shape" => "String"}, "CustomerAvailabilityZone" => %{"shape" => "String"}, "Endpoint" => %{"shape" => "Endpoint"}, "ParameterGroupStatus" => %{"shape" => "String"}, "SourceCacheNodeId" => %{"shape" => "String"}}, "type" => "structure"}, "NodeGroupConfiguration" => %{"members" => %{"PrimaryAvailabilityZone" => %{"shape" => "String"}, "ReplicaAvailabilityZones" => %{"shape" => "AvailabilityZonesList"}, "ReplicaCount" => %{"shape" => "IntegerOptional"}, "Slots" => %{"shape" => "String"}}, "type" => "structure"}, "ListAllowedNodeTypeModificationsMessage" => %{"members" => %{"CacheClusterId" => %{"shape" => "String"}, "ReplicationGroupId" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidARNFault" => %{"error" => %{"code" => "InvalidARN", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "NotificationConfiguration" => %{"members" => %{"TopicArn" => %{"shape" => "String"}, "TopicStatus" => %{"shape" => "String"}}, "type" => "structure"}, "CacheSecurityGroupQuotaExceededFault" => %{"error" => %{"code" => "QuotaExceeded.CacheSecurityGroup", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteReplicationGroupResult" => %{"members" => %{"ReplicationGroup" => %{"shape" => "ReplicationGroup"}}, "type" => "structure"}, "NodeGroupMemberList" => %{"member" => %{"locationName" => "NodeGroupMember", "shape" => "NodeGroupMember"}, "type" => "list"}, "RecurringChargeList" => %{"member" => %{"locationName" => "RecurringCharge", "shape" => "RecurringCharge"}, "type" => "list"}, "NodeGroupMember" => %{"members" => %{"CacheClusterId" => %{"shape" => "String"}, "CacheNodeId" => %{"shape" => "String"}, "CurrentRole" => %{"shape" => "String"}, "PreferredAvailabilityZone" => %{"shape" => "String"}, "ReadEndpoint" => %{"shape" => "Endpoint"}}, "type" => "structure"}, "CacheSubnetGroupMessage" => %{"members" => %{"CacheSubnetGroups" => %{"shape" => "CacheSubnetGroups"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "NodeTypeList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "ReplicationGroupPendingModifiedValues" => %{"members" => %{"AutomaticFailoverStatus" => %{"shape" => "PendingAutomaticFailoverStatus"}, "PrimaryClusterId" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyCacheSubnetGroupResult" => %{"members" => %{"CacheSubnetGroup" => %{"shape" => "CacheSubnetGroup"}}, "type" => "structure"}, "CopySnapshotMessage" => %{"members" => %{"SourceSnapshotName" => %{"shape" => "String"}, "TargetBucket" => %{"shape" => "String"}, "TargetSnapshotName" => %{"shape" => "String"}}, "required" => ["SourceSnapshotName", "TargetSnapshotName"], "type" => "structure"}, "CacheEngineVersionList" => %{"member" => %{"locationName" => "CacheEngineVersion", "shape" => "CacheEngineVersion"}, "type" => "list"}, "CacheSubnetGroupAlreadyExistsFault" => %{"error" => %{"code" => "CacheSubnetGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EC2SecurityGroupList" => %{"member" => %{"locationName" => "EC2SecurityGroup", "shape" => "EC2SecurityGroup"}, "type" => "list"}, "CacheSubnetGroup" => %{"members" => %{"CacheSubnetGroupDescription" => %{"shape" => "String"}, "CacheSubnetGroupName" => %{"shape" => "String"}, "Subnets" => %{"shape" => "SubnetList"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "ReplicationGroupMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReplicationGroups" => %{"shape" => "ReplicationGroupList"}}, "type" => "structure"}, "CacheSubnetGroups" => %{"member" => %{"locationName" => "CacheSubnetGroup", "shape" => "CacheSubnetGroup"}, "type" => "list"}, "CreateCacheParameterGroupMessage" => %{"members" => %{"CacheParameterGroupFamily" => %{"shape" => "String"}, "CacheParameterGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}}, "required" => ["CacheParameterGroupName", "CacheParameterGroupFamily", "Description"], "type" => "structure"}, "DescribeReplicationGroupsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ReplicationGroupId" => %{"shape" => "String"}}, "type" => "structure"}, "ReservedCacheNodesOfferingList" => %{"member" => %{"locationName" => "ReservedCacheNodesOffering", "shape" => "ReservedCacheNodesOffering"}, "type" => "list"}, "PurchaseReservedCacheNodesOfferingResult" => %{"members" => %{"ReservedCacheNode" => %{"shape" => "ReservedCacheNode"}}, "type" => "structure"}, "ReplicationGroup" => %{"members" => %{"AutomaticFailover" => %{"shape" => "AutomaticFailoverStatus"}, "CacheNodeType" => %{"shape" => "String"}, "ClusterEnabled" => %{"shape" => "BooleanOptional"}, "ConfigurationEndpoint" => %{"shape" => "Endpoint"}, "Description" => %{"shape" => "String"}, "MemberClusters" => %{"shape" => "ClusterIdList"}, "NodeGroups" => %{"shape" => "NodeGroupList"}, "PendingModifiedValues" => %{"shape" => "ReplicationGroupPendingModifiedValues"}, "ReplicationGroupId" => %{"shape" => "String"}, "SnapshotRetentionLimit" => %{"shape" => "IntegerOptional"}, "SnapshotWindow" => %{"shape" => "String"}, "SnapshottingClusterId" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "TagNotFoundFault" => %{"error" => %{"code" => "TagNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeEngineDefaultParametersMessage" => %{"members" => %{"CacheParameterGroupFamily" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "required" => ["CacheParameterGroupFamily"], "type" => "structure"}, "ReservedCacheNodesOffering" => %{"members" => %{"CacheNodeType" => %{"shape" => "String"}, "Duration" => %{"shape" => "Integer"}, "FixedPrice" => %{"shape" => "Double"}, "OfferingType" => %{"shape" => "String"}, "ProductDescription" => %{"shape" => "String"}, "RecurringCharges" => %{"shape" => "RecurringChargeList"}, "ReservedCacheNodesOfferingId" => %{"shape" => "String"}, "UsagePrice" => %{"shape" => "Double"}}, "type" => "structure", "wrapper" => true}}
  end
end