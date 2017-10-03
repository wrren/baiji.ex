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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetAutomationExecution",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Assigns or changes an Amazon Identity and Access Management (IAM) role to
  the managed instance.
  """
  def update_managed_instance_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateManagedInstanceRole",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists the patch baselines in your AWS account.
  """
  def describe_patch_baselines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePatchBaselines",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Registers a target with a Maintenance Window.
  """
  def register_target_with_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterTargetWithMaintenanceWindow",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Set the default version of a document.
  """
  def update_document_default_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDocumentDefaultVersion",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Returns detailed information about command execution for an invocation or
  plugin.
  """
  def get_command_invocation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetCommandInvocation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Delete a parameter from the system.
  """
  def delete_parameter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteParameter",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListCommandInvocations",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves information about a patch baseline.
  """
  def get_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetPatchBaseline",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the current snapshot for the patch baseline the instance uses.
  This API is primarily used by the AWS-RunPatchBaseline Systems Manager
  document.
  """
  def get_deployable_patch_snapshot_for_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDeployablePatchSnapshotForInstance",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  All associations for the instance(s).
  """
  def describe_effective_instance_associations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEffectiveInstanceAssociations",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Removes a target from a Maintenance Window.
  """
  def deregister_target_from_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterTargetFromMaintenanceWindow",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Gets the contents of the specified SSM document.
  """
  def get_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDocument",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateMaintenanceWindowTask",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Details about the activation, including: the date and time the activation
  was created, the expiration date, the IAM role assigned to the instances in
  the activation, and the number of instances activated by this registration.
  """
  def describe_activations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeActivations",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Query inventory information.
  """
  def get_inventory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetInventory",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Provides details about all active and terminated Automation executions.
  """
  def describe_automation_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAutomationExecutions",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Adds a new task to a Maintenance Window.
  """
  def register_task_with_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterTaskWithMaintenanceWindow",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Removes all tags from the specified resource.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Deletes a Maintenance Window.
  """
  def delete_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteMaintenanceWindow",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Defines the default patch baseline.
  """
  def register_default_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterDefaultPatchBaseline",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves a task invocation. A task invocation is a specific task executing
  on a specific target. Maintenance Windows report status for all
  invocations.
  """
  def get_maintenance_window_execution_task_invocation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindowExecutionTaskInvocation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  List all versions for a document.
  """
  def list_document_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDocumentVersions",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Returns a list of the tags assigned to the specified resource.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstanceInformation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Returns a resource-level summary count. The summary includes information
  about compliant and non-compliant statuses and detailed compliance-item
  severity counts, according to the filter criteria you specify.
  """
  def list_resource_compliance_summaries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListResourceComplianceSummaries",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateMaintenanceWindowTarget",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Get information about a parameter by using the parameter name.
  """
  def get_parameter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetParameter",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutComplianceItems",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves information about the patches on the specified instance and their
  state relative to the patch baseline being used for the instance.
  """
  def describe_instance_patches(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstancePatches",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Updates an association. You can update the association name and version,
  the document version, schedule, parameters, and Amazon S3 output.
  """
  def update_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateAssociation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Query a list of all parameters used by the AWS account.
  """
  def get_parameter_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetParameterHistory",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Describes the specified SSM document.
  """
  def describe_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDocument",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  The document you want to update.
  """
  def update_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDocument",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists all patches that could possibly be included in a patch baseline.
  """
  def describe_available_patches(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAvailablePatches",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the default patch baseline. Note that Systems Manager supports
  creating multiple default patch baselines. For example, you can create a
  default patch baseline for each operating system.
  """
  def get_default_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDefaultPatchBaseline",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteActivation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDocument",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDocumentPermission",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves all versions of an association for a specific association ID.
  """
  def list_association_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAssociationVersions",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists the associations for the specified Systems Manager document or
  instance.
  """
  def list_associations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAssociations",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Add one or more parameters to the system.
  """
  def put_parameter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutParameter",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists the commands requested by users of the AWS account.
  """
  def list_commands(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListCommands",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Attempts to cancel the command specified by the Command ID. There is no
  guarantee that the command will be terminated and the underlying process
  stopped.
  """
  def cancel_command(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelCommand",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Bulk update custom inventory items on one more instance. The request adds
  an inventory item, if it doesn't already exist, or updates an inventory
  item, if it does exist.
  """
  def put_inventory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutInventory",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists all patch groups that have been registered with patch baselines.
  """
  def describe_patch_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePatchGroups",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Return a list of inventory type names for the account, or return a list of
  attribute names for a specific Inventory item type.
  """
  def get_inventory_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetInventorySchema",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves a Maintenance Window.
  """
  def get_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindow",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the patch baseline that should be used for the specified patch
  group.
  """
  def get_patch_baseline_for_patch_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetPatchBaselineForPatchGroup",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Updates an existing Maintenance Window. Only specified parameters are
  modified.
  """
  def update_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateMaintenanceWindow",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Deletes a patch baseline.
  """
  def delete_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeletePatchBaseline",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListComplianceSummaries",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Describes one or more of your SSM documents.
  """
  def list_documents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDocuments",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Updates the status of the Systems Manager document associated with the
  specified instance.
  """
  def update_association_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateAssociationStatus",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the individual task executions (one per target) for a particular
  task executed as part of a Maintenance Window execution.
  """
  def describe_maintenance_window_execution_task_invocations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowExecutionTaskInvocations",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Delete a list of parameters. This API is used to delete parameters by using
  the Amazon EC2 console.
  """
  def delete_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteParameters",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the Maintenance Windows in an AWS account.
  """
  def describe_maintenance_windows(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindows",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateAssociationBatch",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists the targets registered with the Maintenance Window.
  """
  def describe_maintenance_window_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowTargets",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves details about a specific task executed as part of a Maintenance
  Window execution.
  """
  def get_maintenance_window_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindowExecution",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  A list of inventory items returned by the request.
  """
  def list_inventory_entries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListInventoryEntries",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Describes the associations for the specified Systems Manager document or
  instance.
  """
  def describe_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAssociation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateResourceDataSync",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteAssociation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetParametersByPath",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Sends a signal to an Automation execution to change the current behavior or
  status of the execution.
  """
  def send_automation_signal(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SendAutomationSignal",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateActivation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Creates a Systems Manager document.

  After you create a document, you can use CreateAssociation to associate it
  with one or more running instances.
  """
  def create_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDocument",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists the tasks in a Maintenance Window.
  """
  def describe_maintenance_window_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowTasks",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListComplianceItems",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the current effective patches (the patch and the approval state)
  for the specified patch baseline. Note that this API applies only to
  Windows patch baselines.
  """
  def describe_effective_patches_for_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEffectivePatchesForPatchBaseline",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the high-level patch state of one or more instances.
  """
  def describe_instance_patch_states(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstancePatchStates",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Removes the server or virtual machine from the list of registered servers.
  You can reregister the instance again at any time. If you don't plan to use
  Run Command on the server, we suggest uninstalling the SSM Agent first.
  """
  def deregister_managed_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterManagedInstance",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the high-level patch state for the instances in the specified
  patch group.
  """
  def describe_instance_patch_states_for_patch_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstancePatchStatesForPatchGroup",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Returns high-level aggregated patch compliance state for a patch group.
  """
  def describe_patch_group_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePatchGroupState",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Removes a patch group from a patch baseline.
  """
  def deregister_patch_baseline_for_patch_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterPatchBaselineForPatchGroup",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the details about a specific task executed as part of a
  Maintenance Window execution.
  """
  def get_maintenance_window_execution_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindowExecutionTask",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListResourceDataSync",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Executes commands on one or more managed instances.
  """
  def send_command(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SendCommand",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Modifies an existing patch baseline. Fields not specified in the request
  are left unchanged.
  """
  def update_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdatePatchBaseline",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateAssociation",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Creates a new Maintenance Window.
  """
  def create_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateMaintenanceWindow",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeParameters",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Initiates execution of an Automation document.
  """
  def start_automation_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartAutomationExecution",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Removes a task from a Maintenance Window.
  """
  def deregister_task_from_maintenance_window(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterTaskFromMaintenanceWindow",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyDocumentPermission",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists the executions of a Maintenance Window. This includes information
  about when the Maintenance Window was scheduled to be active, and
  information about tasks registered and run with the Maintenance Window.
  """
  def describe_maintenance_window_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowExecutions",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Registers a patch baseline for a patch group.
  """
  def register_patch_baseline_for_patch_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterPatchBaselineForPatchGroup",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Lists the tasks in a Maintenance Window.
  """
  def get_maintenance_window_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetMaintenanceWindowTask",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Creates a patch baseline.
  """
  def create_patch_baseline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePatchBaseline",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  The status of the associations for the instance(s).
  """
  def describe_instance_associations_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstanceAssociationsStatus",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Get details of a parameter.
  """
  def get_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetParameters",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  Stop an Automation that is currently executing.
  """
  def stop_automation_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopAutomationExecution",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
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
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteResourceDataSync",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
  @doc """
  For a given Maintenance Window execution, lists the tasks that were
  executed.
  """
  def describe_maintenance_window_execution_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ssm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceWindowExecutionTasks",
      
      target_prefix:    "AmazonSSM",
      
      endpoint_prefix:  "ssm",
      type:             :json,
      version:          "2014-11-06",
      method:           :post
    }
  end
  
end