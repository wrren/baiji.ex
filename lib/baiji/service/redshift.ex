defmodule Baiji.Redshift do
  @moduledoc """
  Amazon Redshift

  **Overview**

  This is an interface reference for Amazon Redshift. It contains
  documentation for one of the programming or command line interfaces you can
  use to manage Amazon Redshift clusters. Note that Amazon Redshift is
  asynchronous, which means that some interfaces may require techniques, such
  as polling or asynchronous callback handlers, to determine when a command
  has been applied. In this reference, the parameter descriptions indicate
  whether a change is applied immediately, on the next instance reboot, or
  during the next maintenance window. For a summary of the Amazon Redshift
  cluster management interfaces, go to [Using the Amazon Redshift Management
  Interfaces](http://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html).

  Amazon Redshift manages all the work of setting up, operating, and scaling
  a data warehouse: provisioning capacity, monitoring and backing up the
  cluster, and applying patches and upgrades to the Amazon Redshift engine.
  You can focus on using your data to acquire new insights for your business
  and customers.

  If you are a first-time user of Amazon Redshift, we recommend that you
  begin by reading the [Amazon Redshift Getting Started
  Guide](http://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html).

  If you are a database developer, the [Amazon Redshift Database Developer
  Guide](http://docs.aws.amazon.com/redshift/latest/dg/welcome.html) explains
  how to design, build, query, and maintain the databases that make up your
  data warehouse.
  """
  
  @doc """
  Enables the automatic copy of snapshots from one region to another region
  for a specified cluster.
  """
  def enable_snapshot_copy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableSnapshotCopy",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "EnableSnapshotCopyMessage",
      output_shape:     "EnableSnapshotCopyResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Revokes an ingress rule in an Amazon Redshift security group for a
  previously authorized IP range or Amazon EC2 security group. To add an
  ingress rule, see `AuthorizeClusterSecurityGroupIngress`. For information
  about managing security groups, go to [Amazon Redshift Cluster Security
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def revoke_cluster_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RevokeClusterSecurityGroupIngress",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "RevokeClusterSecurityGroupIngressMessage",
      output_shape:     "RevokeClusterSecurityGroupIngressResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a previously provisioned cluster. A successful response from the
  web service indicates that the request was received correctly. Use
  `DescribeClusters` to monitor the status of the deletion. The delete
  operation cannot be canceled or reverted once submitted. For more
  information about managing clusters, go to [Amazon Redshift
  Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.

  If you want to shut down the cluster and retain it for future use, set
  *SkipFinalClusterSnapshot* to `false` and specify a name for
  *FinalClusterSnapshotIdentifier*. You can later restore this snapshot to
  resume using the cluster. If a final cluster snapshot is requested, the
  status of the cluster will be "final-snapshot" while the snapshot is being
  taken, then it's "deleting" once Amazon Redshift begins deleting the
  cluster.

  For more information about managing clusters, go to [Amazon Redshift
  Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def delete_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCluster",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteClusterMessage",
      output_shape:     "DeleteClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a manual snapshot of the specified cluster. The cluster must be in
  the `available` state.

  For more information about working with snapshots, go to [Amazon Redshift
  Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def create_cluster_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateClusterSnapshot",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateClusterSnapshotMessage",
      output_shape:     "CreateClusterSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of snapshot copy grants owned by the AWS account in the
  destination region.

  For more information about managing snapshot copy grants, go to [Amazon
  Redshift Database
  Encryption](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def describe_snapshot_copy_grants(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSnapshotCopyGrants",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeSnapshotCopyGrantsMessage",
      output_shape:     "SnapshotCopyGrantMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Authorizes the specified AWS customer account to restore the specified
  snapshot.

  For more information about working with snapshots, go to [Amazon Redshift
  Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def authorize_snapshot_access(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AuthorizeSnapshotAccess",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "AuthorizeSnapshotAccessMessage",
      output_shape:     "AuthorizeSnapshotAccessResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about the specified Amazon Redshift HSM configuration.
  If no configuration ID is specified, returns information about all the HSM
  configurations owned by your AWS customer account.

  If you specify both tag keys and tag values in the same request, Amazon
  Redshift returns all HSM connections that match any combination of the
  specified keys and values. For example, if you have `owner` and
  `environment` for tag keys, and `admin` and `test` for tag values, all HSM
  connections that have any combination of those values are returned.

  If both tag keys and values are omitted from the request, HSM connections
  are returned regardless of whether they have tag keys or values associated
  with them.
  """
  def describe_hsm_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeHsmConfigurations",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeHsmConfigurationsMessage",
      output_shape:     "HsmConfigurationMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified HSM client certificate.
  """
  def delete_hsm_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteHsmClientCertificate",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteHsmClientCertificateMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about the last resize operation for the specified
  cluster. If no resize operation has ever been initiated for the specified
  cluster, a `HTTP 404` error is returned. If a resize operation was
  initiated and completed, the status of the resize remains as `SUCCEEDED`
  until the next resize.

  A resize operation can be requested using `ModifyCluster` and specifying a
  different number or type of nodes for the cluster.
  """
  def describe_resize(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeResize",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeResizeMessage",
      output_shape:     "ResizeProgressMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts logging information, such as queries and connection attempts, for
  the specified Amazon Redshift cluster.
  """
  def enable_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableLogging",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "EnableLoggingMessage",
      output_shape:     "LoggingStatus",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns events related to clusters, security groups, snapshots, and
  parameter groups for the past 14 days. Events specific to a particular
  cluster, security group, snapshot or parameter group can be obtained by
  providing the name as a parameter. By default, the past hour of events are
  returned.
  """
  def describe_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEvents",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeEventsMessage",
      output_shape:     "EventsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of parameter settings for the specified parameter group
  family.

  For more information about parameters and parameter groups, go to [Amazon
  Redshift Parameter
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def describe_default_cluster_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDefaultClusterParameters",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeDefaultClusterParametersMessage",
      output_shape:     "DescribeDefaultClusterParametersResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Rotates the encryption keys for a cluster.
  """
  def rotate_encryption_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RotateEncryptionKey",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "RotateEncryptionKeyMessage",
      output_shape:     "RotateEncryptionKeyResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes an Amazon Redshift security group.

  <note> You cannot delete a security group that is associated with any
  clusters. You cannot delete the default security group.

  </note> For information about managing security groups, go to [Amazon
  Redshift Cluster Security
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def delete_cluster_security_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteClusterSecurityGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteClusterSecurityGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets one or more parameters of the specified parameter group to their
  default values and sets the source values of the parameters to
  "engine-default". To reset the entire parameter group specify the
  *ResetAllParameters* parameter. For parameter changes to take effect you
  must reboot any associated clusters.
  """
  def reset_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetClusterParameterGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "ResetClusterParameterGroupMessage",
      output_shape:     "ClusterParameterGroupNameMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Reboots a cluster. This action is taken as soon as possible. It results in
  a momentary outage to the cluster, during which the cluster status is set
  to `rebooting`. A cluster event is created when the reboot is completed.
  Any pending cluster modifications (see `ModifyCluster`) are applied at this
  reboot. For more information about managing clusters, go to [Amazon
  Redshift
  Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def reboot_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RebootCluster",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "RebootClusterMessage",
      output_shape:     "RebootClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about Amazon Redshift security groups. If the name of a
  security group is specified, the response will contain only information
  about only that security group.

  For information about managing security groups, go to [Amazon Redshift
  Cluster Security
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.

  If you specify both tag keys and tag values in the same request, Amazon
  Redshift returns all security groups that match any combination of the
  specified keys and values. For example, if you have `owner` and
  `environment` for tag keys, and `admin` and `test` for tag values, all
  security groups that have any combination of those values are returned.

  If both tag keys and values are omitted from the request, security groups
  are returned regardless of whether they have tag keys or values associated
  with them.
  """
  def describe_cluster_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusterSecurityGroups",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeClusterSecurityGroupsMessage",
      output_shape:     "ClusterSecurityGroupMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of the available reserved node offerings by Amazon Redshift
  with their descriptions including the node type, the fixed and recurring
  costs of reserving the node and duration the node will be reserved for you.
  These descriptions help you determine which reserve node offering you want
  to purchase. You then use the unique offering ID in you call to
  `PurchaseReservedNodeOffering` to reserve one or more nodes for your Amazon
  Redshift cluster.

  For more information about reserved node offerings, go to [Purchasing
  Reserved
  Nodes](http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def describe_reserved_node_offerings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedNodeOfferings",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeReservedNodeOfferingsMessage",
      output_shape:     "ReservedNodeOfferingsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes an Amazon Redshift event notification subscription.
  """
  def delete_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteEventSubscription",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteEventSubscriptionMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the settings for a cluster. For example, you can add another
  security or parameter group, update the preferred maintenance window, or
  change the master user password. Resetting a cluster password or modifying
  the security groups associated with a cluster do not need a reboot.
  However, modifying a parameter group requires a reboot for parameters to
  take effect. For more information about managing clusters, go to [Amazon
  Redshift
  Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.

  You can also change node type and the number of nodes to scale up or down
  the cluster. When resizing a cluster, you must specify both the number of
  nodes and the node type even if one of the parameters does not change.
  """
  def modify_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyCluster",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "ModifyClusterMessage",
      output_shape:     "ModifyClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of Amazon Redshift parameter groups, including parameter
  groups you created and the default parameter group. For each parameter
  group, the response includes the parameter group name, description, and
  parameter group family name. You can optionally specify a name to retrieve
  the description of a specific parameter group.

  For more information about parameters and parameter groups, go to [Amazon
  Redshift Parameter
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.

  If you specify both tag keys and tag values in the same request, Amazon
  Redshift returns all parameter groups that match any combination of the
  specified keys and values. For example, if you have `owner` and
  `environment` for tag keys, and `admin` and `test` for tag values, all
  parameter groups that have any combination of those values are returned.

  If both tag keys and values are omitted from the request, parameter groups
  are returned regardless of whether they have tag keys or values associated
  with them.
  """
  def describe_cluster_parameter_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusterParameterGroups",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeClusterParameterGroupsMessage",
      output_shape:     "ClusterParameterGroupsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an Amazon Redshift event notification subscription. This action
  requires an ARN (Amazon Resource Name) of an Amazon SNS topic created by
  either the Amazon Redshift console, the Amazon SNS console, or the Amazon
  SNS API. To obtain an ARN with Amazon SNS, you must create a topic in
  Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS
  console.

  You can specify the source type, and lists of Amazon Redshift source IDs,
  event categories, and event severities. Notifications will be sent for all
  events you want that match those criteria. For example, you can specify
  source type = cluster, source ID = my-cluster-1 and mycluster2, event
  categories = Availability, Backup, and severity = ERROR. The subscription
  will only send notifications for those ERROR events in the Availability and
  Backup categories for the specified clusters.

  If you specify both the source type and source IDs, such as source type =
  cluster and source identifier = my-cluster-1, notifications will be sent
  for all the cluster events for my-cluster-1. If you specify a source type
  but do not specify a source identifier, you will receive notice of the
  events for the objects of that type in your AWS account. If you do not
  specify either the SourceType nor the SourceIdentifier, you will be
  notified of events generated from all Amazon Redshift sources belonging to
  your AWS account. You must specify a source type if you specify a source
  ID.
  """
  def create_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateEventSubscription",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateEventSubscriptionMessage",
      output_shape:     "CreateEventSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies a cluster subnet group to include the specified list of VPC
  subnets. The operation replaces the existing list of subnets with the new
  list of subnets.
  """
  def modify_cluster_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyClusterSubnetGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "ModifyClusterSubnetGroupMessage",
      output_shape:     "ModifyClusterSubnetGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified Amazon Redshift HSM configuration.
  """
  def delete_hsm_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteHsmConfiguration",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteHsmConfigurationMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes whether information, such as queries and connection attempts, is
  being logged for the specified Amazon Redshift cluster.
  """
  def describe_logging_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLoggingStatus",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeLoggingStatusMessage",
      output_shape:     "LoggingStatus",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the number of days to retain automated snapshots in the
  destination region after they are copied from the source region.
  """
  def modify_snapshot_copy_retention_period(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifySnapshotCopyRetentionPeriod",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "ModifySnapshotCopyRetentionPeriodMessage",
      output_shape:     "ModifySnapshotCopyRetentionPeriodResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified cluster subnet group.
  """
  def delete_cluster_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteClusterSubnetGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteClusterSubnetGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about the specified HSM client certificate. If no
  certificate ID is specified, returns information about all the HSM
  certificates owned by your AWS customer account.

  If you specify both tag keys and tag values in the same request, Amazon
  Redshift returns all HSM client certificates that match any combination of
  the specified keys and values. For example, if you have `owner` and
  `environment` for tag keys, and `admin` and `test` for tag values, all HSM
  client certificates that have any combination of those values are returned.

  If both tag keys and values are omitted from the request, HSM client
  certificates are returned regardless of whether they have tag keys or
  values associated with them.
  """
  def describe_hsm_client_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeHsmClientCertificates",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeHsmClientCertificatesMessage",
      output_shape:     "HsmClientCertificateMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds an inbound (ingress) rule to an Amazon Redshift security group.
  Depending on whether the application accessing your cluster is running on
  the Internet or an Amazon EC2 instance, you can authorize inbound access to
  either a Classless Interdomain Routing (CIDR)/Internet Protocol (IP) range
  or to an Amazon EC2 security group. You can add as many as 20 ingress rules
  to an Amazon Redshift security group.

  If you authorize access to an Amazon EC2 security group, specify
  *EC2SecurityGroupName* and *EC2SecurityGroupOwnerId*. The Amazon EC2
  security group and Amazon Redshift cluster must be in the same AWS region.

  If you authorize access to a CIDR/IP address range, specify *CIDRIP*. For
  an overview of CIDR blocks, see the Wikipedia article on [Classless
  Inter-Domain
  Routing](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

  You must also associate the security group with a cluster so that clients
  running on these IP addresses or the EC2 instance are authorized to connect
  to the cluster. For information about managing security groups, go to
  [Working with Security
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def authorize_cluster_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AuthorizeClusterSecurityGroupIngress",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "AuthorizeClusterSecurityGroupIngressMessage",
      output_shape:     "AuthorizeClusterSecurityGroupIngressResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new cluster from a snapshot. By default, Amazon Redshift creates
  the resulting cluster with the same configuration as the original cluster
  from which the snapshot was created, except that the new cluster is created
  with the default cluster security and parameter groups. After Amazon
  Redshift creates the cluster, you can use the `ModifyCluster` API to
  associate a different security group and different parameter group with the
  restored cluster. If you are using a DS node type, you can also choose to
  change to another DS node type of the same size during restore.

  If you restore a cluster into a VPC, you must provide a cluster subnet
  group where you want the cluster restored.

  For more information about working with snapshots, go to [Amazon Redshift
  Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def restore_from_cluster_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreFromClusterSnapshot",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "RestoreFromClusterSnapshotMessage",
      output_shape:     "RestoreFromClusterSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of orderable cluster options. Before you create a new
  cluster you can use this operation to find what options are available, such
  as the EC2 Availability Zones (AZ) in the specific AWS region that you can
  specify, and the node types you can request. The node types differ by
  available storage, memory, CPU and price. With the cost involved you might
  want to obtain a list of cluster options in the specific region and specify
  values when creating a cluster. For more information about managing
  clusters, go to [Amazon Redshift
  Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def describe_orderable_cluster_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeOrderableClusterOptions",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeOrderableClusterOptionsMessage",
      output_shape:     "OrderableClusterOptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Copies the specified automated cluster snapshot to a new manual cluster
  snapshot. The source must be an automated snapshot and it must be in the
  available state.

  When you delete a cluster, Amazon Redshift deletes any automated snapshots
  of the cluster. Also, when the retention period of the snapshot expires,
  Amazon Redshift automatically deletes it. If you want to keep an automated
  snapshot for a longer period, you can make a manual copy of the snapshot.
  Manual snapshots are retained until you delete them.

  For more information about working with snapshots, go to [Amazon Redshift
  Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def copy_cluster_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopyClusterSnapshot",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CopyClusterSnapshotMessage",
      output_shape:     "CopyClusterSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Allows you to purchase reserved nodes. Amazon Redshift offers a predefined
  set of reserved node offerings. You can purchase one or more of the
  offerings. You can call the `DescribeReservedNodeOfferings` API to obtain
  the available reserved node offerings. You can call this API by providing a
  specific reserved node offering and the number of nodes you want to
  reserve.

  For more information about reserved node offerings, go to [Purchasing
  Reserved
  Nodes](http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def purchase_reserved_node_offering(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PurchaseReservedNodeOffering",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "PurchaseReservedNodeOfferingMessage",
      output_shape:     "PurchaseReservedNodeOfferingResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new Amazon Redshift security group. You use security groups to
  control access to non-VPC clusters.

  For information about managing security groups, go to [Amazon Redshift
  Cluster Security
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def create_cluster_security_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateClusterSecurityGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateClusterSecurityGroupMessage",
      output_shape:     "CreateClusterSecurityGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified manual snapshot. The snapshot must be in the
  `available` state, with no other users authorized to access the snapshot.

  Unlike automated snapshots, manual snapshots are retained even after you
  delete your cluster. Amazon Redshift does not delete your manual snapshots.
  You must delete manual snapshot explicitly to avoid getting charged. If
  other accounts are authorized to access the snapshot, you must revoke all
  of the authorizations before you can delete the snapshot.
  """
  def delete_cluster_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteClusterSnapshot",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteClusterSnapshotMessage",
      output_shape:     "DeleteClusterSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an Amazon Redshift parameter group.

  Creating parameter groups is independent of creating clusters. You can
  associate a cluster with a parameter group when you create the cluster. You
  can also associate an existing cluster with a parameter group after the
  cluster is created by using `ModifyCluster`.

  Parameters in the parameter group define specific behavior that applies to
  the databases you create on the cluster. For more information about
  parameters and parameter groups, go to [Amazon Redshift Parameter
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def create_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateClusterParameterGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateClusterParameterGroupMessage",
      output_shape:     "CreateClusterParameterGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a tag or tags from a resource. You must provide the ARN of the
  resource from which you want to delete the tag or tags.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTags",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteTagsMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the status of one or more table restore requests made using the
  `RestoreTableFromClusterSnapshot` API action. If you don't specify a value
  for the `TableRestoreRequestId` parameter, then
  `DescribeTableRestoreStatus` returns the status of all table restore
  requests ordered by the date and time of the request in ascending order.
  Otherwise `DescribeTableRestoreStatus` returns the status of the table
  specified by `TableRestoreRequestId`.
  """
  def describe_table_restore_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTableRestoreStatus",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeTableRestoreStatusMessage",
      output_shape:     "TableRestoreStatusMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns one or more snapshot objects, which contain metadata about your
  cluster snapshots. By default, this operation returns information about all
  snapshots of all clusters that are owned by you AWS customer account. No
  information is returned for snapshots owned by inactive AWS customer
  accounts.

  If you specify both tag keys and tag values in the same request, Amazon
  Redshift returns all snapshots that match any combination of the specified
  keys and values. For example, if you have `owner` and `environment` for tag
  keys, and `admin` and `test` for tag values, all snapshots that have any
  combination of those values are returned. Only snapshots that you own are
  returned in the response; shared snapshots are not returned with the tag
  key and tag value request parameters.

  If both tag keys and values are omitted from the request, snapshots are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  def describe_cluster_snapshots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusterSnapshots",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeClusterSnapshotsMessage",
      output_shape:     "SnapshotMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a snapshot copy grant that permits Amazon Redshift to use a
  customer master key (CMK) from AWS Key Management Service (AWS KMS) to
  encrypt copied snapshots in a destination region.

  For more information about managing snapshot copy grants, go to [Amazon
  Redshift Database
  Encryption](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def create_snapshot_copy_grant(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSnapshotCopyGrant",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateSnapshotCopyGrantMessage",
      output_shape:     "CreateSnapshotCopyGrantResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Displays a list of event categories for all event source types, or for a
  specified source type. For a list of the event categories and source types,
  go to [Amazon Redshift Event
  Notifications](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html).
  """
  def describe_event_categories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEventCategories",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeEventCategoriesMessage",
      output_shape:     "EventCategoriesMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns one or more cluster subnet group objects, which contain metadata
  about your cluster subnet groups. By default, this operation returns
  information about all cluster subnet groups that are defined in you AWS
  account.

  If you specify both tag keys and tag values in the same request, Amazon
  Redshift returns all subnet groups that match any combination of the
  specified keys and values. For example, if you have `owner` and
  `environment` for tag keys, and `admin` and `test` for tag values, all
  subnet groups that have any combination of those values are returned.

  If both tag keys and values are omitted from the request, subnet groups are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  def describe_cluster_subnet_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusterSubnetGroups",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeClusterSubnetGroupsMessage",
      output_shape:     "ClusterSubnetGroupMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a specified Amazon Redshift parameter group.

  <note> You cannot delete a parameter group if it is associated with a
  cluster.

  </note>
  """
  def delete_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteClusterParameterGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteClusterParameterGroupMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of tags. You can return tags from a specific resource by
  specifying an ARN, or you can return all tags for a given type of resource,
  such as clusters, snapshots, and so on.

  The following are limitations for `DescribeTags`:

  <ul> <li> You cannot specify an ARN and a resource-type value together in
  the same request.

  </li> <li> You cannot use the `MaxRecords` and `Marker` parameters together
  with the ARN parameter.

  </li> <li> The `MaxRecords` parameter can be a range from 10 to 50 results
  to return in a request.

  </li> </ul> If you specify both tag keys and tag values in the same
  request, Amazon Redshift returns all resources that match any combination
  of the specified keys and values. For example, if you have `owner` and
  `environment` for tag keys, and `admin` and `test` for tag values, all
  resources that have any combination of those values are returned.

  If both tag keys and values are omitted from the request, resources are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeTagsMessage",
      output_shape:     "TaggedResourceListMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the list of AWS Identity and Access Management (IAM) roles that
  can be used by the cluster to access other AWS services.

  A cluster can have up to 10 IAM roles associated at any time.
  """
  def modify_cluster_iam_roles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyClusterIamRoles",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "ModifyClusterIamRolesMessage",
      output_shape:     "ModifyClusterIamRolesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the parameters of a parameter group.

  For more information about parameters and parameter groups, go to [Amazon
  Redshift Parameter
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def modify_cluster_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyClusterParameterGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "ModifyClusterParameterGroupMessage",
      output_shape:     "ClusterParameterGroupNameMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new table from a table in an Amazon Redshift cluster snapshot.
  You must create the new table within the Amazon Redshift cluster that the
  snapshot was taken from.

  You cannot use `RestoreTableFromClusterSnapshot` to restore a table with
  the same name as an existing table in an Amazon Redshift cluster. That is,
  you cannot overwrite an existing table in a cluster with a restored table.
  If you want to replace your original table with a new, restored table, then
  rename or drop your original table before you call
  `RestoreTableFromClusterSnapshot`. When you have renamed your original
  table, then you can pass the original name of the table as the
  `NewTableName` parameter value in the call to
  `RestoreTableFromClusterSnapshot`. This way, you can replace the original
  table with the table created from the snapshot.
  """
  def restore_table_from_cluster_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreTableFromClusterSnapshot",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "RestoreTableFromClusterSnapshotMessage",
      output_shape:     "RestoreTableFromClusterSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a database user name and temporary password with temporary
  authorization to log in to an Amazon Redshift database. The action returns
  the database user name prefixed with `IAM:` if `AutoCreate` is `False` or
  `IAMA:` if `AutoCreate` is `True`. You can optionally specify one or more
  database user groups that the user will join at log in. By default, the
  temporary credentials expire in 900 seconds. You can optionally specify a
  duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes).
  For more information, see Generating IAM Database User Credentials in the
  Amazon Redshift Cluster Management Guide.

  The IAM user or role that executes GetClusterCredentials must have an IAM
  policy attached that allows the `redshift:GetClusterCredentials` action
  with access to the `dbuser` resource on the cluster. The user name
  specified for `dbuser` in the IAM policy and the user name specified for
  the `DbUser` parameter must match.

  If the `DbGroups` parameter is specified, the IAM policy must allow the
  `redshift:JoinGroup` action with access to the listed `dbgroups`.

  In addition, if the `AutoCreate` parameter is set to `True`, then the
  policy must include the `redshift:CreateClusterUser` privilege.

  If the `DbName` parameter is specified, the IAM policy must allow access to
  the resource `dbname` for the specified database name.
  """
  def get_cluster_credentials(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetClusterCredentials",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "GetClusterCredentialsMessage",
      output_shape:     "ClusterCredentials",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new cluster.

  To create the cluster in Virtual Private Cloud (VPC), you must provide a
  cluster subnet group name. The cluster subnet group identifies the subnets
  of your VPC that Amazon Redshift uses when creating the cluster. For more
  information about managing clusters, go to [Amazon Redshift
  Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def create_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCluster",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateClusterMessage",
      output_shape:     "CreateClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies an existing Amazon Redshift event notification subscription.
  """
  def modify_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyEventSubscription",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "ModifyEventSubscriptionMessage",
      output_shape:     "ModifyEventSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds one or more tags to a specified resource.

  A resource can have up to 10 tags. If you try to create more than 10 tags
  for a resource, you will receive an error and the attempt will fail.

  If you specify a key that already exists for the resource, the value for
  that key will be updated with the new value.
  """
  def create_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateTags",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateTagsMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the descriptions of the reserved nodes.
  """
  def describe_reserved_nodes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedNodes",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeReservedNodesMessage",
      output_shape:     "ReservedNodesMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a detailed list of parameters contained within the specified Amazon
  Redshift parameter group. For each parameter the response includes
  information such as parameter name, description, data type, value, whether
  the parameter value is modifiable, and so on.

  You can specify *source* filter to retrieve parameters of only specific
  type. For example, to retrieve parameters that were modified by a user
  action such as from `ModifyClusterParameterGroup`, you can specify *source*
  equal to *user*.

  For more information about parameters and parameter groups, go to [Amazon
  Redshift Parameter
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def describe_cluster_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusterParameters",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeClusterParametersMessage",
      output_shape:     "ClusterParameterGroupDetails",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists descriptions of all the Amazon Redshift event notifications
  subscription for a customer account. If you specify a subscription name,
  lists the description for that subscription.
  """
  def describe_event_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEventSubscriptions",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeEventSubscriptionsMessage",
      output_shape:     "EventSubscriptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns descriptions of the available Amazon Redshift cluster versions. You
  can call this operation even before creating any clusters to learn more
  about the Amazon Redshift versions. For more information about managing
  clusters, go to [Amazon Redshift
  Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def describe_cluster_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusterVersions",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeClusterVersionsMessage",
      output_shape:     "ClusterVersionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an HSM configuration that contains the information required by an
  Amazon Redshift cluster to store and use database encryption keys in a
  Hardware Security Module (HSM). After creating the HSM configuration, you
  can specify it as a parameter when creating a cluster. The cluster will
  then store its encryption keys in the HSM.

  In addition to creating an HSM configuration, you must also create an HSM
  client certificate. For more information, go to [Hardware Security
  Modules](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html)
  in the Amazon Redshift Cluster Management Guide.
  """
  def create_hsm_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateHsmConfiguration",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateHsmConfigurationMessage",
      output_shape:     "CreateHsmConfigurationResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified snapshot copy grant.
  """
  def delete_snapshot_copy_grant(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSnapshotCopyGrant",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DeleteSnapshotCopyGrantMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes the ability of the specified AWS customer account to restore the
  specified snapshot. If the account is currently restoring the snapshot, the
  restore will run to completion.

  For more information about working with snapshots, go to [Amazon Redshift
  Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def revoke_snapshot_access(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RevokeSnapshotAccess",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "RevokeSnapshotAccessMessage",
      output_shape:     "RevokeSnapshotAccessResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns properties of provisioned clusters including general cluster
  properties, cluster database properties, maintenance and backup properties,
  and security and access properties. This operation supports pagination. For
  more information about managing clusters, go to [Amazon Redshift
  Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.

  If you specify both tag keys and tag values in the same request, Amazon
  Redshift returns all clusters that match any combination of the specified
  keys and values. For example, if you have `owner` and `environment` for tag
  keys, and `admin` and `test` for tag values, all clusters that have any
  combination of those values are returned.

  If both tag keys and values are omitted from the request, clusters are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  def describe_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusters",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DescribeClustersMessage",
      output_shape:     "ClustersMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new Amazon Redshift subnet group. You must provide a list of one
  or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC)
  when creating Amazon Redshift subnet group.

  For information about subnet groups, go to [Amazon Redshift Cluster Subnet
  Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  def create_cluster_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateClusterSubnetGroup",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateClusterSubnetGroupMessage",
      output_shape:     "CreateClusterSubnetGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Stops logging information, such as queries and connection attempts, for the
  specified Amazon Redshift cluster.
  """
  def disable_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableLogging",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DisableLoggingMessage",
      output_shape:     "LoggingStatus",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disables the automatic copying of snapshots from one region to another
  region for a specified cluster.

  If your cluster and its snapshots are encrypted using a customer master key
  (CMK) from AWS KMS, use `DeleteSnapshotCopyGrant` to delete the grant that
  grants Amazon Redshift permission to the CMK in the destination region.
  """
  def disable_snapshot_copy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableSnapshotCopy",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "DisableSnapshotCopyMessage",
      output_shape:     "DisableSnapshotCopyResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an HSM client certificate that an Amazon Redshift cluster will use
  to connect to the client's HSM in order to store and retrieve the keys used
  to encrypt the cluster databases.

  The command returns a public key, which you must store in the HSM. In
  addition to creating the HSM certificate, you must create an Amazon
  Redshift HSM configuration that provides a cluster the information needed
  to store and use encryption keys in the HSM. For more information, go to
  [Hardware Security
  Modules](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html)
  in the Amazon Redshift Cluster Management Guide.
  """
  def create_hsm_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "redshift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateHsmClientCertificate",
      
      endpoint_prefix:  "redshift",
      type:             :xml,
      version:          "2012-12-01",
      method:           :post,
      input_shape:      "CreateHsmClientCertificateMessage",
      output_shape:     "CreateHsmClientCertificateResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"EnableLoggingMessage" => %{"members" => %{"BucketName" => %{"shape" => "String"}, "ClusterIdentifier" => %{"shape" => "String"}, "S3KeyPrefix" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier", "BucketName"], "type" => "structure"}, "DeleteClusterResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "SourceType" => %{"enum" => ["cluster", "cluster-parameter-group", "cluster-security-group", "cluster-snapshot"], "type" => "string"}, "ReservedNodeOffering" => %{"members" => %{"CurrencyCode" => %{"shape" => "String"}, "Duration" => %{"shape" => "Integer"}, "FixedPrice" => %{"shape" => "Double"}, "NodeType" => %{"shape" => "String"}, "OfferingType" => %{"shape" => "String"}, "RecurringCharges" => %{"shape" => "RecurringChargeList"}, "ReservedNodeOfferingId" => %{"shape" => "String"}, "UsagePrice" => %{"shape" => "Double"}}, "type" => "structure", "wrapper" => true}, "AuthorizationQuotaExceededFault" => %{"error" => %{"code" => "AuthorizationQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubnetList" => %{"member" => %{"locationName" => "Subnet", "shape" => "Subnet"}, "type" => "list"}, "InProgressTableRestoreQuotaExceededFault" => %{"error" => %{"code" => "InProgressTableRestoreQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AuthorizeClusterSecurityGroupIngressMessage" => %{"members" => %{"CIDRIP" => %{"shape" => "String"}, "ClusterSecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}}, "required" => ["ClusterSecurityGroupName"], "type" => "structure"}, "DescribeLoggingStatusMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "AccessToSnapshotDeniedFault" => %{"error" => %{"code" => "AccessToSnapshotDenied", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateSnapshotCopyGrantResult" => %{"members" => %{"SnapshotCopyGrant" => %{"shape" => "SnapshotCopyGrant"}}, "type" => "structure"}, "TagKeyList" => %{"member" => %{"locationName" => "TagKey", "shape" => "String"}, "type" => "list"}, "CreateClusterSubnetGroupResult" => %{"members" => %{"ClusterSubnetGroup" => %{"shape" => "ClusterSubnetGroup"}}, "type" => "structure"}, "Subnet" => %{"members" => %{"SubnetAvailabilityZone" => %{"shape" => "AvailabilityZone"}, "SubnetIdentifier" => %{"shape" => "String"}, "SubnetStatus" => %{"shape" => "String"}}, "type" => "structure"}, "ReservedNodeNotFoundFault" => %{"error" => %{"code" => "ReservedNodeNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateClusterMessage" => %{"members" => %{"AdditionalInfo" => %{"shape" => "String"}, "AllowVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AutomatedSnapshotRetentionPeriod" => %{"shape" => "IntegerOptional"}, "AvailabilityZone" => %{"shape" => "String"}, "ClusterIdentifier" => %{"shape" => "String"}, "ClusterParameterGroupName" => %{"shape" => "String"}, "ClusterSecurityGroups" => %{"shape" => "ClusterSecurityGroupNameList"}, "ClusterSubnetGroupName" => %{"shape" => "String"}, "ClusterType" => %{"shape" => "String"}, "ClusterVersion" => %{"shape" => "String"}, "DBName" => %{"shape" => "String"}, "ElasticIp" => %{"shape" => "String"}, "Encrypted" => %{"shape" => "BooleanOptional"}, "EnhancedVpcRouting" => %{"shape" => "BooleanOptional"}, "HsmClientCertificateIdentifier" => %{"shape" => "String"}, "HsmConfigurationIdentifier" => %{"shape" => "String"}, "IamRoles" => %{"shape" => "IamRoleArnList"}, "KmsKeyId" => %{"shape" => "String"}, "MasterUserPassword" => %{"shape" => "String"}, "MasterUsername" => %{"shape" => "String"}, "NodeType" => %{"shape" => "String"}, "NumberOfNodes" => %{"shape" => "IntegerOptional"}, "Port" => %{"shape" => "IntegerOptional"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "Tags" => %{"shape" => "TagList"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["ClusterIdentifier", "NodeType", "MasterUsername", "MasterUserPassword"], "type" => "structure"}, "HsmConfigurationAlreadyExistsFault" => %{"error" => %{"code" => "HsmConfigurationAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeReservedNodeOfferingsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ReservedNodeOfferingId" => %{"shape" => "String"}}, "type" => "structure"}, "Parameter" => %{"members" => %{"AllowedValues" => %{"shape" => "String"}, "ApplyType" => %{"shape" => "ParameterApplyType"}, "DataType" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "IsModifiable" => %{"shape" => "Boolean"}, "MinimumEngineVersion" => %{"shape" => "String"}, "ParameterName" => %{"shape" => "String"}, "ParameterValue" => %{"shape" => "String"}, "Source" => %{"shape" => "String"}}, "type" => "structure"}, "ResizeProgressMessage" => %{"members" => %{"AvgResizeRateInMegaBytesPerSecond" => %{"shape" => "DoubleOptional"}, "ElapsedTimeInSeconds" => %{"shape" => "LongOptional"}, "EstimatedTimeToCompletionInSeconds" => %{"shape" => "LongOptional"}, "ImportTablesCompleted" => %{"shape" => "ImportTablesCompleted"}, "ImportTablesInProgress" => %{"shape" => "ImportTablesInProgress"}, "ImportTablesNotStarted" => %{"shape" => "ImportTablesNotStarted"}, "ProgressInMegaBytes" => %{"shape" => "LongOptional"}, "Status" => %{"shape" => "String"}, "TargetClusterType" => %{"shape" => "String"}, "TargetNodeType" => %{"shape" => "String"}, "TargetNumberOfNodes" => %{"shape" => "IntegerOptional"}, "TotalResizeDataInMegaBytes" => %{"shape" => "LongOptional"}}, "type" => "structure"}, "ReservedNodeQuotaExceededFault" => %{"error" => %{"code" => "ReservedNodeQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeClustersMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "CreateSnapshotCopyGrantMessage" => %{"members" => %{"KmsKeyId" => %{"shape" => "String"}, "SnapshotCopyGrantName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["SnapshotCopyGrantName"], "type" => "structure"}, "SnapshotCopyAlreadyDisabledFault" => %{"error" => %{"code" => "SnapshotCopyAlreadyDisabledFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "String" => %{"type" => "string"}, "ClusterParameterGroupAlreadyExistsFault" => %{"error" => %{"code" => "ClusterParameterGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EC2SecurityGroup" => %{"members" => %{"EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "EventCategoriesMap" => %{"members" => %{"Events" => %{"shape" => "EventInfoMapList"}, "SourceType" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "Boolean" => %{"type" => "boolean"}, "RestoreStatus" => %{"members" => %{"CurrentRestoreRateInMegaBytesPerSecond" => %{"shape" => "Double"}, "ElapsedTimeInSeconds" => %{"shape" => "Long"}, "EstimatedTimeToCompletionInSeconds" => %{"shape" => "Long"}, "ProgressInMegaBytes" => %{"shape" => "Long"}, "SnapshotSizeInMegaBytes" => %{"shape" => "Long"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteClusterSecurityGroupMessage" => %{"members" => %{"ClusterSecurityGroupName" => %{"shape" => "String"}}, "required" => ["ClusterSecurityGroupName"], "type" => "structure"}, "SnapshotCopyGrantAlreadyExistsFault" => %{"error" => %{"code" => "SnapshotCopyGrantAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SensitiveString" => %{"sensitive" => true, "type" => "string"}, "DoubleOptional" => %{"type" => "double"}, "ClusterSubnetQuotaExceededFault" => %{"error" => %{"code" => "ClusterSubnetQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CopyToRegionDisabledFault" => %{"error" => %{"code" => "CopyToRegionDisabledFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterSubnetGroupAlreadyExistsFault" => %{"error" => %{"code" => "ClusterSubnetGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AuthorizationNotFoundFault" => %{"error" => %{"code" => "AuthorizationNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "BucketNotFoundFault" => %{"error" => %{"code" => "BucketNotFoundFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubnetAlreadyInUse" => %{"error" => %{"code" => "SubnetAlreadyInUse", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidTableRestoreArgumentFault" => %{"error" => %{"code" => "InvalidTableRestoreArgument", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "VpcSecurityGroupMembershipList" => %{"member" => %{"locationName" => "VpcSecurityGroup", "shape" => "VpcSecurityGroupMembership"}, "type" => "list"}, "AccountsWithRestoreAccessList" => %{"member" => %{"locationName" => "AccountWithRestoreAccess", "shape" => "AccountWithRestoreAccess"}, "type" => "list"}, "TagLimitExceededFault" => %{"error" => %{"code" => "TagLimitExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventList" => %{"member" => %{"locationName" => "Event", "shape" => "Event"}, "type" => "list"}, "ClusterSecurityGroup" => %{"members" => %{"ClusterSecurityGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "EC2SecurityGroups" => %{"shape" => "EC2SecurityGroupList"}, "IPRanges" => %{"shape" => "IPRangeList"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure", "wrapper" => true}, "ClusterParameterGroupsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ParameterGroups" => %{"shape" => "ParameterGroupList"}}, "type" => "structure"}, "ClusterParameterStatus" => %{"members" => %{"ParameterApplyErrorDescription" => %{"shape" => "String"}, "ParameterApplyStatus" => %{"shape" => "String"}, "ParameterName" => %{"shape" => "String"}}, "type" => "structure"}, "AuthorizeSnapshotAccessResult" => %{"members" => %{"Snapshot" => %{"shape" => "Snapshot"}}, "type" => "structure"}, "DescribeDefaultClusterParametersMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ParameterGroupFamily" => %{"shape" => "String"}}, "required" => ["ParameterGroupFamily"], "type" => "structure"}, "ClusterSecurityGroupNotFoundFault" => %{"error" => %{"code" => "ClusterSecurityGroupNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterIamRole" => %{"members" => %{"ApplyStatus" => %{"shape" => "String"}, "IamRoleArn" => %{"shape" => "String"}}, "type" => "structure"}, "CreateClusterSecurityGroupMessage" => %{"members" => %{"ClusterSecurityGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ClusterSecurityGroupName", "Description"], "type" => "structure"}, "OrderableClusterOptionsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "OrderableClusterOptions" => %{"shape" => "OrderableClusterOptionsList"}}, "type" => "structure"}, "ImportTablesInProgress" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "AccountWithRestoreAccess" => %{"members" => %{"AccountAlias" => %{"shape" => "String"}, "AccountId" => %{"shape" => "String"}}, "type" => "structure"}, "RebootClusterResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ClusterSnapshotNotFoundFault" => %{"error" => %{"code" => "ClusterSnapshotNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeEventCategoriesMessage" => %{"members" => %{"SourceType" => %{"shape" => "String"}}, "type" => "structure"}, "TableRestoreNotFoundFault" => %{"error" => %{"code" => "TableRestoreNotFoundFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventSubscriptionsList" => %{"member" => %{"locationName" => "EventSubscription", "shape" => "EventSubscription"}, "type" => "list"}, "SourceNotFoundFault" => %{"error" => %{"code" => "SourceNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SnapshotCopyGrantList" => %{"member" => %{"locationName" => "SnapshotCopyGrant", "shape" => "SnapshotCopyGrant"}, "type" => "list"}, "EventSubscriptionsMessage" => %{"members" => %{"EventSubscriptionsList" => %{"shape" => "EventSubscriptionsList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "RestorableNodeTypeList" => %{"member" => %{"locationName" => "NodeType", "shape" => "String"}, "type" => "list"}, "DeleteEventSubscriptionMessage" => %{"members" => %{"SubscriptionName" => %{"shape" => "String"}}, "required" => ["SubscriptionName"], "type" => "structure"}, "ClusterVersionsMessage" => %{"members" => %{"ClusterVersions" => %{"shape" => "ClusterVersionList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "EnableSnapshotCopyMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "DestinationRegion" => %{"shape" => "String"}, "RetentionPeriod" => %{"shape" => "IntegerOptional"}, "SnapshotCopyGrantName" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier", "DestinationRegion"], "type" => "structure"}, "DescribeReservedNodesMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ReservedNodeId" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeHsmClientCertificatesMessage" => %{"members" => %{"HsmClientCertificateIdentifier" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "UnknownSnapshotCopyRegionFault" => %{"error" => %{"code" => "UnknownSnapshotCopyRegionFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SNSNoAuthorizationFault" => %{"error" => %{"code" => "SNSNoAuthorization", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifySnapshotCopyRetentionPeriodMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "RetentionPeriod" => %{"shape" => "Integer"}}, "required" => ["ClusterIdentifier", "RetentionPeriod"], "type" => "structure"}, "ReservedNodeList" => %{"member" => %{"locationName" => "ReservedNode", "shape" => "ReservedNode"}, "type" => "list"}, "SourceIdsList" => %{"member" => %{"locationName" => "SourceId", "shape" => "String"}, "type" => "list"}, "DisableLoggingMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "ModifyClusterIamRolesResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "DescribeDefaultClusterParametersResult" => %{"members" => %{"DefaultClusterParameters" => %{"shape" => "DefaultClusterParameters"}}, "type" => "structure"}, "ClusterVersionList" => %{"member" => %{"locationName" => "ClusterVersion", "shape" => "ClusterVersion"}, "type" => "list"}, "IamRoleArnList" => %{"member" => %{"locationName" => "IamRoleArn", "shape" => "String"}, "type" => "list"}, "PurchaseReservedNodeOfferingResult" => %{"members" => %{"ReservedNode" => %{"shape" => "ReservedNode"}}, "type" => "structure"}, "ClusterSecurityGroupMembership" => %{"members" => %{"ClusterSecurityGroupName" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "ClusterSecurityGroupMembershipList" => %{"member" => %{"locationName" => "ClusterSecurityGroup", "shape" => "ClusterSecurityGroupMembership"}, "type" => "list"}, "CreateHsmClientCertificateResult" => %{"members" => %{"HsmClientCertificate" => %{"shape" => "HsmClientCertificate"}}, "type" => "structure"}, "RestoreFromClusterSnapshotResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ResizeNotFoundFault" => %{"error" => %{"code" => "ResizeNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SNSInvalidTopicFault" => %{"error" => %{"code" => "SNSInvalidTopic", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterSecurityGroups" => %{"member" => %{"locationName" => "ClusterSecurityGroup", "shape" => "ClusterSecurityGroup"}, "type" => "list"}, "OrderableClusterOption" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZoneList"}, "ClusterType" => %{"shape" => "String"}, "ClusterVersion" => %{"shape" => "String"}, "NodeType" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "InsufficientClusterCapacityFault" => %{"error" => %{"code" => "InsufficientClusterCapacity", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterParameterStatusList" => %{"member" => %{"shape" => "ClusterParameterStatus"}, "type" => "list"}, "AvailabilityZoneList" => %{"member" => %{"locationName" => "AvailabilityZone", "shape" => "AvailabilityZone"}, "type" => "list"}, "DeleteHsmClientCertificateMessage" => %{"members" => %{"HsmClientCertificateIdentifier" => %{"shape" => "String"}}, "required" => ["HsmClientCertificateIdentifier"], "type" => "structure"}, "HsmConfiguration" => %{"members" => %{"Description" => %{"shape" => "String"}, "HsmConfigurationIdentifier" => %{"shape" => "String"}, "HsmIpAddress" => %{"shape" => "String"}, "HsmPartitionName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure", "wrapper" => true}, "ImportTablesNotStarted" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "AuthorizeClusterSecurityGroupIngressResult" => %{"members" => %{"ClusterSecurityGroup" => %{"shape" => "ClusterSecurityGroup"}}, "type" => "structure"}, "AuthorizationAlreadyExistsFault" => %{"error" => %{"code" => "AuthorizationAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "HsmStatus" => %{"members" => %{"HsmClientCertificateIdentifier" => %{"shape" => "String"}, "HsmConfigurationIdentifier" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "HsmClientCertificateNotFoundFault" => %{"error" => %{"code" => "HsmClientCertificateNotFoundFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidTagFault" => %{"error" => %{"code" => "InvalidTagFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidClusterSecurityGroupStateFault" => %{"error" => %{"code" => "InvalidClusterSecurityGroupState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateClusterSnapshotResult" => %{"members" => %{"Snapshot" => %{"shape" => "Snapshot"}}, "type" => "structure"}, "ClusterSnapshotQuotaExceededFault" => %{"error" => %{"code" => "ClusterSnapshotQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ResetClusterParameterGroupMessage" => %{"members" => %{"ParameterGroupName" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}, "ResetAllParameters" => %{"shape" => "Boolean"}}, "required" => ["ParameterGroupName"], "type" => "structure"}, "InvalidClusterSnapshotStateFault" => %{"error" => %{"code" => "InvalidClusterSnapshotState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterSnapshotAlreadyExistsFault" => %{"error" => %{"code" => "ClusterSnapshotAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterParameterGroupQuotaExceededFault" => %{"error" => %{"code" => "ClusterParameterGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RotateEncryptionKeyMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "SnapshotCopyGrantQuotaExceededFault" => %{"error" => %{"code" => "SnapshotCopyGrantQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterParameterGroupStatusList" => %{"member" => %{"locationName" => "ClusterParameterGroup", "shape" => "ClusterParameterGroupStatus"}, "type" => "list"}, "ImportTablesCompleted" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "VpcSecurityGroupMembership" => %{"members" => %{"Status" => %{"shape" => "String"}, "VpcSecurityGroupId" => %{"shape" => "String"}}, "type" => "structure"}, "ClusterAlreadyExistsFault" => %{"error" => %{"code" => "ClusterAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterSecurityGroupAlreadyExistsFault" => %{"error" => %{"code" => "ClusterSecurityGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidSnapshotCopyGrantStateFault" => %{"error" => %{"code" => "InvalidSnapshotCopyGrantStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidS3KeyPrefixFault" => %{"error" => %{"code" => "InvalidS3KeyPrefixFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubscriptionCategoryNotFoundFault" => %{"error" => %{"code" => "SubscriptionCategoryNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TaggedResourceList" => %{"member" => %{"locationName" => "TaggedResource", "shape" => "TaggedResource"}, "type" => "list"}, "CreateEventSubscriptionMessage" => %{"members" => %{"Enabled" => %{"shape" => "BooleanOptional"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "Severity" => %{"shape" => "String"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceIds" => %{"shape" => "SourceIdsList"}, "SourceType" => %{"shape" => "String"}, "SubscriptionName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["SubscriptionName", "SnsTopicArn"], "type" => "structure"}, "ClusterIamRoleList" => %{"member" => %{"locationName" => "ClusterIamRole", "shape" => "ClusterIamRole"}, "type" => "list"}, "UnsupportedOptionFault" => %{"error" => %{"code" => "UnsupportedOptionFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidClusterSubnetGroupStateFault" => %{"error" => %{"code" => "InvalidClusterSubnetGroupStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterNode" => %{"members" => %{"NodeRole" => %{"shape" => "String"}, "PrivateIPAddress" => %{"shape" => "String"}, "PublicIPAddress" => %{"shape" => "String"}}, "type" => "structure"}, "CreateTagsMessage" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceName", "Tags"], "type" => "structure"}, "EnableSnapshotCopyResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "CreateHsmConfigurationMessage" => %{"members" => %{"Description" => %{"shape" => "String"}, "HsmConfigurationIdentifier" => %{"shape" => "String"}, "HsmIpAddress" => %{"shape" => "String"}, "HsmPartitionName" => %{"shape" => "String"}, "HsmPartitionPassword" => %{"shape" => "String"}, "HsmServerPublicCertificate" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["HsmConfigurationIdentifier", "Description", "HsmIpAddress", "HsmPartitionName", "HsmPartitionPassword", "HsmServerPublicCertificate"], "type" => "structure"}, "NumberOfNodesPerClusterLimitExceededFault" => %{"error" => %{"code" => "NumberOfNodesPerClusterLimitExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteClusterSubnetGroupMessage" => %{"members" => %{"ClusterSubnetGroupName" => %{"shape" => "String"}}, "required" => ["ClusterSubnetGroupName"], "type" => "structure"}, "DependentServiceRequestThrottlingFault" => %{"error" => %{"code" => "DependentServiceRequestThrottlingFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidElasticIpFault" => %{"error" => %{"code" => "InvalidElasticIpFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventSubscription" => %{"members" => %{"CustSubscriptionId" => %{"shape" => "String"}, "CustomerAwsId" => %{"shape" => "String"}, "Enabled" => %{"shape" => "Boolean"}, "EventCategoriesList" => %{"shape" => "EventCategoriesList"}, "Severity" => %{"shape" => "String"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceIdsList" => %{"shape" => "SourceIdsList"}, "SourceType" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "SubscriptionCreationTime" => %{"shape" => "TStamp"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure", "wrapper" => true}, "PendingModifiedValues" => %{"members" => %{"AutomatedSnapshotRetentionPeriod" => %{"shape" => "IntegerOptional"}, "ClusterIdentifier" => %{"shape" => "String"}, "ClusterType" => %{"shape" => "String"}, "ClusterVersion" => %{"shape" => "String"}, "EnhancedVpcRouting" => %{"shape" => "BooleanOptional"}, "MasterUserPassword" => %{"shape" => "String"}, "NodeType" => %{"shape" => "String"}, "NumberOfNodes" => %{"shape" => "IntegerOptional"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}}, "type" => "structure"}, "ModifySnapshotCopyRetentionPeriodResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "DescribeSnapshotCopyGrantsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SnapshotCopyGrantName" => %{"shape" => "String"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "HsmConfigurationMessage" => %{"members" => %{"HsmConfigurations" => %{"shape" => "HsmConfigurationList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "RevokeClusterSecurityGroupIngressMessage" => %{"members" => %{"CIDRIP" => %{"shape" => "String"}, "ClusterSecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupName" => %{"shape" => "String"}, "EC2SecurityGroupOwnerId" => %{"shape" => "String"}}, "required" => ["ClusterSecurityGroupName"], "type" => "structure"}, "CreateHsmConfigurationResult" => %{"members" => %{"HsmConfiguration" => %{"shape" => "HsmConfiguration"}}, "type" => "structure"}, "RecurringCharge" => %{"members" => %{"RecurringChargeAmount" => %{"shape" => "Double"}, "RecurringChargeFrequency" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "ResourceNotFoundFault" => %{"error" => %{"code" => "ResourceNotFoundFault", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RebootClusterMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "TaggedResourceListMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "TaggedResources" => %{"shape" => "TaggedResourceList"}}, "type" => "structure"}, "SubscriptionEventIdNotFoundFault" => %{"error" => %{"code" => "SubscriptionEventIdNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Endpoint" => %{"members" => %{"Address" => %{"shape" => "String"}, "Port" => %{"shape" => "Integer"}}, "type" => "structure"}, "SnapshotCopyGrantMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "SnapshotCopyGrants" => %{"shape" => "SnapshotCopyGrantList"}}, "type" => "structure"}, "LimitExceededFault" => %{"error" => %{"code" => "LimitExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubnetIdentifierList" => %{"member" => %{"locationName" => "SubnetIdentifier", "shape" => "String"}, "type" => "list"}, "CreateClusterSecurityGroupResult" => %{"members" => %{"ClusterSecurityGroup" => %{"shape" => "ClusterSecurityGroup"}}, "type" => "structure"}, "RestoreFromClusterSnapshotMessage" => %{"members" => %{"AdditionalInfo" => %{"shape" => "String"}, "AllowVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AutomatedSnapshotRetentionPeriod" => %{"shape" => "IntegerOptional"}, "AvailabilityZone" => %{"shape" => "String"}, "ClusterIdentifier" => %{"shape" => "String"}, "ClusterParameterGroupName" => %{"shape" => "String"}, "ClusterSecurityGroups" => %{"shape" => "ClusterSecurityGroupNameList"}, "ClusterSubnetGroupName" => %{"shape" => "String"}, "ElasticIp" => %{"shape" => "String"}, "EnhancedVpcRouting" => %{"shape" => "BooleanOptional"}, "HsmClientCertificateIdentifier" => %{"shape" => "String"}, "HsmConfigurationIdentifier" => %{"shape" => "String"}, "IamRoles" => %{"shape" => "IamRoleArnList"}, "KmsKeyId" => %{"shape" => "String"}, "NodeType" => %{"shape" => "String"}, "OwnerAccount" => %{"shape" => "String"}, "Port" => %{"shape" => "IntegerOptional"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "SnapshotClusterIdentifier" => %{"shape" => "String"}, "SnapshotIdentifier" => %{"shape" => "String"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["ClusterIdentifier", "SnapshotIdentifier"], "type" => "structure"}, "InvalidHsmClientCertificateStateFault" => %{"error" => %{"code" => "InvalidHsmClientCertificateStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterSecurityGroupNameList" => %{"member" => %{"locationName" => "ClusterSecurityGroupName", "shape" => "String"}, "type" => "list"}, "ParameterGroupList" => %{"member" => %{"locationName" => "ClusterParameterGroup", "shape" => "ClusterParameterGroup"}, "type" => "list"}, "DeleteClusterSnapshotMessage" => %{"members" => %{"SnapshotClusterIdentifier" => %{"shape" => "String"}, "SnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["SnapshotIdentifier"], "type" => "structure"}, "SubscriptionNotFoundFault" => %{"error" => %{"code" => "SubscriptionNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventSubscriptionQuotaExceededFault" => %{"error" => %{"code" => "EventSubscriptionQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TagList" => %{"member" => %{"locationName" => "Tag", "shape" => "Tag"}, "type" => "list"}, "TStamp" => %{"type" => "timestamp"}, "DescribeHsmConfigurationsMessage" => %{"members" => %{"HsmConfigurationIdentifier" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "EventCategoriesMapList" => %{"member" => %{"locationName" => "EventCategoriesMap", "shape" => "EventCategoriesMap"}, "type" => "list"}, "ClusterNodesList" => %{"member" => %{"shape" => "ClusterNode"}, "type" => "list"}, "UnauthorizedOperation" => %{"error" => %{"code" => "UnauthorizedOperation", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "HsmClientCertificateMessage" => %{"members" => %{"HsmClientCertificates" => %{"shape" => "HsmClientCertificateList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidClusterParameterGroupStateFault" => %{"error" => %{"code" => "InvalidClusterParameterGroupState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventCategoriesList" => %{"member" => %{"locationName" => "EventCategory", "shape" => "String"}, "type" => "list"}, "CreateClusterParameterGroupResult" => %{"members" => %{"ClusterParameterGroup" => %{"shape" => "ClusterParameterGroup"}}, "type" => "structure"}, "CopyClusterSnapshotResult" => %{"members" => %{"Snapshot" => %{"shape" => "Snapshot"}}, "type" => "structure"}, "InsufficientS3BucketPolicyFault" => %{"error" => %{"code" => "InsufficientS3BucketPolicyFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "RevokeSnapshotAccessResult" => %{"members" => %{"Snapshot" => %{"shape" => "Snapshot"}}, "type" => "structure"}, "InvalidSubnet" => %{"error" => %{"code" => "InvalidSubnet", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubscriptionAlreadyExistFault" => %{"error" => %{"code" => "SubscriptionAlreadyExist", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Double" => %{"type" => "double"}, "AvailabilityZone" => %{"members" => %{"Name" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "HsmConfigurationQuotaExceededFault" => %{"error" => %{"code" => "HsmConfigurationQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SubscriptionSeverityNotFoundFault" => %{"error" => %{"code" => "SubscriptionSeverityNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DefaultClusterParameters" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ParameterGroupFamily" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "type" => "structure", "wrapper" => true}, "HsmClientCertificate" => %{"members" => %{"HsmClientCertificateIdentifier" => %{"shape" => "String"}, "HsmClientCertificatePublicKey" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure", "wrapper" => true}, "ModifyClusterSubnetGroupMessage" => %{"members" => %{"ClusterSubnetGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}}, "required" => ["ClusterSubnetGroupName", "SubnetIds"], "type" => "structure"}, "BooleanOptional" => %{"type" => "boolean"}, "InvalidClusterStateFault" => %{"error" => %{"code" => "InvalidClusterState", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SnapshotCopyDisabledFault" => %{"error" => %{"code" => "SnapshotCopyDisabledFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterVersion" => %{"members" => %{"ClusterParameterGroupFamily" => %{"shape" => "String"}, "ClusterVersion" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidVPCNetworkStateFault" => %{"error" => %{"code" => "InvalidVPCNetworkStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Long" => %{"type" => "long"}, "LongOptional" => %{"type" => "long"}, "ClusterQuotaExceededFault" => %{"error" => %{"code" => "ClusterQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateEventSubscriptionResult" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "DbGroupList" => %{"member" => %{"locationName" => "DbGroup", "shape" => "String"}, "type" => "list"}, "ClusterSecurityGroupQuotaExceededFault" => %{"error" => %{"code" => "QuotaExceeded.ClusterSecurityGroup", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateClusterParameterGroupMessage" => %{"members" => %{"Description" => %{"shape" => "String"}, "ParameterGroupFamily" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ParameterGroupName", "ParameterGroupFamily", "Description"], "type" => "structure"}, "CreateHsmClientCertificateMessage" => %{"members" => %{"HsmClientCertificateIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["HsmClientCertificateIdentifier"], "type" => "structure"}, "TableRestoreStatus" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}, "NewTableName" => %{"shape" => "String"}, "ProgressInMegaBytes" => %{"shape" => "LongOptional"}, "RequestTime" => %{"shape" => "TStamp"}, "SnapshotIdentifier" => %{"shape" => "String"}, "SourceDatabaseName" => %{"shape" => "String"}, "SourceSchemaName" => %{"shape" => "String"}, "SourceTableName" => %{"shape" => "String"}, "Status" => %{"shape" => "TableRestoreStatusType"}, "TableRestoreRequestId" => %{"shape" => "String"}, "TargetDatabaseName" => %{"shape" => "String"}, "TargetSchemaName" => %{"shape" => "String"}, "TotalDataInMegaBytes" => %{"shape" => "LongOptional"}}, "type" => "structure", "wrapper" => true}, "ModifyClusterMessage" => %{"members" => %{"AllowVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AutomatedSnapshotRetentionPeriod" => %{"shape" => "IntegerOptional"}, "ClusterIdentifier" => %{"shape" => "String"}, "ClusterParameterGroupName" => %{"shape" => "String"}, "ClusterSecurityGroups" => %{"shape" => "ClusterSecurityGroupNameList"}, "ClusterType" => %{"shape" => "String"}, "ClusterVersion" => %{"shape" => "String"}, "ElasticIp" => %{"shape" => "String"}, "EnhancedVpcRouting" => %{"shape" => "BooleanOptional"}, "HsmClientCertificateIdentifier" => %{"shape" => "String"}, "HsmConfigurationIdentifier" => %{"shape" => "String"}, "MasterUserPassword" => %{"shape" => "String"}, "NewClusterIdentifier" => %{"shape" => "String"}, "NodeType" => %{"shape" => "String"}, "NumberOfNodes" => %{"shape" => "IntegerOptional"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "SnapshotMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "Snapshots" => %{"shape" => "SnapshotList"}}, "type" => "structure"}, "ClusterSubnetGroupQuotaExceededFault" => %{"error" => %{"code" => "ClusterSubnetGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DisableSnapshotCopyMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "ClusterParameterGroup" => %{"members" => %{"Description" => %{"shape" => "String"}, "ParameterGroupFamily" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure", "wrapper" => true}, "DeleteHsmConfigurationMessage" => %{"members" => %{"HsmConfigurationIdentifier" => %{"shape" => "String"}}, "required" => ["HsmConfigurationIdentifier"], "type" => "structure"}, "HsmClientCertificateQuotaExceededFault" => %{"error" => %{"code" => "HsmClientCertificateQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeEventSubscriptionsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SubscriptionName" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyClusterSubnetGroupResult" => %{"members" => %{"ClusterSubnetGroup" => %{"shape" => "ClusterSubnetGroup"}}, "type" => "structure"}, "GetClusterCredentialsMessage" => %{"members" => %{"AutoCreate" => %{"shape" => "BooleanOptional"}, "ClusterIdentifier" => %{"shape" => "String"}, "DbGroups" => %{"shape" => "DbGroupList"}, "DbName" => %{"shape" => "String"}, "DbUser" => %{"shape" => "String"}, "DurationSeconds" => %{"shape" => "IntegerOptional"}}, "required" => ["DbUser", "ClusterIdentifier"], "type" => "structure"}, "SnapshotCopyAlreadyEnabledFault" => %{"error" => %{"code" => "SnapshotCopyAlreadyEnabledFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PurchaseReservedNodeOfferingMessage" => %{"members" => %{"NodeCount" => %{"shape" => "IntegerOptional"}, "ReservedNodeOfferingId" => %{"shape" => "String"}}, "required" => ["ReservedNodeOfferingId"], "type" => "structure"}, "ClusterSubnetGroups" => %{"member" => %{"locationName" => "ClusterSubnetGroup", "shape" => "ClusterSubnetGroup"}, "type" => "list"}, "DependentServiceUnavailableFault" => %{"error" => %{"code" => "DependentServiceUnavailableFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeEventsMessage" => %{"members" => %{"Duration" => %{"shape" => "IntegerOptional"}, "EndTime" => %{"shape" => "TStamp"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SourceIdentifier" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}, "StartTime" => %{"shape" => "TStamp"}}, "type" => "structure"}, "DescribeClusterVersionsMessage" => %{"members" => %{"ClusterParameterGroupFamily" => %{"shape" => "String"}, "ClusterVersion" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "ReservedNode" => %{"members" => %{"CurrencyCode" => %{"shape" => "String"}, "Duration" => %{"shape" => "Integer"}, "FixedPrice" => %{"shape" => "Double"}, "NodeCount" => %{"shape" => "Integer"}, "NodeType" => %{"shape" => "String"}, "OfferingType" => %{"shape" => "String"}, "RecurringCharges" => %{"shape" => "RecurringChargeList"}, "ReservedNodeId" => %{"shape" => "String"}, "ReservedNodeOfferingId" => %{"shape" => "String"}, "StartTime" => %{"shape" => "TStamp"}, "State" => %{"shape" => "String"}, "UsagePrice" => %{"shape" => "Double"}}, "type" => "structure", "wrapper" => true}, "InvalidS3BucketNameFault" => %{"error" => %{"code" => "InvalidS3BucketNameFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventInfoMapList" => %{"member" => %{"locationName" => "EventInfoMap", "shape" => "EventInfoMap"}, "type" => "list"}, "ClustersMessage" => %{"members" => %{"Clusters" => %{"shape" => "ClusterList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyClusterIamRolesMessage" => %{"members" => %{"AddIamRoles" => %{"shape" => "IamRoleArnList"}, "ClusterIdentifier" => %{"shape" => "String"}, "RemoveIamRoles" => %{"shape" => "IamRoleArnList"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "DescribeResizeMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "TaggedResource" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "ResourceType" => %{"shape" => "String"}, "Tag" => %{"shape" => "Tag"}}, "type" => "structure"}, "ClusterNotFoundFault" => %{"error" => %{"code" => "ClusterNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ReservedNodeOfferingsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReservedNodeOfferings" => %{"shape" => "ReservedNodeOfferingList"}}, "type" => "structure"}, "ModifyClusterParameterGroupMessage" => %{"members" => %{"ParameterGroupName" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "required" => ["ParameterGroupName", "Parameters"], "type" => "structure"}, "HsmConfigurationNotFoundFault" => %{"error" => %{"code" => "HsmConfigurationNotFoundFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventInfoMap" => %{"members" => %{"EventCategories" => %{"shape" => "EventCategoriesList"}, "EventDescription" => %{"shape" => "String"}, "EventId" => %{"shape" => "String"}, "Severity" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "CreateClusterResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ClusterSnapshotCopyStatus" => %{"members" => %{"DestinationRegion" => %{"shape" => "String"}, "RetentionPeriod" => %{"shape" => "Long"}, "SnapshotCopyGrantName" => %{"shape" => "String"}}, "type" => "structure"}, "AuthorizeSnapshotAccessMessage" => %{"members" => %{"AccountWithRestoreAccess" => %{"shape" => "String"}, "SnapshotClusterIdentifier" => %{"shape" => "String"}, "SnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["SnapshotIdentifier", "AccountWithRestoreAccess"], "type" => "structure"}, "Cluster" => %{"members" => %{"RestoreStatus" => %{"shape" => "RestoreStatus"}, "ClusterStatus" => %{"shape" => "String"}, "IamRoles" => %{"shape" => "ClusterIamRoleList"}, "ClusterSecurityGroups" => %{"shape" => "ClusterSecurityGroupMembershipList"}, "HsmStatus" => %{"shape" => "HsmStatus"}, "VpcId" => %{"shape" => "String"}, "ClusterRevisionNumber" => %{"shape" => "String"}, "PendingModifiedValues" => %{"shape" => "PendingModifiedValues"}, "KmsKeyId" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "Endpoint" => %{"shape" => "Endpoint"}, "ClusterPublicKey" => %{"shape" => "String"}, "PubliclyAccessible" => %{"shape" => "Boolean"}, "AllowVersionUpgrade" => %{"shape" => "Boolean"}, "ClusterCreateTime" => %{"shape" => "TStamp"}, "AvailabilityZone" => %{"shape" => "String"}, "Encrypted" => %{"shape" => "Boolean"}, "ClusterIdentifier" => %{"shape" => "String"}, "NodeType" => %{"shape" => "String"}, "ClusterVersion" => %{"shape" => "String"}, "AutomatedSnapshotRetentionPeriod" => %{"shape" => "Integer"}, "NumberOfNodes" => %{"shape" => "Integer"}, "ClusterSnapshotCopyStatus" => %{"shape" => "ClusterSnapshotCopyStatus"}, "ClusterNodes" => %{"shape" => "ClusterNodesList"}, "ClusterSubnetGroupName" => %{"shape" => "String"}, "EnhancedVpcRouting" => %{"shape" => "Boolean"}, "ModifyStatus" => %{"shape" => "String"}, "DBName" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "MasterUsername" => %{"shape" => "String"}, "VpcSecurityGroups" => %{"shape" => "VpcSecurityGroupMembershipList"}, "ClusterParameterGroups" => %{"shape" => "ClusterParameterGroupStatusList"}, "ElasticIpStatus" => %{"shape" => "ElasticIpStatus"}}, "type" => "structure", "wrapper" => true}, "RotateEncryptionKeyResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "DeleteClusterSnapshotResult" => %{"members" => %{"Snapshot" => %{"shape" => "Snapshot"}}, "type" => "structure"}, "LoggingStatus" => %{"members" => %{"BucketName" => %{"shape" => "String"}, "LastFailureMessage" => %{"shape" => "String"}, "LastFailureTime" => %{"shape" => "TStamp"}, "LastSuccessfulDeliveryTime" => %{"shape" => "TStamp"}, "LoggingEnabled" => %{"shape" => "Boolean"}, "S3KeyPrefix" => %{"shape" => "String"}}, "type" => "structure"}, "ClusterSubnetGroup" => %{"members" => %{"ClusterSubnetGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "SubnetGroupStatus" => %{"shape" => "String"}, "Subnets" => %{"shape" => "SubnetList"}, "Tags" => %{"shape" => "TagList"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "OrderableClusterOptionsList" => %{"member" => %{"locationName" => "OrderableClusterOption", "shape" => "OrderableClusterOption"}, "type" => "list"}, "InvalidClusterSubnetStateFault" => %{"error" => %{"code" => "InvalidClusterSubnetStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeTableRestoreStatusMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "TableRestoreRequestId" => %{"shape" => "String"}}, "type" => "structure"}, "RevokeClusterSecurityGroupIngressResult" => %{"members" => %{"ClusterSecurityGroup" => %{"shape" => "ClusterSecurityGroup"}}, "type" => "structure"}, "ModifyEventSubscriptionMessage" => %{"members" => %{"Enabled" => %{"shape" => "BooleanOptional"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "Severity" => %{"shape" => "String"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceIds" => %{"shape" => "SourceIdsList"}, "SourceType" => %{"shape" => "String"}, "SubscriptionName" => %{"shape" => "String"}}, "required" => ["SubscriptionName"], "type" => "structure"}, "DeleteTagsMessage" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "TagKeys" => %{"shape" => "TagKeyList"}}, "required" => ["ResourceName", "TagKeys"], "type" => "structure"}, "RestoreTableFromClusterSnapshotResult" => %{"members" => %{"TableRestoreStatus" => %{"shape" => "TableRestoreStatus"}}, "type" => "structure"}, "UnsupportedOperationFault" => %{"error" => %{"code" => "UnsupportedOperation", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterSubnetGroupMessage" => %{"members" => %{"ClusterSubnetGroups" => %{"shape" => "ClusterSubnetGroups"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "ReservedNodeAlreadyExistsFault" => %{"error" => %{"code" => "ReservedNodeAlreadyExists", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeClusterSecurityGroupsMessage" => %{"members" => %{"ClusterSecurityGroupName" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "ReservedNodeOfferingList" => %{"member" => %{"locationName" => "ReservedNodeOffering", "shape" => "ReservedNodeOffering"}, "type" => "list"}, "DeleteClusterMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "FinalClusterSnapshotIdentifier" => %{"shape" => "String"}, "SkipFinalClusterSnapshot" => %{"shape" => "Boolean"}}, "required" => ["ClusterIdentifier"], "type" => "structure"}, "DescribeClusterSubnetGroupsMessage" => %{"members" => %{"ClusterSubnetGroupName" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "ClusterList" => %{"member" => %{"locationName" => "Cluster", "shape" => "Cluster"}, "type" => "list"}, "ClusterSecurityGroupMessage" => %{"members" => %{"ClusterSecurityGroups" => %{"shape" => "ClusterSecurityGroups"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteClusterParameterGroupMessage" => %{"members" => %{"ParameterGroupName" => %{"shape" => "String"}}, "required" => ["ParameterGroupName"], "type" => "structure"}, "HsmClientCertificateList" => %{"member" => %{"locationName" => "HsmClientCertificate", "shape" => "HsmClientCertificate"}, "type" => "list"}, "ParametersList" => %{"member" => %{"locationName" => "Parameter", "shape" => "Parameter"}, "type" => "list"}, "ClusterParameterGroupDetails" => %{"members" => %{"Marker" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParametersList"}}, "type" => "structure"}, "InvalidSubscriptionStateFault" => %{"error" => %{"code" => "InvalidSubscriptionStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SnapshotList" => %{"member" => %{"locationName" => "Snapshot", "shape" => "Snapshot"}, "type" => "list"}, "NumberOfNodesQuotaExceededFault" => %{"error" => %{"code" => "NumberOfNodesQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventsMessage" => %{"members" => %{"Events" => %{"shape" => "EventList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "HsmClientCertificateAlreadyExistsFault" => %{"error" => %{"code" => "HsmClientCertificateAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Event" => %{"members" => %{"Date" => %{"shape" => "TStamp"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "EventId" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}, "Severity" => %{"shape" => "String"}, "SourceIdentifier" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}}, "type" => "structure"}, "ParameterApplyType" => %{"enum" => ["static", "dynamic"], "type" => "string"}, "DisableSnapshotCopyResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ClusterCredentials" => %{"members" => %{"DbPassword" => %{"shape" => "SensitiveString"}, "DbUser" => %{"shape" => "String"}, "Expiration" => %{"shape" => "TStamp"}}, "type" => "structure"}, "VpcSecurityGroupIdList" => %{"member" => %{"locationName" => "VpcSecurityGroupId", "shape" => "String"}, "type" => "list"}, "CopyClusterSnapshotMessage" => %{"members" => %{"SourceSnapshotClusterIdentifier" => %{"shape" => "String"}, "SourceSnapshotIdentifier" => %{"shape" => "String"}, "TargetSnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["SourceSnapshotIdentifier", "TargetSnapshotIdentifier"], "type" => "structure"}, "Snapshot" => %{"members" => %{"AccountsWithRestoreAccess" => %{"shape" => "AccountsWithRestoreAccessList"}, "ActualIncrementalBackupSizeInMegaBytes" => %{"shape" => "Double"}, "AvailabilityZone" => %{"shape" => "String"}, "BackupProgressInMegaBytes" => %{"shape" => "Double"}, "ClusterCreateTime" => %{"shape" => "TStamp"}, "ClusterIdentifier" => %{"shape" => "String"}, "ClusterVersion" => %{"shape" => "String"}, "CurrentBackupRateInMegaBytesPerSecond" => %{"shape" => "Double"}, "DBName" => %{"shape" => "String"}, "ElapsedTimeInSeconds" => %{"shape" => "Long"}, "Encrypted" => %{"shape" => "Boolean"}, "EncryptedWithHSM" => %{"shape" => "Boolean"}, "EnhancedVpcRouting" => %{"shape" => "Boolean"}, "EstimatedSecondsToCompletion" => %{"shape" => "Long"}, "KmsKeyId" => %{"shape" => "String"}, "MasterUsername" => %{"shape" => "String"}, "NodeType" => %{"shape" => "String"}, "NumberOfNodes" => %{"shape" => "Integer"}, "OwnerAccount" => %{"shape" => "String"}, "Port" => %{"shape" => "Integer"}, "RestorableNodeTypes" => %{"shape" => "RestorableNodeTypeList"}, "SnapshotCreateTime" => %{"shape" => "TStamp"}, "SnapshotIdentifier" => %{"shape" => "String"}, "SnapshotType" => %{"shape" => "String"}, "SourceRegion" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TotalBackupSizeInMegaBytes" => %{"shape" => "Double"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure", "wrapper" => true}, "InvalidRestoreFault" => %{"error" => %{"code" => "InvalidRestore", "httpStatusCode" => 406, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "IntegerOptional" => %{"type" => "integer"}, "TagValueList" => %{"member" => %{"locationName" => "TagValue", "shape" => "String"}, "type" => "list"}, "SnapshotCopyGrant" => %{"members" => %{"KmsKeyId" => %{"shape" => "String"}, "SnapshotCopyGrantName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure", "wrapper" => true}, "InvalidHsmConfigurationStateFault" => %{"error" => %{"code" => "InvalidHsmConfigurationStateFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ReservedNodesMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReservedNodes" => %{"shape" => "ReservedNodeList"}}, "type" => "structure"}, "ModifyEventSubscriptionResult" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "CreateClusterSubnetGroupMessage" => %{"members" => %{"ClusterSubnetGroupName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ClusterSubnetGroupName", "Description", "SubnetIds"], "type" => "structure"}, "DescribeTagsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ResourceName" => %{"shape" => "String"}, "ResourceType" => %{"shape" => "String"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "RevokeSnapshotAccessMessage" => %{"members" => %{"AccountWithRestoreAccess" => %{"shape" => "String"}, "SnapshotClusterIdentifier" => %{"shape" => "String"}, "SnapshotIdentifier" => %{"shape" => "String"}}, "required" => ["SnapshotIdentifier", "AccountWithRestoreAccess"], "type" => "structure"}, "HsmConfigurationList" => %{"member" => %{"locationName" => "HsmConfiguration", "shape" => "HsmConfiguration"}, "type" => "list"}, "Integer" => %{"type" => "integer"}, "ClusterParameterGroupNameMessage" => %{"members" => %{"ParameterGroupName" => %{"shape" => "String"}, "ParameterGroupStatus" => %{"shape" => "String"}}, "type" => "structure"}, "IPRangeList" => %{"member" => %{"locationName" => "IPRange", "shape" => "IPRange"}, "type" => "list"}, "TableRestoreStatusList" => %{"member" => %{"locationName" => "TableRestoreStatus", "shape" => "TableRestoreStatus"}, "type" => "list"}, "RecurringChargeList" => %{"member" => %{"locationName" => "RecurringCharge", "shape" => "RecurringCharge"}, "type" => "list"}, "DeleteSnapshotCopyGrantMessage" => %{"members" => %{"SnapshotCopyGrantName" => %{"shape" => "String"}}, "required" => ["SnapshotCopyGrantName"], "type" => "structure"}, "IncompatibleOrderableOptions" => %{"error" => %{"code" => "IncompatibleOrderableOptions", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EC2SecurityGroupList" => %{"member" => %{"locationName" => "EC2SecurityGroup", "shape" => "EC2SecurityGroup"}, "type" => "list"}, "DescribeClusterParameterGroupsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ParameterGroupName" => %{"shape" => "String"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "TableRestoreStatusType" => %{"enum" => ["PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"], "type" => "string"}, "RestoreTableFromClusterSnapshotMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "NewTableName" => %{"shape" => "String"}, "SnapshotIdentifier" => %{"shape" => "String"}, "SourceDatabaseName" => %{"shape" => "String"}, "SourceSchemaName" => %{"shape" => "String"}, "SourceTableName" => %{"shape" => "String"}, "TargetDatabaseName" => %{"shape" => "String"}, "TargetSchemaName" => %{"shape" => "String"}}, "required" => ["ClusterIdentifier", "SnapshotIdentifier", "SourceDatabaseName", "SourceTableName", "NewTableName"], "type" => "structure"}, "TableRestoreStatusMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "TableRestoreStatusDetails" => %{"shape" => "TableRestoreStatusList"}}, "type" => "structure"}, "SNSTopicArnNotFoundFault" => %{"error" => %{"code" => "SNSTopicArnNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ModifyClusterResult" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "IPRange" => %{"members" => %{"CIDRIP" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "CreateClusterSnapshotMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "SnapshotIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["SnapshotIdentifier", "ClusterIdentifier"], "type" => "structure"}, "ClusterSubnetGroupNotFoundFault" => %{"error" => %{"code" => "ClusterSubnetGroupNotFoundFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ClusterParameterGroupStatus" => %{"members" => %{"ClusterParameterStatusList" => %{"shape" => "ClusterParameterStatusList"}, "ParameterApplyStatus" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}}, "type" => "structure"}, "SnapshotCopyGrantNotFoundFault" => %{"error" => %{"code" => "SnapshotCopyGrantNotFoundFault", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeClusterSnapshotsMessage" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "String"}, "EndTime" => %{"shape" => "TStamp"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "OwnerAccount" => %{"shape" => "String"}, "SnapshotIdentifier" => %{"shape" => "String"}, "SnapshotType" => %{"shape" => "String"}, "StartTime" => %{"shape" => "TStamp"}, "TagKeys" => %{"shape" => "TagKeyList"}, "TagValues" => %{"shape" => "TagValueList"}}, "type" => "structure"}, "DescribeClusterParametersMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ParameterGroupName" => %{"shape" => "String"}, "Source" => %{"shape" => "String"}}, "required" => ["ParameterGroupName"], "type" => "structure"}, "ClusterParameterGroupNotFoundFault" => %{"error" => %{"code" => "ClusterParameterGroupNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventCategoriesMessage" => %{"members" => %{"EventCategoriesMapList" => %{"shape" => "EventCategoriesMapList"}}, "type" => "structure"}, "ReservedNodeOfferingNotFoundFault" => %{"error" => %{"code" => "ReservedNodeOfferingNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ElasticIpStatus" => %{"members" => %{"ElasticIp" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeOrderableClusterOptionsMessage" => %{"members" => %{"ClusterVersion" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "NodeType" => %{"shape" => "String"}}, "type" => "structure"}}
  end
end