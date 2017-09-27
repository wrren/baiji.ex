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
      input:    input,
      options:  options,
      action:   "AssociateCreatedArtifact",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Associates a discovered resource ID from Application Discovery Service
  (ADS) with a migration task.
  """
  def associate_discovered_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AssociateDiscoveredResource",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "CreateProgressUpdateStream",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteProgressUpdateStream",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets the migration status of an application.
  """
  def describe_application_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeApplicationState",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves a list of all attributes associated with a specific migration
  task.
  """
  def describe_migration_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeMigrationTask",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DisassociateCreatedArtifact",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Disassociate an Application Discovery Service (ADS) discovered resource
  from a migration task.
  """
  def disassociate_discovered_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociateDiscoveredResource",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "ImportMigrationTask",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "ListCreatedArtifacts",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists discovered resources associated with the given `MigrationTask`.
  """
  def list_discovered_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListDiscoveredResources",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "ListMigrationTasks",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists progress update streams associated with the user account making this
  call.
  """
  def list_progress_update_streams(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListProgressUpdateStreams",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "NotifyApplicationState",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "NotifyMigrationTaskState",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "PutResourceAttributes",
      type:     :json,
      method:   :post
    }
  end
  
end