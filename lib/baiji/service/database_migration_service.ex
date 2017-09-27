defmodule Baiji.DatabaseMigrationService do
  @moduledoc """
  AWS Database Migration Service

  AWS Database Migration Service (AWS DMS) can migrate your data to and from
  the most widely used commercial and open-source databases such as Oracle,
  PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora,
  MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports
  homogeneous migrations such as Oracle to Oracle, as well as heterogeneous
  migrations between different database platforms, such as Oracle to MySQL or
  SQL Server to PostgreSQL.

  For more information about AWS DMS, see the AWS DMS user guide at [ What Is
  AWS Database Migration Service?
  ](http://docs.aws.amazon.com/dms/latest/userguide/Welcome.html)
  """
  
  @doc """
  Returns the status of the RefreshSchemas operation.
  """
  def describe_refresh_schemas_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeRefreshSchemasStatus",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Stops the replication task.

  <p/>
  """
  def stop_replication_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "StopReplicationTask",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies the specified endpoint.
  """
  def modify_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ModifyEndpoint",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies the settings for the specified replication subnet group.
  """
  def modify_replication_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ModifyReplicationSubnetGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about the type of endpoints available.
  """
  def describe_endpoint_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeEndpointTypes",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Tests the connection between the replication instance and the endpoint.
  """
  def test_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "TestConnection",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Reloads the target database table with the source data.
  """
  def reload_tables(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ReloadTables",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns table statistics on the database migration task, including table
  name, rows inserted, rows updated, and rows deleted.
  """
  def describe_table_statistics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeTableStatistics",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists events for a given source identifier and source type. You can also
  specify a start and end time. For more information on AWS DMS events, see [
  Working with Events and Notifications
  ](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html).
  """
  def describe_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeEvents",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Removes metadata tags from a DMS resource.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RemoveTagsFromResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all tags for an AWS DMS resource.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListTagsForResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified replication instance.

  <note> You must delete any migration tasks that are associated with the
  replication instance before you can delete it.

  </note> <p/>
  """
  def delete_replication_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteReplicationInstance",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a subnet group.
  """
  def delete_replication_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteReplicationSubnetGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes an AWS DMS event subscription.
  """
  def delete_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteEventSubscription",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about the schema for the specified endpoint.

  <p/>
  """
  def describe_schemas(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeSchemas",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Uploads the specified certificate.
  """
  def import_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ImportCertificate",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an AWS DMS event notification subscription.

  You can specify the type of source (`SourceType`) you want to be notified
  of, provide a list of AWS DMS source IDs (`SourceIds`) that triggers the
  events, and provide a list of event categories (`EventCategories`) for
  events you want to be notified of. If you specify both the `SourceType` and
  `SourceIds`, such as `SourceType = replication-instance` and
  `SourceIdentifier = my-replinstance`, you will be notified of all the
  replication instance events for the specified source. If you specify a
  `SourceType` but don't specify a `SourceIdentifier`, you receive notice of
  the events for that source type for all your AWS DMS sources. If you don't
  specify either `SourceType` nor `SourceIdentifier`, you will be notified of
  events generated from all AWS DMS sources belonging to your customer
  account.

  For more information about AWS DMS events, see [ Working with Events and
  Notifications
  ](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in the
  AWS Database MIgration Service User Guide.
  """
  def create_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateEventSubscription",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates the replication instance using the specified parameters.
  """
  def create_replication_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateReplicationInstance",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about the endpoints for your account in the current
  region.
  """
  def describe_endpoints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeEndpoints",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified replication task.
  """
  def delete_replication_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteReplicationTask",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an endpoint using the provided settings.
  """
  def create_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateEndpoint",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about the replication instance types that can be
  created in the specified region.
  """
  def describe_orderable_replication_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeOrderableReplicationInstances",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Starts the replication task.

  For more information about AWS DMS tasks, see the AWS DMS user guide at [
  Working with Migration Tasks
  ](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html)
  """
  def start_replication_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "StartReplicationTask",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies the specified replication task.

  You can't modify the task endpoints. The task must be stopped before you
  can modify it.

  For more information about AWS DMS tasks, see the AWS DMS user guide at [
  Working with Migration Tasks
  ](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html)
  """
  def modify_replication_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ModifyReplicationTask",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes the status of the connections that have been made between the
  replication instance and an endpoint. Connections are created when you test
  an endpoint.
  """
  def describe_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeConnections",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a replication subnet group given a list of the subnet IDs in a VPC.
  """
  def create_replication_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateReplicationSubnetGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified certificate.
  """
  def delete_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteCertificate",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a replication task using the specified parameters.
  """
  def create_replication_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateReplicationTask",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies the replication instance to apply new settings. You can change one
  or more parameters by specifying these parameters and the new values in the
  request.

  Some settings are applied during the maintenance window.

  <p/>
  """
  def modify_replication_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ModifyReplicationInstance",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists categories for all event source types, or, if specified, for a
  specified source type. You can see a list of the event categories and
  source types in [ Working with Events and Notifications
  ](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in the
  AWS Database Migration Service User Guide.
  """
  def describe_event_categories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeEventCategories",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Adds metadata tags to a DMS resource, including replication instance,
  endpoint, security group, and migration task. These tags can also be used
  with cost allocation reporting to track cost associated with DMS resources,
  or used in a Condition statement in an IAM policy for DMS.
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AddTagsToResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about replication tasks for your account in the current
  region.
  """
  def describe_replication_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeReplicationTasks",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Provides a description of the certificate.
  """
  def describe_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeCertificates",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies an existing AWS DMS event notification subscription.
  """
  def modify_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ModifyEventSubscription",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about the replication subnet groups.
  """
  def describe_replication_subnet_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeReplicationSubnetGroups",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all the event subscriptions for a customer account. The description
  of a subscription includes `SubscriptionName`, `SNSTopicARN`, `CustomerID`,
  `SourceType`, `SourceID`, `CreationTime`, and `Status`.

  If you specify `SubscriptionName`, this action lists the description for
  that subscription.
  """
  def describe_event_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeEventSubscriptions",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Populates the schema for the specified endpoint. This is an asynchronous
  operation and can take several minutes. You can check the status of this
  operation by calling the DescribeRefreshSchemasStatus operation.
  """
  def refresh_schemas(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RefreshSchemas",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all of the AWS DMS attributes for a customer account. The attributes
  include AWS DMS quotas for the account, such as the number of replication
  instances allowed. The description for a quota includes the quota name,
  current usage toward that quota, and the quota's maximum value.

  This command does not take any parameters.
  """
  def describe_account_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeAccountAttributes",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about replication instances for your account in the
  current region.
  """
  def describe_replication_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeReplicationInstances",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified endpoint.

  <note> All tasks associated with the endpoint must be deleted before you
  can delete the endpoint.

  </note> <p/>
  """
  def delete_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteEndpoint",
      type:     :json,
      method:   :post
    }
  end
  
end