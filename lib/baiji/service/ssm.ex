defmodule Baiji.SSM do
  @moduledoc """
  Amazon EC2 Systems Manager

  Amazon EC2 Systems Manager is a collection of capabilities that helps you
  automate management tasks such as collecting system inventory, applying
  operating system (OS) patches, automating the creation of Amazon Machine
  Images (AMIs), and configuring operating systems (OSs) and applications at
  scale. Systems Manager lets you remotely and securely manage the
  configuration of your managed instances. A *managed instance* is any Amazon
  EC2 instance or on-premises machine in your hybrid environment that has
  been configured for Systems Manager.

  This reference is intended to be used with the [Amazon EC2 Systems Manager
  User Guide](http://docs.aws.amazon.com/systems-manager/latest/userguide/).

  To get started, verify prerequisites and configure managed instances. For
  more information, see [Systems Manager
  Prerequisites](http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html).
  """

  @doc """
  Get detailed information about a particular Automation execution.
  """
  def get_automation_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAutomationExecution",
      method:           :post,
      input_shape:      "GetAutomationExecutionRequest",
      output_shape:     "GetAutomationExecutionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Assigns or changes an Amazon Identity and Access Management (IAM) role to
  the managed instance.
  """
  def update_managed_instance_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateManagedInstanceRole",
      method:           :post,
      input_shape:      "UpdateManagedInstanceRoleRequest",
      output_shape:     "UpdateManagedInstanceRoleResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the patch baselines in your AWS account.
  """
  def describe_patch_baselines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribePatchBaselines",
      method:           :post,
      input_shape:      "DescribePatchBaselinesRequest",
      output_shape:     "DescribePatchBaselinesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a target with a Maintenance Window.
  """
  def register_target_with_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterTargetWithMaintenanceWindow",
      method:           :post,
      input_shape:      "RegisterTargetWithMaintenanceWindowRequest",
      output_shape:     "RegisterTargetWithMaintenanceWindowResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Set the default version of a document.
  """
  def update_document_default_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDocumentDefaultVersion",
      method:           :post,
      input_shape:      "UpdateDocumentDefaultVersionRequest",
      output_shape:     "UpdateDocumentDefaultVersionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns detailed information about command execution for an invocation or
  plugin.
  """
  def get_command_invocation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetCommandInvocation",
      method:           :post,
      input_shape:      "GetCommandInvocationRequest",
      output_shape:     "GetCommandInvocationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Delete a parameter from the system.
  """
  def delete_parameter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteParameter",
      method:           :post,
      input_shape:      "DeleteParameterRequest",
      output_shape:     "DeleteParameterResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  An invocation is copy of a command sent to a specific instance. A command
  can apply to one or more instances. A command invocation applies to one
  instance. For example, if a user executes SendCommand against three
  instances, then a command invocation is created for each requested instance
  ID. ListCommandInvocations provide status about command execution.
  """
  def list_command_invocations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListCommandInvocations",
      method:           :post,
      input_shape:      "ListCommandInvocationsRequest",
      output_shape:     "ListCommandInvocationsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a patch baseline.
  """
  def get_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetPatchBaseline",
      method:           :post,
      input_shape:      "GetPatchBaselineRequest",
      output_shape:     "GetPatchBaselineResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the current snapshot for the patch baseline the instance uses.
  This API is primarily used by the AWS-RunPatchBaseline Systems Manager
  document.
  """
  def get_deployable_patch_snapshot_for_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDeployablePatchSnapshotForInstance",
      method:           :post,
      input_shape:      "GetDeployablePatchSnapshotForInstanceRequest",
      output_shape:     "GetDeployablePatchSnapshotForInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  All associations for the instance(s).
  """
  def describe_effective_instance_associations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEffectiveInstanceAssociations",
      method:           :post,
      input_shape:      "DescribeEffectiveInstanceAssociationsRequest",
      output_shape:     "DescribeEffectiveInstanceAssociationsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a target from a Maintenance Window.
  """
  def deregister_target_from_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterTargetFromMaintenanceWindow",
      method:           :post,
      input_shape:      "DeregisterTargetFromMaintenanceWindowRequest",
      output_shape:     "DeregisterTargetFromMaintenanceWindowResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the contents of the specified SSM document.
  """
  def get_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDocument",
      method:           :post,
      input_shape:      "GetDocumentRequest",
      output_shape:     "GetDocumentResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies a task assigned to a Maintenance Window. You can't change the task
  type, but you can change the following values:

  Task ARN. For example, you can change a RUN_COMMAND task from
  AWS-RunPowerShellScript to AWS-RunShellScript.

  Service role ARN.

  Task parameters.

  Task priority.

  Task MaxConcurrency and MaxErrors.

  Log location.

  If a parameter is null, then the corresponding field is not modified. Also,
  if you set Replace to true, then all fields required by the
  RegisterTaskWithMaintenanceWindow action are required for this request.
  Optional fields that aren't specified are set to null.
  """
  def update_maintenance_window_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateMaintenanceWindowTask",
      method:           :post,
      input_shape:      "UpdateMaintenanceWindowTaskRequest",
      output_shape:     "UpdateMaintenanceWindowTaskResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Details about the activation, including: the date and time the activation
  was created, the expiration date, the IAM role assigned to the instances in
  the activation, and the number of instances activated by this registration.
  """
  def describe_activations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeActivations",
      method:           :post,
      input_shape:      "DescribeActivationsRequest",
      output_shape:     "DescribeActivationsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Query inventory information.
  """
  def get_inventory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInventory",
      method:           :post,
      input_shape:      "GetInventoryRequest",
      output_shape:     "GetInventoryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provides details about all active and terminated Automation executions.
  """
  def describe_automation_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAutomationExecutions",
      method:           :post,
      input_shape:      "DescribeAutomationExecutionsRequest",
      output_shape:     "DescribeAutomationExecutionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds a new task to a Maintenance Window.
  """
  def register_task_with_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterTaskWithMaintenanceWindow",
      method:           :post,
      input_shape:      "RegisterTaskWithMaintenanceWindowRequest",
      output_shape:     "RegisterTaskWithMaintenanceWindowResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes all tags from the specified resource.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      method:           :post,
      input_shape:      "RemoveTagsFromResourceRequest",
      output_shape:     "RemoveTagsFromResourceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a Maintenance Window.
  """
  def delete_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteMaintenanceWindow",
      method:           :post,
      input_shape:      "DeleteMaintenanceWindowRequest",
      output_shape:     "DeleteMaintenanceWindowResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Defines the default patch baseline.
  """
  def register_default_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterDefaultPatchBaseline",
      method:           :post,
      input_shape:      "RegisterDefaultPatchBaselineRequest",
      output_shape:     "RegisterDefaultPatchBaselineResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a task invocation. A task invocation is a specific task executing
  on a specific target. Maintenance Windows report status for all
  invocations.
  """
  def get_maintenance_window_execution_task_invocation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindowExecutionTaskInvocation",
      method:           :post,
      input_shape:      "GetMaintenanceWindowExecutionTaskInvocationRequest",
      output_shape:     "GetMaintenanceWindowExecutionTaskInvocationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  List all versions for a document.
  """
  def list_document_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDocumentVersions",
      method:           :post,
      input_shape:      "ListDocumentVersionsRequest",
      output_shape:     "ListDocumentVersionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of the tags assigned to the specified resource.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      method:           :post,
      input_shape:      "ListTagsForResourceRequest",
      output_shape:     "ListTagsForResourceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes one or more of your instances. You can use this to get
  information about instances like the operating system platform, the SSM
  Agent version (Linux), status etc. If you specify one or more instance IDs,
  it returns information for those instances. If you do not specify instance
  IDs, it returns information for all your instances. If you specify an
  instance ID that is not valid or an instance that you do not own, you
  receive an error.
  """
  def describe_instance_information(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInstanceInformation",
      method:           :post,
      input_shape:      "DescribeInstanceInformationRequest",
      output_shape:     "DescribeInstanceInformationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a resource-level summary count. The summary includes information
  about compliant and non-compliant statuses and detailed compliance-item
  severity counts, according to the filter criteria you specify.
  """
  def list_resource_compliance_summaries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListResourceComplianceSummaries",
      method:           :post,
      input_shape:      "ListResourceComplianceSummariesRequest",
      output_shape:     "ListResourceComplianceSummariesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the target of an existing Maintenance Window. You can't change the
  target type, but you can change the following:

  The target from being an ID target to a Tag target, or a Tag target to an
  ID target.

  IDs for an ID target.

  Tags for a Tag target.

  Owner.

  Name.

  Description.

  If a parameter is null, then the corresponding field is not modified.
  """
  def update_maintenance_window_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateMaintenanceWindowTarget",
      method:           :post,
      input_shape:      "UpdateMaintenanceWindowTargetRequest",
      output_shape:     "UpdateMaintenanceWindowTargetResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Get information about a parameter by using the parameter name.
  """
  def get_parameter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetParameter",
      method:           :post,
      input_shape:      "GetParameterRequest",
      output_shape:     "GetParameterResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a compliance type and other compliance details on a designated
  resource. This action lets you register custom compliance details with a
  resource. This call overwrites existing compliance information on the
  resource, so you must provide a full list of compliance items each time
  that you send the request.
  """
  def put_compliance_items(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutComplianceItems",
      method:           :post,
      input_shape:      "PutComplianceItemsRequest",
      output_shape:     "PutComplianceItemsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about the patches on the specified instance and their
  state relative to the patch baseline being used for the instance.
  """
  def describe_instance_patches(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInstancePatches",
      method:           :post,
      input_shape:      "DescribeInstancePatchesRequest",
      output_shape:     "DescribeInstancePatchesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an association. You can update the association name and version,
  the document version, schedule, parameters, and Amazon S3 output.
  """
  def update_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateAssociation",
      method:           :post,
      input_shape:      "UpdateAssociationRequest",
      output_shape:     "UpdateAssociationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Query a list of all parameters used by the AWS account.
  """
  def get_parameter_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetParameterHistory",
      method:           :post,
      input_shape:      "GetParameterHistoryRequest",
      output_shape:     "GetParameterHistoryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the specified SSM document.
  """
  def describe_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDocument",
      method:           :post,
      input_shape:      "DescribeDocumentRequest",
      output_shape:     "DescribeDocumentResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  The document you want to update.
  """
  def update_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDocument",
      method:           :post,
      input_shape:      "UpdateDocumentRequest",
      output_shape:     "UpdateDocumentResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all patches that could possibly be included in a patch baseline.
  """
  def describe_available_patches(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAvailablePatches",
      method:           :post,
      input_shape:      "DescribeAvailablePatchesRequest",
      output_shape:     "DescribeAvailablePatchesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the default patch baseline. Note that Systems Manager supports
  creating multiple default patch baselines. For example, you can create a
  default patch baseline for each operating system.
  """
  def get_default_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDefaultPatchBaseline",
      method:           :post,
      input_shape:      "GetDefaultPatchBaselineRequest",
      output_shape:     "GetDefaultPatchBaselineResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an activation. You are not required to delete an activation. If you
  delete an activation, you can no longer use it to register additional
  managed instances. Deleting an activation does not de-register managed
  instances. You must manually de-register managed instances.
  """
  def delete_activation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteActivation",
      method:           :post,
      input_shape:      "DeleteActivationRequest",
      output_shape:     "DeleteActivationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the Systems Manager document and all instance associations to the
  document.

  Before you delete the document, we recommend that you use
  `DeleteAssociation` to disassociate all instances that are associated with
  the document.
  """
  def delete_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDocument",
      method:           :post,
      input_shape:      "DeleteDocumentRequest",
      output_shape:     "DeleteDocumentResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the permissions for a Systems Manager document. If you created
  the document, you are the owner. If a document is shared, it can either be
  shared privately (by specifying a user's AWS account ID) or publicly
  (*All*).
  """
  def describe_document_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDocumentPermission",
      method:           :post,
      input_shape:      "DescribeDocumentPermissionRequest",
      output_shape:     "DescribeDocumentPermissionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves all versions of an association for a specific association ID.
  """
  def list_association_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAssociationVersions",
      method:           :post,
      input_shape:      "ListAssociationVersionsRequest",
      output_shape:     "ListAssociationVersionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the associations for the specified Systems Manager document or
  instance.
  """
  def list_associations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAssociations",
      method:           :post,
      input_shape:      "ListAssociationsRequest",
      output_shape:     "ListAssociationsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Add one or more parameters to the system.
  """
  def put_parameter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutParameter",
      method:           :post,
      input_shape:      "PutParameterRequest",
      output_shape:     "PutParameterResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the commands requested by users of the AWS account.
  """
  def list_commands(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListCommands",
      method:           :post,
      input_shape:      "ListCommandsRequest",
      output_shape:     "ListCommandsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attempts to cancel the command specified by the Command ID. There is no
  guarantee that the command will be terminated and the underlying process
  stopped.
  """
  def cancel_command(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CancelCommand",
      method:           :post,
      input_shape:      "CancelCommandRequest",
      output_shape:     "CancelCommandResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Bulk update custom inventory items on one more instance. The request adds
  an inventory item, if it doesn't already exist, or updates an inventory
  item, if it does exist.
  """
  def put_inventory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutInventory",
      method:           :post,
      input_shape:      "PutInventoryRequest",
      output_shape:     "PutInventoryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all patch groups that have been registered with patch baselines.
  """
  def describe_patch_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribePatchGroups",
      method:           :post,
      input_shape:      "DescribePatchGroupsRequest",
      output_shape:     "DescribePatchGroupsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Return a list of inventory type names for the account, or return a list of
  attribute names for a specific Inventory item type.
  """
  def get_inventory_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInventorySchema",
      method:           :post,
      input_shape:      "GetInventorySchemaRequest",
      output_shape:     "GetInventorySchemaResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a Maintenance Window.
  """
  def get_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindow",
      method:           :post,
      input_shape:      "GetMaintenanceWindowRequest",
      output_shape:     "GetMaintenanceWindowResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the patch baseline that should be used for the specified patch
  group.
  """
  def get_patch_baseline_for_patch_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetPatchBaselineForPatchGroup",
      method:           :post,
      input_shape:      "GetPatchBaselineForPatchGroupRequest",
      output_shape:     "GetPatchBaselineForPatchGroupResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an existing Maintenance Window. Only specified parameters are
  modified.
  """
  def update_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateMaintenanceWindow",
      method:           :post,
      input_shape:      "UpdateMaintenanceWindowRequest",
      output_shape:     "UpdateMaintenanceWindowResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a patch baseline.
  """
  def delete_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeletePatchBaseline",
      method:           :post,
      input_shape:      "DeletePatchBaselineRequest",
      output_shape:     "DeletePatchBaselineResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a summary count of compliant and non-compliant resources for a
  compliance type. For example, this call can return State Manager
  associations, patches, or custom compliance types according to the filter
  criteria that you specify.
  """
  def list_compliance_summaries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListComplianceSummaries",
      method:           :post,
      input_shape:      "ListComplianceSummariesRequest",
      output_shape:     "ListComplianceSummariesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes one or more of your SSM documents.
  """
  def list_documents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDocuments",
      method:           :post,
      input_shape:      "ListDocumentsRequest",
      output_shape:     "ListDocumentsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the status of the Systems Manager document associated with the
  specified instance.
  """
  def update_association_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateAssociationStatus",
      method:           :post,
      input_shape:      "UpdateAssociationStatusRequest",
      output_shape:     "UpdateAssociationStatusResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the individual task executions (one per target) for a particular
  task executed as part of a Maintenance Window execution.
  """
  def describe_maintenance_window_execution_task_invocations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowExecutionTaskInvocations",
      method:           :post,
      input_shape:      "DescribeMaintenanceWindowExecutionTaskInvocationsRequest",
      output_shape:     "DescribeMaintenanceWindowExecutionTaskInvocationsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Delete a list of parameters. This API is used to delete parameters by using
  the Amazon EC2 console.
  """
  def delete_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteParameters",
      method:           :post,
      input_shape:      "DeleteParametersRequest",
      output_shape:     "DeleteParametersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the Maintenance Windows in an AWS account.
  """
  def describe_maintenance_windows(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindows",
      method:           :post,
      input_shape:      "DescribeMaintenanceWindowsRequest",
      output_shape:     "DescribeMaintenanceWindowsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates the specified Systems Manager document with the specified
  instances or targets.

  When you associate a document with one or more instances using instance IDs
  or tags, the SSM Agent running on the instance processes the document and
  configures the instance as specified.

  If you associate a document with an instance that already has an associated
  document, the system throws the AssociationAlreadyExists exception.
  """
  def create_association_batch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateAssociationBatch",
      method:           :post,
      input_shape:      "CreateAssociationBatchRequest",
      output_shape:     "CreateAssociationBatchResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the targets registered with the Maintenance Window.
  """
  def describe_maintenance_window_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowTargets",
      method:           :post,
      input_shape:      "DescribeMaintenanceWindowTargetsRequest",
      output_shape:     "DescribeMaintenanceWindowTargetsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves details about a specific task executed as part of a Maintenance
  Window execution.
  """
  def get_maintenance_window_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindowExecution",
      method:           :post,
      input_shape:      "GetMaintenanceWindowExecutionRequest",
      output_shape:     "GetMaintenanceWindowExecutionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  A list of inventory items returned by the request.
  """
  def list_inventory_entries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListInventoryEntries",
      method:           :post,
      input_shape:      "ListInventoryEntriesRequest",
      output_shape:     "ListInventoryEntriesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the associations for the specified Systems Manager document or
  instance.
  """
  def describe_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAssociation",
      method:           :post,
      input_shape:      "DescribeAssociationRequest",
      output_shape:     "DescribeAssociationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a resource data sync configuration to a single bucket in Amazon S3.
  This is an asynchronous operation that returns immediately. After a
  successful initial sync is completed, the system continuously syncs data to
  the Amazon S3 bucket. To check the status of the sync, use the
  [ListResourceDataSync](API_ListResourceDataSync.html) operation.

  By default, data is not encrypted in Amazon S3. We strongly recommend that
  you enable encryption in Amazon S3 to ensure secure data storage. We also
  recommend that you secure access to the Amazon S3 bucket by creating a
  restrictive bucket policy. To view an example of a restrictive Amazon S3
  bucket policy for Resource Data Sync, see [Configuring Resource Data Sync
  for
  Inventory](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-configuring.html#sysman-inventory-datasync).
  """
  def create_resource_data_sync(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateResourceDataSync",
      method:           :post,
      input_shape:      "CreateResourceDataSyncRequest",
      output_shape:     "CreateResourceDataSyncResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds or overwrites one or more tags for the specified resource. Tags are
  metadata that you assign to your managed instances, Maintenance Windows, or
  Parameter Store parameters. Tags enable you to categorize your resources in
  different ways, for example, by purpose, owner, or environment. Each tag
  consists of a key and an optional value, both of which you define. For
  example, you could define a set of tags for your account's managed
  instances that helps you track each instance's owner and stack level. For
  example: Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and
  Value=Production, Pre-Production, or Test.

  Each resource can have a maximum of 10 tags.

  We recommend that you devise a set of tag keys that meets your needs for
  each resource type. Using a consistent set of tag keys makes it easier for
  you to manage your resources. You can search and filter the resources based
  on the tags you add. Tags don't have any semantic meaning to Amazon EC2 and
  are interpreted strictly as a string of characters.

  For more information about tags, see [Tagging Your Amazon EC2
  Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon EC2 User Guide*.
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      method:           :post,
      input_shape:      "AddTagsToResourceRequest",
      output_shape:     "AddTagsToResourceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociates the specified Systems Manager document from the specified
  instance.

  When you disassociate a document from an instance, it does not change the
  configuration of the instance. To change the configuration state of an
  instance after you disassociate a document, you must create a new document
  with the desired configuration and associate it with the instance.
  """
  def delete_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteAssociation",
      method:           :post,
      input_shape:      "DeleteAssociationRequest",
      output_shape:     "DeleteAssociationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieve parameters in a specific hierarchy. For more information, see
  [Working with Systems Manager
  Parameters](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working.html).

  Request results are returned on a best-effort basis. If you specify
  `MaxResults` in the request, the response includes information up to the
  limit specified. The number of items returned, however, can be between zero
  and the value of `MaxResults`. If the service reaches an internal limit
  while processing the results, it stops the operation and returns the
  matching values up to that point and a `NextToken`. You can specify the
  `NextToken` in a subsequent call to get the next set of results.
  """
  def get_parameters_by_path(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetParametersByPath",
      method:           :post,
      input_shape:      "GetParametersByPathRequest",
      output_shape:     "GetParametersByPathResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sends a signal to an Automation execution to change the current behavior or
  status of the execution.
  """
  def send_automation_signal(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SendAutomationSignal",
      method:           :post,
      input_shape:      "SendAutomationSignalRequest",
      output_shape:     "SendAutomationSignalResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers your on-premises server or virtual machine with Amazon EC2 so
  that you can manage these resources using Run Command. An on-premises
  server or virtual machine that has been registered with EC2 is called a
  managed instance. For more information about activations, see [Setting Up
  Systems Manager in Hybrid
  Environments](http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html).
  """
  def create_activation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateActivation",
      method:           :post,
      input_shape:      "CreateActivationRequest",
      output_shape:     "CreateActivationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a Systems Manager document.

  After you create a document, you can use CreateAssociation to associate it
  with one or more running instances.
  """
  def create_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDocument",
      method:           :post,
      input_shape:      "CreateDocumentRequest",
      output_shape:     "CreateDocumentResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the tasks in a Maintenance Window.
  """
  def describe_maintenance_window_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowTasks",
      method:           :post,
      input_shape:      "DescribeMaintenanceWindowTasksRequest",
      output_shape:     "DescribeMaintenanceWindowTasksResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  For a specified resource ID, this API action returns a list of compliance
  statuses for different resource types. Currently, you can only specify one
  resource ID per call. List results depend on the criteria specified in the
  filter.
  """
  def list_compliance_items(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListComplianceItems",
      method:           :post,
      input_shape:      "ListComplianceItemsRequest",
      output_shape:     "ListComplianceItemsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the current effective patches (the patch and the approval state)
  for the specified patch baseline. Note that this API applies only to
  Windows patch baselines.
  """
  def describe_effective_patches_for_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEffectivePatchesForPatchBaseline",
      method:           :post,
      input_shape:      "DescribeEffectivePatchesForPatchBaselineRequest",
      output_shape:     "DescribeEffectivePatchesForPatchBaselineResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the high-level patch state of one or more instances.
  """
  def describe_instance_patch_states(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInstancePatchStates",
      method:           :post,
      input_shape:      "DescribeInstancePatchStatesRequest",
      output_shape:     "DescribeInstancePatchStatesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the server or virtual machine from the list of registered servers.
  You can reregister the instance again at any time. If you don't plan to use
  Run Command on the server, we suggest uninstalling the SSM Agent first.
  """
  def deregister_managed_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterManagedInstance",
      method:           :post,
      input_shape:      "DeregisterManagedInstanceRequest",
      output_shape:     "DeregisterManagedInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the high-level patch state for the instances in the specified
  patch group.
  """
  def describe_instance_patch_states_for_patch_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInstancePatchStatesForPatchGroup",
      method:           :post,
      input_shape:      "DescribeInstancePatchStatesForPatchGroupRequest",
      output_shape:     "DescribeInstancePatchStatesForPatchGroupResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns high-level aggregated patch compliance state for a patch group.
  """
  def describe_patch_group_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribePatchGroupState",
      method:           :post,
      input_shape:      "DescribePatchGroupStateRequest",
      output_shape:     "DescribePatchGroupStateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a patch group from a patch baseline.
  """
  def deregister_patch_baseline_for_patch_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterPatchBaselineForPatchGroup",
      method:           :post,
      input_shape:      "DeregisterPatchBaselineForPatchGroupRequest",
      output_shape:     "DeregisterPatchBaselineForPatchGroupResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the details about a specific task executed as part of a
  Maintenance Window execution.
  """
  def get_maintenance_window_execution_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindowExecutionTask",
      method:           :post,
      input_shape:      "GetMaintenanceWindowExecutionTaskRequest",
      output_shape:     "GetMaintenanceWindowExecutionTaskResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists your resource data sync configurations. Includes information about
  the last time a sync attempted to start, the last sync status, and the last
  time a sync successfully completed.

  The number of sync configurations might be too large to return using a
  single call to `ListResourceDataSync`. You can limit the number of sync
  configurations returned by using the `MaxResults` parameter. To determine
  whether there are more sync configurations to list, check the value of
  `NextToken` in the output. If there are more sync configurations to list,
  you can request them by specifying the `NextToken` returned in the call to
  the parameter of a subsequent call.
  """
  def list_resource_data_sync(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListResourceDataSync",
      method:           :post,
      input_shape:      "ListResourceDataSyncRequest",
      output_shape:     "ListResourceDataSyncResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Executes commands on one or more managed instances.
  """
  def send_command(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SendCommand",
      method:           :post,
      input_shape:      "SendCommandRequest",
      output_shape:     "SendCommandResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies an existing patch baseline. Fields not specified in the request
  are left unchanged.
  """
  def update_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdatePatchBaseline",
      method:           :post,
      input_shape:      "UpdatePatchBaselineRequest",
      output_shape:     "UpdatePatchBaselineResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates the specified Systems Manager document with the specified
  instances or targets.

  When you associate a document with one or more instances using instance IDs
  or tags, the SSM Agent running on the instance processes the document and
  configures the instance as specified.

  If you associate a document with an instance that already has an associated
  document, the system throws the AssociationAlreadyExists exception.
  """
  def create_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateAssociation",
      method:           :post,
      input_shape:      "CreateAssociationRequest",
      output_shape:     "CreateAssociationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new Maintenance Window.
  """
  def create_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateMaintenanceWindow",
      method:           :post,
      input_shape:      "CreateMaintenanceWindowRequest",
      output_shape:     "CreateMaintenanceWindowResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Get information about a parameter.

  Request results are returned on a best-effort basis. If you specify
  `MaxResults` in the request, the response includes information up to the
  limit specified. The number of items returned, however, can be between zero
  and the value of `MaxResults`. If the service reaches an internal limit
  while processing the results, it stops the operation and returns the
  matching values up to that point and a `NextToken`. You can specify the
  `NextToken` in a subsequent call to get the next set of results.
  """
  def describe_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeParameters",
      method:           :post,
      input_shape:      "DescribeParametersRequest",
      output_shape:     "DescribeParametersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Initiates execution of an Automation document.
  """
  def start_automation_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartAutomationExecution",
      method:           :post,
      input_shape:      "StartAutomationExecutionRequest",
      output_shape:     "StartAutomationExecutionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a task from a Maintenance Window.
  """
  def deregister_task_from_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterTaskFromMaintenanceWindow",
      method:           :post,
      input_shape:      "DeregisterTaskFromMaintenanceWindowRequest",
      output_shape:     "DeregisterTaskFromMaintenanceWindowResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Shares a Systems Manager document publicly or privately. If you share a
  document privately, you must specify the AWS user account IDs for those
  people who can use the document. If you share a document publicly, you must
  specify *All* as the account ID.
  """
  def modify_document_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ModifyDocumentPermission",
      method:           :post,
      input_shape:      "ModifyDocumentPermissionRequest",
      output_shape:     "ModifyDocumentPermissionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the executions of a Maintenance Window. This includes information
  about when the Maintenance Window was scheduled to be active, and
  information about tasks registered and run with the Maintenance Window.
  """
  def describe_maintenance_window_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowExecutions",
      method:           :post,
      input_shape:      "DescribeMaintenanceWindowExecutionsRequest",
      output_shape:     "DescribeMaintenanceWindowExecutionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a patch baseline for a patch group.
  """
  def register_patch_baseline_for_patch_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterPatchBaselineForPatchGroup",
      method:           :post,
      input_shape:      "RegisterPatchBaselineForPatchGroupRequest",
      output_shape:     "RegisterPatchBaselineForPatchGroupResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the tasks in a Maintenance Window.
  """
  def get_maintenance_window_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindowTask",
      method:           :post,
      input_shape:      "GetMaintenanceWindowTaskRequest",
      output_shape:     "GetMaintenanceWindowTaskResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a patch baseline.
  """
  def create_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePatchBaseline",
      method:           :post,
      input_shape:      "CreatePatchBaselineRequest",
      output_shape:     "CreatePatchBaselineResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  The status of the associations for the instance(s).
  """
  def describe_instance_associations_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInstanceAssociationsStatus",
      method:           :post,
      input_shape:      "DescribeInstanceAssociationsStatusRequest",
      output_shape:     "DescribeInstanceAssociationsStatusResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Get details of a parameter.
  """
  def get_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetParameters",
      method:           :post,
      input_shape:      "GetParametersRequest",
      output_shape:     "GetParametersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stop an Automation that is currently executing.
  """
  def stop_automation_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopAutomationExecution",
      method:           :post,
      input_shape:      "StopAutomationExecutionRequest",
      output_shape:     "StopAutomationExecutionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a Resource Data Sync configuration. After the configuration is
  deleted, changes to inventory data on managed instances are no longer
  synced with the target Amazon S3 bucket. Deleting a sync configuration does
  not delete data in the target Amazon S3 bucket.
  """
  def delete_resource_data_sync(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteResourceDataSync",
      method:           :post,
      input_shape:      "DeleteResourceDataSyncRequest",
      output_shape:     "DeleteResourceDataSyncResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  For a given Maintenance Window execution, lists the tasks that were
  executed.
  """
  def describe_maintenance_window_execution_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowExecutionTasks",
      method:           :post,
      input_shape:      "DescribeMaintenanceWindowExecutionTasksRequest",
      output_shape:     "DescribeMaintenanceWindowExecutionTasksResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "ssm",
      target_prefix:    "AmazonSSM",
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"KeyList" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "DescribeActivationsFilter" => %{"members" => %{"FilterKey" => %{"shape" => "DescribeActivationsFilterKeys"}, "FilterValues" => %{"shape" => "StringList"}}, "type" => "structure"}, "GetParameterResult" => %{"members" => %{"Parameter" => %{"shape" => "Parameter"}}, "type" => "structure"}, "MaintenanceWindowAutomationParameters" => %{"members" => %{"DocumentVersion" => %{"shape" => "DocumentVersion"}, "Parameters" => %{"shape" => "AutomationParameterMap"}}, "type" => "structure"}, "PatchMissingCount" => %{"type" => "integer"}, "PSParameterName" => %{"max" => 1024, "min" => 1, "type" => "string"}, "DeleteActivationResult" => %{"members" => %{}, "type" => "structure"}, "ComplianceSummaryItem" => %{"members" => %{"ComplianceType" => %{"shape" => "ComplianceTypeName"}, "CompliantSummary" => %{"shape" => "CompliantSummary"}, "NonCompliantSummary" => %{"shape" => "NonCompliantSummary"}}, "type" => "structure"}, "InventoryItemEntryList" => %{"max" => 10000, "member" => %{"shape" => "InventoryItemEntry"}, "min" => 0, "type" => "list"}, "InstanceInformationFilter" => %{"members" => %{"key" => %{"shape" => "InstanceInformationFilterKey"}, "valueSet" => %{"shape" => "InstanceInformationFilterValueSet"}}, "required" => ["key", "valueSet"], "type" => "structure"}, "ResultAttributeList" => %{"max" => 1, "member" => %{"locationName" => "ResultAttribute", "shape" => "ResultAttribute"}, "min" => 1, "type" => "list"}, "PatchFilterList" => %{"max" => 4, "member" => %{"shape" => "PatchFilter"}, "min" => 0, "type" => "list"}, "InvalidActivation" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "Url" => %{"type" => "string"}, "ComplianceItemEntryList" => %{"max" => 10000, "member" => %{"shape" => "ComplianceItemEntry"}, "min" => 0, "type" => "list"}, "DescribeAutomationExecutionsResult" => %{"members" => %{"AutomationExecutionMetadataList" => %{"shape" => "AutomationExecutionMetadataList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "GetPatchBaselineForPatchGroupResult" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}, "PatchGroup" => %{"shape" => "PatchGroup"}}, "type" => "structure"}, "DescribePatchBaselinesRequest" => %{"members" => %{"Filters" => %{"shape" => "PatchOrchestratorFilterList"}, "MaxResults" => %{"box" => true, "shape" => "PatchBaselineMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "InstanceAssociation" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "AssociationVersion" => %{"shape" => "AssociationVersion"}, "Content" => %{"shape" => "DocumentContent"}, "InstanceId" => %{"shape" => "InstanceId"}}, "type" => "structure"}, "ComplianceResourceTypeList" => %{"member" => %{"shape" => "ComplianceResourceType"}, "min" => 1, "type" => "list"}, "Patch" => %{"members" => %{"Classification" => %{"shape" => "PatchClassification"}, "ContentUrl" => %{"shape" => "PatchContentUrl"}, "Description" => %{"shape" => "PatchDescription"}, "Id" => %{"shape" => "PatchId"}, "KbNumber" => %{"shape" => "PatchKbNumber"}, "Language" => %{"shape" => "PatchLanguage"}, "MsrcNumber" => %{"shape" => "PatchMsrcNumber"}, "MsrcSeverity" => %{"shape" => "PatchMsrcSeverity"}, "Product" => %{"shape" => "PatchProduct"}, "ProductFamily" => %{"shape" => "PatchProductFamily"}, "ReleaseDate" => %{"shape" => "DateTime"}, "Title" => %{"shape" => "PatchTitle"}, "Vendor" => %{"shape" => "PatchVendor"}}, "type" => "structure"}, "DescribeAvailablePatchesRequest" => %{"members" => %{"Filters" => %{"shape" => "PatchOrchestratorFilterList"}, "MaxResults" => %{"box" => true, "shape" => "PatchBaselineMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DocumentParameterDescrption" => %{"type" => "string"}, "DescribeInstancePatchesResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Patches" => %{"shape" => "PatchComplianceDataList"}}, "type" => "structure"}, "AccountIdList" => %{"max" => 20, "member" => %{"locationName" => "AccountId", "shape" => "AccountId"}, "type" => "list"}, "ParameterMetadataList" => %{"member" => %{"shape" => "ParameterMetadata"}, "type" => "list"}, "InvalidCommandId" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ComplianceTypeCountLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "EffectivePatch" => %{"members" => %{"Patch" => %{"shape" => "Patch"}, "PatchStatus" => %{"shape" => "PatchStatus"}}, "type" => "structure"}, "UpdateMaintenanceWindowTargetRequest" => %{"members" => %{"Description" => %{"shape" => "MaintenanceWindowDescription"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "OwnerInformation" => %{"shape" => "OwnerInformation"}, "Replace" => %{"box" => true, "shape" => "Boolean"}, "Targets" => %{"shape" => "Targets"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTargetId" => %{"shape" => "MaintenanceWindowTargetId"}}, "required" => ["WindowId", "WindowTargetId"], "type" => "structure"}, "InstanceAggregatedAssociationOverview" => %{"members" => %{"DetailedStatus" => %{"shape" => "StatusName"}, "InstanceAssociationStatusAggregatedCount" => %{"shape" => "InstanceAssociationStatusAggregatedCount"}}, "type" => "structure"}, "DocumentVersionList" => %{"member" => %{"shape" => "DocumentVersionInfo"}, "min" => 1, "type" => "list"}, "StringDateTime" => %{"pattern" => "^([\\-]?\\d{4}(?!\\d{2}\\b))((-?)((0[1-9]|1[0-2])(\\3([12]\\d|0[1-9]|3[01]))?|W([0-4]\\d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]\\d|[12]\\d{2}|3([0-5]\\d|6[1-6])))([T\\s]((([01]\\d|2[0-3])((:?)[0-5]\\d)?|24\\:?00)([\\.,]\\d(?!:))?)?(\\17[0-5]\\d([\\.,]\\d)?)?([zZ]|([\\-])([01]\\d|2[0-3]):?([0-5]\\d)?)?)?)?$", "type" => "string"}, "ListAssociationsRequest" => %{"members" => %{"AssociationFilterList" => %{"shape" => "AssociationFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "StandardErrorContent" => %{"max" => 8000, "type" => "string"}, "DocumentARN" => %{"pattern" => "^[a-zA-Z0-9_\\-.:/]{3,128}$", "type" => "string"}, "PatchFilter" => %{"members" => %{"Key" => %{"shape" => "PatchFilterKey"}, "Values" => %{"shape" => "PatchFilterValueList"}}, "required" => ["Key", "Values"], "type" => "structure"}, "GetCommandInvocationRequest" => %{"members" => %{"CommandId" => %{"shape" => "CommandId"}, "InstanceId" => %{"shape" => "InstanceId"}, "PluginName" => %{"shape" => "CommandPluginName"}}, "required" => ["CommandId", "InstanceId"], "type" => "structure"}, "UpdateAssociationStatusResult" => %{"members" => %{"AssociationDescription" => %{"shape" => "AssociationDescription"}}, "type" => "structure"}, "InstancePatchState" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}, "FailedCount" => %{"shape" => "PatchFailedCount"}, "InstalledCount" => %{"shape" => "PatchInstalledCount"}, "InstalledOtherCount" => %{"shape" => "PatchInstalledOtherCount"}, "InstanceId" => %{"shape" => "InstanceId"}, "MissingCount" => %{"shape" => "PatchMissingCount"}, "NotApplicableCount" => %{"shape" => "PatchNotApplicableCount"}, "Operation" => %{"shape" => "PatchOperationType"}, "OperationEndTime" => %{"shape" => "DateTime"}, "OperationStartTime" => %{"shape" => "DateTime"}, "OwnerInformation" => %{"shape" => "OwnerInformation"}, "PatchGroup" => %{"shape" => "PatchGroup"}, "SnapshotId" => %{"shape" => "SnapshotId"}}, "required" => ["InstanceId", "PatchGroup", "BaselineId", "OperationStartTime", "OperationEndTime", "Operation"], "type" => "structure"}, "PatchList" => %{"member" => %{"shape" => "Patch"}, "type" => "list"}, "UpdatePatchBaselineRequest" => %{"members" => %{"ApprovalRules" => %{"shape" => "PatchRuleGroup"}, "ApprovedPatches" => %{"shape" => "PatchIdList"}, "ApprovedPatchesComplianceLevel" => %{"shape" => "PatchComplianceLevel"}, "BaselineId" => %{"shape" => "BaselineId"}, "Description" => %{"shape" => "BaselineDescription"}, "GlobalFilters" => %{"shape" => "PatchFilterGroup"}, "Name" => %{"shape" => "BaselineName"}, "RejectedPatches" => %{"shape" => "PatchIdList"}}, "required" => ["BaselineId"], "type" => "structure"}, "DocumentDefaultVersionDescription" => %{"members" => %{"DefaultVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentName"}}, "type" => "structure"}, "InstancePatchStateFilter" => %{"members" => %{"Key" => %{"shape" => "InstancePatchStateFilterKey"}, "Type" => %{"shape" => "InstancePatchStateOperatorType"}, "Values" => %{"shape" => "InstancePatchStateFilterValues"}}, "required" => ["Key", "Values", "Type"], "type" => "structure"}, "MaintenanceWindowResourceType" => %{"enum" => ["INSTANCE"], "type" => "string"}, "ParameterStringFilterList" => %{"member" => %{"shape" => "ParameterStringFilter"}, "type" => "list"}, "InventoryItemSchema" => %{"members" => %{"Attributes" => %{"shape" => "InventoryItemAttributeList"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}, "Version" => %{"shape" => "InventoryItemSchemaVersion"}}, "required" => ["TypeName", "Attributes"], "type" => "structure"}, "ResourceDataSyncS3Destination" => %{"members" => %{"AWSKMSKeyARN" => %{"shape" => "ResourceDataSyncAWSKMSKeyARN"}, "BucketName" => %{"shape" => "ResourceDataSyncS3BucketName"}, "Prefix" => %{"shape" => "ResourceDataSyncS3Prefix"}, "Region" => %{"shape" => "ResourceDataSyncS3Region"}, "SyncFormat" => %{"shape" => "ResourceDataSyncS3Format"}}, "required" => ["BucketName", "SyncFormat", "Region"], "type" => "structure"}, "ResourceType" => %{"enum" => ["ManagedInstance", "Document", "EC2Instance"], "type" => "string"}, "UpdateMaintenanceWindowTargetResult" => %{"members" => %{"Description" => %{"shape" => "MaintenanceWindowDescription"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "OwnerInformation" => %{"shape" => "OwnerInformation"}, "Targets" => %{"shape" => "Targets"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTargetId" => %{"shape" => "MaintenanceWindowTargetId"}}, "type" => "structure"}, "DeleteMaintenanceWindowResult" => %{"members" => %{"WindowId" => %{"shape" => "MaintenanceWindowId"}}, "type" => "structure"}, "DeregisterTargetFromMaintenanceWindowRequest" => %{"members" => %{"Safe" => %{"box" => true, "shape" => "Boolean"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTargetId" => %{"shape" => "MaintenanceWindowTargetId"}}, "required" => ["WindowId", "WindowTargetId"], "type" => "structure"}, "DescribeMaintenanceWindowExecutionTaskInvocationsResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "WindowExecutionTaskInvocationIdentities" => %{"shape" => "MaintenanceWindowExecutionTaskInvocationIdentityList"}}, "type" => "structure"}, "PatchDeploymentStatus" => %{"enum" => ["APPROVED", "PENDING_APPROVAL", "EXPLICIT_APPROVED", "EXPLICIT_REJECTED"], "type" => "string"}, "InstanceInformationStringFilter" => %{"members" => %{"Key" => %{"shape" => "InstanceInformationStringFilterKey"}, "Values" => %{"shape" => "InstanceInformationFilterValueSet"}}, "required" => ["Key", "Values"], "type" => "structure"}, "InvalidAllowedPatternException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidFilter" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "Parameter" => %{"members" => %{"Name" => %{"shape" => "PSParameterName"}, "Type" => %{"shape" => "ParameterType"}, "Value" => %{"shape" => "PSParameterValue"}}, "type" => "structure"}, "InvalidInstanceInformationFilterValue" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "TimeoutSeconds" => %{"max" => 2592000, "min" => 30, "type" => "integer"}, "ListAssociationsResult" => %{"members" => %{"Associations" => %{"shape" => "AssociationList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ParameterType" => %{"enum" => ["String", "StringList", "SecureString"], "type" => "string"}, "InvalidDocument" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InventoryFilterKey" => %{"max" => 200, "min" => 1, "type" => "string"}, "AutomationExecutionFilter" => %{"members" => %{"Key" => %{"shape" => "AutomationExecutionFilterKey"}, "Values" => %{"shape" => "AutomationExecutionFilterValueList"}}, "required" => ["Key", "Values"], "type" => "structure"}, "ListAssociationVersionsResult" => %{"members" => %{"AssociationVersions" => %{"shape" => "AssociationVersionList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "CommandPluginName" => %{"min" => 4, "type" => "string"}, "RegistrationLimit" => %{"max" => 1000, "min" => 1, "type" => "integer"}, "PatchGroup" => %{"max" => 256, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "HierarchyTypeMismatchException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ListAssociationVersionsRequest" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["AssociationId"], "type" => "structure"}, "StartAutomationExecutionRequest" => %{"members" => %{"ClientToken" => %{"shape" => "IdempotencyToken"}, "DocumentName" => %{"shape" => "DocumentARN"}, "DocumentVersion" => %{"box" => true, "shape" => "DocumentVersion"}, "Parameters" => %{"shape" => "AutomationParameterMap"}}, "required" => ["DocumentName"], "type" => "structure"}, "DeregisterTaskFromMaintenanceWindowRequest" => %{"members" => %{"WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTaskId" => %{"shape" => "MaintenanceWindowTaskId"}}, "required" => ["WindowId", "WindowTaskId"], "type" => "structure"}, "DeregisterManagedInstanceResult" => %{"members" => %{}, "type" => "structure"}, "ParameterNotFound" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeActivationsFilterKeys" => %{"enum" => ["ActivationIds", "DefaultInstanceName", "IamRole"], "type" => "string"}, "S3BucketName" => %{"max" => 63, "min" => 3, "type" => "string"}, "String" => %{"type" => "string"}, "ComplianceItemDetails" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "ResourceLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeInstancePatchStatesForPatchGroupRequest" => %{"members" => %{"Filters" => %{"shape" => "InstancePatchStateFilterList"}, "MaxResults" => %{"box" => true, "shape" => "PatchComplianceMaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "PatchGroup" => %{"shape" => "PatchGroup"}}, "required" => ["PatchGroup"], "type" => "structure"}, "InstanceIdList" => %{"max" => 50, "member" => %{"shape" => "InstanceId"}, "min" => 0, "type" => "list"}, "Boolean" => %{"type" => "boolean"}, "InventoryItemContentContext" => %{"key" => %{"shape" => "AttributeName"}, "max" => 50, "min" => 0, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "AutomationExecutionId" => %{"max" => 36, "min" => 36, "type" => "string"}, "StatusUnchanged" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateAssociationResult" => %{"members" => %{"AssociationDescription" => %{"shape" => "AssociationDescription"}}, "type" => "structure"}, "ParameterPatternMismatchException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidFilterKey" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AutomationExecutionLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "MaintenanceWindowName" => %{"max" => 128, "min" => 3, "pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$", "type" => "string"}, "DescribeActivationsFilterList" => %{"member" => %{"shape" => "DescribeActivationsFilter"}, "type" => "list"}, "PatchOrchestratorFilterList" => %{"max" => 5, "member" => %{"shape" => "PatchOrchestratorFilter"}, "min" => 0, "type" => "list"}, "DocumentVersionInfo" => %{"members" => %{"CreatedDate" => %{"shape" => "DateTime"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "IsDefaultVersion" => %{"shape" => "Boolean"}, "Name" => %{"shape" => "DocumentName"}}, "type" => "structure"}, "MaintenanceWindowIdentityList" => %{"member" => %{"shape" => "MaintenanceWindowIdentity"}, "type" => "list"}, "CommandFilterKey" => %{"enum" => ["InvokedAfter", "InvokedBefore", "Status"], "type" => "string"}, "DeleteAssociationRequest" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "InstanceId" => %{"shape" => "InstanceId"}, "Name" => %{"shape" => "DocumentName"}}, "type" => "structure"}, "DescribeMaintenanceWindowTasksRequest" => %{"members" => %{"Filters" => %{"shape" => "MaintenanceWindowFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaintenanceWindowMaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "required" => ["WindowId"], "type" => "structure"}, "NormalStringMap" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "CancelCommandRequest" => %{"members" => %{"CommandId" => %{"shape" => "CommandId"}, "InstanceIds" => %{"shape" => "InstanceIdList"}}, "required" => ["CommandId"], "type" => "structure"}, "DocumentParameter" => %{"members" => %{"DefaultValue" => %{"shape" => "DocumentParameterDefaultValue"}, "Description" => %{"shape" => "DocumentParameterDescrption"}, "Name" => %{"shape" => "DocumentParameterName"}, "Type" => %{"shape" => "DocumentParameterType"}}, "type" => "structure"}, "DocumentParameterName" => %{"type" => "string"}, "IsSubTypeSchema" => %{"type" => "boolean"}, "PatchNotApplicableCount" => %{"type" => "integer"}, "InventoryFilter" => %{"members" => %{"Key" => %{"shape" => "InventoryFilterKey"}, "Type" => %{"shape" => "InventoryQueryOperatorType"}, "Values" => %{"shape" => "InventoryFilterValueList"}}, "required" => ["Key", "Values"], "type" => "structure"}, "ParameterHistory" => %{"members" => %{"AllowedPattern" => %{"shape" => "AllowedPattern"}, "Description" => %{"shape" => "ParameterDescription"}, "KeyId" => %{"shape" => "ParameterKeyId"}, "LastModifiedDate" => %{"shape" => "DateTime"}, "LastModifiedUser" => %{"shape" => "String"}, "Name" => %{"shape" => "PSParameterName"}, "Type" => %{"shape" => "ParameterType"}, "Value" => %{"shape" => "PSParameterValue"}}, "type" => "structure"}, "InventoryItemSchemaResultList" => %{"member" => %{"shape" => "InventoryItemSchema"}, "type" => "list"}, "InventoryItemContentHash" => %{"max" => 256, "type" => "string"}, "MaintenanceWindowExecutionTaskId" => %{"max" => 36, "min" => 36, "pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$", "type" => "string"}, "AttributeName" => %{"max" => 64, "min" => 1, "type" => "string"}, "OperatingSystem" => %{"enum" => ["WINDOWS", "AMAZON_LINUX", "UBUNTU", "REDHAT_ENTERPRISE_LINUX"], "type" => "string"}, "AssociationDoesNotExist" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "CommandFilter" => %{"members" => %{"key" => %{"shape" => "CommandFilterKey"}, "value" => %{"shape" => "CommandFilterValue"}}, "required" => ["key", "value"], "type" => "structure"}, "AutomationParameterKey" => %{"max" => 30, "min" => 1, "type" => "string"}, "ListCommandsResult" => %{"members" => %{"Commands" => %{"shape" => "CommandList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DocumentFilterKey" => %{"enum" => ["Name", "Owner", "PlatformTypes", "DocumentType"], "type" => "string"}, "ParameterAlreadyExists" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "AssociationStatus" => %{"members" => %{"AdditionalInfo" => %{"shape" => "StatusAdditionalInfo"}, "Date" => %{"shape" => "DateTime"}, "Message" => %{"shape" => "StatusMessage"}, "Name" => %{"shape" => "AssociationStatusName"}}, "required" => ["Date", "Name", "Message"], "type" => "structure"}, "ComplianceResourceType" => %{"max" => 50, "min" => 1, "type" => "string"}, "GetMaintenanceWindowExecutionTaskInvocationRequest" => %{"members" => %{"InvocationId" => %{"shape" => "MaintenanceWindowExecutionTaskInvocationId"}, "TaskId" => %{"shape" => "MaintenanceWindowExecutionTaskId"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}}, "required" => ["WindowExecutionId", "TaskId", "InvocationId"], "type" => "structure"}, "GetMaintenanceWindowTaskResult" => %{"members" => %{"Description" => %{"shape" => "MaintenanceWindowDescription"}, "LoggingInfo" => %{"shape" => "LoggingInfo"}, "MaxConcurrency" => %{"shape" => "MaxConcurrency"}, "MaxErrors" => %{"shape" => "MaxErrors"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Priority" => %{"shape" => "MaintenanceWindowTaskPriority"}, "ServiceRoleArn" => %{"shape" => "ServiceRole"}, "Targets" => %{"shape" => "Targets"}, "TaskArn" => %{"shape" => "MaintenanceWindowTaskArn"}, "TaskInvocationParameters" => %{"shape" => "MaintenanceWindowTaskInvocationParameters"}, "TaskParameters" => %{"shape" => "MaintenanceWindowTaskParameters"}, "TaskType" => %{"shape" => "MaintenanceWindowTaskType"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTaskId" => %{"shape" => "MaintenanceWindowTaskId"}}, "type" => "structure"}, "AutomationExecutionFilterValue" => %{"max" => 150, "min" => 1, "type" => "string"}, "DeleteAssociationResult" => %{"members" => %{}, "type" => "structure"}, "CommandList" => %{"member" => %{"shape" => "Command"}, "type" => "list"}, "InventoryItemAttribute" => %{"members" => %{"DataType" => %{"shape" => "InventoryAttributeDataType"}, "Name" => %{"shape" => "InventoryItemAttributeName"}}, "required" => ["Name", "DataType"], "type" => "structure"}, "InventoryResultEntity" => %{"members" => %{"Data" => %{"shape" => "InventoryResultItemMap"}, "Id" => %{"shape" => "InventoryResultEntityId"}}, "type" => "structure"}, "MaintenanceWindowEnabled" => %{"type" => "boolean"}, "CreateResourceDataSyncResult" => %{"members" => %{}, "type" => "structure"}, "Target" => %{"members" => %{"Key" => %{"shape" => "TargetKey"}, "Values" => %{"shape" => "TargetValues"}}, "type" => "structure"}, "MaintenanceWindowTask" => %{"members" => %{"Description" => %{"shape" => "MaintenanceWindowDescription"}, "LoggingInfo" => %{"shape" => "LoggingInfo"}, "MaxConcurrency" => %{"shape" => "MaxConcurrency"}, "MaxErrors" => %{"shape" => "MaxErrors"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Priority" => %{"shape" => "MaintenanceWindowTaskPriority"}, "ServiceRoleArn" => %{"shape" => "ServiceRole"}, "Targets" => %{"shape" => "Targets"}, "TaskArn" => %{"shape" => "MaintenanceWindowTaskArn"}, "TaskParameters" => %{"shape" => "MaintenanceWindowTaskParameters"}, "Type" => %{"shape" => "MaintenanceWindowTaskType"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTaskId" => %{"shape" => "MaintenanceWindowTaskId"}}, "type" => "structure"}, "CommandInvocationList" => %{"member" => %{"shape" => "CommandInvocation"}, "type" => "list"}, "CreateMaintenanceWindowRequest" => %{"members" => %{"AllowUnassociatedTargets" => %{"shape" => "MaintenanceWindowAllowUnassociatedTargets"}, "ClientToken" => %{"idempotencyToken" => true, "shape" => "ClientToken"}, "Cutoff" => %{"shape" => "MaintenanceWindowCutoff"}, "Description" => %{"shape" => "MaintenanceWindowDescription"}, "Duration" => %{"shape" => "MaintenanceWindowDurationHours"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Schedule" => %{"shape" => "MaintenanceWindowSchedule"}}, "required" => ["Name", "Schedule", "Duration", "Cutoff", "AllowUnassociatedTargets"], "type" => "structure"}, "MaintenanceWindowLambdaQualifier" => %{"max" => 128, "min" => 1, "type" => "string"}, "InvalidUpdate" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DefaultBaseline" => %{"type" => "boolean"}, "InvalidDocumentSchemaVersion" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "CreatePatchBaselineRequest" => %{"members" => %{"ApprovalRules" => %{"shape" => "PatchRuleGroup"}, "ApprovedPatches" => %{"shape" => "PatchIdList"}, "ApprovedPatchesComplianceLevel" => %{"shape" => "PatchComplianceLevel"}, "ClientToken" => %{"idempotencyToken" => true, "shape" => "ClientToken"}, "Description" => %{"shape" => "BaselineDescription"}, "GlobalFilters" => %{"shape" => "PatchFilterGroup"}, "Name" => %{"shape" => "BaselineName"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}, "RejectedPatches" => %{"shape" => "PatchIdList"}}, "required" => ["Name"], "type" => "structure"}, "UnsupportedParameterType" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "MaintenanceWindowTaskPriority" => %{"min" => 0, "type" => "integer"}, "ResourceDataSyncS3Format" => %{"enum" => ["JsonSerDe"], "type" => "string"}, "DescribeDocumentPermissionRequest" => %{"members" => %{"Name" => %{"shape" => "DocumentName"}, "PermissionType" => %{"shape" => "DocumentPermissionType"}}, "required" => ["Name", "PermissionType"], "type" => "structure"}, "ListCommandInvocationsRequest" => %{"members" => %{"CommandId" => %{"shape" => "CommandId"}, "Details" => %{"shape" => "Boolean"}, "Filters" => %{"shape" => "CommandFilterList"}, "InstanceId" => %{"shape" => "InstanceId"}, "MaxResults" => %{"box" => true, "shape" => "CommandMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "SendAutomationSignalRequest" => %{"members" => %{"AutomationExecutionId" => %{"shape" => "AutomationExecutionId"}, "Payload" => %{"shape" => "AutomationParameterMap"}, "SignalType" => %{"shape" => "SignalType"}}, "required" => ["AutomationExecutionId", "SignalType"], "type" => "structure"}, "PatchComplianceMaxResults" => %{"max" => 100, "min" => 10, "type" => "integer"}, "Association" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "AssociationName" => %{"shape" => "AssociationName"}, "AssociationVersion" => %{"shape" => "AssociationVersion"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "InstanceId" => %{"shape" => "InstanceId"}, "LastExecutionDate" => %{"shape" => "DateTime"}, "Name" => %{"shape" => "DocumentName"}, "Overview" => %{"shape" => "AssociationOverview"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "Targets" => %{"shape" => "Targets"}}, "type" => "structure"}, "StatusDetails" => %{"max" => 100, "min" => 0, "type" => "string"}, "ListTagsForResourceResult" => %{"members" => %{"TagList" => %{"shape" => "TagList"}}, "type" => "structure"}, "DeleteActivationRequest" => %{"members" => %{"ActivationId" => %{"shape" => "ActivationId"}}, "required" => ["ActivationId"], "type" => "structure"}, "CreatedDate" => %{"type" => "timestamp"}, "Activation" => %{"members" => %{"ActivationId" => %{"shape" => "ActivationId"}, "CreatedDate" => %{"shape" => "CreatedDate"}, "DefaultInstanceName" => %{"shape" => "DefaultInstanceName"}, "Description" => %{"shape" => "ActivationDescription"}, "ExpirationDate" => %{"shape" => "ExpirationDate"}, "Expired" => %{"shape" => "Boolean"}, "IamRole" => %{"shape" => "IamRole"}, "RegistrationLimit" => %{"shape" => "RegistrationLimit"}, "RegistrationsCount" => %{"shape" => "RegistrationsCount"}}, "type" => "structure"}, "InventoryItemSchemaVersion" => %{"pattern" => "^([0-9]{1,6})(\\.[0-9]{1,6})$", "type" => "string"}, "PingStatus" => %{"enum" => ["Online", "ConnectionLost", "Inactive"], "type" => "string"}, "ListDocumentsResult" => %{"members" => %{"DocumentIdentifiers" => %{"shape" => "DocumentIdentifierList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DocumentHashType" => %{"enum" => ["Sha256", "Sha1"], "type" => "string"}, "DeregisterManagedInstanceRequest" => %{"members" => %{"InstanceId" => %{"shape" => "ManagedInstanceId"}}, "required" => ["InstanceId"], "type" => "structure"}, "DescribeInstanceInformationRequest" => %{"members" => %{"Filters" => %{"shape" => "InstanceInformationStringFilterList"}, "InstanceInformationFilterList" => %{"shape" => "InstanceInformationFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResultsEC2Compatible"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ItemSizeLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}}, "type" => "structure"}, "GetInventorySchemaResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Schemas" => %{"shape" => "InventoryItemSchemaResultList"}}, "type" => "structure"}, "CreateResourceDataSyncRequest" => %{"members" => %{"S3Destination" => %{"shape" => "ResourceDataSyncS3Destination"}, "SyncName" => %{"shape" => "ResourceDataSyncName"}}, "required" => ["SyncName", "S3Destination"], "type" => "structure"}, "DescribePatchGroupsRequest" => %{"members" => %{"Filters" => %{"shape" => "PatchOrchestratorFilterList"}, "MaxResults" => %{"box" => true, "shape" => "PatchBaselineMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ParametersFilterValue" => %{"max" => 1024, "min" => 1, "type" => "string"}, "ComplianceItemId" => %{"max" => 100, "min" => 1, "type" => "string"}, "ModifyDocumentPermissionResponse" => %{"members" => %{}, "type" => "structure"}, "PutComplianceItemsRequest" => %{"members" => %{"ComplianceType" => %{"shape" => "ComplianceTypeName"}, "ExecutionSummary" => %{"shape" => "ComplianceExecutionSummary"}, "ItemContentHash" => %{"shape" => "ComplianceItemContentHash"}, "Items" => %{"shape" => "ComplianceItemEntryList"}, "ResourceId" => %{"shape" => "ComplianceResourceId"}, "ResourceType" => %{"shape" => "ComplianceResourceType"}}, "required" => ["ResourceId", "ResourceType", "ComplianceType", "ExecutionSummary", "Items"], "type" => "structure"}, "ResourceInUseException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "NotificationArn" => %{"type" => "string"}, "AssociationOverview" => %{"members" => %{"AssociationStatusAggregatedCount" => %{"shape" => "AssociationStatusAggregatedCount"}, "DetailedStatus" => %{"shape" => "StatusName"}, "Status" => %{"shape" => "StatusName"}}, "type" => "structure"}, "PutParameterRequest" => %{"members" => %{"AllowedPattern" => %{"shape" => "AllowedPattern"}, "Description" => %{"shape" => "ParameterDescription"}, "KeyId" => %{"shape" => "ParameterKeyId"}, "Name" => %{"shape" => "PSParameterName"}, "Overwrite" => %{"box" => true, "shape" => "Boolean"}, "Type" => %{"shape" => "ParameterType"}, "Value" => %{"shape" => "PSParameterValue"}}, "required" => ["Name", "Value", "Type"], "type" => "structure"}, "ResourceDataSyncCountExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidSchedule" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "MaintenanceWindowStepFunctionsName" => %{"max" => 80, "min" => 1, "type" => "string"}, "GetParametersRequest" => %{"members" => %{"Names" => %{"shape" => "ParameterNameList"}, "WithDecryption" => %{"box" => true, "shape" => "Boolean"}}, "required" => ["Names"], "type" => "structure"}, "ClientToken" => %{"max" => 64, "min" => 1, "type" => "string"}, "PatchBaselineIdentity" => %{"members" => %{"BaselineDescription" => %{"shape" => "BaselineDescription"}, "BaselineId" => %{"shape" => "BaselineId"}, "BaselineName" => %{"shape" => "BaselineName"}, "DefaultBaseline" => %{"shape" => "DefaultBaseline"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}}, "type" => "structure"}, "PatchProduct" => %{"type" => "string"}, "MaintenanceWindowExecutionTaskInvocationParameters" => %{"sensitive" => true, "type" => "string"}, "SignalType" => %{"enum" => ["Approve", "Reject"], "type" => "string"}, "MaintenanceWindowLambdaPayload" => %{"max" => 4096, "sensitive" => true, "type" => "blob"}, "DescribeMaintenanceWindowsResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "WindowIdentities" => %{"shape" => "MaintenanceWindowIdentityList"}}, "type" => "structure"}, "ListDocumentVersionsResult" => %{"members" => %{"DocumentVersions" => %{"shape" => "DocumentVersionList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "StartAutomationExecutionResult" => %{"members" => %{"AutomationExecutionId" => %{"shape" => "AutomationExecutionId"}}, "type" => "structure"}, "ComplianceExecutionSummary" => %{"members" => %{"ExecutionId" => %{"shape" => "ComplianceExecutionId"}, "ExecutionTime" => %{"shape" => "DateTime"}, "ExecutionType" => %{"shape" => "ComplianceExecutionType"}}, "required" => ["ExecutionTime"], "type" => "structure"}, "ActivationDescription" => %{"max" => 256, "min" => 0, "type" => "string"}, "DescriptionInDocument" => %{"type" => "string"}, "InventoryResultItem" => %{"members" => %{"CaptureTime" => %{"shape" => "InventoryItemCaptureTime"}, "Content" => %{"shape" => "InventoryItemEntryList"}, "ContentHash" => %{"shape" => "InventoryItemContentHash"}, "SchemaVersion" => %{"shape" => "InventoryItemSchemaVersion"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}}, "required" => ["TypeName", "SchemaVersion", "Content"], "type" => "structure"}, "MaintenanceWindowFilterValues" => %{"member" => %{"shape" => "MaintenanceWindowFilterValue"}, "type" => "list"}, "MaintenanceWindowFilterKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "Fault" => %{"enum" => ["Client", "Server", "Unknown"], "type" => "string"}, "StringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "ComplianceItemTitle" => %{"max" => 500, "type" => "string"}, "DescribeAssociationRequest" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "AssociationVersion" => %{"shape" => "AssociationVersion"}, "InstanceId" => %{"shape" => "InstanceId"}, "Name" => %{"shape" => "DocumentName"}}, "type" => "structure"}, "MaintenanceWindowExecutionStatus" => %{"enum" => ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"], "type" => "string"}, "CommandId" => %{"max" => 36, "min" => 36, "type" => "string"}, "AccountId" => %{"pattern" => "(?i)all|[0-9]{12}", "type" => "string"}, "InstanceId" => %{"pattern" => "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)", "type" => "string"}, "ListTagsForResourceRequest" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "ResourceType" => %{"shape" => "ResourceTypeForTagging"}}, "required" => ["ResourceType", "ResourceId"], "type" => "structure"}, "CustomSchemaCountLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "PatchClassification" => %{"type" => "string"}, "DeleteDocumentRequest" => %{"members" => %{"Name" => %{"shape" => "DocumentName"}}, "required" => ["Name"], "type" => "structure"}, "MaintenanceWindowFilter" => %{"members" => %{"Key" => %{"shape" => "MaintenanceWindowFilterKey"}, "Values" => %{"shape" => "MaintenanceWindowFilterValues"}}, "type" => "structure"}, "SendAutomationSignalResult" => %{"members" => %{}, "type" => "structure"}, "RegisterTargetWithMaintenanceWindowRequest" => %{"members" => %{"ClientToken" => %{"idempotencyToken" => true, "shape" => "ClientToken"}, "Description" => %{"shape" => "MaintenanceWindowDescription"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "OwnerInformation" => %{"shape" => "OwnerInformation"}, "ResourceType" => %{"shape" => "MaintenanceWindowResourceType"}, "Targets" => %{"shape" => "Targets"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "required" => ["WindowId", "ResourceType", "Targets"], "type" => "structure"}, "SendCommandResult" => %{"members" => %{"Command" => %{"shape" => "Command"}}, "type" => "structure"}, "DescribeInstancePatchesRequest" => %{"members" => %{"Filters" => %{"shape" => "PatchOrchestratorFilterList"}, "InstanceId" => %{"shape" => "InstanceId"}, "MaxResults" => %{"box" => true, "shape" => "PatchComplianceMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["InstanceId"], "type" => "structure"}, "InventoryItem" => %{"members" => %{"CaptureTime" => %{"shape" => "InventoryItemCaptureTime"}, "Content" => %{"shape" => "InventoryItemEntryList"}, "ContentHash" => %{"shape" => "InventoryItemContentHash"}, "Context" => %{"shape" => "InventoryItemContentContext"}, "SchemaVersion" => %{"shape" => "InventoryItemSchemaVersion"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}}, "required" => ["TypeName", "SchemaVersion", "CaptureTime"], "type" => "structure"}, "ListResourceDataSyncResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "ResourceDataSyncItems" => %{"shape" => "ResourceDataSyncItemList"}}, "type" => "structure"}, "InventoryItemEntry" => %{"key" => %{"shape" => "AttributeName"}, "max" => 50, "min" => 0, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "InvalidFilterValue" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ResourceDataSyncS3Prefix" => %{"max" => 256, "min" => 1, "type" => "string"}, "InvalidDocumentOperation" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "IPAddress" => %{"max" => 46, "min" => 1, "type" => "string"}, "InventoryItemTypeName" => %{"max" => 100, "min" => 1, "pattern" => "^(AWS|Custom):.*$", "type" => "string"}, "SeveritySummary" => %{"members" => %{"CriticalCount" => %{"shape" => "ComplianceSummaryCount"}, "HighCount" => %{"shape" => "ComplianceSummaryCount"}, "InformationalCount" => %{"shape" => "ComplianceSummaryCount"}, "LowCount" => %{"shape" => "ComplianceSummaryCount"}, "MediumCount" => %{"shape" => "ComplianceSummaryCount"}, "UnspecifiedCount" => %{"shape" => "ComplianceSummaryCount"}}, "type" => "structure"}, "DescribeEffectivePatchesForPatchBaselineResult" => %{"members" => %{"EffectivePatches" => %{"shape" => "EffectivePatchList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeMaintenanceWindowExecutionsRequest" => %{"members" => %{"Filters" => %{"shape" => "MaintenanceWindowFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaintenanceWindowMaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "required" => ["WindowId"], "type" => "structure"}, "AutomationExecutionMetadata" => %{"members" => %{"AutomationExecutionId" => %{"shape" => "AutomationExecutionId"}, "AutomationExecutionStatus" => %{"shape" => "AutomationExecutionStatus"}, "DocumentName" => %{"shape" => "DocumentName"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "ExecutedBy" => %{"shape" => "String"}, "ExecutionEndTime" => %{"shape" => "DateTime"}, "ExecutionStartTime" => %{"shape" => "DateTime"}, "LogFile" => %{"shape" => "String"}, "Outputs" => %{"shape" => "AutomationParameterMap"}}, "type" => "structure"}, "ComplianceResourceIdList" => %{"member" => %{"shape" => "ComplianceResourceId"}, "min" => 1, "type" => "list"}, "DescribeInstanceInformationResult" => %{"members" => %{"InstanceInformationList" => %{"shape" => "InstanceInformationList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ParametersFilterList" => %{"member" => %{"shape" => "ParametersFilter"}, "type" => "list"}, "TooManyUpdates" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "OwnerInformation" => %{"max" => 128, "min" => 1, "sensitive" => true, "type" => "string"}, "MaintenanceWindowExecutionTaskInvocationIdentity" => %{"members" => %{"EndTime" => %{"shape" => "DateTime"}, "ExecutionId" => %{"shape" => "MaintenanceWindowExecutionTaskExecutionId"}, "InvocationId" => %{"shape" => "MaintenanceWindowExecutionTaskInvocationId"}, "OwnerInformation" => %{"shape" => "OwnerInformation"}, "Parameters" => %{"shape" => "MaintenanceWindowExecutionTaskInvocationParameters"}, "StartTime" => %{"shape" => "DateTime"}, "Status" => %{"shape" => "MaintenanceWindowExecutionStatus"}, "StatusDetails" => %{"shape" => "MaintenanceWindowExecutionStatusDetails"}, "TaskExecutionId" => %{"shape" => "MaintenanceWindowExecutionTaskId"}, "TaskType" => %{"shape" => "MaintenanceWindowTaskType"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}, "WindowTargetId" => %{"shape" => "MaintenanceWindowTaskTargetId"}}, "type" => "structure"}, "UnsupportedInventoryItemContextException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}}, "type" => "structure"}, "AssociationVersionLimitExceeded" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "BaselineId" => %{"max" => 128, "min" => 20, "pattern" => "^[a-zA-Z0-9_\\-:/]{20,128}$", "type" => "string"}, "InvalidNextToken" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeInstanceAssociationsStatusResult" => %{"members" => %{"InstanceAssociationStatusInfos" => %{"shape" => "InstanceAssociationStatusInfos"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "CreateAssociationBatchRequest" => %{"members" => %{"Entries" => %{"shape" => "CreateAssociationBatchRequestEntries"}}, "required" => ["Entries"], "type" => "structure"}, "InventoryItemCaptureTime" => %{"pattern" => "^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$", "type" => "string"}, "PatchOperationType" => %{"enum" => ["Scan", "Install"], "type" => "string"}, "MaintenanceWindowExecutionTaskInvocationIdentityList" => %{"member" => %{"shape" => "MaintenanceWindowExecutionTaskInvocationIdentity"}, "type" => "list"}, "DescribeEffectivePatchesForPatchBaselineRequest" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}, "MaxResults" => %{"box" => true, "shape" => "PatchBaselineMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["BaselineId"], "type" => "structure"}, "UnsupportedPlatformType" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "PatchFilterKey" => %{"enum" => ["PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY", "SEVERITY"], "type" => "string"}, "ApproveAfterDays" => %{"max" => 100, "min" => 0, "type" => "integer"}, "AlreadyExistsException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ParameterLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "MaintenanceWindowTaskParameters" => %{"key" => %{"shape" => "MaintenanceWindowTaskParameterName"}, "sensitive" => true, "type" => "map", "value" => %{"shape" => "MaintenanceWindowTaskParameterValueExpression"}}, "ParameterValue" => %{"type" => "string"}, "UpdateDocumentResult" => %{"members" => %{"DocumentDescription" => %{"shape" => "DocumentDescription"}}, "type" => "structure"}, "InvalidTarget" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "MaintenanceWindowDescription" => %{"max" => 128, "min" => 1, "sensitive" => true, "type" => "string"}, "PatchContentUrl" => %{"type" => "string"}, "ResourceDataSyncS3Region" => %{"max" => 64, "min" => 1, "type" => "string"}, "MaintenanceWindowIdentity" => %{"members" => %{"Cutoff" => %{"shape" => "MaintenanceWindowCutoff"}, "Description" => %{"shape" => "MaintenanceWindowDescription"}, "Duration" => %{"shape" => "MaintenanceWindowDurationHours"}, "Enabled" => %{"shape" => "MaintenanceWindowEnabled"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "type" => "structure"}, "ComplianceStatus" => %{"enum" => ["COMPLIANT", "NON_COMPLIANT"], "type" => "string"}, "CreateAssociationResult" => %{"members" => %{"AssociationDescription" => %{"shape" => "AssociationDescription"}}, "type" => "structure"}, "GetDefaultPatchBaselineResult" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}}, "type" => "structure"}, "DeleteParametersRequest" => %{"members" => %{"Names" => %{"shape" => "ParameterNameList"}}, "required" => ["Names"], "type" => "structure"}, "ListResourceComplianceSummariesRequest" => %{"members" => %{"Filters" => %{"shape" => "ComplianceStringFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeDocumentResult" => %{"members" => %{"Document" => %{"shape" => "DocumentDescription"}}, "type" => "structure"}, "DocumentOwner" => %{"type" => "string"}, "MaintenanceWindowCutoff" => %{"max" => 23, "min" => 0, "type" => "integer"}, "MaxErrors" => %{"max" => 7, "min" => 1, "pattern" => "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$", "type" => "string"}, "MaintenanceWindowExecutionStatusDetails" => %{"max" => 250, "min" => 0, "type" => "string"}, "DocumentDescription" => %{"members" => %{"CreatedDate" => %{"shape" => "DateTime"}, "DefaultVersion" => %{"shape" => "DocumentVersion"}, "Description" => %{"shape" => "DescriptionInDocument"}, "DocumentType" => %{"shape" => "DocumentType"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "Hash" => %{"shape" => "DocumentHash"}, "HashType" => %{"shape" => "DocumentHashType"}, "LatestVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentARN"}, "Owner" => %{"shape" => "DocumentOwner"}, "Parameters" => %{"shape" => "DocumentParameterList"}, "PlatformTypes" => %{"shape" => "PlatformTypeList"}, "SchemaVersion" => %{"shape" => "DocumentSchemaVersion"}, "Sha1" => %{"shape" => "DocumentSha1"}, "Status" => %{"shape" => "DocumentStatus"}}, "type" => "structure"}, "DeleteResourceDataSyncRequest" => %{"members" => %{"SyncName" => %{"shape" => "ResourceDataSyncName"}}, "required" => ["SyncName"], "type" => "structure"}, "CreateAssociationBatchRequestEntry" => %{"members" => %{"AssociationName" => %{"shape" => "AssociationName"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "InstanceId" => %{"shape" => "InstanceId"}, "Name" => %{"shape" => "DocumentName"}, "OutputLocation" => %{"shape" => "InstanceAssociationOutputLocation"}, "Parameters" => %{"shape" => "Parameters"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "Targets" => %{"shape" => "Targets"}}, "required" => ["Name"], "type" => "structure"}, "DocumentIdentifier" => %{"members" => %{"DocumentType" => %{"shape" => "DocumentType"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentARN"}, "Owner" => %{"shape" => "DocumentOwner"}, "PlatformTypes" => %{"shape" => "PlatformTypeList"}, "SchemaVersion" => %{"shape" => "DocumentSchemaVersion"}}, "type" => "structure"}, "ParameterNameList" => %{"max" => 10, "member" => %{"shape" => "PSParameterName"}, "min" => 1, "type" => "list"}, "InventoryItemAttributeList" => %{"max" => 50, "member" => %{"locationName" => "Attribute", "shape" => "InventoryItemAttribute"}, "min" => 1, "type" => "list"}, "ExpirationDate" => %{"type" => "timestamp"}, "InvalidKeyId" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "CommandInvocationStatus" => %{"enum" => ["Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"], "type" => "string"}, "TargetValue" => %{"type" => "string"}, "MaintenanceWindowExecutionTaskIdentity" => %{"members" => %{"EndTime" => %{"shape" => "DateTime"}, "StartTime" => %{"shape" => "DateTime"}, "Status" => %{"shape" => "MaintenanceWindowExecutionStatus"}, "StatusDetails" => %{"shape" => "MaintenanceWindowExecutionStatusDetails"}, "TaskArn" => %{"shape" => "MaintenanceWindowTaskArn"}, "TaskExecutionId" => %{"shape" => "MaintenanceWindowExecutionTaskId"}, "TaskType" => %{"shape" => "MaintenanceWindowTaskType"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}}, "type" => "structure"}, "InstanceAssociationStatusInfos" => %{"member" => %{"shape" => "InstanceAssociationStatusInfo"}, "type" => "list"}, "DeletePatchBaselineResult" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}}, "type" => "structure"}, "GetCommandInvocationResult" => %{"members" => %{"CommandId" => %{"shape" => "CommandId"}, "Comment" => %{"shape" => "Comment"}, "DocumentName" => %{"shape" => "DocumentName"}, "ExecutionElapsedTime" => %{"shape" => "StringDateTime"}, "ExecutionEndDateTime" => %{"shape" => "StringDateTime"}, "ExecutionStartDateTime" => %{"shape" => "StringDateTime"}, "InstanceId" => %{"shape" => "InstanceId"}, "PluginName" => %{"shape" => "CommandPluginName"}, "ResponseCode" => %{"shape" => "ResponseCode"}, "StandardErrorContent" => %{"shape" => "StandardErrorContent"}, "StandardErrorUrl" => %{"shape" => "Url"}, "StandardOutputContent" => %{"shape" => "StandardOutputContent"}, "StandardOutputUrl" => %{"shape" => "Url"}, "Status" => %{"shape" => "CommandInvocationStatus"}, "StatusDetails" => %{"shape" => "StatusDetails"}}, "type" => "structure"}, "Version" => %{"pattern" => "^[0-9]{1,6}(\\.[0-9]{1,6}){2,3}$", "type" => "string"}, "InstanceAssociationExecutionSummary" => %{"max" => 512, "min" => 1, "type" => "string"}, "ResourceComplianceSummaryItemList" => %{"member" => %{"locationName" => "Item", "shape" => "ResourceComplianceSummaryItem"}, "type" => "list"}, "InstancePatchStateOperatorType" => %{"enum" => ["Equal", "NotEqual", "LessThan", "GreaterThan"], "type" => "string"}, "GetParametersByPathResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Parameters" => %{"shape" => "ParameterList"}}, "type" => "structure"}, "InvalidItemContentException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}}, "type" => "structure"}, "InventoryResultEntityList" => %{"member" => %{"locationName" => "Entity", "shape" => "InventoryResultEntity"}, "type" => "list"}, "PatchFilterValueList" => %{"max" => 20, "member" => %{"shape" => "PatchFilterValue"}, "min" => 1, "type" => "list"}, "InventoryResultItemKey" => %{"type" => "string"}, "AssociationStatusAggregatedCount" => %{"key" => %{"shape" => "StatusName"}, "type" => "map", "value" => %{"shape" => "InstanceCount"}}, "PatchKbNumber" => %{"type" => "string"}, "AssociationVersionList" => %{"member" => %{"shape" => "AssociationVersionInfo"}, "min" => 1, "type" => "list"}, "DescribeDocumentPermissionResponse" => %{"members" => %{"AccountIds" => %{"shape" => "AccountIdList"}}, "type" => "structure"}, "DocumentFilter" => %{"members" => %{"key" => %{"shape" => "DocumentFilterKey"}, "value" => %{"shape" => "DocumentFilterValue"}}, "required" => ["key", "value"], "type" => "structure"}, "MaintenanceWindowMaxResults" => %{"max" => 100, "min" => 10, "type" => "integer"}, "MaintenanceWindowTaskType" => %{"enum" => ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"], "type" => "string"}, "AssociationFilterList" => %{"member" => %{"locationName" => "AssociationFilter", "shape" => "AssociationFilter"}, "min" => 1, "type" => "list"}, "TargetCount" => %{"type" => "integer"}, "InventoryItemTypeNameFilter" => %{"max" => 100, "min" => 0, "type" => "string"}, "UpdateMaintenanceWindowTaskResult" => %{"members" => %{"Description" => %{"shape" => "MaintenanceWindowDescription"}, "LoggingInfo" => %{"shape" => "LoggingInfo"}, "MaxConcurrency" => %{"shape" => "MaxConcurrency"}, "MaxErrors" => %{"shape" => "MaxErrors"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Priority" => %{"shape" => "MaintenanceWindowTaskPriority"}, "ServiceRoleArn" => %{"shape" => "ServiceRole"}, "Targets" => %{"shape" => "Targets"}, "TaskArn" => %{"shape" => "MaintenanceWindowTaskArn"}, "TaskInvocationParameters" => %{"shape" => "MaintenanceWindowTaskInvocationParameters"}, "TaskParameters" => %{"shape" => "MaintenanceWindowTaskParameters"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTaskId" => %{"shape" => "MaintenanceWindowTaskId"}}, "type" => "structure"}, "ModifyDocumentPermissionRequest" => %{"members" => %{"AccountIdsToAdd" => %{"shape" => "AccountIdList"}, "AccountIdsToRemove" => %{"shape" => "AccountIdList"}, "Name" => %{"shape" => "DocumentName"}, "PermissionType" => %{"shape" => "DocumentPermissionType"}}, "required" => ["Name", "PermissionType"], "type" => "structure"}, "DescribeParametersRequest" => %{"members" => %{"Filters" => %{"shape" => "ParametersFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "ParameterFilters" => %{"shape" => "ParameterStringFilterList"}}, "type" => "structure"}, "NotificationEvent" => %{"enum" => ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"], "type" => "string"}, "StatusMessage" => %{"max" => 1024, "min" => 1, "type" => "string"}, "NotificationEventList" => %{"member" => %{"shape" => "NotificationEvent"}, "type" => "list"}, "CommandFilterValue" => %{"min" => 1, "type" => "string"}, "InvocationDoesNotExist" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DocumentVersionNumber" => %{"pattern" => "(^[1-9][0-9]*$)", "type" => "string"}, "SubTypeCountLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateAssociationRequest" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "AssociationName" => %{"shape" => "AssociationName"}, "AssociationVersion" => %{"shape" => "AssociationVersion"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentName"}, "OutputLocation" => %{"shape" => "InstanceAssociationOutputLocation"}, "Parameters" => %{"shape" => "Parameters"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "Targets" => %{"shape" => "Targets"}}, "required" => ["AssociationId"], "type" => "structure"}, "DescribeMaintenanceWindowTargetsRequest" => %{"members" => %{"Filters" => %{"shape" => "MaintenanceWindowFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaintenanceWindowMaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "required" => ["WindowId"], "type" => "structure"}, "SnapshotId" => %{"max" => 36, "min" => 36, "pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", "type" => "string"}, "PutComplianceItemsResult" => %{"members" => %{}, "type" => "structure"}, "BaselineName" => %{"max" => 128, "min" => 3, "pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$", "type" => "string"}, "MaintenanceWindowId" => %{"max" => 20, "min" => 20, "pattern" => "^mw-[0-9a-f]{17}$", "type" => "string"}, "AssociationFilterKey" => %{"enum" => ["InstanceId", "Name", "AssociationId", "AssociationStatusName", "LastExecutedBefore", "LastExecutedAfter", "AssociationName"], "type" => "string"}, "FailedCreateAssociationList" => %{"member" => %{"locationName" => "FailedCreateAssociationEntry", "shape" => "FailedCreateAssociation"}, "type" => "list"}, "MaintenanceWindowSchedule" => %{"max" => 256, "min" => 1, "type" => "string"}, "EffectiveInstanceAssociationMaxResults" => %{"max" => 5, "min" => 1, "type" => "integer"}, "InstanceAssociationOutputLocation" => %{"members" => %{"S3Location" => %{"shape" => "S3OutputLocation"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "AssociationName" => %{"pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$", "type" => "string"}, "InstanceInformationList" => %{"member" => %{"locationName" => "InstanceInformation", "shape" => "InstanceInformation"}, "type" => "list"}, "AgentErrorCode" => %{"max" => 10, "type" => "string"}, "ParameterName" => %{"type" => "string"}, "PatchComplianceData" => %{"members" => %{"Classification" => %{"shape" => "PatchClassification"}, "InstalledTime" => %{"shape" => "DateTime"}, "KBId" => %{"shape" => "PatchKbNumber"}, "Severity" => %{"shape" => "PatchSeverity"}, "State" => %{"shape" => "PatchComplianceDataState"}, "Title" => %{"shape" => "PatchTitle"}}, "required" => ["Title", "KBId", "Classification", "Severity", "State", "InstalledTime"], "type" => "structure"}, "CommandFilterList" => %{"max" => 3, "member" => %{"shape" => "CommandFilter"}, "min" => 1, "type" => "list"}, "ComplianceResourceId" => %{"max" => 100, "min" => 1, "type" => "string"}, "DescribePatchGroupStateResult" => %{"members" => %{"Instances" => %{"shape" => "Integer"}, "InstancesWithFailedPatches" => %{"shape" => "Integer"}, "InstancesWithInstalledOtherPatches" => %{"shape" => "Integer"}, "InstancesWithInstalledPatches" => %{"shape" => "Integer"}, "InstancesWithMissingPatches" => %{"shape" => "Integer"}, "InstancesWithNotApplicablePatches" => %{"shape" => "Integer"}}, "type" => "structure"}, "DefaultInstanceName" => %{"max" => 256, "min" => 0, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "InstanceAssociationOutputUrl" => %{"members" => %{"S3OutputUrl" => %{"shape" => "S3OutputUrl"}}, "type" => "structure"}, "ItemContentMismatchException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}}, "type" => "structure"}, "ManagedInstanceId" => %{"pattern" => "^mi-[0-9a-f]{17}$", "type" => "string"}, "UpdateAssociationStatusRequest" => %{"members" => %{"AssociationStatus" => %{"shape" => "AssociationStatus"}, "InstanceId" => %{"shape" => "InstanceId"}, "Name" => %{"shape" => "DocumentName"}}, "required" => ["Name", "InstanceId", "AssociationStatus"], "type" => "structure"}, "PatchOrchestratorFilterKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "MaintenanceWindowExecution" => %{"members" => %{"EndTime" => %{"shape" => "DateTime"}, "StartTime" => %{"shape" => "DateTime"}, "Status" => %{"shape" => "MaintenanceWindowExecutionStatus"}, "StatusDetails" => %{"shape" => "MaintenanceWindowExecutionStatusDetails"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "type" => "structure"}, "DescribeInstanceAssociationsStatusRequest" => %{"members" => %{"InstanceId" => %{"shape" => "InstanceId"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["InstanceId"], "type" => "structure"}, "Command" => %{"members" => %{"CommandId" => %{"shape" => "CommandId"}, "Comment" => %{"shape" => "Comment"}, "CompletedCount" => %{"shape" => "CompletedCount"}, "DocumentName" => %{"shape" => "DocumentName"}, "ErrorCount" => %{"shape" => "ErrorCount"}, "ExpiresAfter" => %{"shape" => "DateTime"}, "InstanceIds" => %{"shape" => "InstanceIdList"}, "MaxConcurrency" => %{"shape" => "MaxConcurrency"}, "MaxErrors" => %{"shape" => "MaxErrors"}, "NotificationConfig" => %{"shape" => "NotificationConfig"}, "OutputS3BucketName" => %{"shape" => "S3BucketName"}, "OutputS3KeyPrefix" => %{"shape" => "S3KeyPrefix"}, "OutputS3Region" => %{"shape" => "S3Region"}, "Parameters" => %{"shape" => "Parameters"}, "RequestedDateTime" => %{"shape" => "DateTime"}, "ServiceRole" => %{"shape" => "ServiceRole"}, "Status" => %{"shape" => "CommandStatus"}, "StatusDetails" => %{"shape" => "StatusDetails"}, "TargetCount" => %{"shape" => "TargetCount"}, "Targets" => %{"shape" => "Targets"}}, "type" => "structure"}, "UpdatePatchBaselineResult" => %{"members" => %{"ApprovalRules" => %{"shape" => "PatchRuleGroup"}, "ApprovedPatches" => %{"shape" => "PatchIdList"}, "ApprovedPatchesComplianceLevel" => %{"shape" => "PatchComplianceLevel"}, "BaselineId" => %{"shape" => "BaselineId"}, "CreatedDate" => %{"shape" => "DateTime"}, "Description" => %{"shape" => "BaselineDescription"}, "GlobalFilters" => %{"shape" => "PatchFilterGroup"}, "ModifiedDate" => %{"shape" => "DateTime"}, "Name" => %{"shape" => "BaselineName"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}, "RejectedPatches" => %{"shape" => "PatchIdList"}}, "type" => "structure"}, "GetDefaultPatchBaselineRequest" => %{"members" => %{"OperatingSystem" => %{"shape" => "OperatingSystem"}}, "type" => "structure"}, "InvalidOutputLocation" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Product" => %{"type" => "string"}, "InstanceInformationFilterValue" => %{"min" => 1, "type" => "string"}, "AllowedPattern" => %{"max" => 1024, "min" => 0, "type" => "string"}, "InvalidParameters" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ComplianceFilterValue" => %{"type" => "string"}, "PatchGroupList" => %{"member" => %{"shape" => "PatchGroup"}, "type" => "list"}, "ActivationId" => %{"pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", "type" => "string"}, "InventoryResultItemMap" => %{"key" => %{"shape" => "InventoryResultItemKey"}, "type" => "map", "value" => %{"shape" => "InventoryResultItem"}}, "DeletePatchBaselineRequest" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}}, "required" => ["BaselineId"], "type" => "structure"}, "RemoveTagsFromResourceRequest" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "ResourceType" => %{"shape" => "ResourceTypeForTagging"}, "TagKeys" => %{"shape" => "KeyList"}}, "required" => ["ResourceType", "ResourceId", "TagKeys"], "type" => "structure"}, "TooManyTagsError" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InstanceAssociationList" => %{"member" => %{"shape" => "InstanceAssociation"}, "type" => "list"}, "DeleteParametersResult" => %{"members" => %{"DeletedParameters" => %{"shape" => "ParameterNameList"}, "InvalidParameters" => %{"shape" => "ParameterNameList"}}, "type" => "structure"}, "PatchOrchestratorFilter" => %{"members" => %{"Key" => %{"shape" => "PatchOrchestratorFilterKey"}, "Values" => %{"shape" => "PatchOrchestratorFilterValues"}}, "type" => "structure"}, "ComplianceItemList" => %{"member" => %{"locationName" => "Item", "shape" => "ComplianceItem"}, "type" => "list"}, "MaintenanceWindowTarget" => %{"members" => %{"Description" => %{"shape" => "MaintenanceWindowDescription"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "OwnerInformation" => %{"shape" => "OwnerInformation"}, "ResourceType" => %{"shape" => "MaintenanceWindowResourceType"}, "Targets" => %{"shape" => "Targets"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTargetId" => %{"shape" => "MaintenanceWindowTargetId"}}, "type" => "structure"}, "InvalidResourceType" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "MaintenanceWindowStepFunctionsInput" => %{"max" => 4096, "sensitive" => true, "type" => "string"}, "MaintenanceWindowTargetList" => %{"member" => %{"shape" => "MaintenanceWindowTarget"}, "type" => "list"}, "AddTagsToResourceResult" => %{"members" => %{}, "type" => "structure"}, "DoesNotExistException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidPluginName" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeMaintenanceWindowExecutionTaskInvocationsRequest" => %{"members" => %{"Filters" => %{"shape" => "MaintenanceWindowFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaintenanceWindowMaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "TaskId" => %{"shape" => "MaintenanceWindowExecutionTaskId"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}}, "required" => ["WindowExecutionId", "TaskId"], "type" => "structure"}, "UnsupportedOperatingSystem" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InstanceInformationFilterList" => %{"member" => %{"locationName" => "InstanceInformationFilter", "shape" => "InstanceInformationFilter"}, "min" => 0, "type" => "list"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "MaxResults" => %{"max" => 50, "min" => 1, "type" => "integer"}, "PatchRuleList" => %{"max" => 10, "member" => %{"shape" => "PatchRule"}, "min" => 0, "type" => "list"}, "AssociationDescriptionList" => %{"member" => %{"locationName" => "AssociationDescription", "shape" => "AssociationDescription"}, "type" => "list"}, "ParameterStringFilterKey" => %{"max" => 132, "min" => 1, "pattern" => "tag:.+|Name|Type|KeyId|Path", "type" => "string"}, "ComplianceExecutionId" => %{"max" => 100, "type" => "string"}, "RegistrationsCount" => %{"max" => 1000, "min" => 1, "type" => "integer"}, "AssociationId" => %{"pattern" => "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", "type" => "string"}, "InstanceInformation" => %{"members" => %{"ActivationId" => %{"shape" => "ActivationId"}, "AgentVersion" => %{"shape" => "Version"}, "AssociationOverview" => %{"shape" => "InstanceAggregatedAssociationOverview"}, "AssociationStatus" => %{"shape" => "StatusName"}, "ComputerName" => %{"shape" => "ComputerName"}, "IPAddress" => %{"shape" => "IPAddress"}, "IamRole" => %{"shape" => "IamRole"}, "InstanceId" => %{"shape" => "InstanceId"}, "IsLatestVersion" => %{"box" => true, "shape" => "Boolean"}, "LastAssociationExecutionDate" => %{"shape" => "DateTime"}, "LastPingDateTime" => %{"box" => true, "shape" => "DateTime"}, "LastSuccessfulAssociationExecutionDate" => %{"shape" => "DateTime"}, "Name" => %{"shape" => "String"}, "PingStatus" => %{"shape" => "PingStatus"}, "PlatformName" => %{"shape" => "String"}, "PlatformType" => %{"shape" => "PlatformType"}, "PlatformVersion" => %{"shape" => "String"}, "RegistrationDate" => %{"box" => true, "shape" => "DateTime"}, "ResourceType" => %{"shape" => "ResourceType"}}, "type" => "structure"}, "DescribeAvailablePatchesResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Patches" => %{"shape" => "PatchList"}}, "type" => "structure"}, "CommandPlugin" => %{"members" => %{"Name" => %{"shape" => "CommandPluginName"}, "Output" => %{"shape" => "CommandPluginOutput"}, "OutputS3BucketName" => %{"shape" => "S3BucketName"}, "OutputS3KeyPrefix" => %{"shape" => "S3KeyPrefix"}, "OutputS3Region" => %{"shape" => "S3Region"}, "ResponseCode" => %{"shape" => "ResponseCode"}, "ResponseFinishDateTime" => %{"shape" => "DateTime"}, "ResponseStartDateTime" => %{"shape" => "DateTime"}, "StandardErrorUrl" => %{"shape" => "Url"}, "StandardOutputUrl" => %{"shape" => "Url"}, "Status" => %{"shape" => "CommandPluginStatus"}, "StatusDetails" => %{"shape" => "StatusDetails"}}, "type" => "structure"}, "TagValue" => %{"max" => 256, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "PatchMsrcSeverity" => %{"type" => "string"}, "NotificationConfig" => %{"members" => %{"NotificationArn" => %{"shape" => "NotificationArn"}, "NotificationEvents" => %{"shape" => "NotificationEventList"}, "NotificationType" => %{"shape" => "NotificationType"}}, "type" => "structure"}, "ScheduleExpression" => %{"max" => 256, "min" => 1, "type" => "string"}, "InstanceInformationStringFilterList" => %{"member" => %{"locationName" => "InstanceInformationStringFilter", "shape" => "InstanceInformationStringFilter"}, "min" => 0, "type" => "list"}, "DescribeDocumentRequest" => %{"members" => %{"DocumentVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentARN"}}, "required" => ["Name"], "type" => "structure"}, "DescribeMaintenanceWindowTargetsResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Targets" => %{"shape" => "MaintenanceWindowTargetList"}}, "type" => "structure"}, "AutomationExecution" => %{"members" => %{"AutomationExecutionId" => %{"shape" => "AutomationExecutionId"}, "AutomationExecutionStatus" => %{"shape" => "AutomationExecutionStatus"}, "DocumentName" => %{"shape" => "DocumentName"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "ExecutionEndTime" => %{"shape" => "DateTime"}, "ExecutionStartTime" => %{"shape" => "DateTime"}, "FailureMessage" => %{"shape" => "String"}, "Outputs" => %{"shape" => "AutomationParameterMap"}, "Parameters" => %{"shape" => "AutomationParameterMap"}, "StepExecutions" => %{"shape" => "StepExecutionList"}}, "type" => "structure"}, "RegisterTaskWithMaintenanceWindowRequest" => %{"members" => %{"ClientToken" => %{"idempotencyToken" => true, "shape" => "ClientToken"}, "Description" => %{"shape" => "MaintenanceWindowDescription"}, "LoggingInfo" => %{"shape" => "LoggingInfo"}, "MaxConcurrency" => %{"shape" => "MaxConcurrency"}, "MaxErrors" => %{"shape" => "MaxErrors"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Priority" => %{"box" => true, "shape" => "MaintenanceWindowTaskPriority"}, "ServiceRoleArn" => %{"shape" => "ServiceRole"}, "Targets" => %{"shape" => "Targets"}, "TaskArn" => %{"shape" => "MaintenanceWindowTaskArn"}, "TaskInvocationParameters" => %{"shape" => "MaintenanceWindowTaskInvocationParameters"}, "TaskParameters" => %{"shape" => "MaintenanceWindowTaskParameters"}, "TaskType" => %{"shape" => "MaintenanceWindowTaskType"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "required" => ["WindowId", "Targets", "TaskArn", "ServiceRoleArn", "TaskType", "MaxConcurrency", "MaxErrors"], "type" => "structure"}, "TargetValues" => %{"max" => 50, "member" => %{"shape" => "TargetValue"}, "min" => 0, "type" => "list"}, "ListDocumentVersionsRequest" => %{"members" => %{"MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "Name" => %{"shape" => "DocumentName"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["Name"], "type" => "structure"}, "InvalidAutomationExecutionParametersException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "AutomationParameterValue" => %{"max" => 512, "min" => 1, "type" => "string"}, "ComplianceSummaryCount" => %{"type" => "integer"}, "DocumentPermissionLimit" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteDocumentResult" => %{"members" => %{}, "type" => "structure"}, "DescribeEffectiveInstanceAssociationsResult" => %{"members" => %{"Associations" => %{"shape" => "InstanceAssociationList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ListInventoryEntriesResult" => %{"members" => %{"CaptureTime" => %{"shape" => "InventoryItemCaptureTime"}, "Entries" => %{"shape" => "InventoryItemEntryList"}, "InstanceId" => %{"shape" => "InstanceId"}, "NextToken" => %{"shape" => "NextToken"}, "SchemaVersion" => %{"shape" => "InventoryItemSchemaVersion"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}}, "type" => "structure"}, "PatchVendor" => %{"type" => "string"}, "GetParametersResult" => %{"members" => %{"InvalidParameters" => %{"shape" => "ParameterNameList"}, "Parameters" => %{"shape" => "ParameterList"}}, "type" => "structure"}, "ParametersFilterKey" => %{"enum" => ["Name", "Type", "KeyId"], "type" => "string"}, "DescribeMaintenanceWindowExecutionTasksRequest" => %{"members" => %{"Filters" => %{"shape" => "MaintenanceWindowFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaintenanceWindowMaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}}, "required" => ["WindowExecutionId"], "type" => "structure"}, "AutomationDefinitionVersionNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidNotificationConfig" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "AssociationList" => %{"member" => %{"locationName" => "Association", "shape" => "Association"}, "type" => "list"}, "PatchComplianceDataState" => %{"enum" => ["INSTALLED", "INSTALLED_OTHER", "MISSING", "NOT_APPLICABLE", "FAILED"], "type" => "string"}, "EffectivePatchList" => %{"member" => %{"shape" => "EffectivePatch"}, "type" => "list"}, "PatchGroupPatchBaselineMappingList" => %{"member" => %{"shape" => "PatchGroupPatchBaselineMapping"}, "type" => "list"}, "MaxResultsEC2Compatible" => %{"max" => 50, "min" => 5, "type" => "integer"}, "DeregisterPatchBaselineForPatchGroupResult" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}, "PatchGroup" => %{"shape" => "PatchGroup"}}, "type" => "structure"}, "DocumentSha1" => %{"type" => "string"}, "IamRole" => %{"max" => 64, "type" => "string"}, "GetPatchBaselineResult" => %{"members" => %{"ApprovalRules" => %{"shape" => "PatchRuleGroup"}, "ApprovedPatches" => %{"shape" => "PatchIdList"}, "ApprovedPatchesComplianceLevel" => %{"shape" => "PatchComplianceLevel"}, "BaselineId" => %{"shape" => "BaselineId"}, "CreatedDate" => %{"shape" => "DateTime"}, "Description" => %{"shape" => "BaselineDescription"}, "GlobalFilters" => %{"shape" => "PatchFilterGroup"}, "ModifiedDate" => %{"shape" => "DateTime"}, "Name" => %{"shape" => "BaselineName"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}, "PatchGroups" => %{"shape" => "PatchGroupList"}, "RejectedPatches" => %{"shape" => "PatchIdList"}}, "type" => "structure"}, "GetParametersByPathMaxResults" => %{"max" => 10, "min" => 1, "type" => "integer"}, "MaintenanceWindowExecutionTaskIdList" => %{"member" => %{"shape" => "MaintenanceWindowExecutionTaskId"}, "type" => "list"}, "MaintenanceWindowTaskParameterValueList" => %{"member" => %{"shape" => "MaintenanceWindowTaskParameterValue"}, "sensitive" => true, "type" => "list"}, "GetMaintenanceWindowExecutionTaskRequest" => %{"members" => %{"TaskId" => %{"shape" => "MaintenanceWindowExecutionTaskId"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}}, "required" => ["WindowExecutionId", "TaskId"], "type" => "structure"}, "ComputerName" => %{"max" => 255, "min" => 1, "type" => "string"}, "SnapshotDownloadUrl" => %{"type" => "string"}, "UpdateManagedInstanceRoleResult" => %{"members" => %{}, "type" => "structure"}, "InventoryItemAttributeName" => %{"type" => "string"}, "GetInventorySchemaRequest" => %{"members" => %{"MaxResults" => %{"box" => true, "shape" => "GetInventorySchemaMaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "SubType" => %{"box" => true, "shape" => "IsSubTypeSchema"}, "TypeName" => %{"shape" => "InventoryItemTypeNameFilter"}}, "type" => "structure"}, "PutInventoryRequest" => %{"members" => %{"InstanceId" => %{"shape" => "InstanceId"}, "Items" => %{"shape" => "InventoryItemList"}}, "required" => ["InstanceId", "Items"], "type" => "structure"}, "InvalidInstanceId" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "SendCommandRequest" => %{"members" => %{"Comment" => %{"shape" => "Comment"}, "DocumentHash" => %{"shape" => "DocumentHash"}, "DocumentHashType" => %{"shape" => "DocumentHashType"}, "DocumentName" => %{"shape" => "DocumentARN"}, "InstanceIds" => %{"shape" => "InstanceIdList"}, "MaxConcurrency" => %{"shape" => "MaxConcurrency"}, "MaxErrors" => %{"shape" => "MaxErrors"}, "NotificationConfig" => %{"shape" => "NotificationConfig"}, "OutputS3BucketName" => %{"shape" => "S3BucketName"}, "OutputS3KeyPrefix" => %{"shape" => "S3KeyPrefix"}, "OutputS3Region" => %{"shape" => "S3Region"}, "Parameters" => %{"shape" => "Parameters"}, "ServiceRoleArn" => %{"shape" => "ServiceRole"}, "Targets" => %{"shape" => "Targets"}, "TimeoutSeconds" => %{"box" => true, "shape" => "TimeoutSeconds"}}, "required" => ["DocumentName"], "type" => "structure"}, "CompletedCount" => %{"type" => "integer"}, "AutomationActionName" => %{"pattern" => "^aws:[a-zA-Z]{3,25}$", "type" => "string"}, "MaintenanceWindowTaskInvocationParameters" => %{"members" => %{"Automation" => %{"shape" => "MaintenanceWindowAutomationParameters"}, "Lambda" => %{"shape" => "MaintenanceWindowLambdaParameters"}, "RunCommand" => %{"shape" => "MaintenanceWindowRunCommandParameters"}, "StepFunctions" => %{"shape" => "MaintenanceWindowStepFunctionsParameters"}}, "type" => "structure"}, "DescribeMaintenanceWindowExecutionsResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "WindowExecutions" => %{"shape" => "MaintenanceWindowExecutionList"}}, "type" => "structure"}, "MaintenanceWindowAllowUnassociatedTargets" => %{"type" => "boolean"}, "CreateDocumentRequest" => %{"members" => %{"Content" => %{"shape" => "DocumentContent"}, "DocumentType" => %{"shape" => "DocumentType"}, "Name" => %{"shape" => "DocumentName"}}, "required" => ["Content", "Name"], "type" => "structure"}, "MaintenanceWindowTaskList" => %{"member" => %{"shape" => "MaintenanceWindowTask"}, "type" => "list"}, "PatchRule" => %{"members" => %{"ApproveAfterDays" => %{"box" => true, "shape" => "ApproveAfterDays"}, "ComplianceLevel" => %{"shape" => "PatchComplianceLevel"}, "PatchFilterGroup" => %{"shape" => "PatchFilterGroup"}}, "required" => ["PatchFilterGroup", "ApproveAfterDays"], "type" => "structure"}, "RegisterTargetWithMaintenanceWindowResult" => %{"members" => %{"WindowTargetId" => %{"shape" => "MaintenanceWindowTargetId"}}, "type" => "structure"}, "GetParameterHistoryResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Parameters" => %{"shape" => "ParameterHistoryList"}}, "type" => "structure"}, "ListInventoryEntriesRequest" => %{"members" => %{"Filters" => %{"shape" => "InventoryFilterList"}, "InstanceId" => %{"shape" => "InstanceId"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "TypeName" => %{"shape" => "InventoryItemTypeName"}}, "required" => ["InstanceId", "TypeName"], "type" => "structure"}, "DescribeInstancePatchStatesForPatchGroupResult" => %{"members" => %{"InstancePatchStates" => %{"shape" => "InstancePatchStatesList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ComplianceExecutionType" => %{"max" => 50, "type" => "string"}, "ComplianceItem" => %{"members" => %{"ComplianceType" => %{"shape" => "ComplianceTypeName"}, "Details" => %{"shape" => "ComplianceItemDetails"}, "ExecutionSummary" => %{"shape" => "ComplianceExecutionSummary"}, "Id" => %{"shape" => "ComplianceItemId"}, "ResourceId" => %{"shape" => "ComplianceResourceId"}, "ResourceType" => %{"shape" => "ComplianceResourceType"}, "Severity" => %{"shape" => "ComplianceSeverity"}, "Status" => %{"shape" => "ComplianceStatus"}, "Title" => %{"shape" => "ComplianceItemTitle"}}, "type" => "structure"}, "InstanceCount" => %{"type" => "integer"}, "PatchInstalledCount" => %{"type" => "integer"}, "AutomationExecutionMetadataList" => %{"max" => 50, "member" => %{"shape" => "AutomationExecutionMetadata"}, "min" => 0, "type" => "list"}, "MaintenanceWindowTaskParameterName" => %{"max" => 255, "min" => 1, "type" => "string"}, "DescribeEffectiveInstanceAssociationsRequest" => %{"members" => %{"InstanceId" => %{"shape" => "InstanceId"}, "MaxResults" => %{"box" => true, "shape" => "EffectiveInstanceAssociationMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["InstanceId"], "type" => "structure"}, "AutomationParameterMap" => %{"key" => %{"shape" => "AutomationParameterKey"}, "max" => 200, "min" => 1, "type" => "map", "value" => %{"shape" => "AutomationParameterValueList"}}, "DocumentContent" => %{"min" => 1, "type" => "string"}, "DescribeInstancePatchStatesResult" => %{"members" => %{"InstancePatchStates" => %{"shape" => "InstancePatchStateList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "CreateDocumentResult" => %{"members" => %{"DocumentDescription" => %{"shape" => "DocumentDescription"}}, "type" => "structure"}, "AutomationDefinitionNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "MaintenanceWindowTaskArn" => %{"max" => 1600, "min" => 1, "type" => "string"}, "ResourceId" => %{"type" => "string"}, "MaintenanceWindowDurationHours" => %{"max" => 24, "min" => 1, "type" => "integer"}, "Targets" => %{"max" => 5, "member" => %{"shape" => "Target"}, "min" => 0, "type" => "list"}, "InternalServerError" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateDocumentRequest" => %{"members" => %{"Content" => %{"shape" => "DocumentContent"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentName"}}, "required" => ["Content", "Name"], "type" => "structure"}, "InvalidInventoryItemContextException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidActivationId" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ListComplianceSummariesResult" => %{"members" => %{"ComplianceSummaryItems" => %{"shape" => "ComplianceSummaryItemList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ListComplianceItemsRequest" => %{"members" => %{"Filters" => %{"shape" => "ComplianceStringFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "ResourceIds" => %{"shape" => "ComplianceResourceIdList"}, "ResourceTypes" => %{"shape" => "ComplianceResourceTypeList"}}, "type" => "structure"}, "TargetInUseException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DeregisterTargetFromMaintenanceWindowResult" => %{"members" => %{"WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTargetId" => %{"shape" => "MaintenanceWindowTargetId"}}, "type" => "structure"}, "ParametersFilter" => %{"members" => %{"Key" => %{"shape" => "ParametersFilterKey"}, "Values" => %{"shape" => "ParametersFilterValueList"}}, "required" => ["Key", "Values"], "type" => "structure"}, "PatchDescription" => %{"type" => "string"}, "InventoryQueryOperatorType" => %{"enum" => ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan"], "type" => "string"}, "NonCompliantSummary" => %{"members" => %{"NonCompliantCount" => %{"shape" => "ComplianceSummaryCount"}, "SeveritySummary" => %{"shape" => "SeveritySummary"}}, "type" => "structure"}, "PutInventoryResult" => %{"members" => %{}, "type" => "structure"}, "MaintenanceWindowExecutionList" => %{"member" => %{"shape" => "MaintenanceWindowExecution"}, "type" => "list"}, "GetMaintenanceWindowResult" => %{"members" => %{"AllowUnassociatedTargets" => %{"shape" => "MaintenanceWindowAllowUnassociatedTargets"}, "CreatedDate" => %{"shape" => "DateTime"}, "Cutoff" => %{"shape" => "MaintenanceWindowCutoff"}, "Description" => %{"shape" => "MaintenanceWindowDescription"}, "Duration" => %{"shape" => "MaintenanceWindowDurationHours"}, "Enabled" => %{"shape" => "MaintenanceWindowEnabled"}, "ModifiedDate" => %{"shape" => "DateTime"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Schedule" => %{"shape" => "MaintenanceWindowSchedule"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "type" => "structure"}, "GetDeployablePatchSnapshotForInstanceResult" => %{"members" => %{"InstanceId" => %{"shape" => "InstanceId"}, "Product" => %{"shape" => "Product"}, "SnapshotDownloadUrl" => %{"shape" => "SnapshotDownloadUrl"}, "SnapshotId" => %{"shape" => "SnapshotId"}}, "type" => "structure"}, "InvalidResultAttributeException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "StepExecutionList" => %{"max" => 100, "member" => %{"shape" => "StepExecution"}, "min" => 0, "type" => "list"}, "DocumentFilterValue" => %{"min" => 1, "type" => "string"}, "DescribePatchGroupsResult" => %{"members" => %{"Mappings" => %{"shape" => "PatchGroupPatchBaselineMappingList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "UnsupportedInventorySchemaVersionException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "BatchErrorMessage" => %{"type" => "string"}, "DeleteMaintenanceWindowRequest" => %{"members" => %{"WindowId" => %{"shape" => "MaintenanceWindowId"}}, "required" => ["WindowId"], "type" => "structure"}, "HierarchyLevelLimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "PlatformType" => %{"enum" => ["Windows", "Linux"], "type" => "string"}, "GetParameterHistoryRequest" => %{"members" => %{"MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "Name" => %{"shape" => "PSParameterName"}, "NextToken" => %{"shape" => "NextToken"}, "WithDecryption" => %{"box" => true, "shape" => "Boolean"}}, "required" => ["Name"], "type" => "structure"}, "InvalidRole" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateMaintenanceWindowResult" => %{"members" => %{"AllowUnassociatedTargets" => %{"shape" => "MaintenanceWindowAllowUnassociatedTargets"}, "Cutoff" => %{"shape" => "MaintenanceWindowCutoff"}, "Description" => %{"shape" => "MaintenanceWindowDescription"}, "Duration" => %{"shape" => "MaintenanceWindowDurationHours"}, "Enabled" => %{"shape" => "MaintenanceWindowEnabled"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Schedule" => %{"shape" => "MaintenanceWindowSchedule"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "type" => "structure"}, "ParameterMetadata" => %{"members" => %{"AllowedPattern" => %{"shape" => "AllowedPattern"}, "Description" => %{"shape" => "ParameterDescription"}, "KeyId" => %{"shape" => "ParameterKeyId"}, "LastModifiedDate" => %{"shape" => "DateTime"}, "LastModifiedUser" => %{"shape" => "String"}, "Name" => %{"shape" => "PSParameterName"}, "Type" => %{"shape" => "ParameterType"}}, "type" => "structure"}, "CommandPluginOutput" => %{"max" => 2500, "type" => "string"}, "ListComplianceItemsResult" => %{"members" => %{"ComplianceItems" => %{"shape" => "ComplianceItemList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DocumentSchemaVersion" => %{"pattern" => "([0-9]+)\\.([0-9]+)", "type" => "string"}, "ComplianceQueryOperatorType" => %{"enum" => ["EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN", "GREATER_THAN"], "type" => "string"}, "GetParameterRequest" => %{"members" => %{"Name" => %{"shape" => "PSParameterName"}, "WithDecryption" => %{"box" => true, "shape" => "Boolean"}}, "required" => ["Name"], "type" => "structure"}, "ResourceDataSyncName" => %{"max" => 64, "min" => 1, "type" => "string"}, "MaintenanceWindowTaskId" => %{"max" => 36, "min" => 36, "pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$", "type" => "string"}, "DocumentType" => %{"enum" => ["Command", "Policy", "Automation"], "type" => "string"}, "ListResourceComplianceSummariesResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "ResourceComplianceSummaryItems" => %{"shape" => "ResourceComplianceSummaryItemList"}}, "type" => "structure"}, "DocumentFilterList" => %{"member" => %{"locationName" => "DocumentFilter", "shape" => "DocumentFilter"}, "min" => 1, "type" => "list"}, "StandardOutputContent" => %{"max" => 24000, "type" => "string"}, "ParameterDescription" => %{"max" => 1024, "min" => 1, "type" => "string"}, "ResourceDataSyncItemList" => %{"member" => %{"shape" => "ResourceDataSyncItem"}, "type" => "list"}, "MaintenanceWindowLambdaParameters" => %{"members" => %{"ClientContext" => %{"shape" => "MaintenanceWindowLambdaClientContext"}, "Payload" => %{"shape" => "MaintenanceWindowLambdaPayload"}, "Qualifier" => %{"shape" => "MaintenanceWindowLambdaQualifier"}}, "type" => "structure"}, "PatchMsrcNumber" => %{"type" => "string"}, "MaintenanceWindowExecutionTaskExecutionId" => %{"type" => "string"}, "AssociationFilter" => %{"members" => %{"key" => %{"shape" => "AssociationFilterKey"}, "value" => %{"shape" => "AssociationFilterValue"}}, "required" => ["key", "value"], "type" => "structure"}, "PatchId" => %{"max" => 100, "min" => 1, "type" => "string"}, "InvalidAutomationSignalException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteParameterRequest" => %{"members" => %{"Name" => %{"shape" => "PSParameterName"}}, "required" => ["Name"], "type" => "structure"}, "AssociationAlreadyExists" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ParameterStringFilter" => %{"members" => %{"Key" => %{"shape" => "ParameterStringFilterKey"}, "Option" => %{"shape" => "ParameterStringQueryOption"}, "Values" => %{"shape" => "ParameterStringFilterValueList"}}, "required" => ["Key"], "type" => "structure"}, "DocumentPermissionType" => %{"enum" => ["Share"], "type" => "string"}, "DocumentStatus" => %{"enum" => ["Creating", "Active", "Updating", "Deleting"], "type" => "string"}, "CreateAssociationBatchRequestEntries" => %{"member" => %{"locationName" => "entries", "shape" => "CreateAssociationBatchRequestEntry"}, "min" => 1, "type" => "list"}, "MaintenanceWindowFilterValue" => %{"max" => 256, "min" => 1, "type" => "string"}, "DocumentIdentifierList" => %{"member" => %{"locationName" => "DocumentIdentifier", "shape" => "DocumentIdentifier"}, "type" => "list"}, "DescribeAutomationExecutionsRequest" => %{"members" => %{"Filters" => %{"shape" => "AutomationExecutionFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeMaintenanceWindowExecutionTasksResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "WindowExecutionTaskIdentities" => %{"shape" => "MaintenanceWindowExecutionTaskIdentityList"}}, "type" => "structure"}, "AssociationLimitExceeded" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListComplianceSummariesRequest" => %{"members" => %{"Filters" => %{"shape" => "ComplianceStringFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "GetMaintenanceWindowExecutionRequest" => %{"members" => %{"WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}}, "required" => ["WindowExecutionId"], "type" => "structure"}, "DocumentLimitExceeded" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "PatchStatus" => %{"members" => %{"ApprovalDate" => %{"shape" => "DateTime"}, "ComplianceLevel" => %{"shape" => "PatchComplianceLevel"}, "DeploymentStatus" => %{"shape" => "PatchDeploymentStatus"}}, "type" => "structure"}, "MaintenanceWindowFilterList" => %{"max" => 5, "member" => %{"shape" => "MaintenanceWindowFilter"}, "min" => 0, "type" => "list"}, "GetInventoryResult" => %{"members" => %{"Entities" => %{"shape" => "InventoryResultEntityList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "AssociatedInstances" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidOutputFolder" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "MaintenanceWindowStepFunctionsParameters" => %{"members" => %{"Input" => %{"shape" => "MaintenanceWindowStepFunctionsInput"}, "Name" => %{"shape" => "MaintenanceWindowStepFunctionsName"}}, "type" => "structure"}, "UpdateDocumentDefaultVersionResult" => %{"members" => %{"Description" => %{"shape" => "DocumentDefaultVersionDescription"}}, "type" => "structure"}, "MaintenanceWindowTaskParameterValueExpression" => %{"members" => %{"Values" => %{"shape" => "MaintenanceWindowTaskParameterValueList"}}, "sensitive" => true, "type" => "structure"}, "AddTagsToResourceRequest" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "ResourceType" => %{"shape" => "ResourceTypeForTagging"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceType", "ResourceId", "Tags"], "type" => "structure"}, "CreateAssociationRequest" => %{"members" => %{"AssociationName" => %{"shape" => "AssociationName"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "InstanceId" => %{"shape" => "InstanceId"}, "Name" => %{"shape" => "DocumentName"}, "OutputLocation" => %{"shape" => "InstanceAssociationOutputLocation"}, "Parameters" => %{"shape" => "Parameters"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "Targets" => %{"shape" => "Targets"}}, "required" => ["Name"], "type" => "structure"}, "DocumentHash" => %{"max" => 256, "type" => "string"}, "InvalidFilterOption" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ComplianceStringFilterKey" => %{"max" => 200, "min" => 1, "type" => "string"}, "InventoryFilterValueList" => %{"max" => 20, "member" => %{"locationName" => "FilterValue", "shape" => "InventoryFilterValue"}, "min" => 1, "type" => "list"}, "LastSuccessfulResourceDataSyncTime" => %{"type" => "timestamp"}, "PlatformTypeList" => %{"member" => %{"locationName" => "PlatformType", "shape" => "PlatformType"}, "type" => "list"}, "DescribeActivationsResult" => %{"members" => %{"ActivationList" => %{"shape" => "ActivationList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "InventoryItemList" => %{"max" => 30, "member" => %{"locationName" => "Item", "shape" => "InventoryItem"}, "min" => 1, "type" => "list"}, "ParameterStringFilterValue" => %{"max" => 1024, "min" => 1, "type" => "string"}, "InstancePatchStateFilterList" => %{"max" => 4, "member" => %{"shape" => "InstancePatchStateFilter"}, "min" => 0, "type" => "list"}, "ResourceDataSyncItem" => %{"members" => %{"LastStatus" => %{"shape" => "LastResourceDataSyncStatus"}, "LastSuccessfulSyncTime" => %{"shape" => "LastSuccessfulResourceDataSyncTime"}, "LastSyncTime" => %{"shape" => "LastResourceDataSyncTime"}, "S3Destination" => %{"shape" => "ResourceDataSyncS3Destination"}, "SyncCreatedTime" => %{"shape" => "ResourceDataSyncCreatedTime"}, "SyncName" => %{"shape" => "ResourceDataSyncName"}}, "type" => "structure"}, "ListCommandInvocationsResult" => %{"members" => %{"CommandInvocations" => %{"shape" => "CommandInvocationList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "InstanceInformationFilterValueSet" => %{"max" => 100, "member" => %{"locationName" => "InstanceInformationFilterValue", "shape" => "InstanceInformationFilterValue"}, "min" => 1, "type" => "list"}, "RegisterTaskWithMaintenanceWindowResult" => %{"members" => %{"WindowTaskId" => %{"shape" => "MaintenanceWindowTaskId"}}, "type" => "structure"}, "GetMaintenanceWindowRequest" => %{"members" => %{"WindowId" => %{"shape" => "MaintenanceWindowId"}}, "required" => ["WindowId"], "type" => "structure"}, "DeleteParameterResult" => %{"members" => %{}, "type" => "structure"}, "AutomationExecutionFilterValueList" => %{"max" => 10, "member" => %{"shape" => "AutomationExecutionFilterValue"}, "min" => 1, "type" => "list"}, "ComplianceTypeName" => %{"max" => 100, "min" => 1, "pattern" => "[A-Za-z0-9_\\-]\\w+|Custom:[a-zA-Z0-9_\\-]\\w+", "type" => "string"}, "CreateActivationRequest" => %{"members" => %{"DefaultInstanceName" => %{"shape" => "DefaultInstanceName"}, "Description" => %{"shape" => "ActivationDescription"}, "ExpirationDate" => %{"shape" => "ExpirationDate"}, "IamRole" => %{"shape" => "IamRole"}, "RegistrationLimit" => %{"box" => true, "shape" => "RegistrationLimit"}}, "required" => ["IamRole"], "type" => "structure"}, "ComplianceStringFilterList" => %{"member" => %{"locationName" => "ComplianceFilter", "shape" => "ComplianceStringFilter"}, "type" => "list"}, "RegisterPatchBaselineForPatchGroupResult" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}, "PatchGroup" => %{"shape" => "PatchGroup"}}, "type" => "structure"}, "NotificationType" => %{"enum" => ["Command", "Invocation"], "type" => "string"}, "PatchInstalledOtherCount" => %{"type" => "integer"}, "UpdateManagedInstanceRoleRequest" => %{"members" => %{"IamRole" => %{"shape" => "IamRole"}, "InstanceId" => %{"shape" => "ManagedInstanceId"}}, "required" => ["InstanceId", "IamRole"], "type" => "structure"}, "DescribeActivationsRequest" => %{"members" => %{"Filters" => %{"shape" => "DescribeActivationsFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribePatchBaselinesResult" => %{"members" => %{"BaselineIdentities" => %{"shape" => "PatchBaselineIdentityList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "LastResourceDataSyncStatus" => %{"enum" => ["Successful", "Failed", "InProgress"], "type" => "string"}, "MaintenanceWindowExecutionTaskInvocationId" => %{"max" => 36, "min" => 36, "pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$", "type" => "string"}, "PatchComplianceDataList" => %{"member" => %{"shape" => "PatchComplianceData"}, "type" => "list"}, "DuplicateDocumentContent" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ComplianceSummaryItemList" => %{"member" => %{"locationName" => "Item", "shape" => "ComplianceSummaryItem"}, "type" => "list"}, "InstancePatchStateFilterKey" => %{"max" => 200, "min" => 1, "type" => "string"}, "PatchBaselineMaxResults" => %{"max" => 100, "min" => 1, "type" => "integer"}, "RegisterDefaultPatchBaselineRequest" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}}, "required" => ["BaselineId"], "type" => "structure"}, "AssociationFilterValue" => %{"min" => 1, "type" => "string"}, "PatchFailedCount" => %{"type" => "integer"}, "AutomationParameterValueList" => %{"max" => 10, "member" => %{"shape" => "AutomationParameterValue"}, "min" => 0, "type" => "list"}, "DocumentVersion" => %{"pattern" => "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)", "type" => "string"}, "AssociationDescription" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "AssociationName" => %{"shape" => "AssociationName"}, "AssociationVersion" => %{"shape" => "AssociationVersion"}, "Date" => %{"shape" => "DateTime"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "InstanceId" => %{"shape" => "InstanceId"}, "LastExecutionDate" => %{"shape" => "DateTime"}, "LastSuccessfulExecutionDate" => %{"shape" => "DateTime"}, "LastUpdateAssociationDate" => %{"shape" => "DateTime"}, "Name" => %{"shape" => "DocumentName"}, "OutputLocation" => %{"shape" => "InstanceAssociationOutputLocation"}, "Overview" => %{"shape" => "AssociationOverview"}, "Parameters" => %{"shape" => "Parameters"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "Status" => %{"shape" => "AssociationStatus"}, "Targets" => %{"shape" => "Targets"}}, "type" => "structure"}, "AutomationExecutionFilterKey" => %{"enum" => ["DocumentNamePrefix", "ExecutionStatus"], "type" => "string"}, "AutomationExecutionFilterList" => %{"max" => 10, "member" => %{"shape" => "AutomationExecutionFilter"}, "min" => 1, "type" => "list"}, "InstancePatchStateFilterValues" => %{"max" => 1, "member" => %{"shape" => "InstancePatchStateFilterValue"}, "min" => 1, "type" => "list"}, "ResourceDataSyncInvalidConfigurationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidResourceId" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DocumentVersionLimitExceeded" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InventoryFilterList" => %{"max" => 5, "member" => %{"locationName" => "InventoryFilter", "shape" => "InventoryFilter"}, "min" => 1, "type" => "list"}, "ListCommandsRequest" => %{"members" => %{"CommandId" => %{"shape" => "CommandId"}, "Filters" => %{"shape" => "CommandFilterList"}, "InstanceId" => %{"shape" => "InstanceId"}, "MaxResults" => %{"box" => true, "shape" => "CommandMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeAssociationResult" => %{"members" => %{"AssociationDescription" => %{"shape" => "AssociationDescription"}}, "type" => "structure"}, "GetAutomationExecutionResult" => %{"members" => %{"AutomationExecution" => %{"shape" => "AutomationExecution"}}, "type" => "structure"}, "MaxConcurrency" => %{"max" => 7, "min" => 1, "pattern" => "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$", "type" => "string"}, "AutomationExecutionNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidDocumentVersion" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "InstanceInformationFilterKey" => %{"enum" => ["InstanceIds", "AgentVersion", "PingStatus", "PlatformTypes", "ActivationIds", "IamRole", "ResourceType", "AssociationStatus"], "type" => "string"}, "ComplianceItemContentHash" => %{"max" => 256, "type" => "string"}, "GetPatchBaselineForPatchGroupRequest" => %{"members" => %{"OperatingSystem" => %{"shape" => "OperatingSystem"}, "PatchGroup" => %{"shape" => "PatchGroup"}}, "required" => ["PatchGroup"], "type" => "structure"}, "ListDocumentsRequest" => %{"members" => %{"DocumentFilterList" => %{"shape" => "DocumentFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ResultAttribute" => %{"members" => %{"TypeName" => %{"shape" => "InventoryItemTypeName"}}, "required" => ["TypeName"], "type" => "structure"}, "GetMaintenanceWindowExecutionTaskInvocationResult" => %{"members" => %{"EndTime" => %{"shape" => "DateTime"}, "ExecutionId" => %{"shape" => "MaintenanceWindowExecutionTaskExecutionId"}, "InvocationId" => %{"shape" => "MaintenanceWindowExecutionTaskInvocationId"}, "OwnerInformation" => %{"shape" => "OwnerInformation"}, "Parameters" => %{"shape" => "MaintenanceWindowExecutionTaskInvocationParameters"}, "StartTime" => %{"shape" => "DateTime"}, "Status" => %{"shape" => "MaintenanceWindowExecutionStatus"}, "StatusDetails" => %{"shape" => "MaintenanceWindowExecutionStatusDetails"}, "TaskExecutionId" => %{"shape" => "MaintenanceWindowExecutionTaskId"}, "TaskType" => %{"shape" => "MaintenanceWindowTaskType"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}, "WindowTargetId" => %{"shape" => "MaintenanceWindowTaskTargetId"}}, "type" => "structure"}, "InstanceAssociationStatusAggregatedCount" => %{"key" => %{"shape" => "StatusName"}, "type" => "map", "value" => %{"shape" => "InstanceCount"}}, "ParameterValueList" => %{"member" => %{"shape" => "ParameterValue"}, "type" => "list"}, "InstancePatchStateList" => %{"member" => %{"shape" => "InstancePatchState"}, "type" => "list"}, "MaintenanceWindowLambdaClientContext" => %{"max" => 8000, "min" => 1, "type" => "string"}, "PatchFilterGroup" => %{"members" => %{"PatchFilters" => %{"shape" => "PatchFilterList"}}, "required" => ["PatchFilters"], "type" => "structure"}, "Parameters" => %{"key" => %{"shape" => "ParameterName"}, "type" => "map", "value" => %{"shape" => "ParameterValueList"}}, "StopAutomationExecutionResult" => %{"members" => %{}, "type" => "structure"}, "CreateMaintenanceWindowResult" => %{"members" => %{"WindowId" => %{"shape" => "MaintenanceWindowId"}}, "type" => "structure"}, "InstancePatchStatesList" => %{"max" => 5, "member" => %{"shape" => "InstancePatchState"}, "min" => 1, "type" => "list"}, "MaintenanceWindowRunCommandParameters" => %{"members" => %{"Comment" => %{"shape" => "Comment"}, "DocumentHash" => %{"shape" => "DocumentHash"}, "DocumentHashType" => %{"shape" => "DocumentHashType"}, "NotificationConfig" => %{"shape" => "NotificationConfig"}, "OutputS3BucketName" => %{"shape" => "S3BucketName"}, "OutputS3KeyPrefix" => %{"shape" => "S3KeyPrefix"}, "Parameters" => %{"shape" => "Parameters"}, "ServiceRoleArn" => %{"shape" => "ServiceRole"}, "TimeoutSeconds" => %{"box" => true, "shape" => "TimeoutSeconds"}}, "type" => "structure"}, "UpdateMaintenanceWindowRequest" => %{"members" => %{"AllowUnassociatedTargets" => %{"box" => true, "shape" => "MaintenanceWindowAllowUnassociatedTargets"}, "Cutoff" => %{"box" => true, "shape" => "MaintenanceWindowCutoff"}, "Description" => %{"shape" => "MaintenanceWindowDescription"}, "Duration" => %{"box" => true, "shape" => "MaintenanceWindowDurationHours"}, "Enabled" => %{"box" => true, "shape" => "MaintenanceWindowEnabled"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Replace" => %{"box" => true, "shape" => "Boolean"}, "Schedule" => %{"shape" => "MaintenanceWindowSchedule"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}}, "required" => ["WindowId"], "type" => "structure"}, "TotalSizeLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "S3Region" => %{"max" => 20, "min" => 3, "type" => "string"}, "GetParametersByPathRequest" => %{"members" => %{"MaxResults" => %{"box" => true, "shape" => "GetParametersByPathMaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "ParameterFilters" => %{"shape" => "ParameterStringFilterList"}, "Path" => %{"shape" => "PSParameterName"}, "Recursive" => %{"box" => true, "shape" => "Boolean"}, "WithDecryption" => %{"box" => true, "shape" => "Boolean"}}, "required" => ["Path"], "type" => "structure"}, "CommandPluginList" => %{"member" => %{"shape" => "CommandPlugin"}, "type" => "list"}, "InstanceTagName" => %{"max" => 255, "type" => "string"}, "DocumentParameterList" => %{"member" => %{"locationName" => "DocumentParameter", "shape" => "DocumentParameter"}, "type" => "list"}, "GetMaintenanceWindowExecutionTaskResult" => %{"members" => %{"EndTime" => %{"shape" => "DateTime"}, "MaxConcurrency" => %{"shape" => "MaxConcurrency"}, "MaxErrors" => %{"shape" => "MaxErrors"}, "Priority" => %{"shape" => "MaintenanceWindowTaskPriority"}, "ServiceRole" => %{"shape" => "ServiceRole"}, "StartTime" => %{"shape" => "DateTime"}, "Status" => %{"shape" => "MaintenanceWindowExecutionStatus"}, "StatusDetails" => %{"shape" => "MaintenanceWindowExecutionStatusDetails"}, "TaskArn" => %{"shape" => "MaintenanceWindowTaskArn"}, "TaskExecutionId" => %{"shape" => "MaintenanceWindowExecutionTaskId"}, "TaskParameters" => %{"shape" => "MaintenanceWindowTaskParametersList"}, "Type" => %{"shape" => "MaintenanceWindowTaskType"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}}, "type" => "structure"}, "StatusName" => %{"type" => "string"}, "CreateActivationResult" => %{"members" => %{"ActivationCode" => %{"shape" => "ActivationCode"}, "ActivationId" => %{"shape" => "ActivationId"}}, "type" => "structure"}, "BaselineDescription" => %{"max" => 1024, "min" => 1, "type" => "string"}, "PatchBaselineIdentityList" => %{"member" => %{"shape" => "PatchBaselineIdentity"}, "type" => "list"}, "GetInventorySchemaMaxResults" => %{"max" => 200, "min" => 50, "type" => "integer"}, "AttributeValue" => %{"max" => 4096, "min" => 0, "type" => "string"}, "DeregisterTaskFromMaintenanceWindowResult" => %{"members" => %{"WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTaskId" => %{"shape" => "MaintenanceWindowTaskId"}}, "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^(?!^(?i)aws:)(?=^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$).*$", "type" => "string"}, "ResourceDataSyncAlreadyExistsException" => %{"exception" => true, "members" => %{"SyncName" => %{"shape" => "ResourceDataSyncName"}}, "type" => "structure"}, "ParametersFilterValueList" => %{"max" => 50, "member" => %{"shape" => "ParametersFilterValue"}, "min" => 1, "type" => "list"}, "Comment" => %{"max" => 100, "type" => "string"}, "InvalidDocumentContent" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ActivationList" => %{"member" => %{"shape" => "Activation"}, "type" => "list"}, "InvalidTypeNameException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "StepExecution" => %{"members" => %{"Action" => %{"shape" => "AutomationActionName"}, "ExecutionEndTime" => %{"shape" => "DateTime"}, "ExecutionStartTime" => %{"shape" => "DateTime"}, "FailureDetails" => %{"shape" => "FailureDetails"}, "FailureMessage" => %{"shape" => "String"}, "Inputs" => %{"shape" => "NormalStringMap"}, "Outputs" => %{"shape" => "AutomationParameterMap"}, "Response" => %{"shape" => "String"}, "ResponseCode" => %{"shape" => "String"}, "StepName" => %{"shape" => "String"}, "StepStatus" => %{"shape" => "AutomationExecutionStatus"}}, "type" => "structure"}, "MaintenanceWindowTaskParameterValue" => %{"max" => 255, "min" => 1, "sensitive" => true, "type" => "string"}, "RegisterPatchBaselineForPatchGroupRequest" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}, "PatchGroup" => %{"shape" => "PatchGroup"}}, "required" => ["BaselineId", "PatchGroup"], "type" => "structure"}, "DescribeMaintenanceWindowsRequest" => %{"members" => %{"Filters" => %{"shape" => "MaintenanceWindowFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaintenanceWindowMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "FailureDetails" => %{"members" => %{"Details" => %{"shape" => "AutomationParameterMap"}, "FailureStage" => %{"shape" => "String"}, "FailureType" => %{"shape" => "String"}}, "type" => "structure"}, "DocumentAlreadyExists" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ResourceDataSyncS3BucketName" => %{"max" => 2048, "min" => 1, "type" => "string"}, "ParameterStringFilterValueList" => %{"max" => 50, "member" => %{"shape" => "ParameterStringFilterValue"}, "min" => 1, "type" => "list"}, "PatchProductFamily" => %{"type" => "string"}, "MaintenanceWindowTargetId" => %{"max" => 36, "min" => 36, "pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$", "type" => "string"}, "DescribePatchGroupStateRequest" => %{"members" => %{"PatchGroup" => %{"shape" => "PatchGroup"}}, "required" => ["PatchGroup"], "type" => "structure"}, "MaintenanceWindowTaskParametersList" => %{"member" => %{"shape" => "MaintenanceWindowTaskParameters"}, "sensitive" => true, "type" => "list"}, "DeleteResourceDataSyncResult" => %{"members" => %{}, "type" => "structure"}, "InventoryResultEntityId" => %{"type" => "string"}, "PatchOrchestratorFilterValues" => %{"member" => %{"shape" => "PatchOrchestratorFilterValue"}, "type" => "list"}, "InvalidAssociationVersion" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ServiceRole" => %{"type" => "string"}, "CommandInvocation" => %{"members" => %{"CommandId" => %{"shape" => "CommandId"}, "CommandPlugins" => %{"shape" => "CommandPluginList"}, "Comment" => %{"shape" => "Comment"}, "DocumentName" => %{"shape" => "DocumentName"}, "InstanceId" => %{"shape" => "InstanceId"}, "InstanceName" => %{"shape" => "InstanceTagName"}, "NotificationConfig" => %{"shape" => "NotificationConfig"}, "RequestedDateTime" => %{"shape" => "DateTime"}, "ServiceRole" => %{"shape" => "ServiceRole"}, "StandardErrorUrl" => %{"shape" => "Url"}, "StandardOutputUrl" => %{"shape" => "Url"}, "Status" => %{"shape" => "CommandInvocationStatus"}, "StatusDetails" => %{"shape" => "StatusDetails"}, "TraceOutput" => %{"shape" => "InvocationTraceOutput"}}, "type" => "structure"}, "ComplianceItemEntry" => %{"members" => %{"Details" => %{"shape" => "ComplianceItemDetails"}, "Id" => %{"shape" => "ComplianceItemId"}, "Severity" => %{"shape" => "ComplianceSeverity"}, "Status" => %{"shape" => "ComplianceStatus"}, "Title" => %{"shape" => "ComplianceItemTitle"}}, "required" => ["Severity", "Status"], "type" => "structure"}, "CreatePatchBaselineResult" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}}, "type" => "structure"}, "GetDocumentResult" => %{"members" => %{"Content" => %{"shape" => "DocumentContent"}, "DocumentType" => %{"shape" => "DocumentType"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentARN"}}, "type" => "structure"}, "PatchRuleGroup" => %{"members" => %{"PatchRules" => %{"shape" => "PatchRuleList"}}, "required" => ["PatchRules"], "type" => "structure"}, "S3OutputLocation" => %{"members" => %{"OutputS3BucketName" => %{"shape" => "S3BucketName"}, "OutputS3KeyPrefix" => %{"shape" => "S3KeyPrefix"}, "OutputS3Region" => %{"shape" => "S3Region"}}, "type" => "structure"}, "ResponseCode" => %{"type" => "integer"}, "ParameterList" => %{"member" => %{"shape" => "Parameter"}, "type" => "list"}, "ParameterStringQueryOption" => %{"max" => 10, "min" => 1, "type" => "string"}, "InstanceInformationStringFilterKey" => %{"min" => 1, "type" => "string"}, "DescribeMaintenanceWindowTasksResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Tasks" => %{"shape" => "MaintenanceWindowTaskList"}}, "type" => "structure"}, "MaintenanceWindowExecutionTaskIdentityList" => %{"member" => %{"shape" => "MaintenanceWindowExecutionTaskIdentity"}, "type" => "list"}, "LastResourceDataSyncTime" => %{"type" => "timestamp"}, "ComplianceStringFilterValueList" => %{"max" => 20, "member" => %{"locationName" => "FilterValue", "shape" => "ComplianceFilterValue"}, "min" => 1, "type" => "list"}, "GetAutomationExecutionRequest" => %{"members" => %{"AutomationExecutionId" => %{"shape" => "AutomationExecutionId"}}, "required" => ["AutomationExecutionId"], "type" => "structure"}, "AutomationExecutionStatus" => %{"enum" => ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelled", "Failed"], "type" => "string"}, "PatchTitle" => %{"type" => "string"}, "PatchLanguage" => %{"type" => "string"}, "InvalidPermissionType" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DateTime" => %{"type" => "timestamp"}, "MaxDocumentSizeExceeded" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DocumentName" => %{"pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$", "type" => "string"}, "CancelCommandResult" => %{"members" => %{}, "type" => "structure"}, "ResourceTypeForTagging" => %{"enum" => ["ManagedInstance", "MaintenanceWindow", "Parameter"], "type" => "string"}, "DescribeInstancePatchStatesRequest" => %{"members" => %{"InstanceIds" => %{"shape" => "InstanceIdList"}, "MaxResults" => %{"box" => true, "shape" => "PatchComplianceMaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["InstanceIds"], "type" => "structure"}, "PatchComplianceLevel" => %{"enum" => ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"], "type" => "string"}, "DocumentParameterType" => %{"enum" => ["String", "StringList"], "type" => "string"}, "InstancePatchStateFilterValue" => %{"type" => "string"}, "StopAutomationExecutionRequest" => %{"members" => %{"AutomationExecutionId" => %{"shape" => "AutomationExecutionId"}}, "required" => ["AutomationExecutionId"], "type" => "structure"}, "CommandMaxResults" => %{"max" => 50, "min" => 1, "type" => "integer"}, "AssociationStatusName" => %{"enum" => ["Pending", "Success", "Failed"], "type" => "string"}, "GetInventoryRequest" => %{"members" => %{"Filters" => %{"shape" => "InventoryFilterList"}, "MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "ResultAttributes" => %{"shape" => "ResultAttributeList"}}, "type" => "structure"}, "CommandPluginStatus" => %{"enum" => ["Pending", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"], "type" => "string"}, "InventoryFilterValue" => %{"type" => "string"}, "IdempotentParameterMismatch" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "RegisterDefaultPatchBaselineResult" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}}, "type" => "structure"}, "PatchFilterValue" => %{"max" => 64, "min" => 1, "type" => "string"}, "DescribeParametersResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Parameters" => %{"shape" => "ParameterMetadataList"}}, "type" => "structure"}, "CreateAssociationBatchResult" => %{"members" => %{"Failed" => %{"shape" => "FailedCreateAssociationList"}, "Successful" => %{"shape" => "AssociationDescriptionList"}}, "type" => "structure"}, "FeatureNotAvailableException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "GetMaintenanceWindowTaskRequest" => %{"members" => %{"WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTaskId" => %{"shape" => "MaintenanceWindowTaskId"}}, "required" => ["WindowId", "WindowTaskId"], "type" => "structure"}, "ComplianceStringFilter" => %{"members" => %{"Key" => %{"shape" => "ComplianceStringFilterKey"}, "Type" => %{"shape" => "ComplianceQueryOperatorType"}, "Values" => %{"shape" => "ComplianceStringFilterValueList"}}, "type" => "structure"}, "AssociationVersionInfo" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "AssociationName" => %{"shape" => "AssociationName"}, "AssociationVersion" => %{"shape" => "AssociationVersion"}, "CreatedDate" => %{"shape" => "DateTime"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentName"}, "OutputLocation" => %{"shape" => "InstanceAssociationOutputLocation"}, "Parameters" => %{"shape" => "Parameters"}, "ScheduleExpression" => %{"shape" => "ScheduleExpression"}, "Targets" => %{"shape" => "Targets"}}, "type" => "structure"}, "ResourceDataSyncNotFoundException" => %{"exception" => true, "members" => %{"SyncName" => %{"shape" => "ResourceDataSyncName"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "LoggingInfo" => %{"members" => %{"S3BucketName" => %{"shape" => "S3BucketName"}, "S3KeyPrefix" => %{"shape" => "S3KeyPrefix"}, "S3Region" => %{"shape" => "S3Region"}}, "required" => ["S3BucketName", "S3Region"], "type" => "structure"}, "DuplicateInstanceId" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CompliantSummary" => %{"members" => %{"CompliantCount" => %{"shape" => "ComplianceSummaryCount"}, "SeveritySummary" => %{"shape" => "SeveritySummary"}}, "type" => "structure"}, "GetMaintenanceWindowExecutionResult" => %{"members" => %{"EndTime" => %{"shape" => "DateTime"}, "StartTime" => %{"shape" => "DateTime"}, "Status" => %{"shape" => "MaintenanceWindowExecutionStatus"}, "StatusDetails" => %{"shape" => "MaintenanceWindowExecutionStatusDetails"}, "TaskIds" => %{"shape" => "MaintenanceWindowExecutionTaskIdList"}, "WindowExecutionId" => %{"shape" => "MaintenanceWindowExecutionId"}}, "type" => "structure"}, "InstanceAssociationStatusInfo" => %{"members" => %{"AssociationId" => %{"shape" => "AssociationId"}, "AssociationName" => %{"shape" => "AssociationName"}, "AssociationVersion" => %{"shape" => "AssociationVersion"}, "DetailedStatus" => %{"shape" => "StatusName"}, "DocumentVersion" => %{"shape" => "DocumentVersion"}, "ErrorCode" => %{"shape" => "AgentErrorCode"}, "ExecutionDate" => %{"shape" => "DateTime"}, "ExecutionSummary" => %{"shape" => "InstanceAssociationExecutionSummary"}, "InstanceId" => %{"shape" => "InstanceId"}, "Name" => %{"shape" => "DocumentName"}, "OutputUrl" => %{"shape" => "InstanceAssociationOutputUrl"}, "Status" => %{"shape" => "StatusName"}}, "type" => "structure"}, "GetDocumentRequest" => %{"members" => %{"DocumentVersion" => %{"shape" => "DocumentVersion"}, "Name" => %{"shape" => "DocumentARN"}}, "required" => ["Name"], "type" => "structure"}, "RemoveTagsFromResourceResult" => %{"members" => %{}, "type" => "structure"}, "InvocationTraceOutput" => %{"max" => 2500, "type" => "string"}, "PSParameterValue" => %{"max" => 4096, "min" => 1, "type" => "string"}, "NextToken" => %{"type" => "string"}, "CommandStatus" => %{"enum" => ["Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"], "type" => "string"}, "GetPatchBaselineRequest" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}}, "required" => ["BaselineId"], "type" => "structure"}, "ParameterHistoryList" => %{"member" => %{"shape" => "ParameterHistory"}, "type" => "list"}, "TargetKey" => %{"max" => 128, "min" => 1, "pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$", "type" => "string"}, "DocumentParameterDefaultValue" => %{"type" => "string"}, "ActivationCode" => %{"max" => 250, "min" => 20, "type" => "string"}, "PutParameterResult" => %{"members" => %{}, "type" => "structure"}, "PatchGroupPatchBaselineMapping" => %{"members" => %{"BaselineIdentity" => %{"shape" => "PatchBaselineIdentity"}, "PatchGroup" => %{"shape" => "PatchGroup"}}, "type" => "structure"}, "S3OutputUrl" => %{"members" => %{"OutputUrl" => %{"shape" => "Url"}}, "type" => "structure"}, "ComplianceSeverity" => %{"enum" => ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"], "type" => "string"}, "ResourceComplianceSummaryItem" => %{"members" => %{"ComplianceType" => %{"shape" => "ComplianceTypeName"}, "CompliantSummary" => %{"shape" => "CompliantSummary"}, "ExecutionSummary" => %{"shape" => "ComplianceExecutionSummary"}, "NonCompliantSummary" => %{"shape" => "NonCompliantSummary"}, "OverallSeverity" => %{"shape" => "ComplianceSeverity"}, "ResourceId" => %{"shape" => "ComplianceResourceId"}, "ResourceType" => %{"shape" => "ComplianceResourceType"}, "Status" => %{"shape" => "ComplianceStatus"}}, "type" => "structure"}, "MaintenanceWindowTaskTargetId" => %{"max" => 36, "type" => "string"}, "FailedCreateAssociation" => %{"members" => %{"Entry" => %{"shape" => "CreateAssociationBatchRequestEntry"}, "Fault" => %{"shape" => "Fault"}, "Message" => %{"shape" => "BatchErrorMessage"}}, "type" => "structure"}, "ResourceDataSyncAWSKMSKeyARN" => %{"max" => 512, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "IdempotencyToken" => %{"max" => 36, "min" => 36, "pattern" => "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}", "type" => "string"}, "PatchOrchestratorFilterValue" => %{"max" => 256, "min" => 1, "type" => "string"}, "InventoryAttributeDataType" => %{"enum" => ["string", "number"], "type" => "string"}, "UpdateMaintenanceWindowTaskRequest" => %{"members" => %{"Description" => %{"shape" => "MaintenanceWindowDescription"}, "LoggingInfo" => %{"shape" => "LoggingInfo"}, "MaxConcurrency" => %{"shape" => "MaxConcurrency"}, "MaxErrors" => %{"shape" => "MaxErrors"}, "Name" => %{"shape" => "MaintenanceWindowName"}, "Priority" => %{"box" => true, "shape" => "MaintenanceWindowTaskPriority"}, "Replace" => %{"box" => true, "shape" => "Boolean"}, "ServiceRoleArn" => %{"shape" => "ServiceRole"}, "Targets" => %{"shape" => "Targets"}, "TaskArn" => %{"shape" => "MaintenanceWindowTaskArn"}, "TaskInvocationParameters" => %{"shape" => "MaintenanceWindowTaskInvocationParameters"}, "TaskParameters" => %{"shape" => "MaintenanceWindowTaskParameters"}, "WindowId" => %{"shape" => "MaintenanceWindowId"}, "WindowTaskId" => %{"shape" => "MaintenanceWindowTaskId"}}, "required" => ["WindowId", "WindowTaskId"], "type" => "structure"}, "AssociationVersion" => %{"pattern" => "([$]LATEST)|([1-9][0-9]*)", "type" => "string"}, "GetDeployablePatchSnapshotForInstanceRequest" => %{"members" => %{"InstanceId" => %{"shape" => "InstanceId"}, "SnapshotId" => %{"shape" => "SnapshotId"}}, "required" => ["InstanceId", "SnapshotId"], "type" => "structure"}, "DeregisterPatchBaselineForPatchGroupRequest" => %{"members" => %{"BaselineId" => %{"shape" => "BaselineId"}, "PatchGroup" => %{"shape" => "PatchGroup"}}, "required" => ["BaselineId", "PatchGroup"], "type" => "structure"}, "ListResourceDataSyncRequest" => %{"members" => %{"MaxResults" => %{"box" => true, "shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ErrorCount" => %{"type" => "integer"}, "ResourceDataSyncCreatedTime" => %{"type" => "timestamp"}, "PatchSeverity" => %{"type" => "string"}, "ParameterKeyId" => %{"max" => 256, "min" => 1, "pattern" => "^([a-zA-Z0-9:/_-]+)$", "type" => "string"}, "UpdateDocumentDefaultVersionRequest" => %{"members" => %{"DocumentVersion" => %{"shape" => "DocumentVersionNumber"}, "Name" => %{"shape" => "DocumentName"}}, "required" => ["Name", "DocumentVersion"], "type" => "structure"}, "S3KeyPrefix" => %{"max" => 500, "type" => "string"}, "StatusAdditionalInfo" => %{"max" => 1024, "type" => "string"}, "MaintenanceWindowExecutionId" => %{"max" => 36, "min" => 36, "pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$", "type" => "string"}, "PatchIdList" => %{"max" => 50, "member" => %{"shape" => "PatchId"}, "min" => 0, "type" => "list"}}
  end
end