defmodule Baiji.Cloudformation do
  @moduledoc """
  AWS CloudFormation

  AWS CloudFormation allows you to create and manage AWS infrastructure
  deployments predictably and repeatedly. You can use AWS CloudFormation to
  leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon Elastic
  Block Store, Amazon Simple Notification Service, Elastic Load Balancing,
  and Auto Scaling to build highly-reliable, highly scalable, cost-effective
  applications without creating or configuring the underlying AWS
  infrastructure.

  With AWS CloudFormation, you declare all of your resources and dependencies
  in a template file. The template defines a collection of resources as a
  single unit called a stack. AWS CloudFormation creates and deletes all
  member resources of the stack together and manages all dependencies between
  the resources for you.

  For more information about AWS CloudFormation, see the [AWS CloudFormation
  Product Page](http://aws.amazon.com/cloudformation/).

  Amazon CloudFormation makes use of other AWS products. If you need
  additional technical information about a specific AWS product, you can find
  the product's technical documentation at
  [docs.aws.amazon.com](http://docs.aws.amazon.com/).
  """

  @doc """
  Cancels an update on the specified stack. If the call completes
  successfully, the stack rolls back the update and reverts to the previous
  stack configuration.

  <note> You can cancel only stacks that are in the UPDATE_IN_PROGRESS state.

  </note>
  """
  def cancel_update_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CancelUpdateStack",
      method:           :post,
      input_shape:      "CancelUpdateStackInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the description for the specified stack; if no stack name was
  specified, then it returns the description for all the stacks created.

  <note> If the stack does not exist, an `AmazonCloudFormationException` is
  returned.

  </note>
  """
  def describe_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStacks",
      method:           :post,
      input_shape:      "DescribeStacksInput",
      output_shape:     "DescribeStacksOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sends a signal to the specified resource with a success or failure status.
  You can use the SignalResource API in conjunction with a creation policy or
  update policy. AWS CloudFormation doesn't proceed with a stack creation or
  update until resources receive the required number of signals or the
  timeout period is exceeded. The SignalResource API is useful in cases where
  you want to send signals from anywhere other than an Amazon EC2 instance.
  """
  def signal_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SignalResource",
      method:           :post,
      input_shape:      "SignalResourceInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns summary information about the results of a stack set operation.
  """
  def list_stack_set_operation_results(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListStackSetOperationResults",
      method:           :post,
      input_shape:      "ListStackSetOperationResultsInput",
      output_shape:     "ListStackSetOperationResultsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the stack set and *all* associated stack instances.

  Even if the stack set operation created by updating the stack set fails
  (completely or partially, below or above a specified failure tolerance),
  the stack set is updated with your changes. Subsequent
  `CreateStackInstances` calls on the specified stack set use the updated
  stack set.
  """
  def update_stack_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateStackSet",
      method:           :post,
      input_shape:      "UpdateStackSetInput",
      output_shape:     "UpdateStackSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns summary information about stack instances that are associated with
  the specified stack set. You can filter for stack instances that are
  associated with a specific AWS account name or region.
  """
  def list_stack_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListStackInstances",
      method:           :post,
      input_shape:      "ListStackInstancesInput",
      output_shape:     "ListStackInstancesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns summary information about operations performed on a stack set.
  """
  def list_stack_set_operations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListStackSetOperations",
      method:           :post,
      input_shape:      "ListStackSetOperationsInput",
      output_shape:     "ListStackSetOperationsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all stacks that are importing an exported output value. To modify or
  remove an exported output value, first use this action to see which stacks
  are using it. To see the exported output values in your account, see
  `ListExports`.

  For more information about importing an exported output value, see the [
  `Fn::ImportValue`
  ](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
  function.
  """
  def list_imports(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListImports",
      method:           :post,
      input_shape:      "ListImportsInput",
      output_shape:     "ListImportsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a description of the specified resource in the specified stack.

  For deleted stacks, DescribeStackResource returns resource information for
  up to 90 days after the stack has been deleted.
  """
  def describe_stack_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStackResource",
      method:           :post,
      input_shape:      "DescribeStackResourceInput",
      output_shape:     "DescribeStackResourceOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  For a specified stack that is in the `UPDATE_ROLLBACK_FAILED` state,
  continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state.
  Depending on the cause of the failure, you can manually [ fix the
  error](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed)
  and continue the rollback. By continuing the rollback, you can return your
  stack to a working state (the `UPDATE_ROLLBACK_COMPLETE` state), and then
  try to update the stack again.

  A stack goes into the `UPDATE_ROLLBACK_FAILED` state when AWS
  CloudFormation cannot roll back all changes after a failed stack update.
  For example, you might have a stack that is rolling back to an old database
  instance that was deleted outside of AWS CloudFormation. Because AWS
  CloudFormation doesn't know the database was deleted, it assumes that the
  database instance still exists and attempts to roll back to it, causing the
  update rollback to fail.
  """
  def continue_update_rollback(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ContinueUpdateRollback",
      method:           :post,
      input_shape:      "ContinueUpdateRollbackInput",
      output_shape:     "ContinueUpdateRollbackOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the stack policy for a specified stack. If a stack doesn't have a
  policy, a null value is returned.
  """
  def get_stack_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetStackPolicy",
      method:           :post,
      input_shape:      "GetStackPolicyInput",
      output_shape:     "GetStackPolicyOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the description of the specified stack set operation.
  """
  def describe_stack_set_operation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStackSetOperation",
      method:           :post,
      input_shape:      "DescribeStackSetOperationInput",
      output_shape:     "DescribeStackSetOperationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified change set. Deleting change sets ensures that no one
  executes the wrong change set.

  If the call successfully completes, AWS CloudFormation successfully deleted
  the change set.
  """
  def delete_change_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteChangeSet",
      method:           :post,
      input_shape:      "DeleteChangeSetInput",
      output_shape:     "DeleteChangeSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specified stack. Once the call completes successfully, stack
  deletion starts. Deleted stacks do not show up in the `DescribeStacks` API
  if the deletion has been completed successfully.
  """
  def delete_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteStack",
      method:           :post,
      input_shape:      "DeleteStackInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a stack as specified in the template. After the call completes
  successfully, the stack creation starts. You can check the status of the
  stack via the `DescribeStacks` API.
  """
  def create_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateStack",
      method:           :post,
      input_shape:      "CreateStackInput",
      output_shape:     "CreateStackOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the ID and status of each active change set for a stack. For
  example, AWS CloudFormation lists change sets that are in the
  `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
  """
  def list_change_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListChangeSets",
      method:           :post,
      input_shape:      "ListChangeSetsInput",
      output_shape:     "ListChangeSetsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the inputs for the change set and a list of changes that AWS
  CloudFormation will make if you execute the change set. For more
  information, see [Updating Stacks Using Change
  Sets](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html)
  in the AWS CloudFormation User Guide.
  """
  def describe_change_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeChangeSet",
      method:           :post,
      input_shape:      "DescribeChangeSetInput",
      output_shape:     "DescribeChangeSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops an in-progress operation on a stack set and its associated stack
  instances.
  """
  def stop_stack_set_operation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopStackSetOperation",
      method:           :post,
      input_shape:      "StopStackSetOperationInput",
      output_shape:     "StopStackSetOperationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Validates a specified template. AWS CloudFormation first checks if the
  template is valid JSON. If it isn't, AWS CloudFormation checks if the
  template is valid YAML. If both these checks fail, AWS CloudFormation
  returns a template validation error.
  """
  def validate_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ValidateTemplate",
      method:           :post,
      input_shape:      "ValidateTemplateInput",
      output_shape:     "ValidateTemplateOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates stack instances for the specified accounts, within the specified
  regions. A stack instance refers to a stack in a specific account and
  region. `Accounts` and `Regions` are required parameters—you must specify
  at least one account and one region.
  """
  def create_stack_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateStackInstances",
      method:           :post,
      input_shape:      "CreateStackInstancesInput",
      output_shape:     "CreateStackInstancesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns all stack related events for a specified stack in reverse
  chronological order. For more information about a stack's event history, go
  to
  [Stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html)
  in the AWS CloudFormation User Guide.

  <note> You can list events for stacks that have failed to create or have
  been deleted by specifying the unique stack identifier (stack ID).

  </note>
  """
  def describe_stack_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStackEvents",
      method:           :post,
      input_shape:      "DescribeStackEventsInput",
      output_shape:     "DescribeStackEventsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns summary information about stack sets that are associated with the
  user.
  """
  def list_stack_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListStackSets",
      method:           :post,
      input_shape:      "ListStackSetsInput",
      output_shape:     "ListStackSetsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns AWS resource descriptions for running and deleted stacks. If
  `StackName` is specified, all the associated resources that are part of the
  stack are returned. If `PhysicalResourceId` is specified, the associated
  resources of the stack that the resource belongs to are returned.

  <note> Only the first 100 resources will be returned. If your stack has
  more resources than this, you should use `ListStackResources` instead.

  </note> For deleted stacks, `DescribeStackResources` returns resource
  information for up to 90 days after the stack has been deleted.

  You must specify either `StackName` or `PhysicalResourceId`, but not both.
  In addition, you can specify `LogicalResourceId` to filter the returned
  result. For more information about resources, the `LogicalResourceId` and
  `PhysicalResourceId`, go to the [AWS CloudFormation User
  Guide](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).

  <note> A `ValidationError` is returned if you specify both `StackName` and
  `PhysicalResourceId` in the same request.

  </note>
  """
  def describe_stack_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStackResources",
      method:           :post,
      input_shape:      "DescribeStackResourcesInput",
      output_shape:     "DescribeStackResourcesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the estimated monthly cost of a template. The return value is an
  AWS Simple Monthly Calculator URL with a query string that describes the
  resources required to run the template.
  """
  def estimate_template_cost(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "EstimateTemplateCost",
      method:           :post,
      input_shape:      "EstimateTemplateCostInput",
      output_shape:     "EstimateTemplateCostOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the template body for a specified stack. You can get the template
  for running or deleted stacks.

  For deleted stacks, GetTemplate returns the template for up to 90 days
  after the stack has been deleted.

  <note> If the template does not exist, a `ValidationError` is returned.

  </note>
  """
  def get_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTemplate",
      method:           :post,
      input_shape:      "GetTemplateInput",
      output_shape:     "GetTemplateOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a stack set.
  """
  def create_stack_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateStackSet",
      method:           :post,
      input_shape:      "CreateStackSetInput",
      output_shape:     "CreateStackSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the stack instance that's associated with the specified stack set,
  AWS account, and region.

  For a list of stack instances that are associated with a specific stack
  set, use `ListStackInstances`.
  """
  def describe_stack_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStackInstance",
      method:           :post,
      input_shape:      "DescribeStackInstanceInput",
      output_shape:     "DescribeStackInstanceOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets a stack policy for a specified stack.
  """
  def set_stack_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetStackPolicy",
      method:           :post,
      input_shape:      "SetStackPolicyInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the summary information for stacks whose status matches the
  specified StackStatusFilter. Summary information for stacks that have been
  deleted is kept for 90 days after the stack is deleted. If no
  StackStatusFilter is specified, summary information for all stacks is
  returned (including existing stacks and stacks that have been deleted).
  """
  def list_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListStacks",
      method:           :post,
      input_shape:      "ListStacksInput",
      output_shape:     "ListStacksOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the description of the specified stack set.
  """
  def describe_stack_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStackSet",
      method:           :post,
      input_shape:      "DescribeStackSetInput",
      output_shape:     "DescribeStackSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a stack as specified in the template. After the call completes
  successfully, the stack update starts. You can check the status of the
  stack via the `DescribeStacks` action.

  To get a copy of the template for an existing stack, you can use the
  `GetTemplate` action.

  For more information about creating an update template, updating a stack,
  and monitoring the progress of the update, see [Updating a
  Stack](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).
  """
  def update_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateStack",
      method:           :post,
      input_shape:      "UpdateStackInput",
      output_shape:     "UpdateStackOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all exported output values in the account and region in which you
  call this action. Use this action to see the exported output values that
  you can import into other stacks. To import values, use the [
  `Fn::ImportValue`
  ](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
  function.

  For more information, see [ AWS CloudFormation Export Stack Output
  Values](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).
  """
  def list_exports(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListExports",
      method:           :post,
      input_shape:      "ListExportsInput",
      output_shape:     "ListExportsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes stack instances for the specified accounts, in the specified
  regions.
  """
  def delete_stack_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteStackInstances",
      method:           :post,
      input_shape:      "DeleteStackInstancesInput",
      output_shape:     "DeleteStackInstancesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a stack using the input information that was provided when the
  specified change set was created. After the call successfully completes,
  AWS CloudFormation starts updating the stack. Use the `DescribeStacks`
  action to view the status of the update.

  When you execute a change set, AWS CloudFormation deletes all other change
  sets associated with the stack because they aren't valid for the updated
  stack.

  If a stack policy is associated with the stack, AWS CloudFormation enforces
  the policy during the update. You can't specify a temporary stack policy
  that overrides the current policy.
  """
  def execute_change_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ExecuteChangeSet",
      method:           :post,
      input_shape:      "ExecuteChangeSetInput",
      output_shape:     "ExecuteChangeSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns descriptions of all resources of the specified stack.

  For deleted stacks, ListStackResources returns resource information for up
  to 90 days after the stack has been deleted.
  """
  def list_stack_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListStackResources",
      method:           :post,
      input_shape:      "ListStackResourcesInput",
      output_shape:     "ListStackResourcesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a stack set. Before you can delete a stack set, all of its member
  stack instances must be deleted. For more information about how to do this,
  see `DeleteStackInstances`.
  """
  def delete_stack_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteStackSet",
      method:           :post,
      input_shape:      "DeleteStackSetInput",
      output_shape:     "DeleteStackSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a new or existing template. The
  `GetTemplateSummary` action is useful for viewing parameter information,
  such as default parameter values and parameter types, before you create or
  update a stack or stack set.

  You can use the `GetTemplateSummary` action when you submit a template, or
  you can get template information for a stack set, or a running or deleted
  stack.

  For deleted stacks, `GetTemplateSummary` returns the template information
  for up to 90 days after the stack has been deleted. If the template does
  not exist, a `ValidationError` is returned.
  """
  def get_template_summary(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTemplateSummary",
      method:           :post,
      input_shape:      "GetTemplateSummaryInput",
      output_shape:     "GetTemplateSummaryOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves your account's AWS CloudFormation limits, such as the maximum
  number of stacks that you can create in your account.
  """
  def describe_account_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAccountLimits",
      method:           :post,
      input_shape:      "DescribeAccountLimitsInput",
      output_shape:     "DescribeAccountLimitsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a list of changes that will be applied to a stack so that you can
  review the changes before executing them. You can create a change set for a
  stack that doesn't exist or an existing stack. If you create a change set
  for a stack that doesn't exist, the change set shows all of the resources
  that AWS CloudFormation will create. If you create a change set for an
  existing stack, AWS CloudFormation compares the stack's information with
  the information that you submit in the change set and lists the
  differences. Use change sets to understand which resources AWS
  CloudFormation will create or change, and how it will change resources in
  an existing stack, before you create or update a stack.

  To create a change set for a stack that doesn't exist, for the
  `ChangeSetType` parameter, specify `CREATE`. To create a change set for an
  existing stack, specify `UPDATE` for the `ChangeSetType` parameter. After
  the `CreateChangeSet` call successfully completes, AWS CloudFormation
  starts creating the change set. To check the status of the change set or to
  review it, use the `DescribeChangeSet` action.

  When you are satisfied with the changes the change set will make, execute
  the change set by using the `ExecuteChangeSet` action. AWS CloudFormation
  doesn't make changes until you execute the change set.
  """
  def create_change_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateChangeSet",
      method:           :post,
      input_shape:      "CreateChangeSetInput",
      output_shape:     "CreateChangeSetOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "cloudformation",
      target_prefix:    nil,
      endpoint_prefix:  "cloudformation",
      type:             :xml,
      version:          "2010-05-15",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"Capabilities" => %{"member" => %{"shape" => "Capability"}, "type" => "list"}, "Url" => %{"type" => "string"}, "AllowedValue" => %{"type" => "string"}, "RegionList" => %{"member" => %{"shape" => "Region"}, "type" => "list"}, "StackName" => %{"type" => "string"}, "CreateStackInput" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "ClientRequestToken" => %{"shape" => "ClientRequestToken"}, "DisableRollback" => %{"shape" => "DisableRollback"}, "NotificationARNs" => %{"shape" => "NotificationARNs"}, "OnFailure" => %{"shape" => "OnFailure"}, "Parameters" => %{"shape" => "Parameters"}, "ResourceTypes" => %{"shape" => "ResourceTypes"}, "RoleARN" => %{"shape" => "RoleARN"}, "RollbackConfiguration" => %{"shape" => "RollbackConfiguration"}, "StackName" => %{"shape" => "StackName"}, "StackPolicyBody" => %{"shape" => "StackPolicyBody"}, "StackPolicyURL" => %{"shape" => "StackPolicyURL"}, "Tags" => %{"shape" => "Tags"}, "TemplateBody" => %{"shape" => "TemplateBody"}, "TemplateURL" => %{"shape" => "TemplateURL"}, "TimeoutInMinutes" => %{"shape" => "TimeoutMinutes"}}, "required" => ["StackName"], "type" => "structure"}, "StackEvent" => %{"members" => %{"ClientRequestToken" => %{"shape" => "ClientRequestToken"}, "EventId" => %{"shape" => "EventId"}, "LogicalResourceId" => %{"shape" => "LogicalResourceId"}, "PhysicalResourceId" => %{"shape" => "PhysicalResourceId"}, "ResourceProperties" => %{"shape" => "ResourceProperties"}, "ResourceStatus" => %{"shape" => "ResourceStatus"}, "ResourceStatusReason" => %{"shape" => "ResourceStatusReason"}, "ResourceType" => %{"shape" => "ResourceType"}, "StackId" => %{"shape" => "StackId"}, "StackName" => %{"shape" => "StackName"}, "Timestamp" => %{"shape" => "Timestamp"}}, "required" => ["StackId", "EventId", "StackName", "Timestamp"], "type" => "structure"}, "ChangeAction" => %{"enum" => ["Add", "Modify", "Remove"], "type" => "string"}, "ParameterConstraints" => %{"members" => %{"AllowedValues" => %{"shape" => "AllowedValues"}}, "type" => "structure"}, "ExecutionStatus" => %{"enum" => ["UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"], "type" => "string"}, "ResourceType" => %{"max" => 256, "min" => 1, "type" => "string"}, "ResourceSignalUniqueId" => %{"max" => 64, "min" => 1, "type" => "string"}, "Imports" => %{"member" => %{"shape" => "StackName"}, "type" => "list"}, "Parameter" => %{"members" => %{"ParameterKey" => %{"shape" => "ParameterKey"}, "ParameterValue" => %{"shape" => "ParameterValue"}, "UsePreviousValue" => %{"shape" => "UsePreviousValue"}}, "type" => "structure"}, "ResourceTypes" => %{"member" => %{"shape" => "ResourceType"}, "type" => "list"}, "ListStackSetsInput" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "Status" => %{"shape" => "StackSetStatus"}}, "type" => "structure"}, "ChangeSetNotFoundException" => %{"error" => %{"code" => "ChangeSetNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ListStackResourcesOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "StackResourceSummaries" => %{"shape" => "StackResourceSummaries"}}, "type" => "structure"}, "ParameterType" => %{"type" => "string"}, "CausingEntity" => %{"type" => "string"}, "ListStackSetOperationsOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Summaries" => %{"shape" => "StackSetOperationSummaries"}}, "type" => "structure"}, "AllowedValues" => %{"member" => %{"shape" => "AllowedValue"}, "type" => "list"}, "CreateStackInstancesOutput" => %{"members" => %{"OperationId" => %{"shape" => "ClientRequestToken"}}, "type" => "structure"}, "StackSetNotFoundException" => %{"error" => %{"code" => "StackSetNotFoundException", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreationTime" => %{"type" => "timestamp"}, "Type" => %{"type" => "string"}, "LimitValue" => %{"type" => "integer"}, "StackEvents" => %{"member" => %{"shape" => "StackEvent"}, "type" => "list"}, "RollbackConfiguration" => %{"members" => %{"MonitoringTimeInMinutes" => %{"shape" => "MonitoringTimeInMinutes"}, "RollbackTriggers" => %{"shape" => "RollbackTriggers"}}, "type" => "structure"}, "DescribeStackSetOutput" => %{"members" => %{"StackSet" => %{"shape" => "StackSet"}}, "type" => "structure"}, "RetainStacksNullable" => %{"type" => "boolean"}, "ListStackInstancesOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Summaries" => %{"shape" => "StackInstanceSummaries"}}, "type" => "structure"}, "ContinueUpdateRollbackOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeStackResourcesOutput" => %{"members" => %{"StackResources" => %{"shape" => "StackResources"}}, "type" => "structure"}, "DeleteStackSetOutput" => %{"members" => %{}, "type" => "structure"}, "PropertyName" => %{"type" => "string"}, "Scope" => %{"member" => %{"shape" => "ResourceAttribute"}, "type" => "list"}, "DeleteChangeSetInput" => %{"members" => %{"ChangeSetName" => %{"shape" => "ChangeSetNameOrId"}, "StackName" => %{"shape" => "StackNameOrId"}}, "required" => ["ChangeSetName"], "type" => "structure"}, "ExportName" => %{"type" => "string"}, "OnFailure" => %{"enum" => ["DO_NOTHING", "ROLLBACK", "DELETE"], "type" => "string"}, "Changes" => %{"member" => %{"shape" => "Change"}, "type" => "list"}, "Export" => %{"members" => %{"ExportingStackId" => %{"shape" => "StackId"}, "Name" => %{"shape" => "ExportName"}, "Value" => %{"shape" => "ExportValue"}}, "type" => "structure"}, "ChangeSetType" => %{"enum" => ["CREATE", "UPDATE"], "type" => "string"}, "DescribeStackEventsOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "StackEvents" => %{"shape" => "StackEvents"}}, "type" => "structure"}, "InvalidChangeSetStatusException" => %{"error" => %{"code" => "InvalidChangeSetStatus", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Metadata" => %{"type" => "string"}, "StackSetNotEmptyException" => %{"error" => %{"code" => "StackSetNotEmptyException", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ChangeSetStatus" => %{"enum" => ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_COMPLETE", "FAILED"], "type" => "string"}, "StackStatusFilter" => %{"member" => %{"shape" => "StackStatus"}, "type" => "list"}, "EstimateTemplateCostInput" => %{"members" => %{"Parameters" => %{"shape" => "Parameters"}, "TemplateBody" => %{"shape" => "TemplateBody"}, "TemplateURL" => %{"shape" => "TemplateURL"}}, "type" => "structure"}, "StackSetOperationResultStatus" => %{"enum" => ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"], "type" => "string"}, "AccountGateStatusReason" => %{"type" => "string"}, "AccountList" => %{"member" => %{"shape" => "Account"}, "type" => "list"}, "NotificationARN" => %{"type" => "string"}, "RequiresRecreation" => %{"enum" => ["Never", "Conditionally", "Always"], "type" => "string"}, "StageList" => %{"member" => %{"shape" => "TemplateStage"}, "type" => "list"}, "ClientToken" => %{"max" => 128, "min" => 1, "type" => "string"}, "StackStatusReason" => %{"type" => "string"}, "TimeoutMinutes" => %{"min" => 1, "type" => "integer"}, "DeleteStackInstancesOutput" => %{"members" => %{"OperationId" => %{"shape" => "ClientRequestToken"}}, "type" => "structure"}, "StackSetOperationPreferences" => %{"members" => %{"FailureToleranceCount" => %{"shape" => "FailureToleranceCount"}, "FailureTolerancePercentage" => %{"shape" => "FailureTolerancePercentage"}, "MaxConcurrentCount" => %{"shape" => "MaxConcurrentCount"}, "MaxConcurrentPercentage" => %{"shape" => "MaxConcurrentPercentage"}, "RegionOrder" => %{"shape" => "RegionList"}}, "type" => "structure"}, "StackInstanceSummaries" => %{"member" => %{"shape" => "StackInstanceSummary"}, "type" => "list"}, "DeleteStackInput" => %{"members" => %{"ClientRequestToken" => %{"shape" => "ClientRequestToken"}, "RetainResources" => %{"shape" => "RetainResources"}, "RoleARN" => %{"shape" => "RoleARN"}, "StackName" => %{"shape" => "StackName"}}, "required" => ["StackName"], "type" => "structure"}, "StaleRequestException" => %{"error" => %{"code" => "StaleRequestException", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ListImportsOutput" => %{"members" => %{"Imports" => %{"shape" => "Imports"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "Account" => %{"pattern" => "[0-9]{12}", "type" => "string"}, "EventId" => %{"type" => "string"}, "ContinueUpdateRollbackInput" => %{"members" => %{"ClientRequestToken" => %{"shape" => "ClientRequestToken"}, "ResourcesToSkip" => %{"shape" => "ResourcesToSkip"}, "RoleARN" => %{"shape" => "RoleARN"}, "StackName" => %{"shape" => "StackNameOrId"}}, "required" => ["StackName"], "type" => "structure"}, "Reason" => %{"type" => "string"}, "TransformsList" => %{"member" => %{"shape" => "TransformName"}, "type" => "list"}, "CreateChangeSetInput" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "ChangeSetName" => %{"shape" => "ChangeSetName"}, "ChangeSetType" => %{"shape" => "ChangeSetType"}, "ClientToken" => %{"shape" => "ClientToken"}, "Description" => %{"shape" => "Description"}, "NotificationARNs" => %{"shape" => "NotificationARNs"}, "Parameters" => %{"shape" => "Parameters"}, "ResourceTypes" => %{"shape" => "ResourceTypes"}, "RoleARN" => %{"shape" => "RoleARN"}, "RollbackConfiguration" => %{"shape" => "RollbackConfiguration"}, "StackName" => %{"shape" => "StackNameOrId"}, "Tags" => %{"shape" => "Tags"}, "TemplateBody" => %{"shape" => "TemplateBody"}, "TemplateURL" => %{"shape" => "TemplateURL"}, "UsePreviousTemplate" => %{"shape" => "UsePreviousTemplate"}}, "required" => ["StackName", "ChangeSetName"], "type" => "structure"}, "Stack" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "ChangeSetId" => %{"shape" => "ChangeSetId"}, "CreationTime" => %{"shape" => "CreationTime"}, "Description" => %{"shape" => "Description"}, "DisableRollback" => %{"shape" => "DisableRollback"}, "LastUpdatedTime" => %{"shape" => "LastUpdatedTime"}, "NotificationARNs" => %{"shape" => "NotificationARNs"}, "Outputs" => %{"shape" => "Outputs"}, "Parameters" => %{"shape" => "Parameters"}, "RoleARN" => %{"shape" => "RoleARN"}, "RollbackConfiguration" => %{"shape" => "RollbackConfiguration"}, "StackId" => %{"shape" => "StackId"}, "StackName" => %{"shape" => "StackName"}, "StackStatus" => %{"shape" => "StackStatus"}, "StackStatusReason" => %{"shape" => "StackStatusReason"}, "Tags" => %{"shape" => "Tags"}, "TimeoutInMinutes" => %{"shape" => "TimeoutMinutes"}}, "required" => ["StackName", "CreationTime", "StackStatus"], "type" => "structure"}, "ExecuteChangeSetInput" => %{"members" => %{"ChangeSetName" => %{"shape" => "ChangeSetNameOrId"}, "ClientRequestToken" => %{"shape" => "ClientRequestToken"}, "StackName" => %{"shape" => "StackNameOrId"}}, "required" => ["ChangeSetName"], "type" => "structure"}, "RoleARN" => %{"max" => 2048, "min" => 20, "type" => "string"}, "Region" => %{"type" => "string"}, "AlreadyExistsException" => %{"error" => %{"code" => "AlreadyExistsException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ParameterValue" => %{"type" => "string"}, "ListStackSetOperationsInput" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName"], "type" => "structure"}, "StackId" => %{"type" => "string"}, "GetTemplateSummaryInput" => %{"members" => %{"StackName" => %{"shape" => "StackNameOrId"}, "StackSetName" => %{"shape" => "StackSetNameOrId"}, "TemplateBody" => %{"shape" => "TemplateBody"}, "TemplateURL" => %{"shape" => "TemplateURL"}}, "type" => "structure"}, "ChangeSource" => %{"enum" => ["ResourceReference", "ParameterReference", "ResourceAttribute", "DirectModification", "Automatic"], "type" => "string"}, "ListExportsInput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "Description" => %{"max" => 1024, "min" => 1, "type" => "string"}, "CreateChangeSetOutput" => %{"members" => %{"Id" => %{"shape" => "ChangeSetId"}, "StackId" => %{"shape" => "StackId"}}, "type" => "structure"}, "Version" => %{"type" => "string"}, "ResourceProperties" => %{"type" => "string"}, "AccountLimitList" => %{"member" => %{"shape" => "AccountLimit"}, "type" => "list"}, "TemplateParameters" => %{"member" => %{"shape" => "TemplateParameter"}, "type" => "list"}, "RollbackTrigger" => %{"members" => %{"Arn" => %{"shape" => "Arn"}, "Type" => %{"shape" => "Type"}}, "required" => ["Arn", "Type"], "type" => "structure"}, "UsePreviousTemplate" => %{"type" => "boolean"}, "CreatedButModifiedException" => %{"error" => %{"code" => "CreatedButModifiedException", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ResourceChangeDetail" => %{"members" => %{"CausingEntity" => %{"shape" => "CausingEntity"}, "ChangeSource" => %{"shape" => "ChangeSource"}, "Evaluation" => %{"shape" => "EvaluationType"}, "Target" => %{"shape" => "ResourceTargetDefinition"}}, "type" => "structure"}, "StackResourceDetail" => %{"members" => %{"Description" => %{"shape" => "Description"}, "LastUpdatedTimestamp" => %{"shape" => "Timestamp"}, "LogicalResourceId" => %{"shape" => "LogicalResourceId"}, "Metadata" => %{"shape" => "Metadata"}, "PhysicalResourceId" => %{"shape" => "PhysicalResourceId"}, "ResourceStatus" => %{"shape" => "ResourceStatus"}, "ResourceStatusReason" => %{"shape" => "ResourceStatusReason"}, "ResourceType" => %{"shape" => "ResourceType"}, "StackId" => %{"shape" => "StackId"}, "StackName" => %{"shape" => "StackName"}}, "required" => ["LogicalResourceId", "ResourceType", "LastUpdatedTimestamp", "ResourceStatus"], "type" => "structure"}, "ValidateTemplateOutput" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "CapabilitiesReason" => %{"shape" => "CapabilitiesReason"}, "DeclaredTransforms" => %{"shape" => "TransformsList"}, "Description" => %{"shape" => "Description"}, "Parameters" => %{"shape" => "TemplateParameters"}}, "type" => "structure"}, "StackSetOperationResultSummary" => %{"members" => %{"Account" => %{"shape" => "Account"}, "AccountGateResult" => %{"shape" => "AccountGateResult"}, "Region" => %{"shape" => "Region"}, "Status" => %{"shape" => "StackSetOperationResultStatus"}, "StatusReason" => %{"shape" => "Reason"}}, "type" => "structure"}, "AccountLimit" => %{"members" => %{"Name" => %{"shape" => "LimitName"}, "Value" => %{"shape" => "LimitValue"}}, "type" => "structure"}, "Tags" => %{"max" => 50, "member" => %{"shape" => "Tag"}, "type" => "list"}, "StackSetSummaries" => %{"member" => %{"shape" => "StackSetSummary"}, "type" => "list"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "StackSetId" => %{"type" => "string"}, "UpdateStackSetOutput" => %{"members" => %{"OperationId" => %{"shape" => "ClientRequestToken"}}, "type" => "structure"}, "StackSetOperationResultSummaries" => %{"member" => %{"shape" => "StackSetOperationResultSummary"}, "type" => "list"}, "DescribeChangeSetInput" => %{"members" => %{"ChangeSetName" => %{"shape" => "ChangeSetNameOrId"}, "NextToken" => %{"shape" => "NextToken"}, "StackName" => %{"shape" => "StackNameOrId"}}, "required" => ["ChangeSetName"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "ListStackSetsOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Summaries" => %{"shape" => "StackSetSummaries"}}, "type" => "structure"}, "CreateStackOutput" => %{"members" => %{"StackId" => %{"shape" => "StackId"}}, "type" => "structure"}, "ExecuteChangeSetOutput" => %{"members" => %{}, "type" => "structure"}, "StackPolicyBody" => %{"max" => 16384, "min" => 1, "type" => "string"}, "GetTemplateSummaryOutput" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "CapabilitiesReason" => %{"shape" => "CapabilitiesReason"}, "DeclaredTransforms" => %{"shape" => "TransformsList"}, "Description" => %{"shape" => "Description"}, "Metadata" => %{"shape" => "Metadata"}, "Parameters" => %{"shape" => "ParameterDeclarations"}, "ResourceTypes" => %{"shape" => "ResourceTypes"}, "Version" => %{"shape" => "Version"}}, "type" => "structure"}, "StackResource" => %{"members" => %{"Description" => %{"shape" => "Description"}, "LogicalResourceId" => %{"shape" => "LogicalResourceId"}, "PhysicalResourceId" => %{"shape" => "PhysicalResourceId"}, "ResourceStatus" => %{"shape" => "ResourceStatus"}, "ResourceStatusReason" => %{"shape" => "ResourceStatusReason"}, "ResourceType" => %{"shape" => "ResourceType"}, "StackId" => %{"shape" => "StackId"}, "StackName" => %{"shape" => "StackName"}, "Timestamp" => %{"shape" => "Timestamp"}}, "required" => ["LogicalResourceId", "ResourceType", "Timestamp", "ResourceStatus"], "type" => "structure"}, "MaxResults" => %{"max" => 100, "min" => 1, "type" => "integer"}, "TagValue" => %{"max" => 256, "min" => 1, "type" => "string"}, "TemplateBody" => %{"min" => 1, "type" => "string"}, "MaxConcurrentCount" => %{"min" => 1, "type" => "integer"}, "DescribeStackResourceOutput" => %{"members" => %{"StackResourceDetail" => %{"shape" => "StackResourceDetail"}}, "type" => "structure"}, "StopStackSetOperationInput" => %{"members" => %{"OperationId" => %{"shape" => "ClientRequestToken"}, "StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName", "OperationId"], "type" => "structure"}, "StackSetOperationSummary" => %{"members" => %{"Action" => %{"shape" => "StackSetOperationAction"}, "CreationTimestamp" => %{"shape" => "Timestamp"}, "EndTimestamp" => %{"shape" => "Timestamp"}, "OperationId" => %{"shape" => "ClientRequestToken"}, "Status" => %{"shape" => "StackSetOperationStatus"}}, "type" => "structure"}, "StackSetName" => %{"type" => "string"}, "ListExportsOutput" => %{"members" => %{"Exports" => %{"shape" => "Exports"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "Arn" => %{"type" => "string"}, "StackSetOperation" => %{"members" => %{"Action" => %{"shape" => "StackSetOperationAction"}, "CreationTimestamp" => %{"shape" => "Timestamp"}, "EndTimestamp" => %{"shape" => "Timestamp"}, "OperationId" => %{"shape" => "ClientRequestToken"}, "OperationPreferences" => %{"shape" => "StackSetOperationPreferences"}, "RetainStacks" => %{"shape" => "RetainStacksNullable"}, "StackSetId" => %{"shape" => "StackSetId"}, "Status" => %{"shape" => "StackSetOperationStatus"}}, "type" => "structure"}, "ChangeSetId" => %{"min" => 1, "pattern" => "arn:[-a-zA-Z0-9:/]*", "type" => "string"}, "ListStackInstancesInput" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "StackInstanceAccount" => %{"shape" => "Account"}, "StackInstanceRegion" => %{"shape" => "Region"}, "StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName"], "type" => "structure"}, "StackSetStatus" => %{"enum" => ["ACTIVE", "DELETED"], "type" => "string"}, "ListChangeSetsInput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "StackName" => %{"shape" => "StackNameOrId"}}, "required" => ["StackName"], "type" => "structure"}, "ParameterKey" => %{"type" => "string"}, "DisableRollback" => %{"type" => "boolean"}, "InsufficientCapabilitiesException" => %{"error" => %{"code" => "InsufficientCapabilitiesException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "TemplateParameter" => %{"members" => %{"DefaultValue" => %{"shape" => "ParameterValue"}, "Description" => %{"shape" => "Description"}, "NoEcho" => %{"shape" => "NoEcho"}, "ParameterKey" => %{"shape" => "ParameterKey"}}, "type" => "structure"}, "DescribeAccountLimitsOutput" => %{"members" => %{"AccountLimits" => %{"shape" => "AccountLimitList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "StackInstance" => %{"members" => %{"Account" => %{"shape" => "Account"}, "Region" => %{"shape" => "Region"}, "StackId" => %{"shape" => "StackId"}, "StackSetId" => %{"shape" => "StackSetId"}, "Status" => %{"shape" => "StackInstanceStatus"}, "StatusReason" => %{"shape" => "Reason"}}, "type" => "structure"}, "ResourceStatus" => %{"enum" => ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE"], "type" => "string"}, "UpdateStackSetInput" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "Description" => %{"shape" => "Description"}, "OperationId" => %{"idempotencyToken" => true, "shape" => "ClientRequestToken"}, "OperationPreferences" => %{"shape" => "StackSetOperationPreferences"}, "Parameters" => %{"shape" => "Parameters"}, "StackSetName" => %{"shape" => "StackSetName"}, "Tags" => %{"shape" => "Tags"}, "TemplateBody" => %{"shape" => "TemplateBody"}, "TemplateURL" => %{"shape" => "TemplateURL"}, "UsePreviousTemplate" => %{"shape" => "UsePreviousTemplate"}}, "required" => ["StackSetName"], "type" => "structure"}, "TokenAlreadyExistsException" => %{"error" => %{"code" => "TokenAlreadyExistsException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ChangeSetName" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z][-a-zA-Z0-9]*", "type" => "string"}, "MaxConcurrentPercentage" => %{"max" => 100, "min" => 1, "type" => "integer"}, "LimitExceededException" => %{"error" => %{"code" => "LimitExceededException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AccountGateStatus" => %{"enum" => ["SUCCEEDED", "FAILED", "SKIPPED"], "type" => "string"}, "DescribeStackInstanceInput" => %{"members" => %{"StackInstanceAccount" => %{"shape" => "Account"}, "StackInstanceRegion" => %{"shape" => "Region"}, "StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName", "StackInstanceAccount", "StackInstanceRegion"], "type" => "structure"}, "Change" => %{"members" => %{"ResourceChange" => %{"shape" => "ResourceChange"}, "Type" => %{"shape" => "ChangeType"}}, "type" => "structure"}, "EvaluationType" => %{"enum" => ["Static", "Dynamic"], "type" => "string"}, "SetStackPolicyInput" => %{"members" => %{"StackName" => %{"shape" => "StackName"}, "StackPolicyBody" => %{"shape" => "StackPolicyBody"}, "StackPolicyURL" => %{"shape" => "StackPolicyURL"}}, "required" => ["StackName"], "type" => "structure"}, "DescribeAccountLimitsInput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "StackPolicyURL" => %{"max" => 1350, "min" => 1, "type" => "string"}, "CancelUpdateStackInput" => %{"members" => %{"ClientRequestToken" => %{"shape" => "ClientRequestToken"}, "StackName" => %{"shape" => "StackName"}}, "required" => ["StackName"], "type" => "structure"}, "ResourceStatusReason" => %{"type" => "string"}, "FailureToleranceCount" => %{"min" => 0, "type" => "integer"}, "StackInstanceStatus" => %{"enum" => ["CURRENT", "OUTDATED", "INOPERABLE"], "type" => "string"}, "CreateStackSetInput" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "ClientRequestToken" => %{"idempotencyToken" => true, "shape" => "ClientRequestToken"}, "Description" => %{"shape" => "Description"}, "Parameters" => %{"shape" => "Parameters"}, "StackSetName" => %{"shape" => "StackSetName"}, "Tags" => %{"shape" => "Tags"}, "TemplateBody" => %{"shape" => "TemplateBody"}, "TemplateURL" => %{"shape" => "TemplateURL"}}, "required" => ["StackSetName"], "type" => "structure"}, "RollbackTriggers" => %{"max" => 5, "member" => %{"shape" => "RollbackTrigger"}, "type" => "list"}, "LimitName" => %{"type" => "string"}, "ListStackSetOperationResultsOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Summaries" => %{"shape" => "StackSetOperationResultSummaries"}}, "type" => "structure"}, "StackNameOrId" => %{"min" => 1, "pattern" => "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)", "type" => "string"}, "DescribeStackSetOperationOutput" => %{"members" => %{"StackSetOperation" => %{"shape" => "StackSetOperation"}}, "type" => "structure"}, "OutputKey" => %{"type" => "string"}, "StackSetSummary" => %{"members" => %{"Description" => %{"shape" => "Description"}, "StackSetId" => %{"shape" => "StackSetId"}, "StackSetName" => %{"shape" => "StackSetName"}, "Status" => %{"shape" => "StackSetStatus"}}, "type" => "structure"}, "ListStacksInput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "StackStatusFilter" => %{"shape" => "StackStatusFilter"}}, "type" => "structure"}, "StopStackSetOperationOutput" => %{"members" => %{}, "type" => "structure"}, "ResourceToSkip" => %{"pattern" => "[a-zA-Z0-9]+|[a-zA-Z][-a-zA-Z0-9]*\\.[a-zA-Z0-9]+", "type" => "string"}, "DeleteStackSetInput" => %{"members" => %{"StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName"], "type" => "structure"}, "ListStacksOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "StackSummaries" => %{"shape" => "StackSummaries"}}, "type" => "structure"}, "GetTemplateOutput" => %{"members" => %{"StagesAvailable" => %{"shape" => "StageList"}, "TemplateBody" => %{"shape" => "TemplateBody"}}, "type" => "structure"}, "TemplateDescription" => %{"type" => "string"}, "Capability" => %{"enum" => ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"], "type" => "string"}, "ResourcesToSkip" => %{"member" => %{"shape" => "ResourceToSkip"}, "type" => "list"}, "DescribeStackResourceInput" => %{"members" => %{"LogicalResourceId" => %{"shape" => "LogicalResourceId"}, "StackName" => %{"shape" => "StackName"}}, "required" => ["StackName", "LogicalResourceId"], "type" => "structure"}, "Exports" => %{"member" => %{"shape" => "Export"}, "type" => "list"}, "Outputs" => %{"member" => %{"shape" => "Output"}, "type" => "list"}, "DescribeStackResourcesInput" => %{"members" => %{"LogicalResourceId" => %{"shape" => "LogicalResourceId"}, "PhysicalResourceId" => %{"shape" => "PhysicalResourceId"}, "StackName" => %{"shape" => "StackName"}}, "type" => "structure"}, "ListStackSetOperationResultsInput" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "OperationId" => %{"shape" => "ClientRequestToken"}, "StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName", "OperationId"], "type" => "structure"}, "MonitoringTimeInMinutes" => %{"max" => 180, "min" => 0, "type" => "integer"}, "AccountGateResult" => %{"members" => %{"Status" => %{"shape" => "AccountGateStatus"}, "StatusReason" => %{"shape" => "AccountGateStatusReason"}}, "type" => "structure"}, "ResourceChangeDetails" => %{"member" => %{"shape" => "ResourceChangeDetail"}, "type" => "list"}, "DeleteStackInstancesInput" => %{"members" => %{"Accounts" => %{"shape" => "AccountList"}, "OperationId" => %{"idempotencyToken" => true, "shape" => "ClientRequestToken"}, "OperationPreferences" => %{"shape" => "StackSetOperationPreferences"}, "Regions" => %{"shape" => "RegionList"}, "RetainStacks" => %{"shape" => "RetainStacks"}, "StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName", "Accounts", "Regions", "RetainStacks"], "type" => "structure"}, "TemplateURL" => %{"max" => 1024, "min" => 1, "type" => "string"}, "ChangeSetSummary" => %{"members" => %{"ChangeSetId" => %{"shape" => "ChangeSetId"}, "ChangeSetName" => %{"shape" => "ChangeSetName"}, "CreationTime" => %{"shape" => "CreationTime"}, "Description" => %{"shape" => "Description"}, "ExecutionStatus" => %{"shape" => "ExecutionStatus"}, "StackId" => %{"shape" => "StackId"}, "StackName" => %{"shape" => "StackName"}, "Status" => %{"shape" => "ChangeSetStatus"}, "StatusReason" => %{"shape" => "ChangeSetStatusReason"}}, "type" => "structure"}, "LastUpdatedTime" => %{"type" => "timestamp"}, "DeletionTime" => %{"type" => "timestamp"}, "OperationIdAlreadyExistsException" => %{"error" => %{"code" => "OperationIdAlreadyExistsException", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "StackSet" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "Description" => %{"shape" => "Description"}, "Parameters" => %{"shape" => "Parameters"}, "StackSetId" => %{"shape" => "StackSetId"}, "StackSetName" => %{"shape" => "StackSetName"}, "Status" => %{"shape" => "StackSetStatus"}, "Tags" => %{"shape" => "Tags"}, "TemplateBody" => %{"shape" => "TemplateBody"}}, "type" => "structure"}, "StackResourceSummaries" => %{"member" => %{"shape" => "StackResourceSummary"}, "type" => "list"}, "ChangeSetNameOrId" => %{"max" => 1600, "min" => 1, "pattern" => "[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*", "type" => "string"}, "StackInstanceSummary" => %{"members" => %{"Account" => %{"shape" => "Account"}, "Region" => %{"shape" => "Region"}, "StackId" => %{"shape" => "StackId"}, "StackSetId" => %{"shape" => "StackSetId"}, "Status" => %{"shape" => "StackInstanceStatus"}, "StatusReason" => %{"shape" => "Reason"}}, "type" => "structure"}, "ChangeSetStatusReason" => %{"type" => "string"}, "LogicalResourceId" => %{"type" => "string"}, "NameAlreadyExistsException" => %{"error" => %{"code" => "NameAlreadyExistsException", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeStacksInput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "StackName" => %{"shape" => "StackName"}}, "type" => "structure"}, "ClientRequestToken" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9][-a-zA-Z0-9]*", "type" => "string"}, "InvalidOperationException" => %{"error" => %{"code" => "InvalidOperationException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Parameters" => %{"member" => %{"shape" => "Parameter"}, "type" => "list"}, "OperationNotFoundException" => %{"error" => %{"code" => "OperationNotFoundException", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "NotificationARNs" => %{"max" => 5, "member" => %{"shape" => "NotificationARN"}, "type" => "list"}, "OutputValue" => %{"type" => "string"}, "RetainResources" => %{"member" => %{"shape" => "LogicalResourceId"}, "type" => "list"}, "EstimateTemplateCostOutput" => %{"members" => %{"Url" => %{"shape" => "Url"}}, "type" => "structure"}, "ParameterDeclaration" => %{"members" => %{"DefaultValue" => %{"shape" => "ParameterValue"}, "Description" => %{"shape" => "Description"}, "NoEcho" => %{"shape" => "NoEcho"}, "ParameterConstraints" => %{"shape" => "ParameterConstraints"}, "ParameterKey" => %{"shape" => "ParameterKey"}, "ParameterType" => %{"shape" => "ParameterType"}}, "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "ResourceSignalStatus" => %{"enum" => ["SUCCESS", "FAILURE"], "type" => "string"}, "Replacement" => %{"enum" => ["True", "False", "Conditional"], "type" => "string"}, "ParameterDeclarations" => %{"member" => %{"shape" => "ParameterDeclaration"}, "type" => "list"}, "CreateStackSetOutput" => %{"members" => %{"StackSetId" => %{"shape" => "StackSetId"}}, "type" => "structure"}, "UpdateStackInput" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "ClientRequestToken" => %{"shape" => "ClientRequestToken"}, "NotificationARNs" => %{"shape" => "NotificationARNs"}, "Parameters" => %{"shape" => "Parameters"}, "ResourceTypes" => %{"shape" => "ResourceTypes"}, "RoleARN" => %{"shape" => "RoleARN"}, "RollbackConfiguration" => %{"shape" => "RollbackConfiguration"}, "StackName" => %{"shape" => "StackName"}, "StackPolicyBody" => %{"shape" => "StackPolicyBody"}, "StackPolicyDuringUpdateBody" => %{"shape" => "StackPolicyDuringUpdateBody"}, "StackPolicyDuringUpdateURL" => %{"shape" => "StackPolicyDuringUpdateURL"}, "StackPolicyURL" => %{"shape" => "StackPolicyURL"}, "Tags" => %{"shape" => "Tags"}, "TemplateBody" => %{"shape" => "TemplateBody"}, "TemplateURL" => %{"shape" => "TemplateURL"}, "UsePreviousTemplate" => %{"shape" => "UsePreviousTemplate"}}, "required" => ["StackName"], "type" => "structure"}, "StackSetOperationSummaries" => %{"member" => %{"shape" => "StackSetOperationSummary"}, "type" => "list"}, "DescribeStackEventsInput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "StackName" => %{"shape" => "StackName"}}, "type" => "structure"}, "ListStackResourcesInput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "StackName" => %{"shape" => "StackName"}}, "required" => ["StackName"], "type" => "structure"}, "StackSetOperationStatus" => %{"enum" => ["RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED"], "type" => "string"}, "ValidateTemplateInput" => %{"members" => %{"TemplateBody" => %{"shape" => "TemplateBody"}, "TemplateURL" => %{"shape" => "TemplateURL"}}, "type" => "structure"}, "DescribeStackSetInput" => %{"members" => %{"StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName"], "type" => "structure"}, "NoEcho" => %{"type" => "boolean"}, "UpdateStackOutput" => %{"members" => %{"StackId" => %{"shape" => "StackId"}}, "type" => "structure"}, "UsePreviousValue" => %{"type" => "boolean"}, "StackInstanceNotFoundException" => %{"error" => %{"code" => "StackInstanceNotFoundException", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ResourceAttribute" => %{"enum" => ["Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"], "type" => "string"}, "DescribeStackSetOperationInput" => %{"members" => %{"OperationId" => %{"shape" => "ClientRequestToken"}, "StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName", "OperationId"], "type" => "structure"}, "ResourceTargetDefinition" => %{"members" => %{"Attribute" => %{"shape" => "ResourceAttribute"}, "Name" => %{"shape" => "PropertyName"}, "RequiresRecreation" => %{"shape" => "RequiresRecreation"}}, "type" => "structure"}, "StackResourceSummary" => %{"members" => %{"LastUpdatedTimestamp" => %{"shape" => "Timestamp"}, "LogicalResourceId" => %{"shape" => "LogicalResourceId"}, "PhysicalResourceId" => %{"shape" => "PhysicalResourceId"}, "ResourceStatus" => %{"shape" => "ResourceStatus"}, "ResourceStatusReason" => %{"shape" => "ResourceStatusReason"}, "ResourceType" => %{"shape" => "ResourceType"}}, "required" => ["LogicalResourceId", "ResourceType", "LastUpdatedTimestamp", "ResourceStatus"], "type" => "structure"}, "ResourceChange" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "Details" => %{"shape" => "ResourceChangeDetails"}, "LogicalResourceId" => %{"shape" => "LogicalResourceId"}, "PhysicalResourceId" => %{"shape" => "PhysicalResourceId"}, "Replacement" => %{"shape" => "Replacement"}, "ResourceType" => %{"shape" => "ResourceType"}, "Scope" => %{"shape" => "Scope"}}, "type" => "structure"}, "ListChangeSetsOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Summaries" => %{"shape" => "ChangeSetSummaries"}}, "type" => "structure"}, "ChangeType" => %{"enum" => ["Resource"], "type" => "string"}, "Stacks" => %{"member" => %{"shape" => "Stack"}, "type" => "list"}, "StackSetNameOrId" => %{"min" => 1, "pattern" => "[a-zA-Z][-a-zA-Z0-9]*", "type" => "string"}, "Output" => %{"members" => %{"Description" => %{"shape" => "Description"}, "ExportName" => %{"shape" => "ExportName"}, "OutputKey" => %{"shape" => "OutputKey"}, "OutputValue" => %{"shape" => "OutputValue"}}, "type" => "structure"}, "DescribeStacksOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Stacks" => %{"shape" => "Stacks"}}, "type" => "structure"}, "DeleteChangeSetOutput" => %{"members" => %{}, "type" => "structure"}, "StackResources" => %{"member" => %{"shape" => "StackResource"}, "type" => "list"}, "ChangeSetSummaries" => %{"member" => %{"shape" => "ChangeSetSummary"}, "type" => "list"}, "StackSummary" => %{"members" => %{"CreationTime" => %{"shape" => "CreationTime"}, "DeletionTime" => %{"shape" => "DeletionTime"}, "LastUpdatedTime" => %{"shape" => "LastUpdatedTime"}, "StackId" => %{"shape" => "StackId"}, "StackName" => %{"shape" => "StackName"}, "StackStatus" => %{"shape" => "StackStatus"}, "StackStatusReason" => %{"shape" => "StackStatusReason"}, "TemplateDescription" => %{"shape" => "TemplateDescription"}}, "required" => ["StackName", "CreationTime", "StackStatus"], "type" => "structure"}, "StackPolicyDuringUpdateBody" => %{"max" => 16384, "min" => 1, "type" => "string"}, "GetStackPolicyOutput" => %{"members" => %{"StackPolicyBody" => %{"shape" => "StackPolicyBody"}}, "type" => "structure"}, "GetTemplateInput" => %{"members" => %{"ChangeSetName" => %{"shape" => "ChangeSetNameOrId"}, "StackName" => %{"shape" => "StackName"}, "TemplateStage" => %{"shape" => "TemplateStage"}}, "type" => "structure"}, "OperationInProgressException" => %{"error" => %{"code" => "OperationInProgressException", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateStackInstancesInput" => %{"members" => %{"Accounts" => %{"shape" => "AccountList"}, "OperationId" => %{"idempotencyToken" => true, "shape" => "ClientRequestToken"}, "OperationPreferences" => %{"shape" => "StackSetOperationPreferences"}, "Regions" => %{"shape" => "RegionList"}, "StackSetName" => %{"shape" => "StackSetName"}}, "required" => ["StackSetName", "Accounts", "Regions"], "type" => "structure"}, "NextToken" => %{"max" => 1024, "min" => 1, "type" => "string"}, "ExportValue" => %{"type" => "string"}, "RetainStacks" => %{"type" => "boolean"}, "GetStackPolicyInput" => %{"members" => %{"StackName" => %{"shape" => "StackName"}}, "required" => ["StackName"], "type" => "structure"}, "DescribeStackInstanceOutput" => %{"members" => %{"StackInstance" => %{"shape" => "StackInstance"}}, "type" => "structure"}, "StackPolicyDuringUpdateURL" => %{"max" => 1350, "min" => 1, "type" => "string"}, "StackSummaries" => %{"member" => %{"shape" => "StackSummary"}, "type" => "list"}, "StackSetOperationAction" => %{"enum" => ["CREATE", "UPDATE", "DELETE"], "type" => "string"}, "ListImportsInput" => %{"members" => %{"ExportName" => %{"shape" => "ExportName"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["ExportName"], "type" => "structure"}, "FailureTolerancePercentage" => %{"max" => 100, "min" => 0, "type" => "integer"}, "DescribeChangeSetOutput" => %{"members" => %{"Capabilities" => %{"shape" => "Capabilities"}, "ChangeSetId" => %{"shape" => "ChangeSetId"}, "ChangeSetName" => %{"shape" => "ChangeSetName"}, "Changes" => %{"shape" => "Changes"}, "CreationTime" => %{"shape" => "CreationTime"}, "Description" => %{"shape" => "Description"}, "ExecutionStatus" => %{"shape" => "ExecutionStatus"}, "NextToken" => %{"shape" => "NextToken"}, "NotificationARNs" => %{"shape" => "NotificationARNs"}, "Parameters" => %{"shape" => "Parameters"}, "RollbackConfiguration" => %{"shape" => "RollbackConfiguration"}, "StackId" => %{"shape" => "StackId"}, "StackName" => %{"shape" => "StackName"}, "Status" => %{"shape" => "ChangeSetStatus"}, "StatusReason" => %{"shape" => "ChangeSetStatusReason"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "SignalResourceInput" => %{"members" => %{"LogicalResourceId" => %{"shape" => "LogicalResourceId"}, "StackName" => %{"shape" => "StackNameOrId"}, "Status" => %{"shape" => "ResourceSignalStatus"}, "UniqueId" => %{"shape" => "ResourceSignalUniqueId"}}, "required" => ["StackName", "LogicalResourceId", "UniqueId", "Status"], "type" => "structure"}, "StackStatus" => %{"enum" => ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS"], "type" => "string"}, "CapabilitiesReason" => %{"type" => "string"}, "TransformName" => %{"type" => "string"}, "PhysicalResourceId" => %{"type" => "string"}, "TemplateStage" => %{"enum" => ["Original", "Processed"], "type" => "string"}}
  end
end