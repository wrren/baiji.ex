defmodule Baiji.RDS do
  @moduledoc """
  Amazon Relational Database Service

  Amazon Relational Database Service (Amazon RDS) is a web service that makes
  it easier to set up, operate, and scale a relational database in the cloud.
  It provides cost-efficient, resizable capacity for an industry-standard
  relational database and manages common database administration tasks,
  freeing up developers to focus on what makes their applications and
  businesses unique.

  Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
  PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database server.
  These capabilities mean that the code, applications, and tools you already
  use today with your existing databases work with Amazon RDS without
  modification. Amazon RDS automatically backs up your database and maintains
  the database software that powers your DB instance. Amazon RDS is flexible:
  you can scale your database instance's compute resources and storage
  capacity to meet your application's demand. As with all Amazon Web
  Services, there are no up-front investments, and you pay only for the
  resources you use.

  This interface reference for Amazon RDS contains documentation for a
  programming or command line interface you can use to manage Amazon RDS.
  Note that Amazon RDS is asynchronous, which means that some interfaces
  might require techniques such as polling or callback functions to determine
  when a command has been applied. In this reference, the parameter
  descriptions indicate whether a command is applied immediately, on the next
  instance reboot, or during the maintenance window. The reference structure
  is as follows, and we list following some related topics from the user
  guide.

  **Amazon RDS API Reference**

  <ul> <li> For the alphabetical list of API actions, see [API
  Actions](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).

  </li> <li> For the alphabetical list of data types, see [Data
  Types](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html).

  </li> <li> For a list of common query parameters, see [Common
  Parameters](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html).

  </li> <li> For descriptions of the error codes, see [Common
  Errors](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html).

  </li> </ul> **Amazon RDS User Guide**

  <ul> <li> For a summary of the Amazon RDS interfaces, see [Available RDS
  Interfaces](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces).

  </li> <li> For more information about how to use the Query API, see [Using
  the Query
  API](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html).

  </li> </ul>
  """
  
  @doc """
  Returns the detailed parameter list for a particular DB parameter group.
  """
  def describe_d_b_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBParameters",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBParametersMessage",
      output_shape:     "DBParameterGroupDetails",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies an existing option group.
  """
  def modify_option_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyOptionGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyOptionGroupMessage",
      output_shape:     "ModifyOptionGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the available option groups.
  """
  def describe_option_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeOptionGroups",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeOptionGroupsMessage",
      output_shape:     "OptionGroups",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Restores a DB cluster to an arbitrary point in time. Users can restore to
  any point in time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target DB cluster is created from the
  source DB cluster with the same configuration as the original DB cluster,
  except that the new DB cluster is created with the default DB security
  group.

  <note> This action only restores the DB cluster, not the DB instances for
  that DB cluster. You must invoke the `CreateDBInstance` action to create DB
  instances for the restored DB cluster, specifying the identifier of the
  restored DB cluster in `DBClusterIdentifier`. You can create DB instances
  only after the `RestoreDBClusterToPointInTime` action has completed and the
  DB cluster is available.

  </note> For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def restore_d_b_cluster_to_point_in_time(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreDBClusterToPointInTime",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RestoreDBClusterToPointInTimeMessage",
      output_shape:     "RestoreDBClusterToPointInTimeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is
  specified, the list will contain only the descriptions of the specified
  DBSubnetGroup.

  For an overview of CIDR ranges, go to the [Wikipedia
  Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def describe_d_b_subnet_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBSubnetGroups",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBSubnetGroupsMessage",
      output_shape:     "DBSubnetGroupMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of DB snapshot attribute names and values for a manual DB
  snapshot.

  When sharing snapshots with other AWS accounts,
  `DescribeDBSnapshotAttributes` returns the `restore` attribute and a list
  of IDs for the AWS accounts that are authorized to copy or restore the
  manual DB snapshot. If `all` is included in the list of values for the
  `restore` attribute, then the manual DB snapshot is public and can be
  copied or restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  snapshot, or to make the manual DB snapshot public or private, use the
  `ModifyDBSnapshotAttribute` API action.
  """
  def describe_d_b_snapshot_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBSnapshotAttributes",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBSnapshotAttributesMessage",
      output_shape:     "DescribeDBSnapshotAttributesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about reserved DB instances for this account, or about
  a specified reserved DB instance.
  """
  def describe_reserved_d_b_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedDBInstances",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeReservedDBInstancesMessage",
      output_shape:     "ReservedDBInstanceMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds a source identifier to an existing RDS event notification
  subscription.
  """
  def add_source_identifier_to_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddSourceIdentifierToSubscription",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "AddSourceIdentifierToSubscriptionMessage",
      output_shape:     "AddSourceIdentifierToSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes an existing option group.
  """
  def delete_option_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteOptionGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteOptionGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new Amazon Aurora DB cluster.

  You can use the `ReplicationSourceIdentifier` parameter to create the DB
  cluster as a Read Replica of another DB cluster or Amazon RDS MySQL DB
  instance. For cross-region replication where the DB cluster identified by
  `ReplicationSourceIdentifier` is encrypted, you must also specify the
  `PreSignedUrl` parameter.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def create_d_b_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBCluster",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBClusterMessage",
      output_shape:     "CreateDBClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists available reserved DB instance offerings.
  """
  def describe_reserved_d_b_instances_offerings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedDBInstancesOfferings",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeReservedDBInstancesOfferingsMessage",
      output_shape:     "ReservedDBInstancesOfferingMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new option group. You can create up to 20 option groups.
  """
  def create_option_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateOptionGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateOptionGroupMessage",
      output_shape:     "CreateOptionGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Copies the specified DB parameter group.
  """
  def copy_d_b_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopyDBParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CopyDBParameterGroupMessage",
      output_shape:     "CopyDBParameterGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions. If a
  `DBClusterParameterGroupName` parameter is specified, the list will contain
  only the description of the specified DB cluster parameter group.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_d_b_cluster_parameter_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBClusterParameterGroups",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBClusterParameterGroupsMessage",
      output_shape:     "DBClusterParameterGroupsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Promotes a Read Replica DB cluster to a standalone DB cluster.
  """
  def promote_read_replica_d_b_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PromoteReadReplicaDBCluster",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "PromoteReadReplicaDBClusterMessage",
      output_shape:     "PromoteReadReplicaDBClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns events related to DB instances, DB security groups, DB snapshots,
  and DB parameter groups for the past 14 days. Events specific to a
  particular DB instance, DB security group, database snapshot, or DB
  parameter group can be obtained by providing the name as a parameter. By
  default, the past hour of events are returned.
  """
  def describe_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEvents",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeEventsMessage",
      output_shape:     "EventsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes metadata tags from an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS
  Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RemoveTagsFromResourceMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Promotes a Read Replica DB instance to a standalone DB instance.

  <note> We recommend that you enable automated backups on your Read Replica
  before promoting the Read Replica. This ensures that no backup is taken
  during the promotion process. Once the instance is promoted to a primary
  instance, backups are taken based on your backup settings.

  </note>
  """
  def promote_read_replica(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PromoteReadReplica",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "PromoteReadReplicaMessage",
      output_shape:     "PromoteReadReplicaResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all tags on an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS
  Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ListTagsForResourceMessage",
      output_shape:     "TagListMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of `DBSecurityGroup` descriptions. If a
  `DBSecurityGroupName` is specified, the list will contain only the
  descriptions of the specified DB security group.
  """
  def describe_d_b_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBSecurityGroups",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBSecurityGroupsMessage",
      output_shape:     "DBSecurityGroupMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a DBSnapshot. If the snapshot is being copied, the copy operation
  is terminated.

  <note> The DBSnapshot must be in the `available` state to be deleted.

  </note>
  """
  def delete_d_b_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDBSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteDBSnapshotMessage",
      output_shape:     "DeleteDBSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes an RDS event notification subscription.
  """
  def delete_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteEventSubscription",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteEventSubscriptionMessage",
      output_shape:     "DeleteEventSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Revokes ingress from a DBSecurityGroup for previously authorized IP ranges
  or EC2 or VPC Security Groups. Required parameters for this API are one of
  CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either
  EC2SecurityGroupName or EC2SecurityGroupId).
  """
  def revoke_d_b_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RevokeDBSecurityGroupIngress",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RevokeDBSecurityGroupIngressMessage",
      output_shape:     "RevokeDBSecurityGroupIngressResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes a source identifier from an existing RDS event notification
  subscription.
  """
  def remove_source_identifier_from_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveSourceIdentifierFromSubscription",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RemoveSourceIdentifierFromSubscriptionMessage",
      output_shape:     "RemoveSourceIdentifierFromSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the parameters of a DB cluster parameter group. To modify more
  than one parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*

  <note> Changes to dynamic parameters are applied immediately. Changes to
  static parameters require a reboot without failover to the DB cluster
  associated with the parameter group before the change can take effect.

  </note> <important> After you create a DB cluster parameter group, you
  should wait at least 5 minutes before creating your first DB cluster that
  uses that DB cluster parameter group as the default parameter group. This
  allows Amazon RDS to fully complete the create action before the parameter
  group is used as the default for a new DB cluster. This is especially
  important for parameters that are critical when creating the default
  database for a DB cluster, such as the character set for the default
  database defined by the `character_set_database` parameter. You can use the
  *Parameter Groups* option of the [Amazon RDS
  console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` command to verify that your DB cluster
  parameter group has been created or modified.

  </important>
  """
  def modify_d_b_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDBClusterParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyDBClusterParameterGroupMessage",
      output_shape:     "DBClusterParameterGroupNameMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Associates an Identity and Access Management (IAM) role from an Aurora DB
  cluster. For more information, see [Authorizing Amazon Aurora to Access
  Other AWS Services On Your
  Behalf](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Authorizing.AWSServices.html).
  """
  def add_role_to_d_b_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddRoleToDBCluster",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "AddRoleToDBClusterMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB snapshot.

  To share a manual DB snapshot with other AWS accounts, specify `restore` as
  the `AttributeName` and use the `ValuesToAdd` parameter to add a list of
  IDs of the AWS accounts that are authorized to restore the manual DB
  snapshot. Uses the value `all` to make the manual DB snapshot public, which
  means it can be copied or restored by all AWS accounts. Do not add the
  `all` value for any manual DB snapshots that contain private information
  that you don't want available to all AWS accounts. If the manual DB
  snapshot is encrypted, it can be shared, but only by specifying a list of
  authorized AWS account IDs for the `ValuesToAdd` parameter. You can't use
  `all` as a value for that parameter in this case.

  To view which AWS accounts have access to copy or restore a manual DB
  snapshot, or whether a manual DB snapshot public or private, use the
  `DescribeDBSnapshotAttributes` API action.
  """
  def modify_d_b_snapshot_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDBSnapshotAttribute",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyDBSnapshotAttributeMessage",
      output_shape:     "ModifyDBSnapshotAttributeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of the available DB engines.
  """
  def describe_d_b_engine_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBEngineVersions",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBEngineVersionsMessage",
      output_shape:     "DBEngineVersionMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the default engine and system parameter information for the cluster
  database engine.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_engine_default_cluster_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEngineDefaultClusterParameters",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeEngineDefaultClusterParametersMessage",
      output_shape:     "DescribeEngineDefaultClusterParametersResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an RDS event notification subscription. This action requires a
  topic ARN (Amazon Resource Name) created by either the RDS console, the SNS
  console, or the SNS API. To obtain an ARN with SNS, you must create a topic
  in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS
  console.

  You can specify the type of source (SourceType) you want to be notified of,
  provide a list of RDS sources (SourceIds) that triggers the events, and
  provide a list of event categories (EventCategories) for events you want to
  be notified of. For example, you can specify SourceType = db-instance,
  SourceIds = mydbinstance1, mydbinstance2 and EventCategories =
  Availability, Backup.

  If you specify both the SourceType and SourceIds, such as SourceType =
  db-instance and SourceIdentifier = myDBInstance1, you will be notified of
  all the db-instance events for the specified source. If you specify a
  SourceType but do not specify a SourceIdentifier, you will receive notice
  of the events for that source type for all your RDS sources. If you do not
  specify either the SourceType nor the SourceIdentifier, you will be
  notified of events generated from all RDS sources belonging to your
  customer account.
  """
  def create_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateEventSubscription",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateEventSubscriptionMessage",
      output_shape:     "CreateEventSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Downloads all or a portion of the specified log file, up to 1 MB in size.
  """
  def download_d_b_log_file_portion(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DownloadDBLogFilePortion",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DownloadDBLogFilePortionMessage",
      output_shape:     "DownloadDBLogFilePortionDetails",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a DB cluster snapshot. If the snapshot is being copied, the copy
  operation is terminated.

  <note> The DB cluster snapshot must be in the `available` state to be
  deleted.

  </note> For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def delete_d_b_cluster_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDBClusterSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteDBClusterSnapshotMessage",
      output_shape:     "DeleteDBClusterSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of `DBParameterGroup` descriptions. If a
  `DBParameterGroupName` is specified, the list will contain only the
  description of the specified DB parameter group.
  """
  def describe_d_b_parameter_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBParameterGroups",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBParameterGroupsMessage",
      output_shape:     "DBParameterGroupsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Rebooting a DB instance restarts the database engine service. A reboot also
  applies to the DB instance any modifications to the associated DB parameter
  group that were pending. Rebooting a DB instance results in a momentary
  outage of the instance, during which the DB instance status is set to
  rebooting. If the RDS instance is configured for MultiAZ, it is possible
  that the reboot will be conducted through a failover. An Amazon RDS event
  is created when the reboot is completed.

  If your DB instance is deployed in multiple Availability Zones, you can
  force a failover from one AZ to the other during the reboot. You might
  force a failover to test the availability of your DB instance deployment or
  to restore operations to the original AZ after a failover occurs.

  The time required to reboot is a function of the specific database engine's
  crash recovery process. To improve the reboot time, we recommend that you
  reduce database activities as much as possible during the reboot process to
  reduce rollback activity for in-transit transactions.
  """
  def reboot_d_b_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RebootDBInstance",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RebootDBInstanceMessage",
      output_shape:     "RebootDBInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new DB instance.
  """
  def create_d_b_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBInstance",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBInstanceMessage",
      output_shape:     "CreateDBInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about DB cluster snapshots. This API action supports
  pagination.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_d_b_cluster_snapshots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBClusterSnapshots",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBClusterSnapshotsMessage",
      output_shape:     "DBClusterSnapshotMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates a manual DB snapshot, which can be encrypted or not encrypted, with
  a new engine version. You can update the engine version to either a new
  major or minor engine version.

  Amazon RDS supports upgrading a MySQL DB snapshot from MySQL 5.1 to MySQL
  5.5.
  """
  def modify_d_b_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDBSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyDBSnapshotMessage",
      output_shape:     "ModifyDBSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a snapshot of a DB cluster. For more information on Amazon Aurora,
  see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def create_d_b_cluster_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBClusterSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBClusterSnapshotMessage",
      output_shape:     "CreateDBClusterSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new DB cluster from a DB cluster snapshot. The target DB cluster
  is created from the source DB cluster restore point with the same
  configuration as the original source DB cluster, except that the new DB
  cluster is created with the default security group.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def restore_d_b_cluster_from_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreDBClusterFromSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RestoreDBClusterFromSnapshotMessage",
      output_shape:     "RestoreDBClusterFromSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the detailed parameter list for a particular DB cluster parameter
  group.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_d_b_cluster_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBClusterParameters",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBClusterParametersMessage",
      output_shape:     "DBClusterParameterGroupDetails",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts a DB instance that was stopped using the AWS console, the
  stop-db-instance AWS CLI command, or the StopDBInstance action. For more
  information, see Stopping and Starting a DB instance in the AWS RDS user
  guide.
  """
  def start_d_b_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartDBInstance",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "StartDBInstanceMessage",
      output_shape:     "StartDBInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an Amazon Aurora DB cluster from data stored in an Amazon S3
  bucket. Amazon RDS must be authorized to access the Amazon S3 bucket and
  the data must be created using the Percona XtraBackup utility as described
  in [Migrating Data from MySQL by Using an Amazon S3
  Bucket](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Migrate.MySQL.html#Aurora.Migrate.MySQL.S3).
  """
  def restore_d_b_cluster_from_s3(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreDBClusterFromS3",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RestoreDBClusterFromS3Message",
      output_shape:     "RestoreDBClusterFromS3Result",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of the source AWS regions where the current AWS Region can
  create a Read Replica or copy a DB snapshot from. This API action supports
  pagination.
  """
  def describe_source_regions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSourceRegions",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeSourceRegionsMessage",
      output_shape:     "SourceRegionMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Copies the specified DB snapshot. The source DB snapshot must be in the
  "available" state.

  You can copy a snapshot from one AWS Region to another. In that case, the
  AWS Region where you call the `CopyDBSnapshot` action is the destination
  AWS Region for the DB snapshot copy.

  You cannot copy an encrypted, shared DB snapshot from one AWS Region to
  another.

  For more information about copying snapshots, see [Copying a DB
  Snapshot](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopyDBSnapshot.html)
  in the Amazon RDS User Guide.
  """
  def copy_d_b_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopyDBSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CopyDBSnapshotMessage",
      output_shape:     "CopyDBSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Forces a failover for a DB cluster.

  A failover for a DB cluster promotes one of the Aurora Replicas (read-only
  instances) in the DB cluster to be the primary instance (the cluster
  writer).

  Amazon Aurora will automatically fail over to an Aurora Replica, if one
  exists, when the primary instance fails. You can force a failover when you
  want to simulate a failure of a primary instance for testing. Because each
  instance in a DB cluster has its own endpoint address, you will need to
  clean up and re-establish any existing connections that use those endpoint
  addresses when the failover is complete.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def failover_d_b_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "FailoverDBCluster",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "FailoverDBClusterMessage",
      output_shape:     "FailoverDBClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the parameters of a DB cluster parameter group to the default
  value. To reset specific parameters submit a list of the following:
  `ParameterName` and `ApplyMethod`. To reset the entire DB cluster parameter
  group, specify the `DBClusterParameterGroupName` and `ResetAllParameters`
  parameters.

  When resetting the entire group, dynamic parameters are updated immediately
  and static parameters are set to `pending-reboot` to take effect on the
  next DB instance restart or `RebootDBInstance` request. You must call
  `RebootDBInstance` for every DB instance in your DB cluster that you want
  the updated static parameter to apply to.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def reset_d_b_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetDBClusterParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ResetDBClusterParameterGroupMessage",
      output_shape:     "DBClusterParameterGroupNameMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted
  cannot be associated with any DB instances.
  """
  def delete_d_b_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDBParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteDBParameterGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of orderable DB instance options for the specified engine.
  """
  def describe_orderable_d_b_instance_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeOrderableDBInstanceOptions",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeOrderableDBInstanceOptionsMessage",
      output_shape:     "OrderableDBInstanceOptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the parameters of a DB parameter group to the engine/system
  default value. To reset specific parameters, provide a list of the
  following: `ParameterName` and `ApplyMethod`. To reset the entire DB
  parameter group, specify the `DBParameterGroup` name and
  `ResetAllParameters` parameters. When resetting the entire group, dynamic
  parameters are updated immediately and static parameters are set to
  `pending-reboot` to take effect on the next DB instance restart or
  `RebootDBInstance` request.
  """
  def reset_d_b_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetDBParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ResetDBParameterGroupMessage",
      output_shape:     "DBParameterGroupNameMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about provisioned RDS instances. This API supports
  pagination.
  """
  def describe_d_b_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBInstances",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBInstancesMessage",
      output_shape:     "DBInstanceMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of DB log files for the DB instance.
  """
  def describe_d_b_log_files(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBLogFiles",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBLogFilesMessage",
      output_shape:     "DescribeDBLogFilesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Applies a pending maintenance action to a resource (for example, to a DB
  instance).
  """
  def apply_pending_maintenance_action(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ApplyPendingMaintenanceAction",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ApplyPendingMaintenanceActionMessage",
      output_shape:     "ApplyPendingMaintenanceActionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new DB cluster parameter group.

  Parameters in a DB cluster parameter group apply to all of the instances in
  a DB cluster.

  A DB cluster parameter group is initially created with the default
  parameters for the database engine used by instances in the DB cluster. To
  provide custom values for any of the parameters, you must modify the group
  after creating it using `ModifyDBClusterParameterGroup`. Once you've
  created a DB cluster parameter group, you need to associate it with your DB
  cluster using `ModifyDBCluster`. When you associate a new DB cluster
  parameter group with a running DB cluster, you need to reboot the DB
  instances in the DB cluster without failover for the new DB cluster
  parameter group and associated settings to take effect.

  <important> After you create a DB cluster parameter group, you should wait
  at least 5 minutes before creating your first DB cluster that uses that DB
  cluster parameter group as the default parameter group. This allows Amazon
  RDS to fully complete the create action before the DB cluster parameter
  group is used as the default for a new DB cluster. This is especially
  important for parameters that are critical when creating the default
  database for a DB cluster, such as the character set for the default
  database defined by the `character_set_database` parameter. You can use the
  *Parameter Groups* option of the [Amazon RDS
  console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` command to verify that your DB cluster
  parameter group has been created or modified.

  </important> For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def create_d_b_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBClusterParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBClusterParameterGroupMessage",
      output_shape:     "CreateDBClusterParameterGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies an existing DB subnet group. DB subnet groups must contain at
  least one subnet in at least two AZs in the AWS Region.
  """
  def modify_d_b_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDBSubnetGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyDBSubnetGroupMessage",
      output_shape:     "ModifyDBSubnetGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Copies a snapshot of a DB cluster.

  To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN)
  of the shared DB cluster snapshot.

  You can copy an encrypted DB cluster snapshot from another AWS Region. In
  that case, the AWS Region where you call the `CopyDBClusterSnapshot` action
  is the destination AWS Region for the encrypted DB cluster snapshot to be
  copied to. To copy an encrypted DB cluster snapshot from another AWS
  Region, you must provide the following values:

  <ul> <li> `KmsKeyId` - The AWS Key Management System (KMS) key identifier
  for the key to use to encrypt the copy of the DB cluster snapshot in the
  destination AWS Region.

  </li> <li> `PreSignedUrl` - A URL that contains a Signature Version 4
  signed request for the `CopyDBClusterSnapshot` action to be called in the
  source AWS Region where the DB cluster snapshot will be copied from. The
  pre-signed URL must be a valid request for the `CopyDBClusterSnapshot` API
  action that can be executed in the source AWS Region that contains the
  encrypted DB cluster snapshot to be copied.

  The pre-signed URL request must contain the following parameter values:

  <ul> <li> `KmsKeyId` - The KMS key identifier for the key to use to encrypt
  the copy of the DB cluster snapshot in the destination AWS Region. This is
  the same identifier for both the `CopyDBClusterSnapshot` action that is
  called in the destination AWS Region, and the action contained in the
  pre-signed URL.

  </li> <li> `DestinationRegion` - The name of the AWS Region that the DB
  cluster snapshot will be created in.

  </li> <li> `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
  identifier for the encrypted DB cluster snapshot to be copied. This
  identifier must be in the Amazon Resource Name (ARN) format for the source
  AWS Region. For example, if you are copying an encrypted DB cluster
  snapshot from the us-west-2 region, then your
  `SourceDBClusterSnapshotIdentifier` looks like the following example:
  `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.

  </li> </ul> To learn how to generate a Signature Version 4 signed request,
  see [ Authenticating Requests: Using Query Parameters (AWS Signature
  Version
  4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
  and [ Signature Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  </li> <li> `TargetDBClusterSnapshotIdentifier` - The identifier for the new
  copy of the DB cluster snapshot in the destination AWS Region.

  </li> <li> `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
  identifier for the encrypted DB cluster snapshot to be copied. This
  identifier must be in the ARN format for the source AWS Region and is the
  same value as the `SourceDBClusterSnapshotIdentifier` in the pre-signed
  URL.

  </li> </ul> To cancel the copy operation once it is in progress, delete the
  target DB cluster snapshot identified by
  `TargetDBClusterSnapshotIdentifier` while that DB cluster snapshot is in
  "copying" status.

  For more information on copying encrypted DB cluster snapshots from one AWS
  Region to another, see [ Copying a DB Cluster Snapshot in the Same Account,
  Either in the Same Region or Across
  Regions](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBClusterSnapshot.CrossRegion)
  in the Amazon RDS User Guide.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def copy_d_b_cluster_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopyDBClusterSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CopyDBClusterSnapshotMessage",
      output_shape:     "CopyDBClusterSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new DB security group. DB security groups control access to a DB
  instance.
  """
  def create_d_b_security_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBSecurityGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBSecurityGroupMessage",
      output_shape:     "CreateDBSecurityGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Restores a DB instance to an arbitrary point in time. You can restore to
  any point in time before the time identified by the LatestRestorableTime
  property. You can restore to a point up to the number of days specified by
  the BackupRetentionPeriod property.

  The target database is created with most of the original configuration, but
  in a system-selected availability zone, with the default security group,
  the default subnet group, and the default DB parameter group. By default,
  the new DB instance is created as a single-AZ deployment except when the
  instance is a SQL Server instance that has an option group that is
  associated with mirroring; in this case, the instance becomes a mirrored
  deployment and not a single-AZ deployment.
  """
  def restore_d_b_instance_to_point_in_time(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreDBInstanceToPointInTime",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RestoreDBInstanceToPointInTimeMessage",
      output_shape:     "RestoreDBInstanceToPointInTimeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about provisioned Aurora DB clusters. This API supports
  pagination.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_d_b_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBClusters",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBClustersMessage",
      output_shape:     "DBClusterMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Displays a list of categories for all event source types, or, if specified,
  for a specified source type. You can see a list of the event categories and
  source types in the [
  Events](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  topic in the *Amazon RDS User Guide.*
  """
  def describe_event_categories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEventCategories",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeEventCategoriesMessage",
      output_shape:     "EventCategoriesMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new DB instance that acts as a Read Replica for an existing
  source DB instance. You can create a Read Replica for a DB instance running
  MySQL, MariaDB, or PostgreSQL.

  <note> Amazon Aurora does not support this action. You must call the
  `CreateDBInstance` action to create a DB instance for an Aurora DB cluster.

  </note> All Read Replica DB instances are created as Single-AZ deployments
  with backups disabled. All other DB instance attributes (including DB
  security groups and DB parameter groups) are inherited from the source DB
  instance, except as specified below.

  <important> The source DB instance must have backup retention enabled.

  </important> For more information, see [Working with PostgreSQL, MySQL, and
  MariaDB Read
  Replicas](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html).
  """
  def create_d_b_instance_read_replica(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBInstanceReadReplica",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBInstanceReadReplicaMessage",
      output_shape:     "CreateDBInstanceReadReplicaResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a DB security group.

  <note> The specified DB security group must not be associated with any DB
  instances.

  </note>
  """
  def delete_d_b_security_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDBSecurityGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteDBSecurityGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new DB instance from a DB snapshot. The target database is
  created from the source database restore point with the most of original
  configuration with the default security group and the default DB parameter
  group. By default, the new DB instance is created as a single-AZ deployment
  except when the instance is a SQL Server instance that has an option group
  that is associated with mirroring; in this case, the instance becomes a
  mirrored AZ deployment and not a single-AZ deployment.

  If your intent is to replace your original DB instance with the new,
  restored DB instance, then rename your original DB instance before you call
  the RestoreDBInstanceFromDBSnapshot action. RDS does not allow two DB
  instances with the same name. Once you have renamed your original DB
  instance with a different identifier, then you can pass the original name
  of the DB instance as the DBInstanceIdentifier in the call to the
  RestoreDBInstanceFromDBSnapshot action. The result is that you will replace
  the original DB instance with the DB instance created from the snapshot.

  If you are restoring from a shared manual DB snapshot, the
  `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.
  """
  def restore_d_b_instance_from_d_b_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreDBInstanceFromDBSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RestoreDBInstanceFromDBSnapshotMessage",
      output_shape:     "RestoreDBInstanceFromDBSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds metadata tags to an Amazon RDS resource. These tags can also be used
  with cost allocation reporting to track cost associated with Amazon RDS
  resources, or used in a Condition statement in an IAM policy for Amazon
  RDS.

  For an overview on tagging Amazon RDS resources, see [Tagging Amazon RDS
  Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "AddTagsToResourceMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the set of CA certificates provided by Amazon RDS for this AWS
  account.
  """
  def describe_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCertificates",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeCertificatesMessage",
      output_shape:     "CertificateMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies an existing RDS event notification subscription. Note that you
  cannot modify the source identifiers using this call; to change source
  identifiers for a subscription, use the `AddSourceIdentifierToSubscription`
  and `RemoveSourceIdentifierFromSubscription` calls.

  You can see a list of the event categories for a given SourceType in the
  [Events](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  topic in the Amazon RDS User Guide or by using the
  **DescribeEventCategories** action.
  """
  def modify_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyEventSubscription",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyEventSubscriptionMessage",
      output_shape:     "ModifyEventSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB cluster snapshot.

  To share a manual DB cluster snapshot with other AWS accounts, specify
  `restore` as the `AttributeName` and use the `ValuesToAdd` parameter to add
  a list of IDs of the AWS accounts that are authorized to restore the manual
  DB cluster snapshot. Use the value `all` to make the manual DB cluster
  snapshot public, which means that it can be copied or restored by all AWS
  accounts. Do not add the `all` value for any manual DB cluster snapshots
  that contain private information that you don't want available to all AWS
  accounts. If a manual DB cluster snapshot is encrypted, it can be shared,
  but only by specifying a list of authorized AWS account IDs for the
  `ValuesToAdd` parameter. You can't use `all` as a value for that parameter
  in this case.

  To view which AWS accounts have access to copy or restore a manual DB
  cluster snapshot, or whether a manual DB cluster snapshot public or
  private, use the `DescribeDBClusterSnapshotAttributes` API action.
  """
  def modify_d_b_cluster_snapshot_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDBClusterSnapshotAttribute",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyDBClusterSnapshotAttributeMessage",
      output_shape:     "ModifyDBClusterSnapshotAttributeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the default engine and system parameter information for the
  specified database engine.
  """
  def describe_engine_default_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEngineDefaultParameters",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeEngineDefaultParametersMessage",
      output_shape:     "DescribeEngineDefaultParametersResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  The DeleteDBInstance action deletes a previously provisioned DB instance.
  When you delete a DB instance, all automated backups for that instance are
  deleted and cannot be recovered. Manual DB snapshots of the DB instance to
  be deleted by `DeleteDBInstance` are not deleted.

  If you request a final DB snapshot the status of the Amazon RDS DB instance
  is `deleting` until the DB snapshot is created. The API action
  `DescribeDBInstance` is used to monitor the status of this operation. The
  action cannot be canceled or reverted once submitted.

  Note that when a DB instance is in a failure state and has a status of
  `failed`, `incompatible-restore`, or `incompatible-network`, you can only
  delete it when the `SkipFinalSnapshot` parameter is set to `true`.

  If the specified DB instance is part of an Amazon Aurora DB cluster, you
  cannot delete the DB instance if the following are true:

  <ul> <li> The DB cluster is a Read Replica of another Amazon Aurora DB
  cluster.

  </li> <li> The DB instance is the only instance in the DB cluster.

  </li> </ul> To delete a DB instance in this case, first call the
  `PromoteReadReplicaDBCluster` API action to promote the DB cluster so it's
  no longer a Read Replica. After the promotion completes, then call the
  `DeleteDBInstance` API action to delete the final instance in the DB
  cluster.
  """
  def delete_d_b_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDBInstance",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteDBInstanceMessage",
      output_shape:     "DeleteDBInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modify a setting for an Amazon Aurora DB cluster. You can change one or
  more database configuration parameters by specifying these parameters and
  the new values in the request. For more information on Amazon Aurora, see
  [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def modify_d_b_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDBCluster",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyDBClusterMessage",
      output_shape:     "ModifyDBClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies settings for a DB instance. You can change one or more database
  configuration parameters by specifying these parameters and the new values
  in the request.
  """
  def modify_d_b_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDBInstance",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyDBInstanceMessage",
      output_shape:     "ModifyDBInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disassociates an Identity and Access Management (IAM) role from an Aurora
  DB cluster. For more information, see [Authorizing Amazon Aurora to Access
  Other AWS Services On Your
  Behalf](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Authorizing.AWSServices.html).
  """
  def remove_role_from_d_b_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveRoleFromDBCluster",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "RemoveRoleFromDBClusterMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Purchases a reserved DB instance offering.
  """
  def purchase_reserved_d_b_instances_offering(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PurchaseReservedDBInstancesOffering",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "PurchaseReservedDBInstancesOfferingMessage",
      output_shape:     "PurchaseReservedDBInstancesOfferingResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of DB cluster snapshot attribute names and values for a
  manual DB cluster snapshot.

  When sharing snapshots with other AWS accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a
  list of IDs for the AWS accounts that are authorized to copy or restore the
  manual DB cluster snapshot. If `all` is included in the list of values for
  the `restore` attribute, then the manual DB cluster snapshot is public and
  can be copied or restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  cluster snapshot, or to make the manual DB cluster snapshot public or
  private, use the `ModifyDBClusterSnapshotAttribute` API action.
  """
  def describe_d_b_cluster_snapshot_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBClusterSnapshotAttributes",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBClusterSnapshotAttributesMessage",
      output_shape:     "DescribeDBClusterSnapshotAttributesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all the subscription descriptions for a customer account. The
  description for a subscription includes SubscriptionName, SNSTopicARN,
  CustomerID, SourceType, SourceID, CreationTime, and Status.

  If you specify a SubscriptionName, lists the description for that
  subscription.
  """
  def describe_event_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEventSubscriptions",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeEventSubscriptionsMessage",
      output_shape:     "EventSubscriptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the parameters of a DB parameter group. To modify more than one
  parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  <note> Changes to dynamic parameters are applied immediately. Changes to
  static parameters require a reboot without failover to the DB instance
  associated with the parameter group before the change can take effect.

  </note> <important> After you modify a DB parameter group, you should wait
  at least 5 minutes before creating your first DB instance that uses that DB
  parameter group as the default parameter group. This allows Amazon RDS to
  fully complete the modify action before the parameter group is used as the
  default for a new DB instance. This is especially important for parameters
  that are critical when creating the default database for a DB instance,
  such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups*
  option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or
  the *DescribeDBParameters* command to verify that your DB parameter group
  has been created or modified.

  </important>
  """
  def modify_d_b_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDBParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "ModifyDBParameterGroupMessage",
      output_shape:     "DBParameterGroupNameMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a DBSnapshot. The source DBInstance must be in "available" state.
  """
  def create_d_b_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBSnapshot",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBSnapshotMessage",
      output_shape:     "CreateDBSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new DB parameter group.

  A DB parameter group is initially created with the default parameters for
  the database engine used by the DB instance. To provide custom values for
  any of the parameters, you must modify the group after creating it using
  *ModifyDBParameterGroup*. Once you've created a DB parameter group, you
  need to associate it with your DB instance using *ModifyDBInstance*. When
  you associate a new DB parameter group with a running DB instance, you need
  to reboot the DB instance without failover for the new DB parameter group
  and associated settings to take effect.

  <important> After you create a DB parameter group, you should wait at least
  5 minutes before creating your first DB instance that uses that DB
  parameter group as the default parameter group. This allows Amazon RDS to
  fully complete the create action before the parameter group is used as the
  default for a new DB instance. This is especially important for parameters
  that are critical when creating the default database for a DB instance,
  such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups*
  option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or
  the *DescribeDBParameters* command to verify that your DB parameter group
  has been created or modified.

  </important>
  """
  def create_d_b_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBParameterGroupMessage",
      output_shape:     "CreateDBParameterGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Copies the specified DB cluster parameter group.
  """
  def copy_d_b_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopyDBClusterParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CopyDBClusterParameterGroupMessage",
      output_shape:     "CopyDBClusterParameterGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Copies the specified option group.
  """
  def copy_option_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopyOptionGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CopyOptionGroupMessage",
      output_shape:     "CopyOptionGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new DB subnet group. DB subnet groups must contain at least one
  subnet in at least two AZs in the AWS Region.
  """
  def create_d_b_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDBSubnetGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "CreateDBSubnetGroupMessage",
      output_shape:     "CreateDBSubnetGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a specified DB cluster parameter group. The DB cluster parameter
  group to be deleted cannot be associated with any DB clusters.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def delete_d_b_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDBClusterParameterGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteDBClusterParameterGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Stops a DB instance. When you stop a DB instance, Amazon RDS retains the DB
  instance's metadata, including its endpoint, DB parameter group, and option
  group membership. Amazon RDS also retains the transaction logs so you can
  do a point-in-time restore if necessary. For more information, see Stopping
  and Starting a DB instance in the AWS RDS user guide.
  """
  def stop_d_b_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopDBInstance",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "StopDBInstanceMessage",
      output_shape:     "StopDBInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all of the attributes for a customer account. The attributes include
  Amazon RDS quotas for the account, such as the number of DB instances
  allowed. The description for a quota includes the quota name, current usage
  toward that quota, and the quota's maximum value.

  This command does not take any parameters.
  """
  def describe_account_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAccountAttributes",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeAccountAttributesMessage",
      output_shape:     "AccountAttributesMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a DB subnet group.

  <note> The specified database subnet group must not be associated with any
  DB instances.

  </note>
  """
  def delete_d_b_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDBSubnetGroup",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteDBSubnetGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about DB snapshots. This API action supports
  pagination.
  """
  def describe_d_b_snapshots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDBSnapshots",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeDBSnapshotsMessage",
      output_shape:     "DBSnapshotMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of resources (for example, DB instances) that have at least
  one pending maintenance action.
  """
  def describe_pending_maintenance_actions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePendingMaintenanceActions",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribePendingMaintenanceActionsMessage",
      output_shape:     "PendingMaintenanceActionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes all available options.
  """
  def describe_option_group_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeOptionGroupOptions",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DescribeOptionGroupOptionsMessage",
      output_shape:     "OptionGroupOptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  The DeleteDBCluster action deletes a previously provisioned DB cluster.
  When you delete a DB cluster, all automated backups for that DB cluster are
  deleted and cannot be recovered. Manual DB cluster snapshots of the
  specified DB cluster are not deleted.

  <p/> For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def delete_d_b_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDBCluster",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "DeleteDBClusterMessage",
      output_shape:     "DeleteDBClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Enables ingress to a DBSecurityGroup using one of two forms of
  authorization. First, EC2 or VPC security groups can be added to the
  DBSecurityGroup if the application using the database is running on EC2 or
  VPC instances. Second, IP ranges are available if the application accessing
  your database is running on the Internet. Required parameters for this API
  are one of CIDR range, EC2SecurityGroupId for VPC, or
  (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
  EC2SecurityGroupId for non-VPC).

  <note> You cannot authorize ingress from an EC2 security group in one AWS
  Region to an Amazon RDS DB instance in another. You cannot authorize
  ingress from a VPC security group in one VPC to an Amazon RDS DB instance
  in another.

  </note> For an overview of CIDR ranges, go to the [Wikipedia
  Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def authorize_d_b_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "rds",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AuthorizeDBSecurityGroupIngress",
      
      endpoint_prefix:  "rds",
      type:             :xml,
      version:          "2014-10-31",
      method:           :post,
      input_shape:      "AuthorizeDBSecurityGroupIngressMessage",
      output_shape:     "AuthorizeDBSecurityGroupIngressResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"OptionGroupOption" => %{"members" => %{"DefaultPort" => %{"shape" => "IntegerOptional"}, "Description" => %{"shape" => "String"}, "EngineName" => %{"shape" => "String"}, "MajorEngineVersion" => %{"shape" => "String"}, "MinimumRequiredMinorEngineVersion" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "OptionGroupOptionSettings" => %{"shape" => "OptionGroupOptionSettingsList"}, "OptionGroupOptionVersions" => %{"shape" => "OptionGroupOptionVersionsList"}, "OptionsConflictsWith" => %{"shape" => "OptionsConflictsWith"}, "OptionsDependedOn" => %{"shape" => "OptionsDependedOn"}, "Permanent" => %{"shape" => "Boolean"}, "Persistent" => %{"shape" => "Boolean"}, "PortRequired" => %{"shape" => "Boolean"}, "RequiresAutoMinorEngineVersionUpgrade" => %{"shape" => "Boolean"}, "SupportsOptionVersionDowngrade" => %{"shape" => "BooleanOptional"}, "VpcOnly" => %{"shape" => "Boolean"}}, "type" => "structure"}, "KeyList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "CreateDBClusterParameterGroupResult" => %{"members" => %{"DBClusterParameterGroup" => %{"shape" => "DBClusterParameterGroup"}}, "type" => "structure"}, "DBCluster" => %{"members" => %{"BackupRetentionPeriod" => %{"shape" => "IntegerOptional"}, "DBClusterIdentifier" => %{"shape" => "String"}, "IAMDatabaseAuthenticationEnabled" => %{"shape" => "Boolean"}, "LatestRestorableTime" => %{"shape" => "TStamp"}, "PercentProgress" => %{"shape" => "String"}, "EarliestRestorableTime" => %{"shape" => "TStamp"}, "ReplicationSourceIdentifier" => %{"shape" => "String"}, "DBClusterOptionGroupMemberships" => %{"shape" => "DBClusterOptionGroupMemberships"}, "MultiAZ" => %{"shape" => "Boolean"}, "PreferredBackupWindow" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "DBClusterParameterGroup" => %{"shape" => "String"}, "ReadReplicaIdentifiers" => %{"shape" => "ReadReplicaIdentifierList"}, "DatabaseName" => %{"shape" => "String"}, "CharacterSetName" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "KmsKeyId" => %{"shape" => "String"}, "Endpoint" => %{"shape" => "String"}, "StorageEncrypted" => %{"shape" => "Boolean"}, "ClusterCreateTime" => %{"shape" => "TStamp"}, "Status" => %{"shape" => "String"}, "DBClusterArn" => %{"shape" => "String"}, "AllocatedStorage" => %{"shape" => "IntegerOptional"}, "AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "CloneGroupId" => %{"shape" => "String"}, "AssociatedRoles" => %{"shape" => "DBClusterRoles"}, "DBClusterMembers" => %{"shape" => "DBClusterMemberList"}, "DBSubnetGroup" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "HostedZoneId" => %{"shape" => "String"}, "ReaderEndpoint" => %{"shape" => "String"}, "DbClusterResourceId" => %{"shape" => "String"}, "MasterUsername" => %{"shape" => "String"}, "VpcSecurityGroups" => %{"shape" => "VpcSecurityGroupMembershipList"}}, "type" => "structure", "wrapper" => true}, "SourceType" => %{"enum" => ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"], "type" => "string"}, "ModifyDBSnapshotAttributeMessage" => %{"members" => %{"AttributeName" => %{"shape" => "String"}, "DBSnapshotIdentifier" => %{"shape" => "String"}, "ValuesToAdd" => %{"shape" => "AttributeValueList"}, "ValuesToRemove" => %{"shape" => "AttributeValueList"}}, "required" => ["DBSnapshotIdentifier", "AttributeName"], "type" => "structure"}, "AuthorizationQuotaExceededFault" => %{"error" => %{"code" => "AuthorizationQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubnetList" => %{"member" => %{"locationName" => "Subnet", "shape" => "Subnet"}, "type" => "list"}, "DBSecurityGroupQuotaExceededFault" => %{"error" => %{"code" => "QuotaExceeded.DBSecurityGroup", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeDBLogFilesResponse" => %{"members" => %{"DescribeDBLogFiles" => %{"shape" => "DescribeDBLogFilesList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "DBSubnetGroupMessage" => %{"members" => %{"DBSubnetGroups" => %{"shape" => "DBSubnetGroups"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "CopyDBSnapshotMessage" => %{"members" => %{"CopyTags" => %{"shape" => "BooleanOptional"}, "KmsKeyId" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "PreSignedUrl" => %{"shape" => "String"}, "SourceDBSnapshotIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TargetDBSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["SourceDBSnapshotIdentifier", "TargetDBSnapshotIdentifier"], "type" => "structure"}, "DBSecurityGroupNameList" => %{"member" => %{"locationName" => "DBSecurityGroupName", "shape" => "String"}, "type" => "list"}, "ReadReplicaDBClusterIdentifierList" => %{"member" => %{"locationName" => "ReadReplicaDBClusterIdentifier", "shape" => "String"}, "type" => "list"}, "OptionConfigurationList" => %{"member" => %{"locationName" => "OptionConfiguration", "shape" => "OptionConfiguration"}, "type" => "list"}, "DBClusterRole" => %{"members" => %{"RoleArn" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeReservedDBInstancesOfferingsMessage" => %{"members" => %{"DBInstanceClass" => %{"shape" => "String"}, "Duration" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "OfferingType" => %{"shape" => "String"}, "ProductDescription" => %{"shape" => "String"}, "ReservedDBInstancesOfferingId" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeDBClustersMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "Subnet" => %{"members" => %{"SubnetAvailabilityZone" => %{"shape" => "AvailabilityZone"}, "SubnetIdentifier" => %{"shape" => "String"}, "SubnetStatus" => %{"shape" => "String"}}, "type" => "structure"}, "TagListMessage" => %{"members" => %{"TagList" => %{"shape" => "TagList"}}, "type" => "structure"}, "OptionGroupOptionsList" => %{"member" => %{"locationName" => "OptionGroupOption", "shape" => "OptionGroupOption"}, "type" => "list"}, "StartDBInstanceMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}}, "required" => ["DBInstanceIdentifier"], "type" => "structure"}, "Parameter" => %{"members" => %{"AllowedValues" => %{"shape" => "String"}, "ApplyMethod" => %{"shape" => "ApplyMethod"}, "ApplyType" => %{"shape" => "String"}, "DataType" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "IsModifiable" => %{"shape" => "Boolean"}, "MinimumEngineVersion" => %{"shape" => "String"}, "ParameterName" => %{"shape" => "String"}, "ParameterValue" => %{"shape" => "String"}, "Source" => %{"shape" => "String"}}, "type" => "structure"}, "OrderableDBInstanceOptionsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "OrderableDBInstanceOptions" => %{"shape" => "OrderableDBInstanceOptionsList"}}, "type" => "structure"}, "InvalidDBClusterSnapshotStateFault" => %{"error" => %{"code" => "InvalidDBClusterSnapshotStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBSnapshotNotFoundFault" => %{"error" => %{"code" => "DBSnapshotNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBParameterGroup" => %{"members" => %{"DBParameterGroupArn" => %{"shape" => "String"}, "DBParameterGroupFamily" => %{"shape" => "String"}, "DBParameterGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "ReservedDBInstanceNotFoundFault" => %{"error" => %{"code" => "ReservedDBInstanceNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidOptionGroupStateFault" => %{"error" => %{"code" => "InvalidOptionGroupStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SourceRegionList" => %{"member" => %{"locationName" => "SourceRegion", "shape" => "SourceRegion"}, "type" => "list"}, "String" => %{"type" => "string"}, "EC2SecurityGroup" => %{"members" => %{"EC2SecurityGroupId" => %{"shape" => "String"}, "EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "DBClusterParameterGroupList" => %{"member" => %{"locationName" => "DBClusterParameterGroup", "shape" => "DBClusterParameterGroup"}, "type" => "list"}, "EventCategoriesMap" => %{"members" => %{"EventCategories" => %{"shape" => "EventCategoriesList"}, "SourceType" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "RestoreDBInstanceToPointInTimeMessage" => %{"members" => %{"AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AvailabilityZone" => %{"shape" => "String"}, "CopyTagsToSnapshot" => %{"shape" => "BooleanOptional"}, "DBInstanceClass" => %{"shape" => "String"}, "DBName" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "Domain" => %{"shape" => "String"}, "DomainIAMRoleName" => %{"shape" => "String"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "Engine" => %{"shape" => "String"}, "Iops" => %{"shape" => "IntegerOptional"}, "LicenseModel" => %{"shape" => "String"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "OptionGroupName" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "RestoreTime" => %{"shape" => "TStamp"}, "SourceDBInstanceIdentifier" => %{"shape" => "String"}, "StorageType" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TargetDBInstanceIdentifier" => %{"shape" => "String"}, "TdeCredentialArn" => %{"shape" => "String"}, "TdeCredentialPassword" => %{"shape" => "String"}, "UseLatestRestorableTime" => %{"shape" => "Boolean"}}, "required" => ["SourceDBInstanceIdentifier", "TargetDBInstanceIdentifier"], "type" => "structure"}, "ModifyDBClusterSnapshotAttributeResult" => %{"members" => %{"DBClusterSnapshotAttributesResult" => %{"shape" => "DBClusterSnapshotAttributesResult"}}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "DBInstance" => %{"members" => %{"PromotionTier" => %{"shape" => "IntegerOptional"}, "BackupRetentionPeriod" => %{"shape" => "Integer"}, "DBClusterIdentifier" => %{"shape" => "String"}, "TdeCredentialArn" => %{"shape" => "String"}, "EnhancedMonitoringResourceArn" => %{"shape" => "String"}, "ReadReplicaSourceDBInstanceIdentifier" => %{"shape" => "String"}, "IAMDatabaseAuthenticationEnabled" => %{"shape" => "Boolean"}, "LatestRestorableTime" => %{"shape" => "TStamp"}, "ReadReplicaDBInstanceIdentifiers" => %{"shape" => "ReadReplicaDBInstanceIdentifierList"}, "LicenseModel" => %{"shape" => "String"}, "DomainMemberships" => %{"shape" => "DomainMembershipList"}, "MonitoringInterval" => %{"shape" => "IntegerOptional"}, "MultiAZ" => %{"shape" => "Boolean"}, "PreferredBackupWindow" => %{"shape" => "String"}, "OptionGroupMemberships" => %{"shape" => "OptionGroupMembershipList"}, "DbiResourceId" => %{"shape" => "String"}, "CharacterSetName" => %{"shape" => "String"}, "DbInstancePort" => %{"shape" => "Integer"}, "StatusInfos" => %{"shape" => "DBInstanceStatusInfoList"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "StorageType" => %{"shape" => "String"}, "PendingModifiedValues" => %{"shape" => "PendingModifiedValues"}, "KmsKeyId" => %{"shape" => "String"}, "CACertificateIdentifier" => %{"shape" => "String"}, "DBInstanceClass" => %{"shape" => "String"}, "Endpoint" => %{"shape" => "Endpoint"}, "StorageEncrypted" => %{"shape" => "Boolean"}, "DBParameterGroups" => %{"shape" => "DBParameterGroupStatusList"}, "PubliclyAccessible" => %{"shape" => "Boolean"}, "MonitoringRoleArn" => %{"shape" => "String"}, "AvailabilityZone" => %{"shape" => "String"}, "ReadReplicaDBClusterIdentifiers" => %{"shape" => "ReadReplicaDBClusterIdentifierList"}, "Timezone" => %{"shape" => "String"}, "SecondaryAvailabilityZone" => %{"shape" => "String"}, "DBInstanceStatus" => %{"shape" => "String"}, "AllocatedStorage" => %{"shape" => "Integer"}, "DBSecurityGroups" => %{"shape" => "DBSecurityGroupMembershipList"}, "AutoMinorVersionUpgrade" => %{"shape" => "Boolean"}, "DBSubnetGroup" => %{"shape" => "DBSubnetGroup"}, "CopyTagsToSnapshot" => %{"shape" => "Boolean"}, "DBName" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "DBInstanceArn" => %{"shape" => "String"}, "Iops" => %{"shape" => "IntegerOptional"}, "MasterUsername" => %{"shape" => "String"}, "VpcSecurityGroups" => %{"shape" => "VpcSecurityGroupMembershipList"}, "InstanceCreateTime" => %{"shape" => "TStamp"}, "DBInstanceIdentifier" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "ReservedDBInstanceQuotaExceededFault" => %{"error" => %{"code" => "ReservedDBInstanceQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CertificateNotFoundFault" => %{"error" => %{"code" => "CertificateNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteDBClusterParameterGroupMessage" => %{"members" => %{"DBClusterParameterGroupName" => %{"shape" => "String"}}, "required" => ["DBClusterParameterGroupName"], "type" => "structure"}, "CreateDBClusterParameterGroupMessage" => %{"members" => %{"DBClusterParameterGroupName" => %{"shape" => "String"}, "DBParameterGroupFamily" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["DBClusterParameterGroupName", "DBParameterGroupFamily", "Description"], "type" => "structure"}, "OptionVersion" => %{"members" => %{"IsDefault" => %{"shape" => "Boolean"}, "Version" => %{"shape" => "String"}}, "type" => "structure"}, "DBInstanceNotFoundFault" => %{"error" => %{"code" => "DBInstanceNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AuthorizationNotFoundFault" => %{"error" => %{"code" => "AuthorizationNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PromoteReadReplicaResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "SubnetAlreadyInUse" => %{"error" => %{"code" => "SubnetAlreadyInUse", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeDBClusterParameterGroupsMessage" => %{"members" => %{"DBClusterParameterGroupName" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "DescribeDBSecurityGroupsMessage" => %{"members" => %{"DBSecurityGroupName" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "DeleteEventSubscriptionResult" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "VpcSecurityGroupMembershipList" => %{"member" => %{"locationName" => "VpcSecurityGroupMembership", "shape" => "VpcSecurityGroupMembership"}, "type" => "list"}, "OptionGroup" => %{"members" => %{"AllowsVpcAndNonVpcInstanceMemberships" => %{"shape" => "Boolean"}, "EngineName" => %{"shape" => "String"}, "MajorEngineVersion" => %{"shape" => "String"}, "OptionGroupArn" => %{"shape" => "String"}, "OptionGroupDescription" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "Options" => %{"shape" => "OptionsList"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "OptionSettingConfigurationList" => %{"member" => %{"locationName" => "OptionSetting", "shape" => "OptionSetting"}, "type" => "list"}, "DBClusterQuotaExceededFault" => %{"error" => %{"code" => "DBClusterQuotaExceededFault", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventList" => %{"member" => %{"locationName" => "Event", "shape" => "Event"}, "type" => "list"}, "OrderableDBInstanceOptionsList" => %{"member" => %{"locationName" => "OrderableDBInstanceOption", "shape" => "OrderableDBInstanceOption"}, "type" => "list"}, "DBClusterParameterGroupNameMessage" => %{"members" => %{"DBClusterParameterGroupName" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyDBClusterParameterGroupMessage" => %{"members" => %{"DBClusterParameterGroupName" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "required" => ["DBClusterParameterGroupName", "Parameters"], "type" => "structure"}, "CharacterSet" => %{"members" => %{"CharacterSetDescription" => %{"shape" => "String"}, "CharacterSetName" => %{"shape" => "String"}}, "type" => "structure"}, "AddSourceIdentifierToSubscriptionResult" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "CreateDBClusterSnapshotResult" => %{"members" => %{"DBClusterSnapshot" => %{"shape" => "DBClusterSnapshot"}}, "type" => "structure"}, "InvalidS3BucketFault" => %{"error" => %{"code" => "InvalidS3BucketFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SnapshotQuotaExceededFault" => %{"error" => %{"code" => "SnapshotQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateDBInstanceReadReplicaMessage" => %{"members" => %{"AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AvailabilityZone" => %{"shape" => "String"}, "CopyTagsToSnapshot" => %{"shape" => "BooleanOptional"}, "DBInstanceClass" => %{"shape" => "String"}, "DBInstanceIdentifier" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "Iops" => %{"shape" => "IntegerOptional"}, "KmsKeyId" => %{"shape" => "String"}, "MonitoringInterval" => %{"shape" => "IntegerOptional"}, "MonitoringRoleArn" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "PreSignedUrl" => %{"shape" => "String"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "SourceDBInstanceIdentifier" => %{"shape" => "String"}, "StorageType" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["DBInstanceIdentifier", "SourceDBInstanceIdentifier"], "type" => "structure"}, "DBClusterOptionGroupMemberships" => %{"member" => %{"locationName" => "DBClusterOptionGroup", "shape" => "DBClusterOptionGroupStatus"}, "type" => "list"}, "StorageQuotaExceededFault" => %{"error" => %{"code" => "StorageQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DownloadDBLogFilePortionMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}, "LogFileName" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "NumberOfLines" => %{"shape" => "Integer"}}, "required" => ["DBInstanceIdentifier", "LogFileName"], "type" => "structure"}, "ApplyPendingMaintenanceActionResult" => %{"members" => %{"ResourcePendingMaintenanceActions" => %{"shape" => "ResourcePendingMaintenanceActions"}}, "type" => "structure"}, "DBSnapshotAlreadyExistsFault" => %{"error" => %{"code" => "DBSnapshotAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBClusterSnapshot" => %{"members" => %{"AllocatedStorage" => %{"shape" => "Integer"}, "AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "ClusterCreateTime" => %{"shape" => "TStamp"}, "DBClusterIdentifier" => %{"shape" => "String"}, "DBClusterSnapshotArn" => %{"shape" => "String"}, "DBClusterSnapshotIdentifier" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "IAMDatabaseAuthenticationEnabled" => %{"shape" => "Boolean"}, "KmsKeyId" => %{"shape" => "String"}, "LicenseModel" => %{"shape" => "String"}, "MasterUsername" => %{"shape" => "String"}, "PercentProgress" => %{"shape" => "Integer"}, "Port" => %{"shape" => "Integer"}, "SnapshotCreateTime" => %{"shape" => "TStamp"}, "SnapshotType" => %{"shape" => "String"}, "SourceDBClusterSnapshotArn" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "StorageEncrypted" => %{"shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "InvalidDBSecurityGroupStateFault" => %{"error" => %{"code" => "InvalidDBSecurityGroupState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InsufficientDBClusterCapacityFault" => %{"error" => %{"code" => "InsufficientDBClusterCapacityFault", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeEventCategoriesMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "SourceType" => %{"shape" => "String"}}, "type" => "structure"}, "CopyDBClusterSnapshotMessage" => %{"members" => %{"CopyTags" => %{"shape" => "BooleanOptional"}, "KmsKeyId" => %{"shape" => "String"}, "PreSignedUrl" => %{"shape" => "String"}, "SourceDBClusterSnapshotIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TargetDBClusterSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["SourceDBClusterSnapshotIdentifier", "TargetDBClusterSnapshotIdentifier"], "type" => "structure"}, "DBInstanceList" => %{"member" => %{"locationName" => "DBInstance", "shape" => "DBInstance"}, "type" => "list"}, "EventSubscriptionsList" => %{"member" => %{"locationName" => "EventSubscription", "shape" => "EventSubscription"}, "type" => "list"}, "SourceNotFoundFault" => %{"error" => %{"code" => "SourceNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventSubscriptionsMessage" => %{"members" => %{"EventSubscriptionsList" => %{"shape" => "EventSubscriptionsList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "CreateDBSecurityGroupMessage" => %{"members" => %{"DBSecurityGroupDescription" => %{"shape" => "String"}, "DBSecurityGroupName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["DBSecurityGroupName", "DBSecurityGroupDescription"], "type" => "structure"}, "SourceRegionMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "SourceRegions" => %{"shape" => "SourceRegionList"}}, "type" => "structure"}, "OptionGroups" => %{"members" => %{"Marker" => %{"shape" => "String"}, "OptionGroupsList" => %{"shape" => "OptionGroupsList"}}, "type" => "structure"}, "CreateDBSubnetGroupResult" => %{"members" => %{"DBSubnetGroup" => %{"shape" => "DBSubnetGroup"}}, "type" => "structure"}, "DBClusterParameterGroup" => %{"members" => %{"DBClusterParameterGroupArn" => %{"shape" => "String"}, "DBClusterParameterGroupName" => %{"shape" => "String"}, "DBParameterGroupFamily" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "AccountQuota" => %{"members" => %{"AccountQuotaName" => %{"shape" => "String"}, "Max" => %{"shape" => "Long"}, "Used" => %{"shape" => "Long"}}, "type" => "structure", "wrapper" => true}, "DeleteEventSubscriptionMessage" => %{"members" => %{"SubscriptionName" => %{"shape" => "String"}}, "required" => ["SubscriptionName"], "type" => "structure"}, "PendingMaintenanceAction" => %{"members" => %{"Action" => %{"shape" => "String"}, "AutoAppliedAfterDate" => %{"shape" => "TStamp"}, "CurrentApplyDate" => %{"shape" => "TStamp"}, "Description" => %{"shape" => "String"}, "ForcedApplyDate" => %{"shape" => "TStamp"}, "OptInStatus" => %{"shape" => "String"}}, "type" => "structure"}, "InsufficientDBInstanceCapacityFault" => %{"error" => %{"code" => "InsufficientDBInstanceCapacity", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyDBParameterGroupMessage" => %{"members" => %{"DBParameterGroupName" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "required" => ["DBParameterGroupName", "Parameters"], "type" => "structure"}, "ModifyDBSubnetGroupResult" => %{"members" => %{"DBSubnetGroup" => %{"shape" => "DBSubnetGroup"}}, "type" => "structure"}, "SNSNoAuthorizationFault" => %{"error" => %{"code" => "SNSNoAuthorization", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "StopDBInstanceMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}, "DBSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["DBInstanceIdentifier"], "type" => "structure"}, "CreateOptionGroupMessage" => %{"members" => %{"EngineName" => %{"shape" => "String"}, "MajorEngineVersion" => %{"shape" => "String"}, "OptionGroupDescription" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["OptionGroupName", "EngineName", "MajorEngineVersion", "OptionGroupDescription"], "type" => "structure"}, "SourceIdsList" => %{"member" => %{"locationName" => "SourceId", "shape" => "String"}, "type" => "list"}, "DescribeEngineDefaultClusterParametersMessage" => %{"members" => %{"DBParameterGroupFamily" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "required" => ["DBParameterGroupFamily"], "type" => "structure"}, "SupportedTimezonesList" => %{"member" => %{"locationName" => "Timezone", "shape" => "Timezone"}, "type" => "list"}, "OptionNamesList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "CreateDBClusterSnapshotMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}, "DBClusterSnapshotIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["DBClusterSnapshotIdentifier", "DBClusterIdentifier"], "type" => "structure"}, "DBClusterRoleQuotaExceededFault" => %{"error" => %{"code" => "DBClusterRoleQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBParameterGroupsMessage" => %{"members" => %{"DBParameterGroups" => %{"shape" => "DBParameterGroupList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "FailoverDBClusterMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}, "TargetDBInstanceIdentifier" => %{"shape" => "String"}}, "type" => "structure"}, "PromoteReadReplicaMessage" => %{"members" => %{"BackupRetentionPeriod" => %{"shape" => "IntegerOptional"}, "DBInstanceIdentifier" => %{"shape" => "String"}, "PreferredBackupWindow" => %{"shape" => "String"}}, "required" => ["DBInstanceIdentifier"], "type" => "structure"}, "RemoveTagsFromResourceMessage" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "TagKeys" => %{"shape" => "KeyList"}}, "required" => ["ResourceName", "TagKeys"], "type" => "structure"}, "RestoreDBInstanceFromDBSnapshotResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "SNSInvalidTopicFault" => %{"error" => %{"code" => "SNSInvalidTopic", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Option" => %{"members" => %{"DBSecurityGroupMemberships" => %{"shape" => "DBSecurityGroupMembershipList"}, "OptionDescription" => %{"shape" => "String"}, "OptionName" => %{"shape" => "String"}, "OptionSettings" => %{"shape" => "OptionSettingConfigurationList"}, "OptionVersion" => %{"shape" => "String"}, "Permanent" => %{"shape" => "Boolean"}, "Persistent" => %{"shape" => "Boolean"}, "Port" => %{"shape" => "IntegerOptional"}, "VpcSecurityGroupMemberships" => %{"shape" => "VpcSecurityGroupMembershipList"}}, "type" => "structure"}, "AvailabilityZoneList" => %{"member" => %{"locationName" => "AvailabilityZone", "shape" => "AvailabilityZone"}, "type" => "list"}, "DeleteDBClusterResult" => %{"members" => %{"DBCluster" => %{"shape" => "DBCluster"}}, "type" => "structure"}, "DeleteDBSnapshotMessage" => %{"members" => %{"DBSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["DBSnapshotIdentifier"], "type" => "structure"}, "DBLogFileNotFoundFault" => %{"error" => %{"code" => "DBLogFileNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Filter" => %{"members" => %{"Name" => %{"shape" => "String"}, "Values" => %{"shape" => "FilterValueList"}}, "required" => ["Name", "Values"], "type" => "structure"}, "AuthorizationAlreadyExistsFault" => %{"error" => %{"code" => "AuthorizationAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBClusterParameterGroupsMessage" => %{"members" => %{"DBClusterParameterGroups" => %{"shape" => "DBClusterParameterGroupList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "DownloadDBLogFilePortionDetails" => %{"members" => %{"AdditionalDataPending" => %{"shape" => "Boolean"}, "LogFileData" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "AddRoleToDBClusterMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}, "RoleArn" => %{"shape" => "String"}}, "required" => ["DBClusterIdentifier", "RoleArn"], "type" => "structure"}, "CopyDBClusterParameterGroupResult" => %{"members" => %{"DBClusterParameterGroup" => %{"shape" => "DBClusterParameterGroup"}}, "type" => "structure"}, "AddTagsToResourceMessage" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceName", "Tags"], "type" => "structure"}, "ModifyDBSnapshotResult" => %{"members" => %{"DBSnapshot" => %{"shape" => "DBSnapshot"}}, "type" => "structure"}, "CreateDBSubnetGroupMessage" => %{"members" => %{"DBSubnetGroupDescription" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["DBSubnetGroupName", "DBSubnetGroupDescription", "SubnetIds"], "type" => "structure"}, "CreateDBClusterMessage" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "BackupRetentionPeriod" => %{"shape" => "IntegerOptional"}, "CharacterSetName" => %{"shape" => "String"}, "DBClusterIdentifier" => %{"shape" => "String"}, "DBClusterParameterGroupName" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "DatabaseName" => %{"shape" => "String"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "KmsKeyId" => %{"shape" => "String"}, "MasterUserPassword" => %{"shape" => "String"}, "MasterUsername" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "PreSignedUrl" => %{"shape" => "String"}, "PreferredBackupWindow" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "ReplicationSourceIdentifier" => %{"shape" => "String"}, "StorageEncrypted" => %{"shape" => "BooleanOptional"}, "Tags" => %{"shape" => "TagList"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["DBClusterIdentifier", "Engine"], "type" => "structure"}, "DescribeDBSubnetGroupsMessage" => %{"members" => %{"DBSubnetGroupName" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "InvalidDBParameterGroupStateFault" => %{"error" => %{"code" => "InvalidDBParameterGroupState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EngineDefaults" => %{"members" => %{"DBParameterGroupFamily" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "type" => "structure", "wrapper" => true}, "ResetDBClusterParameterGroupMessage" => %{"members" => %{"DBClusterParameterGroupName" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}, "ResetAllParameters" => %{"shape" => "Boolean"}}, "required" => ["DBClusterParameterGroupName"], "type" => "structure"}, "VpcSecurityGroupMembership" => %{"members" => %{"Status" => %{"shape" => "String"}, "VpcSecurityGroupId" => %{"shape" => "String"}}, "type" => "structure"}, "SubscriptionCategoryNotFoundFault" => %{"error" => %{"code" => "SubscriptionCategoryNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RestoreDBClusterToPointInTimeMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "KmsKeyId" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "RestoreToTime" => %{"shape" => "TStamp"}, "RestoreType" => %{"shape" => "String"}, "SourceDBClusterIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "UseLatestRestorableTime" => %{"shape" => "Boolean"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["DBClusterIdentifier", "SourceDBClusterIdentifier"], "type" => "structure"}, "DBParameterGroupAlreadyExistsFault" => %{"error" => %{"code" => "DBParameterGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBParameterGroupNotFoundFault" => %{"error" => %{"code" => "DBParameterGroupNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBParameterGroupStatusList" => %{"member" => %{"locationName" => "DBParameterGroup", "shape" => "DBParameterGroupStatus"}, "type" => "list"}, "DBSubnetQuotaExceededFault" => %{"error" => %{"code" => "DBSubnetQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateEventSubscriptionMessage" => %{"members" => %{"Enabled" => %{"shape" => "BooleanOptional"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceIds" => %{"shape" => "SourceIdsList"}, "SourceType" => %{"shape" => "String"}, "SubscriptionName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["SubscriptionName", "SnsTopicArn"], "type" => "structure"}, "DBInstanceStatusInfoList" => %{"member" => %{"locationName" => "DBInstanceStatusInfo", "shape" => "DBInstanceStatusInfo"}, "type" => "list"}, "ReservedDBInstanceList" => %{"member" => %{"locationName" => "ReservedDBInstance", "shape" => "ReservedDBInstance"}, "type" => "list"}, "DBSnapshotList" => %{"member" => %{"locationName" => "DBSnapshot", "shape" => "DBSnapshot"}, "type" => "list"}, "DBEngineVersion" => %{"members" => %{"DBEngineDescription" => %{"shape" => "String"}, "DBEngineVersionDescription" => %{"shape" => "String"}, "DBParameterGroupFamily" => %{"shape" => "String"}, "DefaultCharacterSet" => %{"shape" => "CharacterSet"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "SupportedCharacterSets" => %{"shape" => "SupportedCharacterSetsList"}, "SupportedTimezones" => %{"shape" => "SupportedTimezonesList"}, "ValidUpgradeTarget" => %{"shape" => "ValidUpgradeTargetList"}}, "type" => "structure"}, "ValidUpgradeTargetList" => %{"member" => %{"locationName" => "UpgradeTarget", "shape" => "UpgradeTarget"}, "type" => "list"}, "InstanceQuotaExceededFault" => %{"error" => %{"code" => "InstanceQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ReadReplicaDBInstanceIdentifierList" => %{"member" => %{"locationName" => "ReadReplicaDBInstanceIdentifier", "shape" => "String"}, "type" => "list"}, "PurchaseReservedDBInstancesOfferingResult" => %{"members" => %{"ReservedDBInstance" => %{"shape" => "ReservedDBInstance"}}, "type" => "structure"}, "DescribeDBEngineVersionsMessage" => %{"members" => %{"DBParameterGroupFamily" => %{"shape" => "String"}, "DefaultOnly" => %{"shape" => "Boolean"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "ListSupportedCharacterSets" => %{"shape" => "BooleanOptional"}, "ListSupportedTimezones" => %{"shape" => "BooleanOptional"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "DeleteDBClusterSnapshotResult" => %{"members" => %{"DBClusterSnapshot" => %{"shape" => "DBClusterSnapshot"}}, "type" => "structure"}, "FilterValueList" => %{"member" => %{"locationName" => "Value", "shape" => "String"}, "type" => "list"}, "DeleteDBParameterGroupMessage" => %{"members" => %{"DBParameterGroupName" => %{"shape" => "String"}}, "required" => ["DBParameterGroupName"], "type" => "structure"}, "PendingMaintenanceActionsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "PendingMaintenanceActions" => %{"shape" => "PendingMaintenanceActions"}}, "type" => "structure"}, "KMSKeyNotAccessibleFault" => %{"error" => %{"code" => "KMSKeyNotAccessibleFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventSubscription" => %{"members" => %{"CustSubscriptionId" => %{"shape" => "String"}, "CustomerAwsId" => %{"shape" => "String"}, "Enabled" => %{"shape" => "Boolean"}, "EventCategoriesList" => %{"shape" => "EventCategoriesList"}, "EventSubscriptionArn" => %{"shape" => "String"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceIdsList" => %{"shape" => "SourceIdsList"}, "SourceType" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "SubscriptionCreationTime" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "DeleteDBInstanceMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}, "FinalDBSnapshotIdentifier" => %{"shape" => "String"}, "SkipFinalSnapshot" => %{"shape" => "Boolean"}}, "required" => ["DBInstanceIdentifier"], "type" => "structure"}, "DescribeEngineDefaultParametersResult" => %{"members" => %{"EngineDefaults" => %{"shape" => "EngineDefaults"}}, "type" => "structure"}, "DBClusterNotFoundFault" => %{"error" => %{"code" => "DBClusterNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PendingModifiedValues" => %{"members" => %{"AllocatedStorage" => %{"shape" => "IntegerOptional"}, "BackupRetentionPeriod" => %{"shape" => "IntegerOptional"}, "CACertificateIdentifier" => %{"shape" => "String"}, "DBInstanceClass" => %{"shape" => "String"}, "DBInstanceIdentifier" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "Iops" => %{"shape" => "IntegerOptional"}, "LicenseModel" => %{"shape" => "String"}, "MasterUserPassword" => %{"shape" => "String"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "Port" => %{"shape" => "IntegerOptional"}, "StorageType" => %{"shape" => "String"}}, "type" => "structure"}, "DBSecurityGroupAlreadyExistsFault" => %{"error" => %{"code" => "DBSecurityGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "OptionGroupOptionSetting" => %{"members" => %{"AllowedValues" => %{"shape" => "String"}, "ApplyType" => %{"shape" => "String"}, "DefaultValue" => %{"shape" => "String"}, "IsModifiable" => %{"shape" => "Boolean"}, "SettingDescription" => %{"shape" => "String"}, "SettingName" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyDBClusterMessage" => %{"members" => %{"ApplyImmediately" => %{"shape" => "Boolean"}, "BackupRetentionPeriod" => %{"shape" => "IntegerOptional"}, "DBClusterIdentifier" => %{"shape" => "String"}, "DBClusterParameterGroupName" => %{"shape" => "String"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "MasterUserPassword" => %{"shape" => "String"}, "NewDBClusterIdentifier" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "PreferredBackupWindow" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["DBClusterIdentifier"], "type" => "structure"}, "DescribeCertificatesMessage" => %{"members" => %{"CertificateIdentifier" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "PointInTimeRestoreNotEnabledFault" => %{"error" => %{"code" => "PointInTimeRestoreNotEnabled", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBSecurityGroupNotSupportedFault" => %{"error" => %{"code" => "DBSecurityGroupNotSupported", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBSnapshotMessage" => %{"members" => %{"DBSnapshots" => %{"shape" => "DBSnapshotList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "RecurringCharge" => %{"members" => %{"RecurringChargeAmount" => %{"shape" => "Double"}, "RecurringChargeFrequency" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "DomainMembership" => %{"members" => %{"Domain" => %{"shape" => "String"}, "FQDN" => %{"shape" => "String"}, "IAMRoleName" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "OptionGroupNotFoundFault" => %{"error" => %{"code" => "OptionGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ResourceNotFoundFault" => %{"error" => %{"code" => "ResourceNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyDBSnapshotMessage" => %{"members" => %{"DBSnapshotIdentifier" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}}, "required" => ["DBSnapshotIdentifier"], "type" => "structure"}, "ApplyMethod" => %{"enum" => ["immediate", "pending-reboot"], "type" => "string"}, "Endpoint" => %{"members" => %{"Address" => %{"shape" => "String"}, "HostedZoneId" => %{"shape" => "String"}, "Port" => %{"shape" => "Integer"}}, "type" => "structure"}, "ReservedDBInstanceMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReservedDBInstances" => %{"shape" => "ReservedDBInstanceList"}}, "type" => "structure"}, "AddSourceIdentifierToSubscriptionMessage" => %{"members" => %{"SourceIdentifier" => %{"shape" => "String"}, "SubscriptionName" => %{"shape" => "String"}}, "required" => ["SubscriptionName", "SourceIdentifier"], "type" => "structure"}, "CopyOptionGroupMessage" => %{"members" => %{"SourceOptionGroupIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TargetOptionGroupDescription" => %{"shape" => "String"}, "TargetOptionGroupIdentifier" => %{"shape" => "String"}}, "required" => ["SourceOptionGroupIdentifier", "TargetOptionGroupIdentifier", "TargetOptionGroupDescription"], "type" => "structure"}, "SubnetIdentifierList" => %{"member" => %{"locationName" => "SubnetIdentifier", "shape" => "String"}, "type" => "list"}, "CopyDBClusterSnapshotResult" => %{"members" => %{"DBClusterSnapshot" => %{"shape" => "DBClusterSnapshot"}}, "type" => "structure"}, "CopyOptionGroupResult" => %{"members" => %{"OptionGroup" => %{"shape" => "OptionGroup"}}, "type" => "structure"}, "DeleteDBClusterSnapshotMessage" => %{"members" => %{"DBClusterSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["DBClusterSnapshotIdentifier"], "type" => "structure"}, "DBSecurityGroupMembership" => %{"members" => %{"DBSecurityGroupName" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "ResetDBParameterGroupMessage" => %{"members" => %{"DBParameterGroupName" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}, "ResetAllParameters" => %{"shape" => "Boolean"}}, "required" => ["DBParameterGroupName"], "type" => "structure"}, "DescribeDBSnapshotsMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}, "DBSnapshotIdentifier" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "IncludePublic" => %{"shape" => "Boolean"}, "IncludeShared" => %{"shape" => "Boolean"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SnapshotType" => %{"shape" => "String"}}, "type" => "structure"}, "OptionGroupOptionVersionsList" => %{"member" => %{"locationName" => "OptionVersion", "shape" => "OptionVersion"}, "type" => "list"}, "SubscriptionNotFoundFault" => %{"error" => %{"code" => "SubscriptionNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventSubscriptionQuotaExceededFault" => %{"error" => %{"code" => "EventSubscriptionQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TagList" => %{"member" => %{"locationName" => "Tag", "shape" => "Tag"}, "type" => "list"}, "DBClusterSnapshotAttributeList" => %{"member" => %{"locationName" => "DBClusterSnapshotAttribute", "shape" => "DBClusterSnapshotAttribute"}, "type" => "list"}, "ModifyOptionGroupMessage" => %{"members" => %{"ApplyImmediately" => %{"shape" => "Boolean"}, "OptionGroupName" => %{"shape" => "String"}, "OptionsToInclude" => %{"shape" => "OptionConfigurationList"}, "OptionsToRemove" => %{"shape" => "OptionNamesList"}}, "required" => ["OptionGroupName"], "type" => "structure"}, "CertificateList" => %{"member" => %{"locationName" => "Certificate", "shape" => "Certificate"}, "type" => "list"}, "DBEngineVersionMessage" => %{"members" => %{"DBEngineVersions" => %{"shape" => "DBEngineVersionList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "TStamp" => %{"type" => "timestamp"}, "ModifyDBInstanceMessage" => %{"members" => %{"PromotionTier" => %{"shape" => "IntegerOptional"}, "BackupRetentionPeriod" => %{"shape" => "IntegerOptional"}, "TdeCredentialArn" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "LicenseModel" => %{"shape" => "String"}, "ApplyImmediately" => %{"shape" => "Boolean"}, "MonitoringInterval" => %{"shape" => "IntegerOptional"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "PreferredBackupWindow" => %{"shape" => "String"}, "AllowMajorVersionUpgrade" => %{"shape" => "Boolean"}, "DBPortNumber" => %{"shape" => "IntegerOptional"}, "EngineVersion" => %{"shape" => "String"}, "StorageType" => %{"shape" => "String"}, "CACertificateIdentifier" => %{"shape" => "String"}, "DBInstanceClass" => %{"shape" => "String"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "NewDBInstanceIdentifier" => %{"shape" => "String"}, "MonitoringRoleArn" => %{"shape" => "String"}, "MasterUserPassword" => %{"shape" => "String"}, "AllocatedStorage" => %{"shape" => "IntegerOptional"}, "DBSecurityGroups" => %{"shape" => "DBSecurityGroupNameList"}, "TdeCredentialPassword" => %{"shape" => "String"}, "DomainIAMRoleName" => %{"shape" => "String"}, "AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "DBParameterGroupName" => %{"shape" => "String"}, "CopyTagsToSnapshot" => %{"shape" => "BooleanOptional"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "OptionGroupName" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "Iops" => %{"shape" => "IntegerOptional"}, "DBInstanceIdentifier" => %{"shape" => "String"}, "Domain" => %{"shape" => "String"}}, "required" => ["DBInstanceIdentifier"], "type" => "structure"}, "EventCategoriesMapList" => %{"member" => %{"locationName" => "EventCategoriesMap", "shape" => "EventCategoriesMap"}, "type" => "list"}, "PurchaseReservedDBInstancesOfferingMessage" => %{"members" => %{"DBInstanceCount" => %{"shape" => "IntegerOptional"}, "ReservedDBInstanceId" => %{"shape" => "String"}, "ReservedDBInstancesOfferingId" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ReservedDBInstancesOfferingId"], "type" => "structure"}, "OptionGroupMembershipList" => %{"member" => %{"locationName" => "OptionGroupMembership", "shape" => "OptionGroupMembership"}, "type" => "list"}, "RevokeDBSecurityGroupIngressResult" => %{"members" => %{"DBSecurityGroup" => %{"shape" => "DBSecurityGroup"}}, "type" => "structure"}, "InvalidDBSubnetGroupFault" => %{"error" => %{"code" => "InvalidDBSubnetGroupFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeDBClusterParametersMessage" => %{"members" => %{"DBClusterParameterGroupName" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "Source" => %{"shape" => "String"}}, "required" => ["DBClusterParameterGroupName"], "type" => "structure"}, "InvalidDBSubnetGroupStateFault" => %{"error" => %{"code" => "InvalidDBSubnetGroupStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventCategoriesList" => %{"member" => %{"locationName" => "EventCategory", "shape" => "String"}, "type" => "list"}, "SourceRegion" => %{"members" => %{"Endpoint" => %{"shape" => "String"}, "RegionName" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "RevokeDBSecurityGroupIngressMessage" => %{"members" => %{"CIDRIP" => %{"shape" => "String"}, "DBSecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupId" => %{"shape" => "String"}, "EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}}, "required" => ["DBSecurityGroupName"], "type" => "structure"}, "DescribeDBClusterSnapshotAttributesMessage" => %{"members" => %{"DBClusterSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["DBClusterSnapshotIdentifier"], "type" => "structure"}, "DBSnapshotAttributeList" => %{"member" => %{"locationName" => "DBSnapshotAttribute", "shape" => "DBSnapshotAttribute"}, "type" => "list"}, "InvalidSubnet" => %{"error" => %{"code" => "InvalidSubnet", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateDBSnapshotMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}, "DBSnapshotIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["DBSnapshotIdentifier", "DBInstanceIdentifier"], "type" => "structure"}, "DBParameterGroupDetails" => %{"members" => %{"Marker" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "type" => "structure"}, "SubscriptionAlreadyExistFault" => %{"error" => %{"code" => "SubscriptionAlreadyExist", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Double" => %{"type" => "double"}, "DescribeDBSnapshotAttributesMessage" => %{"members" => %{"DBSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["DBSnapshotIdentifier"], "type" => "structure"}, "AvailabilityZone" => %{"members" => %{"Name" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "DBSubnetGroupNotAllowedFault" => %{"error" => %{"code" => "DBSubnetGroupNotAllowedFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyOptionGroupResult" => %{"members" => %{"OptionGroup" => %{"shape" => "OptionGroup"}}, "type" => "structure"}, "OptionSettingsList" => %{"member" => %{"locationName" => "OptionSetting", "shape" => "OptionSetting"}, "type" => "list"}, "CreateDBInstanceReadReplicaResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "DescribeAccountAttributesMessage" => %{"members" => %{}, "type" => "structure"}, "SharedSnapshotQuotaExceededFault" => %{"error" => %{"code" => "SharedSnapshotQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBInstanceStatusInfo" => %{"members" => %{"Message" => %{"shape" => "String"}, "Normal" => %{"shape" => "Boolean"}, "Status" => %{"shape" => "String"}, "StatusType" => %{"shape" => "String"}}, "type" => "structure"}, "DBSecurityGroupMembershipList" => %{"member" => %{"locationName" => "DBSecurityGroup", "shape" => "DBSecurityGroupMembership"}, "type" => "list"}, "InvalidDBClusterStateFault" => %{"error" => %{"code" => "InvalidDBClusterStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "OptionGroupAlreadyExistsFault" => %{"error" => %{"code" => "OptionGroupAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CopyDBParameterGroupResult" => %{"members" => %{"DBParameterGroup" => %{"shape" => "DBParameterGroup"}}, "type" => "structure"}, "AccountAttributesMessage" => %{"members" => %{"AccountQuotas" => %{"shape" => "AccountQuotaList"}}, "type" => "structure"}, "InvalidDBSubnetStateFault" => %{"error" => %{"code" => "InvalidDBSubnetStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ReservedDBInstance" => %{"members" => %{"CurrencyCode" => %{"shape" => "String"}, "DBInstanceClass" => %{"shape" => "String"}, "DBInstanceCount" => %{"shape" => "Integer"}, "Duration" => %{"shape" => "Integer"}, "FixedPrice" => %{"shape" => "Double"}, "MultiAZ" => %{"shape" => "Boolean"}, "OfferingType" => %{"shape" => "String"}, "ProductDescription" => %{"shape" => "String"}, "RecurringCharges" => %{"shape" => "RecurringChargeList"}, "ReservedDBInstanceArn" => %{"shape" => "String"}, "ReservedDBInstanceId" => %{"shape" => "String"}, "ReservedDBInstancesOfferingId" => %{"shape" => "String"}, "StartTime" => %{"shape" => "TStamp"}, "State" => %{"shape" => "String"}, "UsagePrice" => %{"shape" => "Double"}}, "type" => "structure", "wrapper" => true}, "DBSnapshotAttributesResult" => %{"members" => %{"DBSnapshotAttributes" => %{"shape" => "DBSnapshotAttributeList"}, "DBSnapshotIdentifier" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "BooleanOptional" => %{"type" => "boolean"}, "ListTagsForResourceMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "ResourceName" => %{"shape" => "String"}}, "required" => ["ResourceName"], "type" => "structure"}, "OptionsDependedOn" => %{"member" => %{"locationName" => "OptionName", "shape" => "String"}, "type" => "list"}, "PendingMaintenanceActionDetails" => %{"member" => %{"locationName" => "PendingMaintenanceAction", "shape" => "PendingMaintenanceAction"}, "type" => "list"}, "CreateDBInstanceMessage" => %{"members" => %{"PromotionTier" => %{"shape" => "IntegerOptional"}, "BackupRetentionPeriod" => %{"shape" => "IntegerOptional"}, "DBClusterIdentifier" => %{"shape" => "String"}, "TdeCredentialArn" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "LicenseModel" => %{"shape" => "String"}, "MonitoringInterval" => %{"shape" => "IntegerOptional"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "PreferredBackupWindow" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "CharacterSetName" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "StorageType" => %{"shape" => "String"}, "KmsKeyId" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "DBInstanceClass" => %{"shape" => "String"}, "StorageEncrypted" => %{"shape" => "BooleanOptional"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "MonitoringRoleArn" => %{"shape" => "String"}, "AvailabilityZone" => %{"shape" => "String"}, "MasterUserPassword" => %{"shape" => "String"}, "Timezone" => %{"shape" => "String"}, "AllocatedStorage" => %{"shape" => "IntegerOptional"}, "DBSecurityGroups" => %{"shape" => "DBSecurityGroupNameList"}, "TdeCredentialPassword" => %{"shape" => "String"}, "DomainIAMRoleName" => %{"shape" => "String"}, "AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "DBParameterGroupName" => %{"shape" => "String"}, "CopyTagsToSnapshot" => %{"shape" => "BooleanOptional"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "OptionGroupName" => %{"shape" => "String"}, "DBName" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "Iops" => %{"shape" => "IntegerOptional"}, "MasterUsername" => %{"shape" => "String"}, "DBInstanceIdentifier" => %{"shape" => "String"}, "Domain" => %{"shape" => "String"}}, "required" => ["DBInstanceIdentifier", "DBInstanceClass", "Engine"], "type" => "structure"}, "Timezone" => %{"members" => %{"TimezoneName" => %{"shape" => "String"}}, "type" => "structure"}, "DBSubnetGroupQuotaExceededFault" => %{"error" => %{"code" => "DBSubnetGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidVPCNetworkStateFault" => %{"error" => %{"code" => "InvalidVPCNetworkStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeDBLogFilesMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}, "FileLastWritten" => %{"shape" => "Long"}, "FileSize" => %{"shape" => "Long"}, "FilenameContains" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "required" => ["DBInstanceIdentifier"], "type" => "structure"}, "Long" => %{"type" => "long"}, "InvalidDBInstanceStateFault" => %{"error" => %{"code" => "InvalidDBInstanceState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateEventSubscriptionResult" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "DeleteDBSubnetGroupMessage" => %{"members" => %{"DBSubnetGroupName" => %{"shape" => "String"}}, "required" => ["DBSubnetGroupName"], "type" => "structure"}, "DBInstanceAlreadyExistsFault" => %{"error" => %{"code" => "DBInstanceAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "OptionGroupQuotaExceededFault" => %{"error" => %{"code" => "OptionGroupQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "OptionsConflictsWith" => %{"member" => %{"locationName" => "OptionConflictName", "shape" => "String"}, "type" => "list"}, "DBInstanceMessage" => %{"members" => %{"DBInstances" => %{"shape" => "DBInstanceList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "DBParameterGroupList" => %{"member" => %{"locationName" => "DBParameterGroup", "shape" => "DBParameterGroup"}, "type" => "list"}, "PendingMaintenanceActions" => %{"member" => %{"locationName" => "ResourcePendingMaintenanceActions", "shape" => "ResourcePendingMaintenanceActions"}, "type" => "list"}, "DescribePendingMaintenanceActionsMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ResourceIdentifier" => %{"shape" => "String"}}, "type" => "structure"}, "RemoveSourceIdentifierFromSubscriptionResult" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "RestoreDBClusterFromS3Message" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "BackupRetentionPeriod" => %{"shape" => "IntegerOptional"}, "CharacterSetName" => %{"shape" => "String"}, "DBClusterIdentifier" => %{"shape" => "String"}, "DBClusterParameterGroupName" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "DatabaseName" => %{"shape" => "String"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "KmsKeyId" => %{"shape" => "String"}, "MasterUserPassword" => %{"shape" => "String"}, "MasterUsername" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "PreferredBackupWindow" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "S3BucketName" => %{"shape" => "String"}, "S3IngestionRoleArn" => %{"shape" => "String"}, "S3Prefix" => %{"shape" => "String"}, "SourceEngine" => %{"shape" => "String"}, "SourceEngineVersion" => %{"shape" => "String"}, "StorageEncrypted" => %{"shape" => "BooleanOptional"}, "Tags" => %{"shape" => "TagList"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["DBClusterIdentifier", "Engine", "MasterUsername", "MasterUserPassword", "SourceEngine", "SourceEngineVersion", "S3BucketName", "S3IngestionRoleArn"], "type" => "structure"}, "DescribeEventSubscriptionsMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SubscriptionName" => %{"shape" => "String"}}, "type" => "structure"}, "DBUpgradeDependencyFailureFault" => %{"error" => %{"code" => "DBUpgradeDependencyFailure", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBClusterRoleAlreadyExistsFault" => %{"error" => %{"code" => "DBClusterRoleAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeOptionGroupOptionsMessage" => %{"members" => %{"EngineName" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "MajorEngineVersion" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "required" => ["EngineName"], "type" => "structure"}, "AuthorizeDBSecurityGroupIngressResult" => %{"members" => %{"DBSecurityGroup" => %{"shape" => "DBSecurityGroup"}}, "type" => "structure"}, "OptionSetting" => %{"members" => %{"AllowedValues" => %{"shape" => "String"}, "ApplyType" => %{"shape" => "String"}, "DataType" => %{"shape" => "String"}, "DefaultValue" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "IsCollection" => %{"shape" => "Boolean"}, "IsModifiable" => %{"shape" => "Boolean"}, "Name" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "AuthorizeDBSecurityGroupIngressMessage" => %{"members" => %{"CIDRIP" => %{"shape" => "String"}, "DBSecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupId" => %{"shape" => "String"}, "EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}}, "required" => ["DBSecurityGroupName"], "type" => "structure"}, "OptionGroupOptionsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "OptionGroupOptions" => %{"shape" => "OptionGroupOptionsList"}}, "type" => "structure"}, "DescribeEngineDefaultClusterParametersResult" => %{"members" => %{"EngineDefaults" => %{"shape" => "EngineDefaults"}}, "type" => "structure"}, "ModifyDBClusterSnapshotAttributeMessage" => %{"members" => %{"AttributeName" => %{"shape" => "String"}, "DBClusterSnapshotIdentifier" => %{"shape" => "String"}, "ValuesToAdd" => %{"shape" => "AttributeValueList"}, "ValuesToRemove" => %{"shape" => "AttributeValueList"}}, "required" => ["DBClusterSnapshotIdentifier", "AttributeName"], "type" => "structure"}, "DBClusterMessage" => %{"members" => %{"DBClusters" => %{"shape" => "DBClusterList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeDBInstancesMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "DBClusterSnapshotAttribute" => %{"members" => %{"AttributeName" => %{"shape" => "String"}, "AttributeValues" => %{"shape" => "AttributeValueList"}}, "type" => "structure"}, "DBSubnetGroupNotFoundFault" => %{"error" => %{"code" => "DBSubnetGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AvailabilityZones" => %{"member" => %{"locationName" => "AvailabilityZone", "shape" => "String"}, "type" => "list"}, "StorageTypeNotSupportedFault" => %{"error" => %{"code" => "StorageTypeNotSupported", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateDBInstanceResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "ModifyDBClusterResult" => %{"members" => %{"DBCluster" => %{"shape" => "DBCluster"}}, "type" => "structure"}, "DescribeEventsMessage" => %{"members" => %{"Duration" => %{"shape" => "IntegerOptional"}, "EndTime" => %{"shape" => "TStamp"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SourceIdentifier" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}, "StartTime" => %{"shape" => "TStamp"}}, "type" => "structure"}, "RestoreDBInstanceToPointInTimeResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "DBClusterSnapshotMessage" => %{"members" => %{"DBClusterSnapshots" => %{"shape" => "DBClusterSnapshotList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "DBClusterMemberList" => %{"member" => %{"locationName" => "DBClusterMember", "shape" => "DBClusterMember"}, "type" => "list"}, "DBClusterList" => %{"member" => %{"locationName" => "DBCluster", "shape" => "DBCluster"}, "type" => "list"}, "DBClusterParameterGroupDetails" => %{"members" => %{"Marker" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "type" => "structure"}, "DBClusterParameterGroupNotFoundFault" => %{"error" => %{"code" => "DBClusterParameterGroupNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CopyDBClusterParameterGroupMessage" => %{"members" => %{"SourceDBClusterParameterGroupIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TargetDBClusterParameterGroupDescription" => %{"shape" => "String"}, "TargetDBClusterParameterGroupIdentifier" => %{"shape" => "String"}}, "required" => ["SourceDBClusterParameterGroupIdentifier", "TargetDBClusterParameterGroupIdentifier", "TargetDBClusterParameterGroupDescription"], "type" => "structure"}, "FailoverDBClusterResult" => %{"members" => %{"DBCluster" => %{"shape" => "DBCluster"}}, "type" => "structure"}, "DBClusterSnapshotAttributesResult" => %{"members" => %{"DBClusterSnapshotAttributes" => %{"shape" => "DBClusterSnapshotAttributeList"}, "DBClusterSnapshotIdentifier" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "DBSecurityGroups" => %{"member" => %{"locationName" => "DBSecurityGroup", "shape" => "DBSecurityGroup"}, "type" => "list"}, "OptionGroupOptionSettingsList" => %{"member" => %{"locationName" => "OptionGroupOptionSetting", "shape" => "OptionGroupOptionSetting"}, "type" => "list"}, "CreateDBSecurityGroupResult" => %{"members" => %{"DBSecurityGroup" => %{"shape" => "DBSecurityGroup"}}, "type" => "structure"}, "RestoreDBClusterFromSnapshotMessage" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "DBClusterIdentifier" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "DatabaseName" => %{"shape" => "String"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "KmsKeyId" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "SnapshotIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["DBClusterIdentifier", "SnapshotIdentifier", "Engine"], "type" => "structure"}, "DescribeOrderableDBInstanceOptionsMessage" => %{"members" => %{"DBInstanceClass" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "LicenseModel" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "Vpc" => %{"shape" => "BooleanOptional"}}, "required" => ["Engine"], "type" => "structure"}, "DeleteOptionGroupMessage" => %{"members" => %{"OptionGroupName" => %{"shape" => "String"}}, "required" => ["OptionGroupName"], "type" => "structure"}, "DBSubnetGroupAlreadyExistsFault" => %{"error" => %{"code" => "DBSubnetGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBClusterRoles" => %{"member" => %{"locationName" => "DBClusterRole", "shape" => "DBClusterRole"}, "type" => "list"}, "DBClusterSnapshotList" => %{"member" => %{"locationName" => "DBClusterSnapshot", "shape" => "DBClusterSnapshot"}, "type" => "list"}, "ReservedDBInstancesOffering" => %{"members" => %{"CurrencyCode" => %{"shape" => "String"}, "DBInstanceClass" => %{"shape" => "String"}, "Duration" => %{"shape" => "Integer"}, "FixedPrice" => %{"shape" => "Double"}, "MultiAZ" => %{"shape" => "Boolean"}, "OfferingType" => %{"shape" => "String"}, "ProductDescription" => %{"shape" => "String"}, "RecurringCharges" => %{"shape" => "RecurringChargeList"}, "ReservedDBInstancesOfferingId" => %{"shape" => "String"}, "UsagePrice" => %{"shape" => "Double"}}, "type" => "structure", "wrapper" => true}, "DescribeOptionGroupsMessage" => %{"members" => %{"EngineName" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "MajorEngineVersion" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "OptionGroupName" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeReservedDBInstancesMessage" => %{"members" => %{"DBInstanceClass" => %{"shape" => "String"}, "Duration" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "OfferingType" => %{"shape" => "String"}, "ProductDescription" => %{"shape" => "String"}, "ReservedDBInstanceId" => %{"shape" => "String"}, "ReservedDBInstancesOfferingId" => %{"shape" => "String"}}, "type" => "structure"}, "CreateDBParameterGroupMessage" => %{"members" => %{"DBParameterGroupFamily" => %{"shape" => "String"}, "DBParameterGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["DBParameterGroupName", "DBParameterGroupFamily", "Description"], "type" => "structure"}, "FilterList" => %{"member" => %{"locationName" => "Filter", "shape" => "Filter"}, "type" => "list"}, "AttributeValueList" => %{"member" => %{"locationName" => "AttributeValue", "shape" => "String"}, "type" => "list"}, "InvalidDBSnapshotStateFault" => %{"error" => %{"code" => "InvalidDBSnapshotState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBParameterGroupStatus" => %{"members" => %{"DBParameterGroupName" => %{"shape" => "String"}, "ParameterApplyStatus" => %{"shape" => "String"}}, "type" => "structure"}, "DBClusterSnapshotNotFoundFault" => %{"error" => %{"code" => "DBClusterSnapshotNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBSubnetGroup" => %{"members" => %{"DBSubnetGroupArn" => %{"shape" => "String"}, "DBSubnetGroupDescription" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "SubnetGroupStatus" => %{"shape" => "String"}, "Subnets" => %{"shape" => "SubnetList"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "ModifyDBSnapshotAttributeResult" => %{"members" => %{"DBSnapshotAttributesResult" => %{"shape" => "DBSnapshotAttributesResult"}}, "type" => "structure"}, "ModifyEventSubscriptionMessage" => %{"members" => %{"Enabled" => %{"shape" => "BooleanOptional"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceType" => %{"shape" => "String"}, "SubscriptionName" => %{"shape" => "String"}}, "required" => ["SubscriptionName"], "type" => "structure"}, "AccountQuotaList" => %{"member" => %{"locationName" => "AccountQuota", "shape" => "AccountQuota"}, "type" => "list"}, "ModifyDBSubnetGroupMessage" => %{"members" => %{"DBSubnetGroupDescription" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}}, "required" => ["DBSubnetGroupName", "SubnetIds"], "type" => "structure"}, "CreateOptionGroupResult" => %{"members" => %{"OptionGroup" => %{"shape" => "OptionGroup"}}, "type" => "structure"}, "DBClusterRoleNotFoundFault" => %{"error" => %{"code" => "DBClusterRoleNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DomainMembershipList" => %{"member" => %{"locationName" => "DomainMembership", "shape" => "DomainMembership"}, "type" => "list"}, "DeleteDBSnapshotResult" => %{"members" => %{"DBSnapshot" => %{"shape" => "DBSnapshot"}}, "type" => "structure"}, "DescribeDBParameterGroupsMessage" => %{"members" => %{"DBParameterGroupName" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "DescribeDBParametersMessage" => %{"members" => %{"DBParameterGroupName" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "Source" => %{"shape" => "String"}}, "required" => ["DBParameterGroupName"], "type" => "structure"}, "OrderableDBInstanceOption" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZoneList"}, "DBInstanceClass" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "LicenseModel" => %{"shape" => "String"}, "MultiAZCapable" => %{"shape" => "Boolean"}, "ReadReplicaCapable" => %{"shape" => "Boolean"}, "StorageType" => %{"shape" => "String"}, "SupportsEnhancedMonitoring" => %{"shape" => "Boolean"}, "SupportsIAMDatabaseAuthentication" => %{"shape" => "Boolean"}, "SupportsIops" => %{"shape" => "Boolean"}, "SupportsStorageEncryption" => %{"shape" => "Boolean"}, "Vpc" => %{"shape" => "Boolean"}}, "type" => "structure", "wrapper" => true}, "DBSecurityGroupMessage" => %{"members" => %{"DBSecurityGroups" => %{"shape" => "DBSecurityGroups"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "StartDBInstanceResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "DomainNotFoundFault" => %{"error" => %{"code" => "DomainNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeDBLogFilesList" => %{"member" => %{"locationName" => "DescribeDBLogFilesDetails", "shape" => "DescribeDBLogFilesDetails"}, "type" => "list"}, "DBClusterOptionGroupStatus" => %{"members" => %{"DBClusterOptionGroupName" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeDBClusterSnapshotsMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}, "DBClusterSnapshotIdentifier" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "IncludePublic" => %{"shape" => "Boolean"}, "IncludeShared" => %{"shape" => "Boolean"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SnapshotType" => %{"shape" => "String"}}, "type" => "structure"}, "ResourcePendingMaintenanceActions" => %{"members" => %{"PendingMaintenanceActionDetails" => %{"shape" => "PendingMaintenanceActionDetails"}, "ResourceIdentifier" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "OptionsList" => %{"member" => %{"locationName" => "Option", "shape" => "Option"}, "type" => "list"}, "SupportedCharacterSetsList" => %{"member" => %{"locationName" => "CharacterSet", "shape" => "CharacterSet"}, "type" => "list"}, "InsufficientStorageClusterCapacityFault" => %{"error" => %{"code" => "InsufficientStorageClusterCapacity", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "OptionGroupsList" => %{"member" => %{"locationName" => "OptionGroup", "shape" => "OptionGroup"}, "type" => "list"}, "DBParameterGroupQuotaExceededFault" => %{"error" => %{"code" => "DBParameterGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DBSubnetGroupDoesNotCoverEnoughAZs" => %{"error" => %{"code" => "DBSubnetGroupDoesNotCoverEnoughAZs", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteDBInstanceResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "RestoreDBClusterFromSnapshotResult" => %{"members" => %{"DBCluster" => %{"shape" => "DBCluster"}}, "type" => "structure"}, "DBSecurityGroupNotFoundFault" => %{"error" => %{"code" => "DBSecurityGroupNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RemoveSourceIdentifierFromSubscriptionMessage" => %{"members" => %{"SourceIdentifier" => %{"shape" => "String"}, "SubscriptionName" => %{"shape" => "String"}}, "required" => ["SubscriptionName", "SourceIdentifier"], "type" => "structure"}, "CopyDBParameterGroupMessage" => %{"members" => %{"SourceDBParameterGroupIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TargetDBParameterGroupDescription" => %{"shape" => "String"}, "TargetDBParameterGroupIdentifier" => %{"shape" => "String"}}, "required" => ["SourceDBParameterGroupIdentifier", "TargetDBParameterGroupIdentifier", "TargetDBParameterGroupDescription"], "type" => "structure"}, "RestoreDBClusterFromS3Result" => %{"members" => %{"DBCluster" => %{"shape" => "DBCluster"}}, "type" => "structure"}, "ParametersList" => %{"member" => %{"locationName" => "Parameter", "shape" => "Parameter"}, "type" => "list"}, "DBSnapshot" => %{"members" => %{"AllocatedStorage" => %{"shape" => "Integer"}, "AvailabilityZone" => %{"shape" => "String"}, "DBInstanceIdentifier" => %{"shape" => "String"}, "DBSnapshotArn" => %{"shape" => "String"}, "DBSnapshotIdentifier" => %{"shape" => "String"}, "Encrypted" => %{"shape" => "Boolean"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "IAMDatabaseAuthenticationEnabled" => %{"shape" => "Boolean"}, "InstanceCreateTime" => %{"shape" => "TStamp"}, "Iops" => %{"shape" => "IntegerOptional"}, "KmsKeyId" => %{"shape" => "String"}, "LicenseModel" => %{"shape" => "String"}, "MasterUsername" => %{"shape" => "String"}, "OptionGroupName" => %{"shape" => "String"}, "PercentProgress" => %{"shape" => "Integer"}, "Port" => %{"shape" => "Integer"}, "SnapshotCreateTime" => %{"shape" => "TStamp"}, "SnapshotType" => %{"shape" => "String"}, "SourceDBSnapshotIdentifier" => %{"shape" => "String"}, "SourceRegion" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "StorageType" => %{"shape" => "String"}, "TdeCredentialArn" => %{"shape" => "String"}, "Timezone" => %{"shape" => "String"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "DeleteDBSecurityGroupMessage" => %{"members" => %{"DBSecurityGroupName" => %{"shape" => "String"}}, "required" => ["DBSecurityGroupName"], "type" => "structure"}, "EventsMessage" => %{"members" => %{"Events" => %{"shape" => "EventList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyDBInstanceResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "OptionGroupMembership" => %{"members" => %{"OptionGroupName" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "RebootDBInstanceMessage" => %{"members" => %{"DBInstanceIdentifier" => %{"shape" => "String"}, "ForceFailover" => %{"shape" => "BooleanOptional"}}, "required" => ["DBInstanceIdentifier"], "type" => "structure"}, "StopDBInstanceResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "Event" => %{"members" => %{"Date" => %{"shape" => "TStamp"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "Message" => %{"shape" => "String"}, "SourceArn" => %{"shape" => "String"}, "SourceIdentifier" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}}, "type" => "structure"}, "DescribeDBSnapshotAttributesResult" => %{"members" => %{"DBSnapshotAttributesResult" => %{"shape" => "DBSnapshotAttributesResult"}}, "type" => "structure"}, "ReservedDBInstancesOfferingList" => %{"member" => %{"locationName" => "ReservedDBInstancesOffering", "shape" => "ReservedDBInstancesOffering"}, "type" => "list"}, "ReservedDBInstancesOfferingNotFoundFault" => %{"error" => %{"code" => "ReservedDBInstancesOfferingNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidEventSubscriptionStateFault" => %{"error" => %{"code" => "InvalidEventSubscriptionState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ApplyPendingMaintenanceActionMessage" => %{"members" => %{"ApplyAction" => %{"shape" => "String"}, "OptInType" => %{"shape" => "String"}, "ResourceIdentifier" => %{"shape" => "String"}}, "required" => ["ResourceIdentifier", "ApplyAction", "OptInType"], "type" => "structure"}, "VpcSecurityGroupIdList" => %{"member" => %{"locationName" => "VpcSecurityGroupId", "shape" => "String"}, "type" => "list"}, "InvalidRestoreFault" => %{"error" => %{"code" => "InvalidRestoreFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "IntegerOptional" => %{"type" => "integer"}, "CreateDBParameterGroupResult" => %{"members" => %{"DBParameterGroup" => %{"shape" => "DBParameterGroup"}}, "type" => "structure"}, "RestoreDBClusterToPointInTimeResult" => %{"members" => %{"DBCluster" => %{"shape" => "DBCluster"}}, "type" => "structure"}, "ModifyEventSubscriptionResult" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "ReadReplicaIdentifierList" => %{"member" => %{"locationName" => "ReadReplicaIdentifier", "shape" => "String"}, "type" => "list"}, "PromoteReadReplicaDBClusterResult" => %{"members" => %{"DBCluster" => %{"shape" => "DBCluster"}}, "type" => "structure"}, "RebootDBInstanceResult" => %{"members" => %{"DBInstance" => %{"shape" => "DBInstance"}}, "type" => "structure"}, "DBSubnetGroups" => %{"member" => %{"locationName" => "DBSubnetGroup", "shape" => "DBSubnetGroup"}, "type" => "list"}, "Integer" => %{"type" => "integer"}, "DBParameterGroupNameMessage" => %{"members" => %{"DBParameterGroupName" => %{"shape" => "String"}}, "type" => "structure"}, "IPRangeList" => %{"member" => %{"locationName" => "IPRange", "shape" => "IPRange"}, "type" => "list"}, "RecurringChargeList" => %{"member" => %{"locationName" => "RecurringCharge", "shape" => "RecurringCharge"}, "type" => "list"}, "ProvisionedIopsNotAvailableInAZFault" => %{"error" => %{"code" => "ProvisionedIopsNotAvailableInAZFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateDBSnapshotResult" => %{"members" => %{"DBSnapshot" => %{"shape" => "DBSnapshot"}}, "type" => "structure"}, "DBSecurityGroup" => %{"members" => %{"DBSecurityGroupArn" => %{"shape" => "String"}, "DBSecurityGroupDescription" => %{"shape" => "String"}, "DBSecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroups" => %{"shape" => "EC2SecurityGroupList"}, "IPRanges" => %{"shape" => "IPRangeList"}, "OwnerId" => %{"shape" => "String"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "OptionConfiguration" => %{"members" => %{"DBSecurityGroupMemberships" => %{"shape" => "DBSecurityGroupNameList"}, "OptionName" => %{"shape" => "String"}, "OptionSettings" => %{"shape" => "OptionSettingsList"}, "OptionVersion" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "VpcSecurityGroupMemberships" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["OptionName"], "type" => "structure"}, "CertificateMessage" => %{"members" => %{"Certificates" => %{"shape" => "CertificateList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "ReservedDBInstancesOfferingMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReservedDBInstancesOfferings" => %{"shape" => "ReservedDBInstancesOfferingList"}}, "type" => "structure"}, "DescribeDBLogFilesDetails" => %{"members" => %{"LastWritten" => %{"shape" => "Long"}, "LogFileName" => %{"shape" => "String"}, "Size" => %{"shape" => "Long"}}, "type" => "structure"}, "DBClusterMember" => %{"members" => %{"DBClusterParameterGroupStatus" => %{"shape" => "String"}, "DBInstanceIdentifier" => %{"shape" => "String"}, "IsClusterWriter" => %{"shape" => "Boolean"}, "PromotionTier" => %{"shape" => "IntegerOptional"}}, "type" => "structure", "wrapper" => true}, "DBSnapshotAttribute" => %{"members" => %{"AttributeName" => %{"shape" => "String"}, "AttributeValues" => %{"shape" => "AttributeValueList"}}, "type" => "structure", "wrapper" => true}, "EC2SecurityGroupList" => %{"member" => %{"locationName" => "EC2SecurityGroup", "shape" => "EC2SecurityGroup"}, "type" => "list"}, "SNSTopicArnNotFoundFault" => %{"error" => %{"code" => "SNSTopicArnNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "IPRange" => %{"members" => %{"CIDRIP" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "Certificate" => %{"members" => %{"CertificateArn" => %{"shape" => "String"}, "CertificateIdentifier" => %{"shape" => "String"}, "CertificateType" => %{"shape" => "String"}, "Thumbprint" => %{"shape" => "String"}, "ValidFrom" => %{"shape" => "TStamp"}, "ValidTill" => %{"shape" => "TStamp"}}, "type" => "structure", "wrapper" => true}, "DescribeSourceRegionsMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "RegionName" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteDBClusterMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}, "FinalDBSnapshotIdentifier" => %{"shape" => "String"}, "SkipFinalSnapshot" => %{"shape" => "Boolean"}}, "required" => ["DBClusterIdentifier"], "type" => "structure"}, "DBClusterAlreadyExistsFault" => %{"error" => %{"code" => "DBClusterAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RemoveRoleFromDBClusterMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}, "RoleArn" => %{"shape" => "String"}}, "required" => ["DBClusterIdentifier", "RoleArn"], "type" => "structure"}, "DBClusterSnapshotAlreadyExistsFault" => %{"error" => %{"code" => "DBClusterSnapshotAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateDBClusterResult" => %{"members" => %{"DBCluster" => %{"shape" => "DBCluster"}}, "type" => "structure"}, "UpgradeTarget" => %{"members" => %{"AutoUpgrade" => %{"shape" => "Boolean"}, "Description" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "IsMajorVersionUpgrade" => %{"shape" => "Boolean"}}, "type" => "structure"}, "PromoteReadReplicaDBClusterMessage" => %{"members" => %{"DBClusterIdentifier" => %{"shape" => "String"}}, "required" => ["DBClusterIdentifier"], "type" => "structure"}, "DBEngineVersionList" => %{"member" => %{"locationName" => "DBEngineVersion", "shape" => "DBEngineVersion"}, "type" => "list"}, "EventCategoriesMessage" => %{"members" => %{"EventCategoriesMapList" => %{"shape" => "EventCategoriesMapList"}}, "type" => "structure"}, "DescribeEngineDefaultParametersMessage" => %{"members" => %{"DBParameterGroupFamily" => %{"shape" => "String"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "required" => ["DBParameterGroupFamily"], "type" => "structure"}, "ReservedDBInstanceAlreadyExistsFault" => %{"error" => %{"code" => "ReservedDBInstanceAlreadyExists", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CopyDBSnapshotResult" => %{"members" => %{"DBSnapshot" => %{"shape" => "DBSnapshot"}}, "type" => "structure"}, "RestoreDBInstanceFromDBSnapshotMessage" => %{"members" => %{"AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AvailabilityZone" => %{"shape" => "String"}, "CopyTagsToSnapshot" => %{"shape" => "BooleanOptional"}, "DBInstanceClass" => %{"shape" => "String"}, "DBInstanceIdentifier" => %{"shape" => "String"}, "DBName" => %{"shape" => "String"}, "DBSnapshotIdentifier" => %{"shape" => "String"}, "DBSubnetGroupName" => %{"shape" => "String"}, "Domain" => %{"shape" => "String"}, "DomainIAMRoleName" => %{"shape" => "String"}, "EnableIAMDatabaseAuthentication" => %{"shape" => "BooleanOptional"}, "Engine" => %{"shape" => "String"}, "Iops" => %{"shape" => "IntegerOptional"}, "LicenseModel" => %{"shape" => "String"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "OptionGroupName" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "StorageType" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TdeCredentialArn" => %{"shape" => "String"}, "TdeCredentialPassword" => %{"shape" => "String"}}, "required" => ["DBInstanceIdentifier", "DBSnapshotIdentifier"], "type" => "structure"}, "DescribeDBClusterSnapshotAttributesResult" => %{"members" => %{"DBClusterSnapshotAttributesResult" => %{"shape" => "DBClusterSnapshotAttributesResult"}}, "type" => "structure"}}
  end
end