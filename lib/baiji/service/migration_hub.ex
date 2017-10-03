defmodule Baiji.MigrationHub do
  @moduledoc """
  <p/>
  """

  @doc """
  Associates a created artifact of an AWS cloud resource, the target
  receiving the migration, with the migration task performed by a migration
  tool. This API has the following traits:

  <ul> <li> Migration tools can call the `AssociateCreatedArtifact` operation
  to indicate which AWS artifact is associated with a migration task.

  </li> <li> The created artifact name must be provided in ARN (Amazon
  Resource Name) format which will contain information about type and region;
  for example: `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.

  </li> <li> Examples of the AWS resource behind the created artifact are,
  AMI's, EC2 instance, or DMS endpoint, etc.

  </li> </ul>
  """
  def associate_created_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateCreatedArtifact",
      method:           :post,
      input_shape:      "AssociateCreatedArtifactRequest",
      output_shape:     "AssociateCreatedArtifactResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates a discovered resource ID from Application Discovery Service
  (ADS) with a migration task.
  """
  def associate_discovered_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateDiscoveredResource",
      method:           :post,
      input_shape:      "AssociateDiscoveredResourceRequest",
      output_shape:     "AssociateDiscoveredResourceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a progress update stream which is an AWS resource used for access
  control as well as a namespace for migration task names that is implicitly
  linked to your AWS account. It must uniquely identify the migration tool as
  it is used for all updates made by the tool; however, it does not need to
  be unique for each AWS account because it is scoped to the AWS account.
  """
  def create_progress_update_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateProgressUpdateStream",
      method:           :post,
      input_shape:      "CreateProgressUpdateStreamRequest",
      output_shape:     "CreateProgressUpdateStreamResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a progress update stream, including all of its tasks, which was
  previously created as an AWS resource used for access control. This API has
  the following traits:

  <ul> <li> The only parameter needed for `DeleteProgressUpdateStream` is the
  stream name (same as a `CreateProgressUpdateStream` call).

  </li> <li> The call will return, and a background process will
  asynchronously be doing the actual delete of the stream and all of its
  resources (tasks, associated resources, resource attributes, created
  artifacts).

  </li> <li> If the stream takes time to be deleted, it might still show up
  on a `ListProgressUpdateStreams` call.

  </li> <li> `CreateProgressUpdateStream`, `ImportMigrationTask`,
  `NotifyMigrationTaskState`, and all Associate[*] APIs realted to the tasks
  belonging to the stream will throw "InvalidInputException" if the stream of
  the same name is in the process of being deleted.

  </li> <li> Once the stream and all of its resources are deleted,
  `CreateProgressUpdateStream` for a stream of the same name will succeed,
  and that stream will be an entirely new logical resource (without any
  resources associated with the old stream).

  </li> </ul>
  """
  def delete_progress_update_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteProgressUpdateStream",
      method:           :post,
      input_shape:      "DeleteProgressUpdateStreamRequest",
      output_shape:     "DeleteProgressUpdateStreamResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the migration status of an application.
  """
  def describe_application_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeApplicationState",
      method:           :post,
      input_shape:      "DescribeApplicationStateRequest",
      output_shape:     "DescribeApplicationStateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of all attributes associated with a specific migration
  task.
  """
  def describe_migration_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMigrationTask",
      method:           :post,
      input_shape:      "DescribeMigrationTaskRequest",
      output_shape:     "DescribeMigrationTaskResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociates a created artifact of an AWS resource with a migration task
  performed by a migration tool that was previously associated. This API has
  the following traits:

  <ul> <li> A migration user can call the `DisassociateCreatedArtifacts`
  operation to disassociate a created AWS Artifact from a migration task.

  </li> <li> The created artifact name must be provided in ARN (Amazon
  Resource Name) format which will contain information about type and region;
  for example: `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.

  </li> <li> Examples of the AWS resource behind the created artifact are,
  AMI's, EC2 instance, or RDS instance, etc.

  </li> </ul>
  """
  def disassociate_created_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisassociateCreatedArtifact",
      method:           :post,
      input_shape:      "DisassociateCreatedArtifactRequest",
      output_shape:     "DisassociateCreatedArtifactResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociate an Application Discovery Service (ADS) discovered resource
  from a migration task.
  """
  def disassociate_discovered_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisassociateDiscoveredResource",
      method:           :post,
      input_shape:      "DisassociateDiscoveredResourceRequest",
      output_shape:     "DisassociateDiscoveredResourceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a new migration task which represents a server, database, etc.,
  being migrated to AWS by a migration tool.

  This API is a prerequisite to calling the `NotifyMigrationTaskState` API as
  the migration tool must first register the migration task with Migration
  Hub.
  """
  def import_migration_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ImportMigrationTask",
      method:           :post,
      input_shape:      "ImportMigrationTaskRequest",
      output_shape:     "ImportMigrationTaskResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the created artifacts attached to a given migration task in an update
  stream. This API has the following traits:

  <ul> <li> Gets the list of the created artifacts while migration is taking
  place.

  </li> <li> Shows the artifacts created by the migration tool that was
  associated by the `AssociateCreatedArtifact` API.

  </li> <li> Lists created artifacts in a paginated interface.

  </li> </ul>
  """
  def list_created_artifacts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListCreatedArtifacts",
      method:           :post,
      input_shape:      "ListCreatedArtifactsRequest",
      output_shape:     "ListCreatedArtifactsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists discovered resources associated with the given `MigrationTask`.
  """
  def list_discovered_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDiscoveredResources",
      method:           :post,
      input_shape:      "ListDiscoveredResourcesRequest",
      output_shape:     "ListDiscoveredResourcesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all, or filtered by resource name, migration tasks associated with
  the user account making this call. This API has the following traits:

  <ul> <li> Can show a summary list of the most recent migration tasks.

  </li> <li> Can show a summary list of migration tasks associated with a
  given discovered resource.

  </li> <li> Lists migration tasks in a paginated interface.

  </li> </ul>
  """
  def list_migration_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListMigrationTasks",
      method:           :post,
      input_shape:      "ListMigrationTasksRequest",
      output_shape:     "ListMigrationTasksResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists progress update streams associated with the user account making this
  call.
  """
  def list_progress_update_streams(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListProgressUpdateStreams",
      method:           :post,
      input_shape:      "ListProgressUpdateStreamsRequest",
      output_shape:     "ListProgressUpdateStreamsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the migration state of an application. For a given application
  identified by the value passed to `ApplicationId`, its status is set or
  updated by passing one of three values to `Status`: `NOT_STARTED |
  IN_PROGRESS | COMPLETED`.
  """
  def notify_application_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "NotifyApplicationState",
      method:           :post,
      input_shape:      "NotifyApplicationStateRequest",
      output_shape:     "NotifyApplicationStateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Notifies Migration Hub of the current status, progress, or other detail
  regarding a migration task. This API has the following traits:

  <ul> <li> Migration tools will call the `NotifyMigrationTaskState` API to
  share the latest progress and status.

  </li> <li> `MigrationTaskName` is used for addressing updates to the
  correct target.

  </li> <li> `ProgressUpdateStream` is used for access control and to provide
  a namespace for each migration tool.

  </li> </ul>
  """
  def notify_migration_task_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "NotifyMigrationTaskState",
      method:           :post,
      input_shape:      "NotifyMigrationTaskStateRequest",
      output_shape:     "NotifyMigrationTaskStateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provides identifying details of the resource being migrated so that it can
  be associated in the Application Discovery Service (ADS)'s repository. This
  association occurs asynchronously after `PutResourceAttributes` returns.

  <important> Keep in mind that subsequent calls to PutResourceAttributes
  will override previously stored attributes. For example, if it is first
  called with a MAC address, but later, it is desired to *add* an IP address,
  it will then be required to call it with *both* the IP and MAC addresses to
  prevent overiding the MAC address.

  </important> <note> Because this is an asynchronous call, it will always
  return 200, whether an association occurs or not. To confirm if an
  association was found based on the provided details, call
  `ListAssociatedResource`.

  </note>
  """
  def put_resource_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutResourceAttributes",
      method:           :post,
      input_shape:      "PutResourceAttributesRequest",
      output_shape:     "PutResourceAttributesResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "mgh",
      target_prefix:    "AWSMigrationHub",
      endpoint_prefix:  "mgh",
      type:             :json,
      version:          "2017-05-31",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"UpdateDateTime" => %{"type" => "timestamp"}, "DiscoveredResourceList" => %{"member" => %{"shape" => "DiscoveredResource"}, "type" => "list"}, "PutResourceAttributesRequest" => %{"members" => %{"DryRun" => %{"shape" => "DryRun"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}, "ResourceAttributeList" => %{"shape" => "ResourceAttributeList"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName", "ResourceAttributeList"], "type" => "structure"}, "DryRun" => %{"type" => "boolean"}, "NotifyMigrationTaskStateResult" => %{"members" => %{}, "type" => "structure"}, "CreateProgressUpdateStreamResult" => %{"members" => %{}, "type" => "structure"}, "CreatedArtifact" => %{"members" => %{"Description" => %{"shape" => "CreatedArtifactDescription"}, "Name" => %{"shape" => "CreatedArtifactName"}}, "required" => ["Name"], "type" => "structure"}, "ResourceAttributeValue" => %{"max" => 256, "min" => 1, "type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "AssociateCreatedArtifactRequest" => %{"members" => %{"CreatedArtifact" => %{"shape" => "CreatedArtifact"}, "DryRun" => %{"shape" => "DryRun"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName", "CreatedArtifact"], "type" => "structure"}, "LatestResourceAttributeList" => %{"max" => 100, "member" => %{"shape" => "ResourceAttribute"}, "min" => 0, "type" => "list"}, "DeleteProgressUpdateStreamRequest" => %{"members" => %{"DryRun" => %{"shape" => "DryRun"}, "ProgressUpdateStreamName" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStreamName"], "type" => "structure"}, "AccessDeniedException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DescribeApplicationStateResult" => %{"members" => %{"ApplicationStatus" => %{"shape" => "ApplicationStatus"}, "LastUpdatedTime" => %{"shape" => "UpdateDateTime"}}, "type" => "structure"}, "ListDiscoveredResourcesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResultsResources"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "NextToken" => %{"shape" => "Token"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName"], "type" => "structure"}, "AssociateDiscoveredResourceResult" => %{"members" => %{}, "type" => "structure"}, "DescribeMigrationTaskResult" => %{"members" => %{"MigrationTask" => %{"shape" => "MigrationTask"}}, "type" => "structure"}, "ResourceAttributeType" => %{"enum" => ["IPV4_ADDRESS", "IPV6_ADDRESS", "MAC_ADDRESS", "FQDN", "VM_MANAGER_ID", "VM_MANAGED_OBJECT_REFERENCE", "VM_NAME", "VM_PATH", "BIOS_ID", "MOTHERBOARD_SERIAL_NUMBER", "LABEL"], "type" => "string"}, "ProgressPercent" => %{"box" => true, "max" => 100, "min" => 0, "type" => "integer"}, "ServiceUnavailableException" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListMigrationTasksRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "Token"}, "ResourceName" => %{"shape" => "ResourceName"}}, "type" => "structure"}, "DiscoveredResource" => %{"members" => %{"ConfigurationId" => %{"shape" => "ConfigurationId"}, "Description" => %{"shape" => "DiscoveredResourceDescription"}}, "required" => ["ConfigurationId"], "type" => "structure"}, "Token" => %{"type" => "string"}, "DisassociateCreatedArtifactRequest" => %{"members" => %{"CreatedArtifactName" => %{"shape" => "CreatedArtifactName"}, "DryRun" => %{"shape" => "DryRun"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName", "CreatedArtifactName"], "type" => "structure"}, "DisassociateCreatedArtifactResult" => %{"members" => %{}, "type" => "structure"}, "MigrationTaskSummary" => %{"members" => %{"MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressPercent" => %{"shape" => "ProgressPercent"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}, "Status" => %{"shape" => "Status"}, "StatusDetail" => %{"shape" => "StatusDetail"}, "UpdateDateTime" => %{"shape" => "UpdateDateTime"}}, "type" => "structure"}, "NotifyApplicationStateResult" => %{"members" => %{}, "type" => "structure"}, "NextUpdateSeconds" => %{"min" => 0, "type" => "integer"}, "DiscoveredResourceDescription" => %{"max" => 500, "min" => 0, "type" => "string"}, "DescribeApplicationStateRequest" => %{"members" => %{"ApplicationId" => %{"shape" => "ApplicationId"}}, "required" => ["ApplicationId"], "type" => "structure"}, "ImportMigrationTaskRequest" => %{"members" => %{"DryRun" => %{"shape" => "DryRun"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName"], "type" => "structure"}, "ProgressUpdateStreamSummary" => %{"members" => %{"ProgressUpdateStreamName" => %{"shape" => "ProgressUpdateStream"}}, "type" => "structure"}, "AssociateDiscoveredResourceRequest" => %{"members" => %{"DiscoveredResource" => %{"shape" => "DiscoveredResource"}, "DryRun" => %{"shape" => "DryRun"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName", "DiscoveredResource"], "type" => "structure"}, "NotifyMigrationTaskStateRequest" => %{"members" => %{"DryRun" => %{"shape" => "DryRun"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "NextUpdateSeconds" => %{"shape" => "NextUpdateSeconds"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}, "Task" => %{"shape" => "Task"}, "UpdateDateTime" => %{"shape" => "UpdateDateTime"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName", "Task", "UpdateDateTime", "NextUpdateSeconds"], "type" => "structure"}, "MaxResults" => %{"box" => true, "max" => 100, "min" => 1, "type" => "integer"}, "AssociateCreatedArtifactResult" => %{"members" => %{}, "type" => "structure"}, "ProgressUpdateStream" => %{"max" => 50, "min" => 1, "pattern" => "[^/:|\\000-\\037]+", "type" => "string"}, "UnauthorizedOperation" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PutResourceAttributesResult" => %{"members" => %{}, "type" => "structure"}, "ConfigurationId" => %{"min" => 1, "type" => "string"}, "MigrationTaskSummaryList" => %{"member" => %{"shape" => "MigrationTaskSummary"}, "type" => "list"}, "ApplicationStatus" => %{"enum" => ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"], "type" => "string"}, "ProgressUpdateStreamSummaryList" => %{"member" => %{"shape" => "ProgressUpdateStreamSummary"}, "type" => "list"}, "ListCreatedArtifactsResult" => %{"members" => %{"CreatedArtifactList" => %{"shape" => "CreatedArtifactList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "Task" => %{"members" => %{"ProgressPercent" => %{"shape" => "ProgressPercent"}, "Status" => %{"shape" => "Status"}, "StatusDetail" => %{"shape" => "StatusDetail"}}, "required" => ["Status"], "type" => "structure"}, "ListProgressUpdateStreamsResult" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "ProgressUpdateStreamSummaryList" => %{"shape" => "ProgressUpdateStreamSummaryList"}}, "type" => "structure"}, "MaxResultsCreatedArtifacts" => %{"box" => true, "max" => 10, "min" => 1, "type" => "integer"}, "ImportMigrationTaskResult" => %{"members" => %{}, "type" => "structure"}, "InternalServerError" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Status" => %{"enum" => ["NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"], "type" => "string"}, "CreatedArtifactList" => %{"member" => %{"shape" => "CreatedArtifact"}, "type" => "list"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "NotifyApplicationStateRequest" => %{"members" => %{"ApplicationId" => %{"shape" => "ApplicationId"}, "DryRun" => %{"shape" => "DryRun"}, "Status" => %{"shape" => "ApplicationStatus"}}, "required" => ["ApplicationId", "Status"], "type" => "structure"}, "DisassociateDiscoveredResourceResult" => %{"members" => %{}, "type" => "structure"}, "DryRunOperation" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MaxResultsResources" => %{"box" => true, "max" => 10, "min" => 1, "type" => "integer"}, "PolicyErrorException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StatusDetail" => %{"max" => 500, "min" => 0, "type" => "string"}, "ListCreatedArtifactsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResultsCreatedArtifacts"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "NextToken" => %{"shape" => "Token"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName"], "type" => "structure"}, "ResourceAttributeList" => %{"max" => 100, "member" => %{"shape" => "ResourceAttribute"}, "min" => 1, "type" => "list"}, "DescribeMigrationTaskRequest" => %{"members" => %{"MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName"], "type" => "structure"}, "CreatedArtifactDescription" => %{"max" => 500, "min" => 0, "type" => "string"}, "MigrationTaskName" => %{"max" => 256, "min" => 1, "pattern" => "[^:|]+", "type" => "string"}, "ListDiscoveredResourcesResult" => %{"members" => %{"DiscoveredResourceList" => %{"shape" => "DiscoveredResourceList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "DeleteProgressUpdateStreamResult" => %{"members" => %{}, "type" => "structure"}, "ListMigrationTasksResult" => %{"members" => %{"MigrationTaskSummaryList" => %{"shape" => "MigrationTaskSummaryList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "ApplicationId" => %{"max" => 1600, "min" => 1, "type" => "string"}, "ResourceAttribute" => %{"members" => %{"Type" => %{"shape" => "ResourceAttributeType"}, "Value" => %{"shape" => "ResourceAttributeValue"}}, "required" => ["Type", "Value"], "type" => "structure"}, "CreateProgressUpdateStreamRequest" => %{"members" => %{"DryRun" => %{"shape" => "DryRun"}, "ProgressUpdateStreamName" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStreamName"], "type" => "structure"}, "ListProgressUpdateStreamsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "ResourceName" => %{"max" => 1600, "min" => 1, "type" => "string"}, "MigrationTask" => %{"members" => %{"MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}, "ResourceAttributeList" => %{"shape" => "LatestResourceAttributeList"}, "Task" => %{"shape" => "Task"}, "UpdateDateTime" => %{"shape" => "UpdateDateTime"}}, "type" => "structure"}, "CreatedArtifactName" => %{"max" => 1600, "min" => 1, "pattern" => "arn:[a-z-]+:[a-z0-9-]+:(?:[a-z0-9-]+|):(?:[0-9]{12}|):.*", "type" => "string"}, "DisassociateDiscoveredResourceRequest" => %{"members" => %{"ConfigurationId" => %{"shape" => "ConfigurationId"}, "DryRun" => %{"shape" => "DryRun"}, "MigrationTaskName" => %{"shape" => "MigrationTaskName"}, "ProgressUpdateStream" => %{"shape" => "ProgressUpdateStream"}}, "required" => ["ProgressUpdateStream", "MigrationTaskName", "ConfigurationId"], "type" => "structure"}, "InvalidInputException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}}
  end
end