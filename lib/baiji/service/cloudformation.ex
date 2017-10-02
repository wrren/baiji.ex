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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelUpdateStack",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStacks",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SignalResource",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns summary information about the results of a stack set operation.
  """
  def list_stack_set_operation_results(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListStackSetOperationResults",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateStackSet",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns summary information about stack instances that are associated with
  the specified stack set. You can filter for stack instances that are
  associated with a specific AWS account name or region.
  """
  def list_stack_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListStackInstances",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns summary information about operations performed on a stack set.
  """
  def list_stack_set_operations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListStackSetOperations",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListImports",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns a description of the specified resource in the specified stack.

  For deleted stacks, DescribeStackResource returns resource information for
  up to 90 days after the stack has been deleted.
  """
  def describe_stack_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStackResource",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ContinueUpdateRollback",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns the stack policy for a specified stack. If a stack doesn't have a
  policy, a null value is returned.
  """
  def get_stack_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetStackPolicy",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns the description of the specified stack set operation.
  """
  def describe_stack_set_operation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStackSetOperation",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteChangeSet",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Deletes a specified stack. Once the call completes successfully, stack
  deletion starts. Deleted stacks do not show up in the `DescribeStacks` API
  if the deletion has been completed successfully.
  """
  def delete_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteStack",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Creates a stack as specified in the template. After the call completes
  successfully, the stack creation starts. You can check the status of the
  stack via the `DescribeStacks` API.
  """
  def create_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateStack",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns the ID and status of each active change set for a stack. For
  example, AWS CloudFormation lists change sets that are in the
  `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
  """
  def list_change_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListChangeSets",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeChangeSet",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Stops an in-progress operation on a stack set and its associated stack
  instances.
  """
  def stop_stack_set_operation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopStackSetOperation",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ValidateTemplate",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateStackInstances",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStackEvents",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns summary information about stack sets that are associated with the
  user.
  """
  def list_stack_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListStackSets",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStackResources",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns the estimated monthly cost of a template. The return value is an
  AWS Simple Monthly Calculator URL with a query string that describes the
  resources required to run the template.
  """
  def estimate_template_cost(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EstimateTemplateCost",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTemplate",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Creates a stack set.
  """
  def create_stack_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateStackSet",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStackInstance",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Sets a stack policy for a specified stack.
  """
  def set_stack_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetStackPolicy",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListStacks",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns the description of the specified stack set.
  """
  def describe_stack_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStackSet",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateStack",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListExports",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Deletes stack instances for the specified accounts, in the specified
  regions.
  """
  def delete_stack_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteStackInstances",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ExecuteChangeSet",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Returns descriptions of all resources of the specified stack.

  For deleted stacks, ListStackResources returns resource information for up
  to 90 days after the stack has been deleted.
  """
  def list_stack_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListStackResources",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Deletes a stack set. Before you can delete a stack set, all of its member
  stack instances must be deleted. For more information about how to do this,
  see `DeleteStackInstances`.
  """
  def delete_stack_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteStackSet",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTemplateSummary",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
  @doc """
  Retrieves your account's AWS CloudFormation limits, such as the maximum
  number of stacks that you can create in your account.
  """
  def describe_account_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAccountLimits",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
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
      service:        "cloudformation",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateChangeSet",
      
      type:           :xml,
      version:        "2010-05-15",
      method:         :post
    }
  end
  
end