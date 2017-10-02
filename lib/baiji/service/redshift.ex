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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableSnapshotCopy",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RevokeClusterSecurityGroupIngress",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteCluster",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateClusterSnapshot",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSnapshotCopyGrants",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AuthorizeSnapshotAccess",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeHsmConfigurations",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified HSM client certificate.
  """
  def delete_hsm_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteHsmClientCertificate",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeResize",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Starts logging information, such as queries and connection attempts, for
  the specified Amazon Redshift cluster.
  """
  def enable_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableLogging",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEvents",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeDefaultClusterParameters",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Rotates the encryption keys for a cluster.
  """
  def rotate_encryption_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RotateEncryptionKey",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteClusterSecurityGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResetClusterParameterGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RebootCluster",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeClusterSecurityGroups",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReservedNodeOfferings",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Deletes an Amazon Redshift event notification subscription.
  """
  def delete_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteEventSubscription",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyCluster",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeClusterParameterGroups",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateEventSubscription",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Modifies a cluster subnet group to include the specified list of VPC
  subnets. The operation replaces the existing list of subnets with the new
  list of subnets.
  """
  def modify_cluster_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyClusterSubnetGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified Amazon Redshift HSM configuration.
  """
  def delete_hsm_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteHsmConfiguration",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Describes whether information, such as queries and connection attempts, is
  being logged for the specified Amazon Redshift cluster.
  """
  def describe_logging_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeLoggingStatus",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Modifies the number of days to retain automated snapshots in the
  destination region after they are copied from the source region.
  """
  def modify_snapshot_copy_retention_period(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifySnapshotCopyRetentionPeriod",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified cluster subnet group.
  """
  def delete_cluster_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteClusterSubnetGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeHsmClientCertificates",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AuthorizeClusterSecurityGroupIngress",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RestoreFromClusterSnapshot",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeOrderableClusterOptions",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CopyClusterSnapshot",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PurchaseReservedNodeOffering",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateClusterSecurityGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteClusterSnapshot",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateClusterParameterGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Deletes a tag or tags from a resource. You must provide the ARN of the
  resource from which you want to delete the tag or tags.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteTags",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeTableRestoreStatus",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeClusterSnapshots",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateSnapshotCopyGrant",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEventCategories",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeClusterSubnetGroups",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteClusterParameterGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeTags",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Modifies the list of AWS Identity and Access Management (IAM) roles that
  can be used by the cluster to access other AWS services.

  A cluster can have up to 10 IAM roles associated at any time.
  """
  def modify_cluster_iam_roles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyClusterIamRoles",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyClusterParameterGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RestoreTableFromClusterSnapshot",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetClusterCredentials",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateCluster",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Modifies an existing Amazon Redshift event notification subscription.
  """
  def modify_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyEventSubscription",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateTags",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Returns the descriptions of the reserved nodes.
  """
  def describe_reserved_nodes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReservedNodes",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeClusterParameters",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Lists descriptions of all the Amazon Redshift event notifications
  subscription for a customer account. If you specify a subscription name,
  lists the description for that subscription.
  """
  def describe_event_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEventSubscriptions",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeClusterVersions",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateHsmConfiguration",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified snapshot copy grant.
  """
  def delete_snapshot_copy_grant(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSnapshotCopyGrant",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RevokeSnapshotAccess",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeClusters",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateClusterSubnetGroup",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
  @doc """
  Stops logging information, such as queries and connection attempts, for the
  specified Amazon Redshift cluster.
  """
  def disable_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisableLogging",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisableSnapshotCopy",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
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
      service:        "redshift",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateHsmClientCertificate",
      
      type:           :xml,
      version:        "2012-12-01",
      method:         :post
    }
  end
  
end