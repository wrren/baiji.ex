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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeRefreshSchemasStatus",
      method:           :post,
      input_shape:      "DescribeRefreshSchemasStatusMessage",
      output_shape:     "DescribeRefreshSchemasStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops the replication task.

  <p/>
  """
  def stop_replication_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopReplicationTask",
      method:           :post,
      input_shape:      "StopReplicationTaskMessage",
      output_shape:     "StopReplicationTaskResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the specified endpoint.
  """
  def modify_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ModifyEndpoint",
      method:           :post,
      input_shape:      "ModifyEndpointMessage",
      output_shape:     "ModifyEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the settings for the specified replication subnet group.
  """
  def modify_replication_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ModifyReplicationSubnetGroup",
      method:           :post,
      input_shape:      "ModifyReplicationSubnetGroupMessage",
      output_shape:     "ModifyReplicationSubnetGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the type of endpoints available.
  """
  def describe_endpoint_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEndpointTypes",
      method:           :post,
      input_shape:      "DescribeEndpointTypesMessage",
      output_shape:     "DescribeEndpointTypesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Tests the connection between the replication instance and the endpoint.
  """
  def test_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "TestConnection",
      method:           :post,
      input_shape:      "TestConnectionMessage",
      output_shape:     "TestConnectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Reloads the target database table with the source data.
  """
  def reload_tables(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ReloadTables",
      method:           :post,
      input_shape:      "ReloadTablesMessage",
      output_shape:     "ReloadTablesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns table statistics on the database migration task, including table
  name, rows inserted, rows updated, and rows deleted.
  """
  def describe_table_statistics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTableStatistics",
      method:           :post,
      input_shape:      "DescribeTableStatisticsMessage",
      output_shape:     "DescribeTableStatisticsResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEvents",
      method:           :post,
      input_shape:      "DescribeEventsMessage",
      output_shape:     "DescribeEventsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes metadata tags from a DMS resource.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      method:           :post,
      input_shape:      "RemoveTagsFromResourceMessage",
      output_shape:     "RemoveTagsFromResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all tags for an AWS DMS resource.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      method:           :post,
      input_shape:      "ListTagsForResourceMessage",
      output_shape:     "ListTagsForResourceResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteReplicationInstance",
      method:           :post,
      input_shape:      "DeleteReplicationInstanceMessage",
      output_shape:     "DeleteReplicationInstanceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a subnet group.
  """
  def delete_replication_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteReplicationSubnetGroup",
      method:           :post,
      input_shape:      "DeleteReplicationSubnetGroupMessage",
      output_shape:     "DeleteReplicationSubnetGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an AWS DMS event subscription.
  """
  def delete_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteEventSubscription",
      method:           :post,
      input_shape:      "DeleteEventSubscriptionMessage",
      output_shape:     "DeleteEventSubscriptionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the schema for the specified endpoint.

  <p/>
  """
  def describe_schemas(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeSchemas",
      method:           :post,
      input_shape:      "DescribeSchemasMessage",
      output_shape:     "DescribeSchemasResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads the specified certificate.
  """
  def import_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ImportCertificate",
      method:           :post,
      input_shape:      "ImportCertificateMessage",
      output_shape:     "ImportCertificateResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateEventSubscription",
      method:           :post,
      input_shape:      "CreateEventSubscriptionMessage",
      output_shape:     "CreateEventSubscriptionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates the replication instance using the specified parameters.
  """
  def create_replication_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateReplicationInstance",
      method:           :post,
      input_shape:      "CreateReplicationInstanceMessage",
      output_shape:     "CreateReplicationInstanceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the endpoints for your account in the current
  region.
  """
  def describe_endpoints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEndpoints",
      method:           :post,
      input_shape:      "DescribeEndpointsMessage",
      output_shape:     "DescribeEndpointsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified replication task.
  """
  def delete_replication_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteReplicationTask",
      method:           :post,
      input_shape:      "DeleteReplicationTaskMessage",
      output_shape:     "DeleteReplicationTaskResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an endpoint using the provided settings.
  """
  def create_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateEndpoint",
      method:           :post,
      input_shape:      "CreateEndpointMessage",
      output_shape:     "CreateEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the replication instance types that can be
  created in the specified region.
  """
  def describe_orderable_replication_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeOrderableReplicationInstances",
      method:           :post,
      input_shape:      "DescribeOrderableReplicationInstancesMessage",
      output_shape:     "DescribeOrderableReplicationInstancesResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartReplicationTask",
      method:           :post,
      input_shape:      "StartReplicationTaskMessage",
      output_shape:     "StartReplicationTaskResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ModifyReplicationTask",
      method:           :post,
      input_shape:      "ModifyReplicationTaskMessage",
      output_shape:     "ModifyReplicationTaskResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the status of the connections that have been made between the
  replication instance and an endpoint. Connections are created when you test
  an endpoint.
  """
  def describe_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConnections",
      method:           :post,
      input_shape:      "DescribeConnectionsMessage",
      output_shape:     "DescribeConnectionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a replication subnet group given a list of the subnet IDs in a VPC.
  """
  def create_replication_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateReplicationSubnetGroup",
      method:           :post,
      input_shape:      "CreateReplicationSubnetGroupMessage",
      output_shape:     "CreateReplicationSubnetGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified certificate.
  """
  def delete_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteCertificate",
      method:           :post,
      input_shape:      "DeleteCertificateMessage",
      output_shape:     "DeleteCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a replication task using the specified parameters.
  """
  def create_replication_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateReplicationTask",
      method:           :post,
      input_shape:      "CreateReplicationTaskMessage",
      output_shape:     "CreateReplicationTaskResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ModifyReplicationInstance",
      method:           :post,
      input_shape:      "ModifyReplicationInstanceMessage",
      output_shape:     "ModifyReplicationInstanceResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEventCategories",
      method:           :post,
      input_shape:      "DescribeEventCategoriesMessage",
      output_shape:     "DescribeEventCategoriesResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      method:           :post,
      input_shape:      "AddTagsToResourceMessage",
      output_shape:     "AddTagsToResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about replication tasks for your account in the current
  region.
  """
  def describe_replication_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeReplicationTasks",
      method:           :post,
      input_shape:      "DescribeReplicationTasksMessage",
      output_shape:     "DescribeReplicationTasksResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provides a description of the certificate.
  """
  def describe_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeCertificates",
      method:           :post,
      input_shape:      "DescribeCertificatesMessage",
      output_shape:     "DescribeCertificatesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies an existing AWS DMS event notification subscription.
  """
  def modify_event_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ModifyEventSubscription",
      method:           :post,
      input_shape:      "ModifyEventSubscriptionMessage",
      output_shape:     "ModifyEventSubscriptionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the replication subnet groups.
  """
  def describe_replication_subnet_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeReplicationSubnetGroups",
      method:           :post,
      input_shape:      "DescribeReplicationSubnetGroupsMessage",
      output_shape:     "DescribeReplicationSubnetGroupsResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEventSubscriptions",
      method:           :post,
      input_shape:      "DescribeEventSubscriptionsMessage",
      output_shape:     "DescribeEventSubscriptionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Populates the schema for the specified endpoint. This is an asynchronous
  operation and can take several minutes. You can check the status of this
  operation by calling the DescribeRefreshSchemasStatus operation.
  """
  def refresh_schemas(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RefreshSchemas",
      method:           :post,
      input_shape:      "RefreshSchemasMessage",
      output_shape:     "RefreshSchemasResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAccountAttributes",
      method:           :post,
      input_shape:      "DescribeAccountAttributesMessage",
      output_shape:     "DescribeAccountAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about replication instances for your account in the
  current region.
  """
  def describe_replication_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeReplicationInstances",
      method:           :post,
      input_shape:      "DescribeReplicationInstancesMessage",
      output_shape:     "DescribeReplicationInstancesResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteEndpoint",
      method:           :post,
      input_shape:      "DeleteEndpointMessage",
      output_shape:     "DeleteEndpointResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "dms",
      target_prefix:    "AmazonDMSv20160101",
      endpoint_prefix:  "dms",
      type:             :json,
      version:          "2016-01-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"KeyList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "TestConnectionMessage" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}, "ReplicationInstanceArn" => %{"shape" => "String"}}, "required" => ["ReplicationInstanceArn", "EndpointArn"], "type" => "structure"}, "DescribeEndpointsMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "ListTagsForResourceResponse" => %{"members" => %{"TagList" => %{"shape" => "TagList"}}, "type" => "structure"}, "StopReplicationTaskMessage" => %{"members" => %{"ReplicationTaskArn" => %{"shape" => "String"}}, "required" => ["ReplicationTaskArn"], "type" => "structure"}, "SourceType" => %{"enum" => ["replication-instance"], "type" => "string"}, "DescribeReplicationTasksMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "SubnetList" => %{"member" => %{"locationName" => "Subnet", "shape" => "Subnet"}, "type" => "list"}, "Subnet" => %{"members" => %{"SubnetAvailabilityZone" => %{"shape" => "AvailabilityZone"}, "SubnetIdentifier" => %{"shape" => "String"}, "SubnetStatus" => %{"shape" => "String"}}, "type" => "structure"}, "ReplicationSubnetGroupDoesNotCoverEnoughAZs" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "DescribeRefreshSchemasStatusMessage" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}}, "required" => ["EndpointArn"], "type" => "structure"}, "ModifyReplicationSubnetGroupMessage" => %{"members" => %{"ReplicationSubnetGroupDescription" => %{"shape" => "String"}, "ReplicationSubnetGroupIdentifier" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}}, "required" => ["ReplicationSubnetGroupIdentifier", "SubnetIds"], "type" => "structure"}, "AuthMechanismValue" => %{"enum" => ["default", "mongodb_cr", "scram_sha_1"], "type" => "string"}, "String" => %{"type" => "string"}, "RefreshSchemasStatusTypeValue" => %{"enum" => ["successful", "failed", "refreshing"], "type" => "string"}, "Boolean" => %{"type" => "boolean"}, "TableStatistics" => %{"members" => %{"Ddls" => %{"shape" => "Long"}, "Deletes" => %{"shape" => "Long"}, "FullLoadCondtnlChkFailedRows" => %{"shape" => "Long"}, "FullLoadErrorRows" => %{"shape" => "Long"}, "FullLoadRows" => %{"shape" => "Long"}, "Inserts" => %{"shape" => "Long"}, "LastUpdateTime" => %{"shape" => "TStamp"}, "SchemaName" => %{"shape" => "String"}, "TableName" => %{"shape" => "String"}, "TableState" => %{"shape" => "String"}, "Updates" => %{"shape" => "Long"}}, "type" => "structure"}, "DeleteReplicationTaskResponse" => %{"members" => %{"ReplicationTask" => %{"shape" => "ReplicationTask"}}, "type" => "structure"}, "OrderableReplicationInstanceList" => %{"member" => %{"locationName" => "OrderableReplicationInstance", "shape" => "OrderableReplicationInstance"}, "type" => "list"}, "SubnetAlreadyInUse" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "VpcSecurityGroupMembershipList" => %{"member" => %{"locationName" => "VpcSecurityGroupMembership", "shape" => "VpcSecurityGroupMembership"}, "type" => "list"}, "EventList" => %{"member" => %{"locationName" => "Event", "shape" => "Event"}, "type" => "list"}, "S3Settings" => %{"members" => %{"BucketFolder" => %{"shape" => "String"}, "BucketName" => %{"shape" => "String"}, "CompressionType" => %{"shape" => "CompressionTypeValue"}, "CsvDelimiter" => %{"shape" => "String"}, "CsvRowDelimiter" => %{"shape" => "String"}, "ExternalTableDefinition" => %{"shape" => "String"}, "ServiceAccessRoleArn" => %{"shape" => "String"}}, "type" => "structure"}, "ReplicationSubnetGroup" => %{"members" => %{"ReplicationSubnetGroupDescription" => %{"shape" => "String"}, "ReplicationSubnetGroupIdentifier" => %{"shape" => "String"}, "SubnetGroupStatus" => %{"shape" => "String"}, "Subnets" => %{"shape" => "SubnetList"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure"}, "StorageQuotaExceededFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "MigrationTypeValue" => %{"enum" => ["full-load", "cdc", "full-load-and-cdc"], "type" => "string"}, "DescribeEventCategoriesMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "SourceType" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeSchemasMessage" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "required" => ["EndpointArn"], "type" => "structure"}, "EventSubscriptionsList" => %{"member" => %{"locationName" => "EventSubscription", "shape" => "EventSubscription"}, "type" => "list"}, "DescribeReplicationInstancesMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "CompressionTypeValue" => %{"enum" => ["none", "gzip"], "type" => "string"}, "AccountQuota" => %{"members" => %{"AccountQuotaName" => %{"shape" => "String"}, "Max" => %{"shape" => "Long"}, "Used" => %{"shape" => "Long"}}, "type" => "structure"}, "DeleteEventSubscriptionMessage" => %{"members" => %{"SubscriptionName" => %{"shape" => "String"}}, "required" => ["SubscriptionName"], "type" => "structure"}, "MongoDbSettings" => %{"members" => %{"AuthMechanism" => %{"shape" => "AuthMechanismValue"}, "AuthSource" => %{"shape" => "String"}, "AuthType" => %{"shape" => "AuthTypeValue"}, "DatabaseName" => %{"shape" => "String"}, "DocsToInvestigate" => %{"shape" => "String"}, "ExtractDocId" => %{"shape" => "String"}, "NestingLevel" => %{"shape" => "NestingLevelValue"}, "Password" => %{"shape" => "SecretString"}, "Port" => %{"shape" => "IntegerOptional"}, "ServerName" => %{"shape" => "String"}, "Username" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyEndpointMessage" => %{"members" => %{"CertificateArn" => %{"shape" => "String"}, "DatabaseName" => %{"shape" => "String"}, "DynamoDbSettings" => %{"shape" => "DynamoDbSettings"}, "EndpointArn" => %{"shape" => "String"}, "EndpointIdentifier" => %{"shape" => "String"}, "EndpointType" => %{"shape" => "ReplicationEndpointTypeValue"}, "EngineName" => %{"shape" => "String"}, "ExtraConnectionAttributes" => %{"shape" => "String"}, "MongoDbSettings" => %{"shape" => "MongoDbSettings"}, "Password" => %{"shape" => "SecretString"}, "Port" => %{"shape" => "IntegerOptional"}, "S3Settings" => %{"shape" => "S3Settings"}, "ServerName" => %{"shape" => "String"}, "SslMode" => %{"shape" => "DmsSslModeValue"}, "Username" => %{"shape" => "String"}}, "required" => ["EndpointArn"], "type" => "structure"}, "CreateReplicationSubnetGroupMessage" => %{"members" => %{"ReplicationSubnetGroupDescription" => %{"shape" => "String"}, "ReplicationSubnetGroupIdentifier" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ReplicationSubnetGroupIdentifier", "ReplicationSubnetGroupDescription", "SubnetIds"], "type" => "structure"}, "ModifyEndpointResponse" => %{"members" => %{"Endpoint" => %{"shape" => "Endpoint"}}, "type" => "structure"}, "SNSNoAuthorizationFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "SourceIdsList" => %{"member" => %{"locationName" => "SourceId", "shape" => "String"}, "type" => "list"}, "ReplicationPendingModifiedValues" => %{"members" => %{"AllocatedStorage" => %{"shape" => "IntegerOptional"}, "EngineVersion" => %{"shape" => "String"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "ReplicationInstanceClass" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyReplicationTaskMessage" => %{"members" => %{"CdcStartTime" => %{"shape" => "TStamp"}, "MigrationType" => %{"shape" => "MigrationTypeValue"}, "ReplicationTaskArn" => %{"shape" => "String"}, "ReplicationTaskIdentifier" => %{"shape" => "String"}, "ReplicationTaskSettings" => %{"shape" => "String"}, "TableMappings" => %{"shape" => "String"}}, "required" => ["ReplicationTaskArn"], "type" => "structure"}, "DescribeEndpointTypesResponse" => %{"members" => %{"Marker" => %{"shape" => "String"}, "SupportedEndpointTypes" => %{"shape" => "SupportedEndpointTypeList"}}, "type" => "structure"}, "ReplicationSubnetGroups" => %{"member" => %{"locationName" => "ReplicationSubnetGroup", "shape" => "ReplicationSubnetGroup"}, "type" => "list"}, "ReloadTablesMessage" => %{"members" => %{"ReplicationTaskArn" => %{"shape" => "String"}, "TablesToReload" => %{"shape" => "TableListToReload"}}, "required" => ["ReplicationTaskArn", "TablesToReload"], "type" => "structure"}, "DescribeOrderableReplicationInstancesResponse" => %{"members" => %{"Marker" => %{"shape" => "String"}, "OrderableReplicationInstances" => %{"shape" => "OrderableReplicationInstanceList"}}, "type" => "structure"}, "StartReplicationTaskTypeValue" => %{"enum" => ["start-replication", "resume-processing", "reload-target"], "type" => "string"}, "CertificateWallet" => %{"type" => "blob"}, "RemoveTagsFromResourceMessage" => %{"members" => %{"ResourceArn" => %{"shape" => "String"}, "TagKeys" => %{"shape" => "KeyList"}}, "required" => ["ResourceArn", "TagKeys"], "type" => "structure"}, "SNSInvalidTopicFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "DescribeEventsResponse" => %{"members" => %{"Events" => %{"shape" => "EventList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "DynamoDbSettings" => %{"members" => %{"ServiceAccessRoleArn" => %{"shape" => "String"}}, "required" => ["ServiceAccessRoleArn"], "type" => "structure"}, "InvalidResourceStateFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "EndpointList" => %{"member" => %{"locationName" => "Endpoint", "shape" => "Endpoint"}, "type" => "list"}, "Filter" => %{"members" => %{"Name" => %{"shape" => "String"}, "Values" => %{"shape" => "FilterValueList"}}, "required" => ["Name", "Values"], "type" => "structure"}, "CreateEndpointMessage" => %{"members" => %{"CertificateArn" => %{"shape" => "String"}, "DatabaseName" => %{"shape" => "String"}, "DynamoDbSettings" => %{"shape" => "DynamoDbSettings"}, "EndpointIdentifier" => %{"shape" => "String"}, "EndpointType" => %{"shape" => "ReplicationEndpointTypeValue"}, "EngineName" => %{"shape" => "String"}, "ExtraConnectionAttributes" => %{"shape" => "String"}, "KmsKeyId" => %{"shape" => "String"}, "MongoDbSettings" => %{"shape" => "MongoDbSettings"}, "Password" => %{"shape" => "SecretString"}, "Port" => %{"shape" => "IntegerOptional"}, "S3Settings" => %{"shape" => "S3Settings"}, "ServerName" => %{"shape" => "String"}, "SslMode" => %{"shape" => "DmsSslModeValue"}, "Tags" => %{"shape" => "TagList"}, "Username" => %{"shape" => "String"}}, "required" => ["EndpointIdentifier", "EndpointType", "EngineName"], "type" => "structure"}, "ReplicationTaskStats" => %{"members" => %{"ElapsedTimeMillis" => %{"shape" => "Long"}, "FullLoadProgressPercent" => %{"shape" => "Integer"}, "TablesErrored" => %{"shape" => "Integer"}, "TablesLoaded" => %{"shape" => "Integer"}, "TablesLoading" => %{"shape" => "Integer"}, "TablesQueued" => %{"shape" => "Integer"}}, "type" => "structure"}, "AuthTypeValue" => %{"enum" => ["no", "password"], "type" => "string"}, "AddTagsToResourceMessage" => %{"members" => %{"ResourceArn" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceArn", "Tags"], "type" => "structure"}, "SecretString" => %{"sensitive" => true, "type" => "string"}, "DescribeReplicationSubnetGroupsMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "ImportCertificateMessage" => %{"members" => %{"CertificateIdentifier" => %{"shape" => "String"}, "CertificatePem" => %{"shape" => "String"}, "CertificateWallet" => %{"shape" => "CertificateWallet"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["CertificateIdentifier"], "type" => "structure"}, "ReplicationInstance" => %{"members" => %{"AllocatedStorage" => %{"shape" => "Integer"}, "AutoMinorVersionUpgrade" => %{"shape" => "Boolean"}, "AvailabilityZone" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "InstanceCreateTime" => %{"shape" => "TStamp"}, "KmsKeyId" => %{"shape" => "String"}, "MultiAZ" => %{"shape" => "Boolean"}, "PendingModifiedValues" => %{"shape" => "ReplicationPendingModifiedValues"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "PubliclyAccessible" => %{"shape" => "Boolean"}, "ReplicationInstanceArn" => %{"shape" => "String"}, "ReplicationInstanceClass" => %{"shape" => "String"}, "ReplicationInstanceIdentifier" => %{"shape" => "String"}, "ReplicationInstancePrivateIpAddress" => %{"deprecated" => true, "shape" => "String"}, "ReplicationInstancePrivateIpAddresses" => %{"shape" => "ReplicationInstancePrivateIpAddressList"}, "ReplicationInstancePublicIpAddress" => %{"deprecated" => true, "shape" => "String"}, "ReplicationInstancePublicIpAddresses" => %{"shape" => "ReplicationInstancePublicIpAddressList"}, "ReplicationInstanceStatus" => %{"shape" => "String"}, "ReplicationSubnetGroup" => %{"shape" => "ReplicationSubnetGroup"}, "SecondaryAvailabilityZone" => %{"shape" => "String"}, "VpcSecurityGroups" => %{"shape" => "VpcSecurityGroupMembershipList"}}, "type" => "structure"}, "VpcSecurityGroupMembership" => %{"members" => %{"Status" => %{"shape" => "String"}, "VpcSecurityGroupId" => %{"shape" => "String"}}, "type" => "structure"}, "CreateReplicationTaskResponse" => %{"members" => %{"ReplicationTask" => %{"shape" => "ReplicationTask"}}, "type" => "structure"}, "DeleteReplicationSubnetGroupResponse" => %{"members" => %{}, "type" => "structure"}, "CreateEventSubscriptionMessage" => %{"members" => %{"Enabled" => %{"shape" => "BooleanOptional"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceIds" => %{"shape" => "SourceIdsList"}, "SourceType" => %{"shape" => "String"}, "SubscriptionName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["SubscriptionName", "SnsTopicArn"], "type" => "structure"}, "DmsSslModeValue" => %{"enum" => ["none", "require", "verify-ca", "verify-full"], "type" => "string"}, "NestingLevelValue" => %{"enum" => ["none", "one"], "type" => "string"}, "FilterValueList" => %{"member" => %{"locationName" => "Value", "shape" => "String"}, "type" => "list"}, "ResourceAlreadyExistsFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "KMSKeyNotAccessibleFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "EventSubscription" => %{"members" => %{"CustSubscriptionId" => %{"shape" => "String"}, "CustomerAwsId" => %{"shape" => "String"}, "Enabled" => %{"shape" => "Boolean"}, "EventCategoriesList" => %{"shape" => "EventCategoriesList"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceIdsList" => %{"shape" => "SourceIdsList"}, "SourceType" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "SubscriptionCreationTime" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyReplicationTaskResponse" => %{"members" => %{"ReplicationTask" => %{"shape" => "ReplicationTask"}}, "type" => "structure"}, "DescribeCertificatesMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "CreateReplicationInstanceResponse" => %{"members" => %{"ReplicationInstance" => %{"shape" => "ReplicationInstance"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeCertificatesResponse" => %{"members" => %{"Certificates" => %{"shape" => "CertificateList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteReplicationSubnetGroupMessage" => %{"members" => %{"ReplicationSubnetGroupIdentifier" => %{"shape" => "String"}}, "required" => ["ReplicationSubnetGroupIdentifier"], "type" => "structure"}, "ResourceNotFoundFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "UpgradeDependencyFailureFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ModifyEventSubscriptionResponse" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "Endpoint" => %{"members" => %{"CertificateArn" => %{"shape" => "String"}, "DatabaseName" => %{"shape" => "String"}, "DynamoDbSettings" => %{"shape" => "DynamoDbSettings"}, "EndpointArn" => %{"shape" => "String"}, "EndpointIdentifier" => %{"shape" => "String"}, "EndpointType" => %{"shape" => "ReplicationEndpointTypeValue"}, "EngineName" => %{"shape" => "String"}, "ExternalId" => %{"shape" => "String"}, "ExtraConnectionAttributes" => %{"shape" => "String"}, "KmsKeyId" => %{"shape" => "String"}, "MongoDbSettings" => %{"shape" => "MongoDbSettings"}, "Port" => %{"shape" => "IntegerOptional"}, "S3Settings" => %{"shape" => "S3Settings"}, "ServerName" => %{"shape" => "String"}, "SslMode" => %{"shape" => "DmsSslModeValue"}, "Status" => %{"shape" => "String"}, "Username" => %{"shape" => "String"}}, "type" => "structure"}, "SubnetIdentifierList" => %{"member" => %{"locationName" => "SubnetIdentifier", "shape" => "String"}, "type" => "list"}, "DeleteCertificateResponse" => %{"members" => %{"Certificate" => %{"shape" => "Certificate"}}, "type" => "structure"}, "DescribeEndpointsResponse" => %{"members" => %{"Endpoints" => %{"shape" => "EndpointList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "OrderableReplicationInstance" => %{"members" => %{"DefaultAllocatedStorage" => %{"shape" => "Integer"}, "EngineVersion" => %{"shape" => "String"}, "IncludedAllocatedStorage" => %{"shape" => "Integer"}, "MaxAllocatedStorage" => %{"shape" => "Integer"}, "MinAllocatedStorage" => %{"shape" => "Integer"}, "ReplicationInstanceClass" => %{"shape" => "String"}, "StorageType" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteEventSubscriptionResponse" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "ReplicationInstancePublicIpAddressList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "TagList" => %{"member" => %{"locationName" => "Tag", "shape" => "Tag"}, "type" => "list"}, "CertificateList" => %{"member" => %{"locationName" => "Certificate", "shape" => "Certificate"}, "type" => "list"}, "TStamp" => %{"type" => "timestamp"}, "StartReplicationTaskResponse" => %{"members" => %{"ReplicationTask" => %{"shape" => "ReplicationTask"}}, "type" => "structure"}, "RemoveTagsFromResourceResponse" => %{"members" => %{}, "type" => "structure"}, "SupportedEndpointType" => %{"members" => %{"EndpointType" => %{"shape" => "ReplicationEndpointTypeValue"}, "EngineName" => %{"shape" => "String"}, "SupportsCDC" => %{"shape" => "Boolean"}}, "type" => "structure"}, "EventCategoriesList" => %{"member" => %{"locationName" => "EventCategory", "shape" => "String"}, "type" => "list"}, "DescribeReplicationSubnetGroupsResponse" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReplicationSubnetGroups" => %{"shape" => "ReplicationSubnetGroups"}}, "type" => "structure"}, "DeleteReplicationTaskMessage" => %{"members" => %{"ReplicationTaskArn" => %{"shape" => "String"}}, "required" => ["ReplicationTaskArn"], "type" => "structure"}, "DescribeTableStatisticsMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "ReplicationTaskArn" => %{"shape" => "String"}}, "required" => ["ReplicationTaskArn"], "type" => "structure"}, "InvalidSubnet" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "CreateReplicationInstanceMessage" => %{"members" => %{"AllocatedStorage" => %{"shape" => "IntegerOptional"}, "AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "AvailabilityZone" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "KmsKeyId" => %{"shape" => "String"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "PubliclyAccessible" => %{"shape" => "BooleanOptional"}, "ReplicationInstanceClass" => %{"shape" => "String"}, "ReplicationInstanceIdentifier" => %{"shape" => "String"}, "ReplicationSubnetGroupIdentifier" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["ReplicationInstanceIdentifier", "ReplicationInstanceClass"], "type" => "structure"}, "StopReplicationTaskResponse" => %{"members" => %{"ReplicationTask" => %{"shape" => "ReplicationTask"}}, "type" => "structure"}, "CreateEndpointResponse" => %{"members" => %{"Endpoint" => %{"shape" => "Endpoint"}}, "type" => "structure"}, "AvailabilityZone" => %{"members" => %{"Name" => %{"shape" => "String"}}, "type" => "structure"}, "EventCategoryGroup" => %{"members" => %{"EventCategories" => %{"shape" => "EventCategoriesList"}, "SourceType" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeAccountAttributesMessage" => %{"members" => %{}, "type" => "structure"}, "ResourceQuotaExceededFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "DescribeSchemasResponse" => %{"members" => %{"Marker" => %{"shape" => "String"}, "Schemas" => %{"shape" => "SchemaList"}}, "type" => "structure"}, "BooleanOptional" => %{"type" => "boolean"}, "ListTagsForResourceMessage" => %{"members" => %{"ResourceArn" => %{"shape" => "String"}}, "required" => ["ResourceArn"], "type" => "structure"}, "ReplicationInstanceList" => %{"member" => %{"locationName" => "ReplicationInstance", "shape" => "ReplicationInstance"}, "type" => "list"}, "Long" => %{"type" => "long"}, "SupportedEndpointTypeList" => %{"member" => %{"locationName" => "SupportedEndpointType", "shape" => "SupportedEndpointType"}, "type" => "list"}, "TableToReload" => %{"members" => %{"SchemaName" => %{"shape" => "String"}, "TableName" => %{"shape" => "String"}}, "type" => "structure"}, "CreateReplicationSubnetGroupResponse" => %{"members" => %{"ReplicationSubnetGroup" => %{"shape" => "ReplicationSubnetGroup"}}, "type" => "structure"}, "DeleteCertificateMessage" => %{"members" => %{"CertificateArn" => %{"shape" => "String"}}, "required" => ["CertificateArn"], "type" => "structure"}, "ReplicationTaskList" => %{"member" => %{"locationName" => "ReplicationTask", "shape" => "ReplicationTask"}, "type" => "list"}, "ModifyReplicationInstanceMessage" => %{"members" => %{"AllocatedStorage" => %{"shape" => "IntegerOptional"}, "AllowMajorVersionUpgrade" => %{"shape" => "Boolean"}, "ApplyImmediately" => %{"shape" => "Boolean"}, "AutoMinorVersionUpgrade" => %{"shape" => "BooleanOptional"}, "EngineVersion" => %{"shape" => "String"}, "MultiAZ" => %{"shape" => "BooleanOptional"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "ReplicationInstanceArn" => %{"shape" => "String"}, "ReplicationInstanceClass" => %{"shape" => "String"}, "ReplicationInstanceIdentifier" => %{"shape" => "String"}, "VpcSecurityGroupIds" => %{"shape" => "VpcSecurityGroupIdList"}}, "required" => ["ReplicationInstanceArn"], "type" => "structure"}, "DescribeEventSubscriptionsMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SubscriptionName" => %{"shape" => "String"}}, "type" => "structure"}, "ReplicationInstancePrivateIpAddressList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "DescribeEventSubscriptionsResponse" => %{"members" => %{"EventSubscriptionsList" => %{"shape" => "EventSubscriptionsList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "ConnectionList" => %{"member" => %{"locationName" => "Connection", "shape" => "Connection"}, "type" => "list"}, "RefreshSchemasMessage" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}, "ReplicationInstanceArn" => %{"shape" => "String"}}, "required" => ["EndpointArn", "ReplicationInstanceArn"], "type" => "structure"}, "DeleteReplicationInstanceMessage" => %{"members" => %{"ReplicationInstanceArn" => %{"shape" => "String"}}, "required" => ["ReplicationInstanceArn"], "type" => "structure"}, "DescribeEventsMessage" => %{"members" => %{"Duration" => %{"shape" => "IntegerOptional"}, "EndTime" => %{"shape" => "TStamp"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}, "SourceIdentifier" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}, "StartTime" => %{"shape" => "TStamp"}}, "type" => "structure"}, "CreateEventSubscriptionResponse" => %{"members" => %{"EventSubscription" => %{"shape" => "EventSubscription"}}, "type" => "structure"}, "ModifyReplicationInstanceResponse" => %{"members" => %{"ReplicationInstance" => %{"shape" => "ReplicationInstance"}}, "type" => "structure"}, "AccessDeniedFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "InvalidCertificateFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "RefreshSchemasResponse" => %{"members" => %{"RefreshSchemasStatus" => %{"shape" => "RefreshSchemasStatus"}}, "type" => "structure"}, "EventCategoryGroupList" => %{"member" => %{"locationName" => "EventCategoryGroup", "shape" => "EventCategoryGroup"}, "type" => "list"}, "DescribeEventCategoriesResponse" => %{"members" => %{"EventCategoryGroupList" => %{"shape" => "EventCategoryGroupList"}}, "type" => "structure"}, "InsufficientResourceCapacityFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "DescribeConnectionsResponse" => %{"members" => %{"Connections" => %{"shape" => "ConnectionList"}, "Marker" => %{"shape" => "String"}}, "type" => "structure"}, "ExceptionMessage" => %{"type" => "string"}, "DeleteEndpointMessage" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}}, "required" => ["EndpointArn"], "type" => "structure"}, "FilterList" => %{"member" => %{"locationName" => "Filter", "shape" => "Filter"}, "type" => "list"}, "ModifyEventSubscriptionMessage" => %{"members" => %{"Enabled" => %{"shape" => "BooleanOptional"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "SnsTopicArn" => %{"shape" => "String"}, "SourceType" => %{"shape" => "String"}, "SubscriptionName" => %{"shape" => "String"}}, "required" => ["SubscriptionName"], "type" => "structure"}, "AccountQuotaList" => %{"member" => %{"locationName" => "AccountQuota", "shape" => "AccountQuota"}, "type" => "list"}, "DescribeOrderableReplicationInstancesMessage" => %{"members" => %{"Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "ReplicationEndpointTypeValue" => %{"enum" => ["source", "target"], "type" => "string"}, "TableListToReload" => %{"member" => %{"shape" => "TableToReload"}, "type" => "list"}, "CreateReplicationTaskMessage" => %{"members" => %{"CdcStartTime" => %{"shape" => "TStamp"}, "MigrationType" => %{"shape" => "MigrationTypeValue"}, "ReplicationInstanceArn" => %{"shape" => "String"}, "ReplicationTaskIdentifier" => %{"shape" => "String"}, "ReplicationTaskSettings" => %{"shape" => "String"}, "SourceEndpointArn" => %{"shape" => "String"}, "TableMappings" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}, "TargetEndpointArn" => %{"shape" => "String"}}, "required" => ["ReplicationTaskIdentifier", "SourceEndpointArn", "TargetEndpointArn", "ReplicationInstanceArn", "MigrationType", "TableMappings"], "type" => "structure"}, "TableStatisticsList" => %{"member" => %{"shape" => "TableStatistics"}, "type" => "list"}, "ReloadTablesResponse" => %{"members" => %{"ReplicationTaskArn" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeReplicationInstancesResponse" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReplicationInstances" => %{"shape" => "ReplicationInstanceList"}}, "type" => "structure"}, "SchemaList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "RefreshSchemasStatus" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}, "LastFailureMessage" => %{"shape" => "String"}, "LastRefreshDate" => %{"shape" => "TStamp"}, "ReplicationInstanceArn" => %{"shape" => "String"}, "Status" => %{"shape" => "RefreshSchemasStatusTypeValue"}}, "type" => "structure"}, "DescribeRefreshSchemasStatusResponse" => %{"members" => %{"RefreshSchemasStatus" => %{"shape" => "RefreshSchemasStatus"}}, "type" => "structure"}, "Event" => %{"members" => %{"Date" => %{"shape" => "TStamp"}, "EventCategories" => %{"shape" => "EventCategoriesList"}, "Message" => %{"shape" => "String"}, "SourceIdentifier" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}}, "type" => "structure"}, "DeleteReplicationInstanceResponse" => %{"members" => %{"ReplicationInstance" => %{"shape" => "ReplicationInstance"}}, "type" => "structure"}, "Connection" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}, "EndpointIdentifier" => %{"shape" => "String"}, "LastFailureMessage" => %{"shape" => "String"}, "ReplicationInstanceArn" => %{"shape" => "String"}, "ReplicationInstanceIdentifier" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyReplicationSubnetGroupResponse" => %{"members" => %{"ReplicationSubnetGroup" => %{"shape" => "ReplicationSubnetGroup"}}, "type" => "structure"}, "VpcSecurityGroupIdList" => %{"member" => %{"locationName" => "VpcSecurityGroupId", "shape" => "String"}, "type" => "list"}, "DeleteEndpointResponse" => %{"members" => %{"Endpoint" => %{"shape" => "Endpoint"}}, "type" => "structure"}, "IntegerOptional" => %{"type" => "integer"}, "DescribeConnectionsMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "DescribeTableStatisticsResponse" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReplicationTaskArn" => %{"shape" => "String"}, "TableStatistics" => %{"shape" => "TableStatisticsList"}}, "type" => "structure"}, "TestConnectionResponse" => %{"members" => %{"Connection" => %{"shape" => "Connection"}}, "type" => "structure"}, "DescribeEndpointTypesMessage" => %{"members" => %{"Filters" => %{"shape" => "FilterList"}, "Marker" => %{"shape" => "String"}, "MaxRecords" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "DescribeAccountAttributesResponse" => %{"members" => %{"AccountQuotas" => %{"shape" => "AccountQuotaList"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "DescribeReplicationTasksResponse" => %{"members" => %{"Marker" => %{"shape" => "String"}, "ReplicationTasks" => %{"shape" => "ReplicationTaskList"}}, "type" => "structure"}, "AddTagsToResourceResponse" => %{"members" => %{}, "type" => "structure"}, "ReplicationTask" => %{"members" => %{"LastFailureMessage" => %{"shape" => "String"}, "MigrationType" => %{"shape" => "MigrationTypeValue"}, "ReplicationInstanceArn" => %{"shape" => "String"}, "ReplicationTaskArn" => %{"shape" => "String"}, "ReplicationTaskCreationDate" => %{"shape" => "TStamp"}, "ReplicationTaskIdentifier" => %{"shape" => "String"}, "ReplicationTaskSettings" => %{"shape" => "String"}, "ReplicationTaskStartDate" => %{"shape" => "TStamp"}, "ReplicationTaskStats" => %{"shape" => "ReplicationTaskStats"}, "SourceEndpointArn" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "StopReason" => %{"shape" => "String"}, "TableMappings" => %{"shape" => "String"}, "TargetEndpointArn" => %{"shape" => "String"}}, "type" => "structure"}, "Certificate" => %{"members" => %{"CertificateArn" => %{"shape" => "String"}, "CertificateCreationDate" => %{"shape" => "TStamp"}, "CertificateIdentifier" => %{"shape" => "String"}, "CertificateOwner" => %{"shape" => "String"}, "CertificatePem" => %{"shape" => "String"}, "CertificateWallet" => %{"shape" => "CertificateWallet"}, "KeyLength" => %{"shape" => "IntegerOptional"}, "SigningAlgorithm" => %{"shape" => "String"}, "ValidFromDate" => %{"shape" => "TStamp"}, "ValidToDate" => %{"shape" => "TStamp"}}, "type" => "structure"}, "ImportCertificateResponse" => %{"members" => %{"Certificate" => %{"shape" => "Certificate"}}, "type" => "structure"}, "StartReplicationTaskMessage" => %{"members" => %{"CdcStartTime" => %{"shape" => "TStamp"}, "ReplicationTaskArn" => %{"shape" => "String"}, "StartReplicationTaskType" => %{"shape" => "StartReplicationTaskTypeValue"}}, "required" => ["ReplicationTaskArn", "StartReplicationTaskType"], "type" => "structure"}}
  end
end