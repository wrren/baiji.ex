defmodule Baiji.SWF do
  @moduledoc """
  Amazon Simple Workflow Service

  The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build
  applications that use Amazon's cloud to coordinate work across distributed
  components. In Amazon SWF, a *task* represents a logical unit of work that
  is performed by a component of your workflow. Coordinating tasks in a
  workflow involves managing intertask dependencies, scheduling, and
  concurrency in accordance with the logical flow of the application.

  Amazon SWF gives you full control over implementing tasks and coordinating
  them without worrying about underlying complexities such as tracking their
  progress and maintaining their state.

  This documentation serves as reference only. For a broader overview of the
  Amazon SWF programming model, see the * [Amazon SWF Developer
  Guide](http://docs.aws.amazon.com/amazonswf/latest/developerguide/) *.
  """

  @doc """
  Returns the number of closed workflow executions within the given domain
  that meet the specified filtering criteria.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `tagFilter.tag`: String constraint. The key is
  `swf:tagFilter.tag`.

  </li> <li> `typeFilter.name`: String constraint. The key is
  `swf:typeFilter.name`.

  </li> <li> `typeFilter.version`: String constraint. The key is
  `swf:typeFilter.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def count_closed_workflow_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CountClosedWorkflowExecutions",
      method:           :post,
      input_shape:      "CountClosedWorkflowExecutionsInput",
      output_shape:     "WorkflowExecutionCount",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the number of open workflow executions within the given domain that
  meet the specified filtering criteria.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `tagFilter.tag`: String constraint. The key is
  `swf:tagFilter.tag`.

  </li> <li> `typeFilter.name`: String constraint. The key is
  `swf:typeFilter.name`.

  </li> <li> `typeFilter.version`: String constraint. The key is
  `swf:typeFilter.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def count_open_workflow_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CountOpenWorkflowExecutions",
      method:           :post,
      input_shape:      "CountOpenWorkflowExecutionsInput",
      output_shape:     "WorkflowExecutionCount",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the estimated number of activity tasks in the specified task list.
  The count returned is an approximation and isn't guaranteed to be exact. If
  you specify a task list that no activity task was ever scheduled in then
  `0` is returned.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the `taskList.name` parameter by using a `Condition`
  element with the `swf:taskList.name` key to allow the action to access only
  certain task lists.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def count_pending_activity_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CountPendingActivityTasks",
      method:           :post,
      input_shape:      "CountPendingActivityTasksInput",
      output_shape:     "PendingTaskCount",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the estimated number of decision tasks in the specified task list.
  The count returned is an approximation and isn't guaranteed to be exact. If
  you specify a task list that no decision task was ever scheduled in then
  `0` is returned.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the `taskList.name` parameter by using a `Condition`
  element with the `swf:taskList.name` key to allow the action to access only
  certain task lists.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def count_pending_decision_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CountPendingDecisionTasks",
      method:           :post,
      input_shape:      "CountPendingDecisionTasksInput",
      output_shape:     "PendingTaskCount",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecates the specified *activity type*. After an activity type has been
  deprecated, you cannot create new tasks of that activity type. Tasks of
  this type that were scheduled before the type was deprecated continue to
  run.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `activityType.name`: String constraint. The key is
  `swf:activityType.name`.

  </li> <li> `activityType.version`: String constraint. The key is
  `swf:activityType.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def deprecate_activity_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeprecateActivityType",
      method:           :post,
      input_shape:      "DeprecateActivityTypeInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecates the specified domain. After a domain has been deprecated it
  cannot be used to create new workflow executions or register new types.
  However, you can still use visibility actions on this domain. Deprecating a
  domain also deprecates all activity and workflow types registered in the
  domain. Executions that were started before the domain was deprecated
  continues to run.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def deprecate_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeprecateDomain",
      method:           :post,
      input_shape:      "DeprecateDomainInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecates the specified *workflow type*. After a workflow type has been
  deprecated, you cannot create new executions of that type. Executions that
  were started before the type was deprecated continues to run. A deprecated
  workflow type may still be used when calling visibility actions.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `workflowType.name`: String constraint. The key is
  `swf:workflowType.name`.

  </li> <li> `workflowType.version`: String constraint. The key is
  `swf:workflowType.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def deprecate_workflow_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeprecateWorkflowType",
      method:           :post,
      input_shape:      "DeprecateWorkflowTypeInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the specified activity type. This includes
  configuration settings provided when the type was registered and other
  general information about the type.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `activityType.name`: String constraint. The key is
  `swf:activityType.name`.

  </li> <li> `activityType.version`: String constraint. The key is
  `swf:activityType.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def describe_activity_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeActivityType",
      method:           :post,
      input_shape:      "DescribeActivityTypeInput",
      output_shape:     "ActivityTypeDetail",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the specified domain, including description and
  status.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def describe_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDomain",
      method:           :post,
      input_shape:      "DescribeDomainInput",
      output_shape:     "DomainDetail",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the specified workflow execution including its
  type and some statistics.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def describe_workflow_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeWorkflowExecution",
      method:           :post,
      input_shape:      "DescribeWorkflowExecutionInput",
      output_shape:     "WorkflowExecutionDetail",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the specified *workflow type*. This includes
  configuration settings specified when the type was registered and other
  information such as creation date, current status, etc.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `workflowType.name`: String constraint. The key is
  `swf:workflowType.name`.

  </li> <li> `workflowType.version`: String constraint. The key is
  `swf:workflowType.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def describe_workflow_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeWorkflowType",
      method:           :post,
      input_shape:      "DescribeWorkflowTypeInput",
      output_shape:     "WorkflowTypeDetail",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the history of the specified workflow execution. The results may be
  split into multiple pages. To retrieve subsequent pages, make the call
  again using the `nextPageToken` returned by the initial call.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def get_workflow_execution_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetWorkflowExecutionHistory",
      method:           :post,
      input_shape:      "GetWorkflowExecutionHistoryInput",
      output_shape:     "History",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about all activities registered in the specified domain
  that match the specified name and registration status. The result includes
  information like creation date, current status of the activity, etc. The
  results may be split into multiple pages. To retrieve subsequent pages,
  make the call again using the `nextPageToken` returned by the initial call.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def list_activity_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListActivityTypes",
      method:           :post,
      input_shape:      "ListActivityTypesInput",
      output_shape:     "ActivityTypeInfos",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of closed workflow executions in the specified domain that
  meet the filtering criteria. The results may be split into multiple pages.
  To retrieve subsequent pages, make the call again using the nextPageToken
  returned by the initial call.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `tagFilter.tag`: String constraint. The key is
  `swf:tagFilter.tag`.

  </li> <li> `typeFilter.name`: String constraint. The key is
  `swf:typeFilter.name`.

  </li> <li> `typeFilter.version`: String constraint. The key is
  `swf:typeFilter.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def list_closed_workflow_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListClosedWorkflowExecutions",
      method:           :post,
      input_shape:      "ListClosedWorkflowExecutionsInput",
      output_shape:     "WorkflowExecutionInfos",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the list of domains registered in the account. The results may be
  split into multiple pages. To retrieve subsequent pages, make the call
  again using the nextPageToken returned by the initial call.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains. The element must be set to
  `arn:aws:swf::AccountID:domain/*`, where *AccountID* is the account ID,
  with no dashes.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def list_domains(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDomains",
      method:           :post,
      input_shape:      "ListDomainsInput",
      output_shape:     "DomainInfos",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of open workflow executions in the specified domain that
  meet the filtering criteria. The results may be split into multiple pages.
  To retrieve subsequent pages, make the call again using the nextPageToken
  returned by the initial call.

  <note> This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `tagFilter.tag`: String constraint. The key is
  `swf:tagFilter.tag`.

  </li> <li> `typeFilter.name`: String constraint. The key is
  `swf:typeFilter.name`.

  </li> <li> `typeFilter.version`: String constraint. The key is
  `swf:typeFilter.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def list_open_workflow_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListOpenWorkflowExecutions",
      method:           :post,
      input_shape:      "ListOpenWorkflowExecutionsInput",
      output_shape:     "WorkflowExecutionInfos",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about workflow types in the specified domain. The
  results may be split into multiple pages that can be retrieved by making
  the call repeatedly.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def list_workflow_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListWorkflowTypes",
      method:           :post,
      input_shape:      "ListWorkflowTypesInput",
      output_shape:     "WorkflowTypeInfos",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by workers to get an `ActivityTask` from the specified activity
  `taskList`. This initiates a long poll, where the service holds the HTTP
  connection open and responds as soon as a task becomes available. The
  maximum time the service holds on to the request before responding is 60
  seconds. If no task is available within 60 seconds, the poll returns an
  empty result. An empty result, in this context, means that an ActivityTask
  is returned, but that the value of taskToken is an empty string. If a task
  is returned, the worker should use its type to identify and process it
  correctly.

  <important> Workers should set their client side socket timeout to at least
  70 seconds (10 seconds higher than the maximum time service may hold the
  poll request).

  </important> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the `taskList.name` parameter by using a `Condition`
  element with the `swf:taskList.name` key to allow the action to access only
  certain task lists.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def poll_for_activity_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PollForActivityTask",
      method:           :post,
      input_shape:      "PollForActivityTaskInput",
      output_shape:     "ActivityTask",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by deciders to get a `DecisionTask` from the specified decision
  `taskList`. A decision task may be returned for any open workflow execution
  that is using the specified task list. The task includes a paginated view
  of the history of the workflow execution. The decider should use the
  workflow type and the history to determine how to properly handle the task.

  This action initiates a long poll, where the service holds the HTTP
  connection open and responds as soon a task becomes available. If no
  decision task is available in the specified task list before the timeout of
  60 seconds expires, an empty result is returned. An empty result, in this
  context, means that a DecisionTask is returned, but that the value of
  taskToken is an empty string.

  <important> Deciders should set their client side socket timeout to at
  least 70 seconds (10 seconds higher than the timeout).

  </important> <important> Because the number of workflow history events for
  a single workflow execution might be very large, the result returned might
  be split up across a number of pages. To retrieve subsequent pages, make
  additional calls to `PollForDecisionTask` using the `nextPageToken`
  returned by the initial call. Note that you do *not* call
  `GetWorkflowExecutionHistory` with this `nextPageToken`. Instead, call
  `PollForDecisionTask` again.

  </important> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the `taskList.name` parameter by using a `Condition`
  element with the `swf:taskList.name` key to allow the action to access only
  certain task lists.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def poll_for_decision_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PollForDecisionTask",
      method:           :post,
      input_shape:      "PollForDecisionTaskInput",
      output_shape:     "DecisionTask",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by activity workers to report to the service that the `ActivityTask`
  represented by the specified `taskToken` is still making progress. The
  worker can also specify details of the progress, for example percent
  complete, using the `details` parameter. This action can also be used by
  the worker as a mechanism to check if cancellation is being requested for
  the activity task. If a cancellation is being attempted for the specified
  task, then the boolean `cancelRequested` flag returned by the service is
  set to `true`.

  This action resets the `taskHeartbeatTimeout` clock. The
  `taskHeartbeatTimeout` is specified in `RegisterActivityType`.

  This action doesn't in itself create an event in the workflow execution
  history. However, if the task times out, the workflow execution history
  contains a `ActivityTaskTimedOut` event that contains the information from
  the last heartbeat generated by the activity worker.

  <note> The `taskStartToCloseTimeout` of an activity type is the maximum
  duration of an activity task, regardless of the number of
  `RecordActivityTaskHeartbeat` requests received. The
  `taskStartToCloseTimeout` is also specified in `RegisterActivityType`.

  </note> <note> This operation is only useful for long-lived activities to
  report liveliness of the task and to determine if a cancellation is being
  attempted.

  </note> <important> If the `cancelRequested` flag returns `true`, a
  cancellation is being attempted. If the worker can cancel the activity, it
  should respond with `RespondActivityTaskCanceled`. Otherwise, it should
  ignore the cancellation request.

  </important> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def record_activity_task_heartbeat(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RecordActivityTaskHeartbeat",
      method:           :post,
      input_shape:      "RecordActivityTaskHeartbeatInput",
      output_shape:     "ActivityTaskStatus",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a new *activity type* along with its configuration settings in
  the specified domain.

  <important> A `TypeAlreadyExists` fault is returned if the type already
  exists in the domain. You cannot change any configuration settings of the
  type after its registration, and it must be registered as a new version.

  </important> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `defaultTaskList.name`: String constraint. The key is
  `swf:defaultTaskList.name`.

  </li> <li> `name`: String constraint. The key is `swf:name`.

  </li> <li> `version`: String constraint. The key is `swf:version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def register_activity_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterActivityType",
      method:           :post,
      input_shape:      "RegisterActivityTypeInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a new domain.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> You cannot use an IAM policy to control domain access for this
  action. The name of the domain being registered is available as the
  resource of this action.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def register_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterDomain",
      method:           :post,
      input_shape:      "RegisterDomainInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a new *workflow type* and its configuration settings in the
  specified domain.

  The retention period for the workflow history is set by the
  `RegisterDomain` action.

  <important> If the type already exists, then a `TypeAlreadyExists` fault is
  returned. You cannot change the configuration settings of a workflow type
  once it is registered and it must be registered as a new version.

  </important> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `defaultTaskList.name`: String constraint. The key is
  `swf:defaultTaskList.name`.

  </li> <li> `name`: String constraint. The key is `swf:name`.

  </li> <li> `version`: String constraint. The key is `swf:version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def register_workflow_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterWorkflowType",
      method:           :post,
      input_shape:      "RegisterWorkflowTypeInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Records a `WorkflowExecutionCancelRequested` event in the currently running
  workflow execution identified by the given domain, workflowId, and runId.
  This logically requests the cancellation of the workflow execution as a
  whole. It is up to the decider to take appropriate actions when it receives
  an execution history with this event.

  <note> If the runId isn't specified, the `WorkflowExecutionCancelRequested`
  event is recorded in the history of the current open workflow execution
  with the specified workflowId in the domain.

  </note> <note> Because this action allows the workflow to properly clean up
  and gracefully close, it should be used instead of
  `TerminateWorkflowExecution` when possible.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def request_cancel_workflow_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RequestCancelWorkflowExecution",
      method:           :post,
      input_shape:      "RequestCancelWorkflowExecutionInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by workers to tell the service that the `ActivityTask` identified by
  the `taskToken` was successfully canceled. Additional `details` can be
  provided using the `details` argument.

  These `details` (if provided) appear in the `ActivityTaskCanceled` event
  added to the workflow history.

  <important> Only use this operation if the `canceled` flag of a
  `RecordActivityTaskHeartbeat` request returns `true` and if the activity
  can be safely undone or abandoned.

  </important> A task is considered open from the time that it is scheduled
  until it is closed. Therefore a task is reported as open while a worker is
  processing it. A task is closed after it has been specified in a call to
  `RespondActivityTaskCompleted`, RespondActivityTaskCanceled,
  `RespondActivityTaskFailed`, or the task has [timed
  out](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def respond_activity_task_canceled(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RespondActivityTaskCanceled",
      method:           :post,
      input_shape:      "RespondActivityTaskCanceledInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by workers to tell the service that the `ActivityTask` identified by
  the `taskToken` completed successfully with a `result` (if provided). The
  `result` appears in the `ActivityTaskCompleted` event in the workflow
  history.

  <important> If the requested task doesn't complete successfully, use
  `RespondActivityTaskFailed` instead. If the worker finds that the task is
  canceled through the `canceled` flag returned by
  `RecordActivityTaskHeartbeat`, it should cancel the task, clean up and then
  call `RespondActivityTaskCanceled`.

  </important> A task is considered open from the time that it is scheduled
  until it is closed. Therefore a task is reported as open while a worker is
  processing it. A task is closed after it has been specified in a call to
  RespondActivityTaskCompleted, `RespondActivityTaskCanceled`,
  `RespondActivityTaskFailed`, or the task has [timed
  out](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def respond_activity_task_completed(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RespondActivityTaskCompleted",
      method:           :post,
      input_shape:      "RespondActivityTaskCompletedInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by workers to tell the service that the `ActivityTask` identified by
  the `taskToken` has failed with `reason` (if specified). The `reason` and
  `details` appear in the `ActivityTaskFailed` event added to the workflow
  history.

  A task is considered open from the time that it is scheduled until it is
  closed. Therefore a task is reported as open while a worker is processing
  it. A task is closed after it has been specified in a call to
  `RespondActivityTaskCompleted`, `RespondActivityTaskCanceled`,
  RespondActivityTaskFailed, or the task has [timed
  out](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def respond_activity_task_failed(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RespondActivityTaskFailed",
      method:           :post,
      input_shape:      "RespondActivityTaskFailedInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by deciders to tell the service that the `DecisionTask` identified by
  the `taskToken` has successfully completed. The `decisions` argument
  specifies the list of decisions made while processing the task.

  A `DecisionTaskCompleted` event is added to the workflow history. The
  `executionContext` specified is attached to the event in the workflow
  execution history.

  **Access Control**

  If an IAM policy grants permission to use `RespondDecisionTaskCompleted`,
  it can express permissions for the list of decisions in the `decisions`
  parameter. Each of the decisions has one or more parameters, much like a
  regular API call. To allow for policies to be as readable as possible, you
  can express permissions on decisions as if they were actual API calls,
  including applying conditions to some parameters. For more information, see
  [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def respond_decision_task_completed(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RespondDecisionTaskCompleted",
      method:           :post,
      input_shape:      "RespondDecisionTaskCompletedInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Records a `WorkflowExecutionSignaled` event in the workflow execution
  history and creates a decision task for the workflow execution identified
  by the given domain, workflowId and runId. The event is recorded with the
  specified user defined signalName and input (if provided).

  <note> If a runId isn't specified, then the `WorkflowExecutionSignaled`
  event is recorded in the history of the current open workflow with the
  matching workflowId in the domain.

  </note> <note> If the specified workflow execution isn't open, this method
  fails with `UnknownResource`.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def signal_workflow_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SignalWorkflowExecution",
      method:           :post,
      input_shape:      "SignalWorkflowExecutionInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Starts an execution of the workflow type in the specified domain using the
  provided `workflowId` and input data.

  This action returns the newly started workflow execution.

  **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> Constrain the following parameters by using a `Condition`
  element with the appropriate keys.

  <ul> <li> `tagList.member.0`: The key is `swf:tagList.member.0`.

  </li> <li> `tagList.member.1`: The key is `swf:tagList.member.1`.

  </li> <li> `tagList.member.2`: The key is `swf:tagList.member.2`.

  </li> <li> `tagList.member.3`: The key is `swf:tagList.member.3`.

  </li> <li> `tagList.member.4`: The key is `swf:tagList.member.4`.

  </li> <li> `taskList`: String constraint. The key is `swf:taskList.name`.

  </li> <li> `workflowType.name`: String constraint. The key is
  `swf:workflowType.name`.

  </li> <li> `workflowType.version`: String constraint. The key is
  `swf:workflowType.version`.

  </li> </ul> </li> </ul> If the caller doesn't have sufficient permissions
  to invoke the action, or the parameter values fall outside the specified
  constraints, the action fails. The associated event attribute's `cause`
  parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM
  policies, see [Using IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def start_workflow_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartWorkflowExecution",
      method:           :post,
      input_shape:      "StartWorkflowExecutionInput",
      output_shape:     "Run",
      endpoint:         __spec__()
    }
  end

  @doc """
  Records a `WorkflowExecutionTerminated` event and forces closure of the
  workflow execution identified by the given domain, runId, and workflowId.
  The child policy, registered with the workflow type or specified when
  starting this execution, is applied to any open child workflow executions
  of this workflow execution.

  <important> If the identified workflow execution was in progress, it is
  terminated immediately.

  </important> <note> If a runId isn't specified, then the
  `WorkflowExecutionTerminated` event is recorded in the history of the
  current open workflow with the matching workflowId in the domain.

  </note> <note> You should consider using `RequestCancelWorkflowExecution`
  action instead because it allows the workflow to gracefully close while
  `TerminateWorkflowExecution` doesn't.

  </note> **Access Control**

  You can use IAM policies to control this action's access to Amazon SWF
  resources as follows:

  <ul> <li> Use a `Resource` element with the domain name to limit the action
  to only specified domains.

  </li> <li> Use an `Action` element to allow or deny permission to call this
  action.

  </li> <li> You cannot use an IAM policy to constrain this action's
  parameters.

  </li> </ul> If the caller doesn't have sufficient permissions to invoke the
  action, or the parameter values fall outside the specified constraints, the
  action fails. The associated event attribute's `cause` parameter is set to
  `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using
  IAM to Manage Access to Amazon SWF
  Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
  in the *Amazon SWF Developer Guide*.
  """
  def terminate_workflow_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "TerminateWorkflowExecution",
      method:           :post,
      input_shape:      "TerminateWorkflowExecutionInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "swf",
      target_prefix:    "SimpleWorkflowService",
      endpoint_prefix:  "swf",
      type:             :json,
      version:          "2012-01-25",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"DurationInSecondsOptional" => %{"max" => 8, "type" => "string"}, "TaskList" => %{"members" => %{"name" => %{"shape" => "Name"}}, "required" => ["name"], "type" => "structure"}, "PageSize" => %{"max" => 1000, "min" => 0, "type" => "integer"}, "CancelWorkflowExecutionFailedCause" => %{"enum" => ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "ListActivityTypesInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "maximumPageSize" => %{"shape" => "PageSize"}, "name" => %{"shape" => "Name"}, "nextPageToken" => %{"shape" => "PageToken"}, "registrationStatus" => %{"shape" => "RegistrationStatus"}, "reverseOrder" => %{"shape" => "ReverseOrder"}}, "required" => ["domain", "registrationStatus"], "type" => "structure"}, "HistoryEventList" => %{"member" => %{"shape" => "HistoryEvent"}, "type" => "list"}, "FailureReason" => %{"max" => 256, "type" => "string"}, "WorkflowRunIdOptional" => %{"max" => 64, "type" => "string"}, "ExecutionStatus" => %{"enum" => ["OPEN", "CLOSED"], "type" => "string"}, "DurationInSeconds" => %{"max" => 8, "min" => 1, "type" => "string"}, "CompleteWorkflowExecutionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "CompleteWorkflowExecutionFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}}, "required" => ["cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "ExternalWorkflowExecutionSignaledEventAttributes" => %{"members" => %{"initiatedEventId" => %{"shape" => "EventId"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}}, "required" => ["workflowExecution", "initiatedEventId"], "type" => "structure"}, "WorkflowTypeInfoList" => %{"member" => %{"shape" => "WorkflowTypeInfo"}, "type" => "list"}, "DescribeActivityTypeInput" => %{"members" => %{"activityType" => %{"shape" => "ActivityType"}, "domain" => %{"shape" => "DomainName"}}, "required" => ["domain", "activityType"], "type" => "structure"}, "TimerFiredEventAttributes" => %{"members" => %{"startedEventId" => %{"shape" => "EventId"}, "timerId" => %{"shape" => "TimerId"}}, "required" => ["timerId", "startedEventId"], "type" => "structure"}, "VersionOptional" => %{"max" => 64, "type" => "string"}, "CancelTimerFailedCause" => %{"enum" => ["TIMER_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "SignalExternalWorkflowExecutionInitiatedEventAttributes" => %{"members" => %{"control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "input" => %{"shape" => "Data"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "signalName" => %{"shape" => "SignalName"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["workflowId", "signalName", "decisionTaskCompletedEventId"], "type" => "structure"}, "ActivityType" => %{"members" => %{"name" => %{"shape" => "Name"}, "version" => %{"shape" => "Version"}}, "required" => ["name", "version"], "type" => "structure"}, "FunctionName" => %{"max" => 64, "min" => 1, "type" => "string"}, "DurationInDays" => %{"max" => 8, "min" => 1, "type" => "string"}, "RequestCancelActivityTaskFailedCause" => %{"enum" => ["ACTIVITY_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "StartWorkflowExecutionInput" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "domain" => %{"shape" => "DomainName"}, "executionStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "input" => %{"shape" => "Data"}, "lambdaRole" => %{"shape" => "Arn"}, "tagList" => %{"shape" => "TagList"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}, "taskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "workflowId" => %{"shape" => "WorkflowId"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["domain", "workflowId", "workflowType"], "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "ActivityTypeInfoList" => %{"member" => %{"shape" => "ActivityTypeInfo"}, "type" => "list"}, "WorkflowTypeInfo" => %{"members" => %{"creationDate" => %{"shape" => "Timestamp"}, "deprecationDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "status" => %{"shape" => "RegistrationStatus"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowType", "status", "creationDate"], "type" => "structure"}, "TaskPriority" => %{"type" => "string"}, "Count" => %{"min" => 0, "type" => "integer"}, "TimerId" => %{"max" => 256, "min" => 1, "type" => "string"}, "CancelTimerFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "CancelTimerFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "timerId" => %{"shape" => "TimerId"}}, "required" => ["timerId", "cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "ScheduleLambdaFunctionFailedCause" => %{"enum" => ["ID_ALREADY_IN_USE", "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED", "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED", "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"], "type" => "string"}, "LambdaFunctionScheduledEventAttributes" => %{"members" => %{"control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "id" => %{"shape" => "FunctionId"}, "input" => %{"shape" => "FunctionInput"}, "name" => %{"shape" => "FunctionName"}, "startToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}}, "required" => ["id", "name", "decisionTaskCompletedEventId"], "type" => "structure"}, "WorkflowExecutionAlreadyStartedFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DomainInfoList" => %{"member" => %{"shape" => "DomainInfo"}, "type" => "list"}, "ChildWorkflowExecutionCanceledEventAttributes" => %{"members" => %{"details" => %{"shape" => "Data"}, "initiatedEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowExecution", "workflowType", "initiatedEventId", "startedEventId"], "type" => "structure"}, "RequestCancelWorkflowExecutionInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["domain", "workflowId"], "type" => "structure"}, "ActivityTypeInfo" => %{"members" => %{"activityType" => %{"shape" => "ActivityType"}, "creationDate" => %{"shape" => "Timestamp"}, "deprecationDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "status" => %{"shape" => "RegistrationStatus"}}, "required" => ["activityType", "status", "creationDate"], "type" => "structure"}, "WorkflowExecutionFailedEventAttributes" => %{"members" => %{"decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "details" => %{"shape" => "Data"}, "reason" => %{"shape" => "FailureReason"}}, "required" => ["decisionTaskCompletedEventId"], "type" => "structure"}, "WorkflowExecutionConfiguration" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "executionStartToCloseTimeout" => %{"shape" => "DurationInSeconds"}, "lambdaRole" => %{"shape" => "Arn"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}, "taskStartToCloseTimeout" => %{"shape" => "DurationInSeconds"}}, "required" => ["taskStartToCloseTimeout", "executionStartToCloseTimeout", "taskList", "childPolicy"], "type" => "structure"}, "WorkflowExecutionTimeoutType" => %{"enum" => ["START_TO_CLOSE"], "type" => "string"}, "DomainInfos" => %{"members" => %{"domainInfos" => %{"shape" => "DomainInfoList"}, "nextPageToken" => %{"shape" => "PageToken"}}, "required" => ["domainInfos"], "type" => "structure"}, "MarkerName" => %{"max" => 256, "min" => 1, "type" => "string"}, "Canceled" => %{"type" => "boolean"}, "TaskToken" => %{"max" => 1024, "min" => 1, "type" => "string"}, "SignalExternalWorkflowExecutionDecisionAttributes" => %{"members" => %{"control" => %{"shape" => "Data"}, "input" => %{"shape" => "Data"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "signalName" => %{"shape" => "SignalName"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["workflowId", "signalName"], "type" => "structure"}, "ListOpenWorkflowExecutionsInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "executionFilter" => %{"shape" => "WorkflowExecutionFilter"}, "maximumPageSize" => %{"shape" => "PageSize"}, "nextPageToken" => %{"shape" => "PageToken"}, "reverseOrder" => %{"shape" => "ReverseOrder"}, "startTimeFilter" => %{"shape" => "ExecutionTimeFilter"}, "tagFilter" => %{"shape" => "TagFilter"}, "typeFilter" => %{"shape" => "WorkflowTypeFilter"}}, "required" => ["domain", "startTimeFilter"], "type" => "structure"}, "StartTimerDecisionAttributes" => %{"members" => %{"control" => %{"shape" => "Data"}, "startToFireTimeout" => %{"shape" => "DurationInSeconds"}, "timerId" => %{"shape" => "TimerId"}}, "required" => ["timerId", "startToFireTimeout"], "type" => "structure"}, "SignalExternalWorkflowExecutionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "SignalExternalWorkflowExecutionFailedCause"}, "control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "initiatedEventId" => %{"shape" => "EventId"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["workflowId", "cause", "initiatedEventId", "decisionTaskCompletedEventId"], "type" => "structure"}, "ChildWorkflowExecutionCompletedEventAttributes" => %{"members" => %{"initiatedEventId" => %{"shape" => "EventId"}, "result" => %{"shape" => "Data"}, "startedEventId" => %{"shape" => "EventId"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowExecution", "workflowType", "initiatedEventId", "startedEventId"], "type" => "structure"}, "DecisionTaskCompletedEventAttributes" => %{"members" => %{"executionContext" => %{"shape" => "Data"}, "scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId", "startedEventId"], "type" => "structure"}, "RequestCancelExternalWorkflowExecutionDecisionAttributes" => %{"members" => %{"control" => %{"shape" => "Data"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["workflowId"], "type" => "structure"}, "CountPendingActivityTasksInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "taskList" => %{"shape" => "TaskList"}}, "required" => ["domain", "taskList"], "type" => "structure"}, "WorkflowExecutionCompletedEventAttributes" => %{"members" => %{"decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "result" => %{"shape" => "Data"}}, "required" => ["decisionTaskCompletedEventId"], "type" => "structure"}, "RespondActivityTaskCompletedInput" => %{"members" => %{"result" => %{"shape" => "Data"}, "taskToken" => %{"shape" => "TaskToken"}}, "required" => ["taskToken"], "type" => "structure"}, "Name" => %{"max" => 256, "min" => 1, "type" => "string"}, "StartTimerFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "StartTimerFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "timerId" => %{"shape" => "TimerId"}}, "required" => ["timerId", "cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "DescribeDomainInput" => %{"members" => %{"name" => %{"shape" => "DomainName"}}, "required" => ["name"], "type" => "structure"}, "FunctionId" => %{"max" => 256, "min" => 1, "type" => "string"}, "TimerStartedEventAttributes" => %{"members" => %{"control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "startToFireTimeout" => %{"shape" => "DurationInSeconds"}, "timerId" => %{"shape" => "TimerId"}}, "required" => ["timerId", "startToFireTimeout", "decisionTaskCompletedEventId"], "type" => "structure"}, "FailWorkflowExecutionFailedCause" => %{"enum" => ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "WorkflowExecutionTimedOutEventAttributes" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "timeoutType" => %{"shape" => "WorkflowExecutionTimeoutType"}}, "required" => ["timeoutType", "childPolicy"], "type" => "structure"}, "DeprecateDomainInput" => %{"members" => %{"name" => %{"shape" => "DomainName"}}, "required" => ["name"], "type" => "structure"}, "RespondActivityTaskCanceledInput" => %{"members" => %{"details" => %{"shape" => "Data"}, "taskToken" => %{"shape" => "TaskToken"}}, "required" => ["taskToken"], "type" => "structure"}, "EventId" => %{"type" => "long"}, "ActivityTaskScheduledEventAttributes" => %{"members" => %{"activityId" => %{"shape" => "ActivityId"}, "activityType" => %{"shape" => "ActivityType"}, "control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "heartbeatTimeout" => %{"shape" => "DurationInSecondsOptional"}, "input" => %{"shape" => "Data"}, "scheduleToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "scheduleToStartTimeout" => %{"shape" => "DurationInSecondsOptional"}, "startToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}}, "required" => ["activityType", "activityId", "taskList", "decisionTaskCompletedEventId"], "type" => "structure"}, "RegistrationStatus" => %{"enum" => ["REGISTERED", "DEPRECATED"], "type" => "string"}, "ActivityTypeConfiguration" => %{"members" => %{"defaultTaskHeartbeatTimeout" => %{"shape" => "DurationInSecondsOptional"}, "defaultTaskList" => %{"shape" => "TaskList"}, "defaultTaskPriority" => %{"shape" => "TaskPriority"}, "defaultTaskScheduleToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "defaultTaskScheduleToStartTimeout" => %{"shape" => "DurationInSecondsOptional"}, "defaultTaskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}}, "type" => "structure"}, "ListWorkflowTypesInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "maximumPageSize" => %{"shape" => "PageSize"}, "name" => %{"shape" => "Name"}, "nextPageToken" => %{"shape" => "PageToken"}, "registrationStatus" => %{"shape" => "RegistrationStatus"}, "reverseOrder" => %{"shape" => "ReverseOrder"}}, "required" => ["domain", "registrationStatus"], "type" => "structure"}, "WorkflowExecutionCancelRequestedCause" => %{"enum" => ["CHILD_POLICY_APPLIED"], "type" => "string"}, "ActivityTaskStartedEventAttributes" => %{"members" => %{"identity" => %{"shape" => "Identity"}, "scheduledEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId"], "type" => "structure"}, "CountPendingDecisionTasksInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "taskList" => %{"shape" => "TaskList"}}, "required" => ["domain", "taskList"], "type" => "structure"}, "Decision" => %{"members" => %{"cancelTimerDecisionAttributes" => %{"shape" => "CancelTimerDecisionAttributes"}, "cancelWorkflowExecutionDecisionAttributes" => %{"shape" => "CancelWorkflowExecutionDecisionAttributes"}, "completeWorkflowExecutionDecisionAttributes" => %{"shape" => "CompleteWorkflowExecutionDecisionAttributes"}, "continueAsNewWorkflowExecutionDecisionAttributes" => %{"shape" => "ContinueAsNewWorkflowExecutionDecisionAttributes"}, "decisionType" => %{"shape" => "DecisionType"}, "failWorkflowExecutionDecisionAttributes" => %{"shape" => "FailWorkflowExecutionDecisionAttributes"}, "recordMarkerDecisionAttributes" => %{"shape" => "RecordMarkerDecisionAttributes"}, "requestCancelActivityTaskDecisionAttributes" => %{"shape" => "RequestCancelActivityTaskDecisionAttributes"}, "requestCancelExternalWorkflowExecutionDecisionAttributes" => %{"shape" => "RequestCancelExternalWorkflowExecutionDecisionAttributes"}, "scheduleActivityTaskDecisionAttributes" => %{"shape" => "ScheduleActivityTaskDecisionAttributes"}, "scheduleLambdaFunctionDecisionAttributes" => %{"shape" => "ScheduleLambdaFunctionDecisionAttributes"}, "signalExternalWorkflowExecutionDecisionAttributes" => %{"shape" => "SignalExternalWorkflowExecutionDecisionAttributes"}, "startChildWorkflowExecutionDecisionAttributes" => %{"shape" => "StartChildWorkflowExecutionDecisionAttributes"}, "startTimerDecisionAttributes" => %{"shape" => "StartTimerDecisionAttributes"}}, "required" => ["decisionType"], "type" => "structure"}, "WorkflowExecutionOpenCounts" => %{"members" => %{"openActivityTasks" => %{"shape" => "Count"}, "openChildWorkflowExecutions" => %{"shape" => "Count"}, "openDecisionTasks" => %{"shape" => "OpenDecisionTasksCount"}, "openLambdaFunctions" => %{"shape" => "Count"}, "openTimers" => %{"shape" => "Count"}}, "required" => ["openActivityTasks", "openDecisionTasks", "openTimers", "openChildWorkflowExecutions"], "type" => "structure"}, "RecordMarkerFailedCause" => %{"enum" => ["OPERATION_NOT_PERMITTED"], "type" => "string"}, "PollForActivityTaskInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "identity" => %{"shape" => "Identity"}, "taskList" => %{"shape" => "TaskList"}}, "required" => ["domain", "taskList"], "type" => "structure"}, "WorkflowExecutionStartedEventAttributes" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "continuedExecutionRunId" => %{"shape" => "WorkflowRunIdOptional"}, "executionStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "input" => %{"shape" => "Data"}, "lambdaRole" => %{"shape" => "Arn"}, "parentInitiatedEventId" => %{"shape" => "EventId"}, "parentWorkflowExecution" => %{"shape" => "WorkflowExecution"}, "tagList" => %{"shape" => "TagList"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}, "taskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["childPolicy", "taskList", "workflowType"], "type" => "structure"}, "Description" => %{"max" => 1024, "type" => "string"}, "DomainConfiguration" => %{"members" => %{"workflowExecutionRetentionPeriodInDays" => %{"shape" => "DurationInDays"}}, "required" => ["workflowExecutionRetentionPeriodInDays"], "type" => "structure"}, "LambdaFunctionCompletedEventAttributes" => %{"members" => %{"result" => %{"shape" => "Data"}, "scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId", "startedEventId"], "type" => "structure"}, "DecisionType" => %{"enum" => ["ScheduleActivityTask", "RequestCancelActivityTask", "CompleteWorkflowExecution", "FailWorkflowExecution", "CancelWorkflowExecution", "ContinueAsNewWorkflowExecution", "RecordMarker", "StartTimer", "CancelTimer", "SignalExternalWorkflowExecution", "RequestCancelExternalWorkflowExecution", "StartChildWorkflowExecution", "ScheduleLambdaFunction"], "type" => "string"}, "OperationNotPermittedFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Version" => %{"max" => 64, "min" => 1, "type" => "string"}, "LambdaFunctionTimeoutType" => %{"enum" => ["START_TO_CLOSE"], "type" => "string"}, "DecisionTask" => %{"members" => %{"events" => %{"shape" => "HistoryEventList"}, "nextPageToken" => %{"shape" => "PageToken"}, "previousStartedEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}, "taskToken" => %{"shape" => "TaskToken"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["taskToken", "startedEventId", "workflowExecution", "workflowType", "events"], "type" => "structure"}, "TypeAlreadyExistsFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CountClosedWorkflowExecutionsInput" => %{"members" => %{"closeStatusFilter" => %{"shape" => "CloseStatusFilter"}, "closeTimeFilter" => %{"shape" => "ExecutionTimeFilter"}, "domain" => %{"shape" => "DomainName"}, "executionFilter" => %{"shape" => "WorkflowExecutionFilter"}, "startTimeFilter" => %{"shape" => "ExecutionTimeFilter"}, "tagFilter" => %{"shape" => "TagFilter"}, "typeFilter" => %{"shape" => "WorkflowTypeFilter"}}, "required" => ["domain"], "type" => "structure"}, "PageToken" => %{"max" => 2048, "type" => "string"}, "DecisionTaskStartedEventAttributes" => %{"members" => %{"identity" => %{"shape" => "Identity"}, "scheduledEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId"], "type" => "structure"}, "DeprecateWorkflowTypeInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["domain", "workflowType"], "type" => "structure"}, "RecordMarkerDecisionAttributes" => %{"members" => %{"details" => %{"shape" => "Data"}, "markerName" => %{"shape" => "MarkerName"}}, "required" => ["markerName"], "type" => "structure"}, "WorkflowTypeDetail" => %{"members" => %{"configuration" => %{"shape" => "WorkflowTypeConfiguration"}, "typeInfo" => %{"shape" => "WorkflowTypeInfo"}}, "required" => ["typeInfo", "configuration"], "type" => "structure"}, "WorkflowExecutionCancelRequestedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "WorkflowExecutionCancelRequestedCause"}, "externalInitiatedEventId" => %{"shape" => "EventId"}, "externalWorkflowExecution" => %{"shape" => "WorkflowExecution"}}, "type" => "structure"}, "DomainName" => %{"max" => 256, "min" => 1, "type" => "string"}, "DomainAlreadyExistsFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "WorkflowExecutionTerminatedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "WorkflowExecutionTerminatedCause"}, "childPolicy" => %{"shape" => "ChildPolicy"}, "details" => %{"shape" => "Data"}, "reason" => %{"shape" => "TerminateReason"}}, "required" => ["childPolicy"], "type" => "structure"}, "Tag" => %{"max" => 256, "min" => 0, "type" => "string"}, "TerminateWorkflowExecutionInput" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "details" => %{"shape" => "Data"}, "domain" => %{"shape" => "DomainName"}, "reason" => %{"shape" => "TerminateReason"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["domain", "workflowId"], "type" => "structure"}, "TerminateReason" => %{"max" => 256, "type" => "string"}, "ActivityTypeDetail" => %{"members" => %{"configuration" => %{"shape" => "ActivityTypeConfiguration"}, "typeInfo" => %{"shape" => "ActivityTypeInfo"}}, "required" => ["typeInfo", "configuration"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "RegisterActivityTypeInput" => %{"members" => %{"defaultTaskHeartbeatTimeout" => %{"shape" => "DurationInSecondsOptional"}, "defaultTaskList" => %{"shape" => "TaskList"}, "defaultTaskPriority" => %{"shape" => "TaskPriority"}, "defaultTaskScheduleToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "defaultTaskScheduleToStartTimeout" => %{"shape" => "DurationInSecondsOptional"}, "defaultTaskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "description" => %{"shape" => "Description"}, "domain" => %{"shape" => "DomainName"}, "name" => %{"shape" => "Name"}, "version" => %{"shape" => "Version"}}, "required" => ["domain", "name", "version"], "type" => "structure"}, "LimitExceededFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StartLambdaFunctionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "StartLambdaFunctionFailedCause"}, "message" => %{"shape" => "CauseMessage"}, "scheduledEventId" => %{"shape" => "EventId"}}, "type" => "structure"}, "SignalExternalWorkflowExecutionFailedCause" => %{"enum" => ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "DefaultUndefinedFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ChildWorkflowExecutionTerminatedEventAttributes" => %{"members" => %{"initiatedEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowExecution", "workflowType", "initiatedEventId", "startedEventId"], "type" => "structure"}, "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes" => %{"members" => %{"control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["workflowId", "decisionTaskCompletedEventId"], "type" => "structure"}, "DescribeWorkflowExecutionInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "execution" => %{"shape" => "WorkflowExecution"}}, "required" => ["domain", "execution"], "type" => "structure"}, "CloseStatus" => %{"enum" => ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"], "type" => "string"}, "TypeDeprecatedFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CancelWorkflowExecutionDecisionAttributes" => %{"members" => %{"details" => %{"shape" => "Data"}}, "type" => "structure"}, "TagFilter" => %{"members" => %{"tag" => %{"shape" => "Tag"}}, "required" => ["tag"], "type" => "structure"}, "Identity" => %{"max" => 256, "type" => "string"}, "ExecutionTimeFilter" => %{"members" => %{"latestDate" => %{"shape" => "Timestamp"}, "oldestDate" => %{"shape" => "Timestamp"}}, "required" => ["oldestDate"], "type" => "structure"}, "ActivityTaskFailedEventAttributes" => %{"members" => %{"details" => %{"shape" => "Data"}, "reason" => %{"shape" => "FailureReason"}, "scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId", "startedEventId"], "type" => "structure"}, "WorkflowExecutionInfo" => %{"members" => %{"cancelRequested" => %{"shape" => "Canceled"}, "closeStatus" => %{"shape" => "CloseStatus"}, "closeTimestamp" => %{"shape" => "Timestamp"}, "execution" => %{"shape" => "WorkflowExecution"}, "executionStatus" => %{"shape" => "ExecutionStatus"}, "parent" => %{"shape" => "WorkflowExecution"}, "startTimestamp" => %{"shape" => "Timestamp"}, "tagList" => %{"shape" => "TagList"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["execution", "workflowType", "startTimestamp", "executionStatus"], "type" => "structure"}, "TagList" => %{"max" => 5, "member" => %{"shape" => "Tag"}, "type" => "list"}, "DecisionTaskScheduledEventAttributes" => %{"members" => %{"startToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}}, "required" => ["taskList"], "type" => "structure"}, "PendingTaskCount" => %{"members" => %{"count" => %{"shape" => "Count"}, "truncated" => %{"shape" => "Truncated"}}, "required" => ["count"], "type" => "structure"}, "LimitedData" => %{"max" => 2048, "type" => "string"}, "WorkflowExecutionDetail" => %{"members" => %{"executionConfiguration" => %{"shape" => "WorkflowExecutionConfiguration"}, "executionInfo" => %{"shape" => "WorkflowExecutionInfo"}, "latestActivityTaskTimestamp" => %{"shape" => "Timestamp"}, "latestExecutionContext" => %{"shape" => "Data"}, "openCounts" => %{"shape" => "WorkflowExecutionOpenCounts"}}, "required" => ["executionInfo", "executionConfiguration", "openCounts"], "type" => "structure"}, "WorkflowExecutionTerminatedCause" => %{"enum" => ["CHILD_POLICY_APPLIED", "EVENT_LIMIT_EXCEEDED", "OPERATOR_INITIATED"], "type" => "string"}, "FunctionInput" => %{"max" => 32768, "min" => 0, "type" => "string"}, "RecordMarkerFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "RecordMarkerFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "markerName" => %{"shape" => "MarkerName"}}, "required" => ["markerName", "cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "Run" => %{"members" => %{"runId" => %{"shape" => "WorkflowRunId"}}, "type" => "structure"}, "WorkflowExecutionInfoList" => %{"member" => %{"shape" => "WorkflowExecutionInfo"}, "type" => "list"}, "ListDomainsInput" => %{"members" => %{"maximumPageSize" => %{"shape" => "PageSize"}, "nextPageToken" => %{"shape" => "PageToken"}, "registrationStatus" => %{"shape" => "RegistrationStatus"}, "reverseOrder" => %{"shape" => "ReverseOrder"}}, "required" => ["registrationStatus"], "type" => "structure"}, "RespondActivityTaskFailedInput" => %{"members" => %{"details" => %{"shape" => "Data"}, "reason" => %{"shape" => "FailureReason"}, "taskToken" => %{"shape" => "TaskToken"}}, "required" => ["taskToken"], "type" => "structure"}, "WorkflowTypeInfos" => %{"members" => %{"nextPageToken" => %{"shape" => "PageToken"}, "typeInfos" => %{"shape" => "WorkflowTypeInfoList"}}, "required" => ["typeInfos"], "type" => "structure"}, "Arn" => %{"max" => 1600, "min" => 1, "type" => "string"}, "ScheduleLambdaFunctionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "ScheduleLambdaFunctionFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "id" => %{"shape" => "FunctionId"}, "name" => %{"shape" => "FunctionName"}}, "required" => ["id", "name", "cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "DomainDetail" => %{"members" => %{"configuration" => %{"shape" => "DomainConfiguration"}, "domainInfo" => %{"shape" => "DomainInfo"}}, "required" => ["domainInfo", "configuration"], "type" => "structure"}, "FailWorkflowExecutionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "FailWorkflowExecutionFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}}, "required" => ["cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "ContinueAsNewWorkflowExecutionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "ContinueAsNewWorkflowExecutionFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}}, "required" => ["cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "ActivityTypeInfos" => %{"members" => %{"nextPageToken" => %{"shape" => "PageToken"}, "typeInfos" => %{"shape" => "ActivityTypeInfoList"}}, "required" => ["typeInfos"], "type" => "structure"}, "ActivityTaskTimedOutEventAttributes" => %{"members" => %{"details" => %{"shape" => "LimitedData"}, "scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}, "timeoutType" => %{"shape" => "ActivityTaskTimeoutType"}}, "required" => ["timeoutType", "scheduledEventId", "startedEventId"], "type" => "structure"}, "StartChildWorkflowExecutionInitiatedEventAttributes" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "executionStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "input" => %{"shape" => "Data"}, "lambdaRole" => %{"shape" => "Arn"}, "tagList" => %{"shape" => "TagList"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}, "taskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "workflowId" => %{"shape" => "WorkflowId"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowId", "workflowType", "taskList", "decisionTaskCompletedEventId", "childPolicy"], "type" => "structure"}, "CauseMessage" => %{"max" => 1728, "type" => "string"}, "StartChildWorkflowExecutionFailedCause" => %{"enum" => ["WORKFLOW_TYPE_DOES_NOT_EXIST", "WORKFLOW_TYPE_DEPRECATED", "OPEN_CHILDREN_LIMIT_EXCEEDED", "OPEN_WORKFLOWS_LIMIT_EXCEEDED", "CHILD_CREATION_RATE_EXCEEDED", "WORKFLOW_ALREADY_RUNNING", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "WorkflowExecution" => %{"members" => %{"runId" => %{"shape" => "WorkflowRunId"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["workflowId", "runId"], "type" => "structure"}, "LambdaFunctionStartedEventAttributes" => %{"members" => %{"scheduledEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId"], "type" => "structure"}, "ScheduleActivityTaskFailedEventAttributes" => %{"members" => %{"activityId" => %{"shape" => "ActivityId"}, "activityType" => %{"shape" => "ActivityType"}, "cause" => %{"shape" => "ScheduleActivityTaskFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}}, "required" => ["activityType", "activityId", "cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "ChildWorkflowExecutionStartedEventAttributes" => %{"members" => %{"initiatedEventId" => %{"shape" => "EventId"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowExecution", "workflowType", "initiatedEventId"], "type" => "structure"}, "History" => %{"members" => %{"events" => %{"shape" => "HistoryEventList"}, "nextPageToken" => %{"shape" => "PageToken"}}, "required" => ["events"], "type" => "structure"}, "RequestCancelExternalWorkflowExecutionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "RequestCancelExternalWorkflowExecutionFailedCause"}, "control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "initiatedEventId" => %{"shape" => "EventId"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["workflowId", "cause", "initiatedEventId", "decisionTaskCompletedEventId"], "type" => "structure"}, "RespondDecisionTaskCompletedInput" => %{"members" => %{"decisions" => %{"shape" => "DecisionList"}, "executionContext" => %{"shape" => "Data"}, "taskToken" => %{"shape" => "TaskToken"}}, "required" => ["taskToken"], "type" => "structure"}, "OpenDecisionTasksCount" => %{"max" => 1, "min" => 0, "type" => "integer"}, "PollForDecisionTaskInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "identity" => %{"shape" => "Identity"}, "maximumPageSize" => %{"shape" => "PageSize"}, "nextPageToken" => %{"shape" => "PageToken"}, "reverseOrder" => %{"shape" => "ReverseOrder"}, "taskList" => %{"shape" => "TaskList"}}, "required" => ["domain", "taskList"], "type" => "structure"}, "RegisterDomainInput" => %{"members" => %{"description" => %{"shape" => "Description"}, "name" => %{"shape" => "DomainName"}, "workflowExecutionRetentionPeriodInDays" => %{"shape" => "DurationInDays"}}, "required" => ["name", "workflowExecutionRetentionPeriodInDays"], "type" => "structure"}, "StartChildWorkflowExecutionDecisionAttributes" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "control" => %{"shape" => "Data"}, "executionStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "input" => %{"shape" => "Data"}, "lambdaRole" => %{"shape" => "Arn"}, "tagList" => %{"shape" => "TagList"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}, "taskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "workflowId" => %{"shape" => "WorkflowId"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowType", "workflowId"], "type" => "structure"}, "CancelWorkflowExecutionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "CancelWorkflowExecutionFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}}, "required" => ["cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "WorkflowExecutionSignaledEventAttributes" => %{"members" => %{"externalInitiatedEventId" => %{"shape" => "EventId"}, "externalWorkflowExecution" => %{"shape" => "WorkflowExecution"}, "input" => %{"shape" => "Data"}, "signalName" => %{"shape" => "SignalName"}}, "required" => ["signalName"], "type" => "structure"}, "CompleteWorkflowExecutionDecisionAttributes" => %{"members" => %{"result" => %{"shape" => "Data"}}, "type" => "structure"}, "WorkflowId" => %{"max" => 256, "min" => 1, "type" => "string"}, "WorkflowExecutionFilter" => %{"members" => %{"workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["workflowId"], "type" => "structure"}, "RequestCancelExternalWorkflowExecutionFailedCause" => %{"enum" => ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "WorkflowExecutionContinuedAsNewEventAttributes" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "executionStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "input" => %{"shape" => "Data"}, "lambdaRole" => %{"shape" => "Arn"}, "newExecutionRunId" => %{"shape" => "WorkflowRunId"}, "tagList" => %{"shape" => "TagList"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}, "taskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["decisionTaskCompletedEventId", "newExecutionRunId", "taskList", "childPolicy", "workflowType"], "type" => "structure"}, "CancelTimerDecisionAttributes" => %{"members" => %{"timerId" => %{"shape" => "TimerId"}}, "required" => ["timerId"], "type" => "structure"}, "DeprecateActivityTypeInput" => %{"members" => %{"activityType" => %{"shape" => "ActivityType"}, "domain" => %{"shape" => "DomainName"}}, "required" => ["domain", "activityType"], "type" => "structure"}, "WorkflowTypeConfiguration" => %{"members" => %{"defaultChildPolicy" => %{"shape" => "ChildPolicy"}, "defaultExecutionStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "defaultLambdaRole" => %{"shape" => "Arn"}, "defaultTaskList" => %{"shape" => "TaskList"}, "defaultTaskPriority" => %{"shape" => "TaskPriority"}, "defaultTaskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}}, "type" => "structure"}, "DomainInfo" => %{"members" => %{"description" => %{"shape" => "Description"}, "name" => %{"shape" => "DomainName"}, "status" => %{"shape" => "RegistrationStatus"}}, "required" => ["name", "status"], "type" => "structure"}, "ChildPolicy" => %{"enum" => ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], "type" => "string"}, "ActivityTaskCanceledEventAttributes" => %{"members" => %{"details" => %{"shape" => "Data"}, "latestCancelRequestedEventId" => %{"shape" => "EventId"}, "scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId", "startedEventId"], "type" => "structure"}, "ReverseOrder" => %{"type" => "boolean"}, "ScheduleLambdaFunctionDecisionAttributes" => %{"members" => %{"control" => %{"shape" => "Data"}, "id" => %{"shape" => "FunctionId"}, "input" => %{"shape" => "FunctionInput"}, "name" => %{"shape" => "FunctionName"}, "startToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}}, "required" => ["id", "name"], "type" => "structure"}, "ActivityTaskStatus" => %{"members" => %{"cancelRequested" => %{"shape" => "Canceled"}}, "required" => ["cancelRequested"], "type" => "structure"}, "WorkflowExecutionCount" => %{"members" => %{"count" => %{"shape" => "Count"}, "truncated" => %{"shape" => "Truncated"}}, "required" => ["count"], "type" => "structure"}, "CompleteWorkflowExecutionFailedCause" => %{"enum" => ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "ActivityTaskCompletedEventAttributes" => %{"members" => %{"result" => %{"shape" => "Data"}, "scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId", "startedEventId"], "type" => "structure"}, "Truncated" => %{"type" => "boolean"}, "Data" => %{"max" => 32768, "type" => "string"}, "StartChildWorkflowExecutionFailedEventAttributes" => %{"members" => %{"cause" => %{"shape" => "StartChildWorkflowExecutionFailedCause"}, "control" => %{"shape" => "Data"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "initiatedEventId" => %{"shape" => "EventId"}, "workflowId" => %{"shape" => "WorkflowId"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowType", "cause", "workflowId", "initiatedEventId", "decisionTaskCompletedEventId"], "type" => "structure"}, "DomainDeprecatedFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ScheduleActivityTaskFailedCause" => %{"enum" => ["ACTIVITY_TYPE_DEPRECATED", "ACTIVITY_TYPE_DOES_NOT_EXIST", "ACTIVITY_ID_ALREADY_IN_USE", "OPEN_ACTIVITIES_LIMIT_EXCEEDED", "ACTIVITY_CREATION_RATE_EXCEEDED", "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED", "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "RegisterWorkflowTypeInput" => %{"members" => %{"defaultChildPolicy" => %{"shape" => "ChildPolicy"}, "defaultExecutionStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "defaultLambdaRole" => %{"shape" => "Arn"}, "defaultTaskList" => %{"shape" => "TaskList"}, "defaultTaskPriority" => %{"shape" => "TaskPriority"}, "defaultTaskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "description" => %{"shape" => "Description"}, "domain" => %{"shape" => "DomainName"}, "name" => %{"shape" => "Name"}, "version" => %{"shape" => "Version"}}, "required" => ["domain", "name", "version"], "type" => "structure"}, "EventType" => %{"enum" => ["WorkflowExecutionStarted", "WorkflowExecutionCancelRequested", "WorkflowExecutionCompleted", "CompleteWorkflowExecutionFailed", "WorkflowExecutionFailed", "FailWorkflowExecutionFailed", "WorkflowExecutionTimedOut", "WorkflowExecutionCanceled", "CancelWorkflowExecutionFailed", "WorkflowExecutionContinuedAsNew", "ContinueAsNewWorkflowExecutionFailed", "WorkflowExecutionTerminated", "DecisionTaskScheduled", "DecisionTaskStarted", "DecisionTaskCompleted", "DecisionTaskTimedOut", "ActivityTaskScheduled", "ScheduleActivityTaskFailed", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed", "ActivityTaskTimedOut", "ActivityTaskCanceled", "ActivityTaskCancelRequested", "RequestCancelActivityTaskFailed", "WorkflowExecutionSignaled", "MarkerRecorded", "RecordMarkerFailed", "TimerStarted", "StartTimerFailed", "TimerFired", "TimerCanceled", "CancelTimerFailed", "StartChildWorkflowExecutionInitiated", "StartChildWorkflowExecutionFailed", "ChildWorkflowExecutionStarted", "ChildWorkflowExecutionCompleted", "ChildWorkflowExecutionFailed", "ChildWorkflowExecutionTimedOut", "ChildWorkflowExecutionCanceled", "ChildWorkflowExecutionTerminated", "SignalExternalWorkflowExecutionInitiated", "SignalExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionSignaled", "RequestCancelExternalWorkflowExecutionInitiated", "RequestCancelExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionCancelRequested", "LambdaFunctionScheduled", "LambdaFunctionStarted", "LambdaFunctionCompleted", "LambdaFunctionFailed", "LambdaFunctionTimedOut", "ScheduleLambdaFunctionFailed", "StartLambdaFunctionFailed"], "type" => "string"}, "GetWorkflowExecutionHistoryInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "execution" => %{"shape" => "WorkflowExecution"}, "maximumPageSize" => %{"shape" => "PageSize"}, "nextPageToken" => %{"shape" => "PageToken"}, "reverseOrder" => %{"shape" => "ReverseOrder"}}, "required" => ["domain", "execution"], "type" => "structure"}, "ActivityId" => %{"max" => 256, "min" => 1, "type" => "string"}, "WorkflowTypeFilter" => %{"members" => %{"name" => %{"shape" => "Name"}, "version" => %{"shape" => "VersionOptional"}}, "required" => ["name"], "type" => "structure"}, "SignalName" => %{"max" => 256, "min" => 1, "type" => "string"}, "HistoryEvent" => %{"members" => %{"eventType" => %{"shape" => "EventType"}, "activityTaskCanceledEventAttributes" => %{"shape" => "ActivityTaskCanceledEventAttributes"}, "activityTaskCompletedEventAttributes" => %{"shape" => "ActivityTaskCompletedEventAttributes"}, "activityTaskFailedEventAttributes" => %{"shape" => "ActivityTaskFailedEventAttributes"}, "lambdaFunctionStartedEventAttributes" => %{"shape" => "LambdaFunctionStartedEventAttributes"}, "externalWorkflowExecutionCancelRequestedEventAttributes" => %{"shape" => "ExternalWorkflowExecutionCancelRequestedEventAttributes"}, "continueAsNewWorkflowExecutionFailedEventAttributes" => %{"shape" => "ContinueAsNewWorkflowExecutionFailedEventAttributes"}, "startChildWorkflowExecutionInitiatedEventAttributes" => %{"shape" => "StartChildWorkflowExecutionInitiatedEventAttributes"}, "lambdaFunctionTimedOutEventAttributes" => %{"shape" => "LambdaFunctionTimedOutEventAttributes"}, "childWorkflowExecutionCanceledEventAttributes" => %{"shape" => "ChildWorkflowExecutionCanceledEventAttributes"}, "workflowExecutionContinuedAsNewEventAttributes" => %{"shape" => "WorkflowExecutionContinuedAsNewEventAttributes"}, "workflowExecutionStartedEventAttributes" => %{"shape" => "WorkflowExecutionStartedEventAttributes"}, "signalExternalWorkflowExecutionFailedEventAttributes" => %{"shape" => "SignalExternalWorkflowExecutionFailedEventAttributes"}, "workflowExecutionSignaledEventAttributes" => %{"shape" => "WorkflowExecutionSignaledEventAttributes"}, "activityTaskStartedEventAttributes" => %{"shape" => "ActivityTaskStartedEventAttributes"}, "failWorkflowExecutionFailedEventAttributes" => %{"shape" => "FailWorkflowExecutionFailedEventAttributes"}, "cancelTimerFailedEventAttributes" => %{"shape" => "CancelTimerFailedEventAttributes"}, "activityTaskTimedOutEventAttributes" => %{"shape" => "ActivityTaskTimedOutEventAttributes"}, "lambdaFunctionFailedEventAttributes" => %{"shape" => "LambdaFunctionFailedEventAttributes"}, "workflowExecutionTimedOutEventAttributes" => %{"shape" => "WorkflowExecutionTimedOutEventAttributes"}, "startChildWorkflowExecutionFailedEventAttributes" => %{"shape" => "StartChildWorkflowExecutionFailedEventAttributes"}, "eventTimestamp" => %{"shape" => "Timestamp"}, "recordMarkerFailedEventAttributes" => %{"shape" => "RecordMarkerFailedEventAttributes"}, "childWorkflowExecutionStartedEventAttributes" => %{"shape" => "ChildWorkflowExecutionStartedEventAttributes"}, "childWorkflowExecutionCompletedEventAttributes" => %{"shape" => "ChildWorkflowExecutionCompletedEventAttributes"}, "childWorkflowExecutionFailedEventAttributes" => %{"shape" => "ChildWorkflowExecutionFailedEventAttributes"}, "scheduleLambdaFunctionFailedEventAttributes" => %{"shape" => "ScheduleLambdaFunctionFailedEventAttributes"}, "decisionTaskScheduledEventAttributes" => %{"shape" => "DecisionTaskScheduledEventAttributes"}, "eventId" => %{"shape" => "EventId"}, "markerRecordedEventAttributes" => %{"shape" => "MarkerRecordedEventAttributes"}, "cancelWorkflowExecutionFailedEventAttributes" => %{"shape" => "CancelWorkflowExecutionFailedEventAttributes"}, "activityTaskCancelRequestedEventAttributes" => %{"shape" => "ActivityTaskCancelRequestedEventAttributes"}, "decisionTaskTimedOutEventAttributes" => %{"shape" => "DecisionTaskTimedOutEventAttributes"}, "lambdaFunctionCompletedEventAttributes" => %{"shape" => "LambdaFunctionCompletedEventAttributes"}, "requestCancelExternalWorkflowExecutionFailedEventAttributes" => %{"shape" => "RequestCancelExternalWorkflowExecutionFailedEventAttributes"}, "completeWorkflowExecutionFailedEventAttributes" => %{"shape" => "CompleteWorkflowExecutionFailedEventAttributes"}, "workflowExecutionFailedEventAttributes" => %{"shape" => "WorkflowExecutionFailedEventAttributes"}, "childWorkflowExecutionTimedOutEventAttributes" => %{"shape" => "ChildWorkflowExecutionTimedOutEventAttributes"}, "decisionTaskStartedEventAttributes" => %{"shape" => "DecisionTaskStartedEventAttributes"}, "scheduleActivityTaskFailedEventAttributes" => %{"shape" => "ScheduleActivityTaskFailedEventAttributes"}, "decisionTaskCompletedEventAttributes" => %{"shape" => "DecisionTaskCompletedEventAttributes"}, "signalExternalWorkflowExecutionInitiatedEventAttributes" => %{"shape" => "SignalExternalWorkflowExecutionInitiatedEventAttributes"}, "childWorkflowExecutionTerminatedEventAttributes" => %{"shape" => "ChildWorkflowExecutionTerminatedEventAttributes"}, "startTimerFailedEventAttributes" => %{"shape" => "StartTimerFailedEventAttributes"}, "startLambdaFunctionFailedEventAttributes" => %{"shape" => "StartLambdaFunctionFailedEventAttributes"}, "workflowExecutionTerminatedEventAttributes" => %{"shape" => "WorkflowExecutionTerminatedEventAttributes"}, "workflowExecutionCanceledEventAttributes" => %{"shape" => "WorkflowExecutionCanceledEventAttributes"}, "workflowExecutionCancelRequestedEventAttributes" => %{"shape" => "WorkflowExecutionCancelRequestedEventAttributes"}, "externalWorkflowExecutionSignaledEventAttributes" => %{"shape" => "ExternalWorkflowExecutionSignaledEventAttributes"}, "timerCanceledEventAttributes" => %{"shape" => "TimerCanceledEventAttributes"}, "lambdaFunctionScheduledEventAttributes" => %{"shape" => "LambdaFunctionScheduledEventAttributes"}, "requestCancelExternalWorkflowExecutionInitiatedEventAttributes" => %{"shape" => "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes"}, "timerStartedEventAttributes" => %{"shape" => "TimerStartedEventAttributes"}, "timerFiredEventAttributes" => %{"shape" => "TimerFiredEventAttributes"}, "workflowExecutionCompletedEventAttributes" => %{"shape" => "WorkflowExecutionCompletedEventAttributes"}, "requestCancelActivityTaskFailedEventAttributes" => %{"shape" => "RequestCancelActivityTaskFailedEventAttributes"}, "activityTaskScheduledEventAttributes" => %{"shape" => "ActivityTaskScheduledEventAttributes"}}, "required" => ["eventTimestamp", "eventType", "eventId"], "type" => "structure"}, "MarkerRecordedEventAttributes" => %{"members" => %{"decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "details" => %{"shape" => "Data"}, "markerName" => %{"shape" => "MarkerName"}}, "required" => ["markerName", "decisionTaskCompletedEventId"], "type" => "structure"}, "LambdaFunctionFailedEventAttributes" => %{"members" => %{"details" => %{"shape" => "Data"}, "reason" => %{"shape" => "FailureReason"}, "scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}}, "required" => ["scheduledEventId", "startedEventId"], "type" => "structure"}, "WorkflowExecutionCanceledEventAttributes" => %{"members" => %{"decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "details" => %{"shape" => "Data"}}, "required" => ["decisionTaskCompletedEventId"], "type" => "structure"}, "ActivityTaskCancelRequestedEventAttributes" => %{"members" => %{"activityId" => %{"shape" => "ActivityId"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}}, "required" => ["decisionTaskCompletedEventId", "activityId"], "type" => "structure"}, "RequestCancelActivityTaskFailedEventAttributes" => %{"members" => %{"activityId" => %{"shape" => "ActivityId"}, "cause" => %{"shape" => "RequestCancelActivityTaskFailedCause"}, "decisionTaskCompletedEventId" => %{"shape" => "EventId"}}, "required" => ["activityId", "cause", "decisionTaskCompletedEventId"], "type" => "structure"}, "ActivityTaskTimeoutType" => %{"enum" => ["START_TO_CLOSE", "SCHEDULE_TO_START", "SCHEDULE_TO_CLOSE", "HEARTBEAT"], "type" => "string"}, "WorkflowExecutionInfos" => %{"members" => %{"executionInfos" => %{"shape" => "WorkflowExecutionInfoList"}, "nextPageToken" => %{"shape" => "PageToken"}}, "required" => ["executionInfos"], "type" => "structure"}, "ListClosedWorkflowExecutionsInput" => %{"members" => %{"closeStatusFilter" => %{"shape" => "CloseStatusFilter"}, "closeTimeFilter" => %{"shape" => "ExecutionTimeFilter"}, "domain" => %{"shape" => "DomainName"}, "executionFilter" => %{"shape" => "WorkflowExecutionFilter"}, "maximumPageSize" => %{"shape" => "PageSize"}, "nextPageToken" => %{"shape" => "PageToken"}, "reverseOrder" => %{"shape" => "ReverseOrder"}, "startTimeFilter" => %{"shape" => "ExecutionTimeFilter"}, "tagFilter" => %{"shape" => "TagFilter"}, "typeFilter" => %{"shape" => "WorkflowTypeFilter"}}, "required" => ["domain"], "type" => "structure"}, "SignalWorkflowExecutionInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "input" => %{"shape" => "Data"}, "runId" => %{"shape" => "WorkflowRunIdOptional"}, "signalName" => %{"shape" => "SignalName"}, "workflowId" => %{"shape" => "WorkflowId"}}, "required" => ["domain", "workflowId", "signalName"], "type" => "structure"}, "DecisionTaskTimeoutType" => %{"enum" => ["START_TO_CLOSE"], "type" => "string"}, "ContinueAsNewWorkflowExecutionFailedCause" => %{"enum" => ["UNHANDLED_DECISION", "WORKFLOW_TYPE_DEPRECATED", "WORKFLOW_TYPE_DOES_NOT_EXIST", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "ExternalWorkflowExecutionCancelRequestedEventAttributes" => %{"members" => %{"initiatedEventId" => %{"shape" => "EventId"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}}, "required" => ["workflowExecution", "initiatedEventId"], "type" => "structure"}, "DecisionList" => %{"member" => %{"shape" => "Decision"}, "type" => "list"}, "WorkflowRunId" => %{"max" => 64, "min" => 1, "type" => "string"}, "DescribeWorkflowTypeInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["domain", "workflowType"], "type" => "structure"}, "WorkflowType" => %{"members" => %{"name" => %{"shape" => "Name"}, "version" => %{"shape" => "Version"}}, "required" => ["name", "version"], "type" => "structure"}, "ScheduleActivityTaskDecisionAttributes" => %{"members" => %{"activityId" => %{"shape" => "ActivityId"}, "activityType" => %{"shape" => "ActivityType"}, "control" => %{"shape" => "Data"}, "heartbeatTimeout" => %{"shape" => "DurationInSecondsOptional"}, "input" => %{"shape" => "Data"}, "scheduleToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "scheduleToStartTimeout" => %{"shape" => "DurationInSecondsOptional"}, "startToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}}, "required" => ["activityType", "activityId"], "type" => "structure"}, "RequestCancelActivityTaskDecisionAttributes" => %{"members" => %{"activityId" => %{"shape" => "ActivityId"}}, "required" => ["activityId"], "type" => "structure"}, "CountOpenWorkflowExecutionsInput" => %{"members" => %{"domain" => %{"shape" => "DomainName"}, "executionFilter" => %{"shape" => "WorkflowExecutionFilter"}, "startTimeFilter" => %{"shape" => "ExecutionTimeFilter"}, "tagFilter" => %{"shape" => "TagFilter"}, "typeFilter" => %{"shape" => "WorkflowTypeFilter"}}, "required" => ["domain", "startTimeFilter"], "type" => "structure"}, "FailWorkflowExecutionDecisionAttributes" => %{"members" => %{"details" => %{"shape" => "Data"}, "reason" => %{"shape" => "FailureReason"}}, "type" => "structure"}, "ChildWorkflowExecutionFailedEventAttributes" => %{"members" => %{"details" => %{"shape" => "Data"}, "initiatedEventId" => %{"shape" => "EventId"}, "reason" => %{"shape" => "FailureReason"}, "startedEventId" => %{"shape" => "EventId"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowExecution", "workflowType", "initiatedEventId", "startedEventId"], "type" => "structure"}, "CloseStatusFilter" => %{"members" => %{"status" => %{"shape" => "CloseStatus"}}, "required" => ["status"], "type" => "structure"}, "ActivityTask" => %{"members" => %{"activityId" => %{"shape" => "ActivityId"}, "activityType" => %{"shape" => "ActivityType"}, "input" => %{"shape" => "Data"}, "startedEventId" => %{"shape" => "EventId"}, "taskToken" => %{"shape" => "TaskToken"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}}, "required" => ["taskToken", "activityId", "startedEventId", "workflowExecution", "activityType"], "type" => "structure"}, "UnknownResourceFault" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StartLambdaFunctionFailedCause" => %{"enum" => ["ASSUME_ROLE_FAILED"], "type" => "string"}, "ContinueAsNewWorkflowExecutionDecisionAttributes" => %{"members" => %{"childPolicy" => %{"shape" => "ChildPolicy"}, "executionStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "input" => %{"shape" => "Data"}, "lambdaRole" => %{"shape" => "Arn"}, "tagList" => %{"shape" => "TagList"}, "taskList" => %{"shape" => "TaskList"}, "taskPriority" => %{"shape" => "TaskPriority"}, "taskStartToCloseTimeout" => %{"shape" => "DurationInSecondsOptional"}, "workflowTypeVersion" => %{"shape" => "Version"}}, "type" => "structure"}, "ChildWorkflowExecutionTimedOutEventAttributes" => %{"members" => %{"initiatedEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}, "timeoutType" => %{"shape" => "WorkflowExecutionTimeoutType"}, "workflowExecution" => %{"shape" => "WorkflowExecution"}, "workflowType" => %{"shape" => "WorkflowType"}}, "required" => ["workflowExecution", "workflowType", "timeoutType", "initiatedEventId", "startedEventId"], "type" => "structure"}, "TimerCanceledEventAttributes" => %{"members" => %{"decisionTaskCompletedEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}, "timerId" => %{"shape" => "TimerId"}}, "required" => ["timerId", "startedEventId", "decisionTaskCompletedEventId"], "type" => "structure"}, "RecordActivityTaskHeartbeatInput" => %{"members" => %{"details" => %{"shape" => "LimitedData"}, "taskToken" => %{"shape" => "TaskToken"}}, "required" => ["taskToken"], "type" => "structure"}, "DecisionTaskTimedOutEventAttributes" => %{"members" => %{"scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}, "timeoutType" => %{"shape" => "DecisionTaskTimeoutType"}}, "required" => ["timeoutType", "scheduledEventId", "startedEventId"], "type" => "structure"}, "StartTimerFailedCause" => %{"enum" => ["TIMER_ID_ALREADY_IN_USE", "OPEN_TIMERS_LIMIT_EXCEEDED", "TIMER_CREATION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], "type" => "string"}, "LambdaFunctionTimedOutEventAttributes" => %{"members" => %{"scheduledEventId" => %{"shape" => "EventId"}, "startedEventId" => %{"shape" => "EventId"}, "timeoutType" => %{"shape" => "LambdaFunctionTimeoutType"}}, "required" => ["scheduledEventId", "startedEventId"], "type" => "structure"}}
  end
end