defmodule Baiji.SFN do
  @moduledoc """
  AWS Step Functions

  AWS Step Functions is a web service that enables you to coordinate the
  components of distributed applications and microservices using visual
  workflows. You build applications from individual components that each
  perform a discrete function, or *task*, allowing you to scale and change
  applications quickly. Step Functions provides a graphical console to
  visualize the components of your application as a series of steps. It
  automatically triggers and tracks each step, and retries when there are
  errors, so your application executes in order and as expected, every time.
  Step Functions logs the state of each step, so when things do go wrong, you
  can diagnose and debug problems quickly.

  Step Functions manages the operations and underlying infrastructure for you
  to ensure your application is available at any scale. You can run tasks on
  the AWS cloud, on your own servers, or an any system that has access to
  AWS. Step Functions can be accessed and used with the Step Functions
  console, the AWS SDKs (included with your Beta release invitation email),
  or an HTTP API (the subject of this document).
  """
  
  @doc """
  Creates an activity.
  """
  def create_activity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateActivity",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Creates a state machine.
  """
  def create_state_machine(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateStateMachine",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Deletes an activity.
  """
  def delete_activity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteActivity",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Deletes a state machine. This is an asynchronous operation-- it sets the
  state machine's status to "DELETING" and begins the delete process.
  """
  def delete_state_machine(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteStateMachine",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Describes an activity.
  """
  def describe_activity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeActivity",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Describes an execution.
  """
  def describe_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeExecution",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Describes a state machine.
  """
  def describe_state_machine(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStateMachine",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Used by workers to retrieve a task (with the specified activity ARN)
  scheduled for execution by a running state machine. This initiates a long
  poll, where the service holds the HTTP connection open and responds as soon
  as a task becomes available (i.e. an execution of a task of this type is
  needed.) The maximum time the service holds on to the request before
  responding is 60 seconds. If no task is available within 60 seconds, the
  poll will return an empty result, that is, the `taskToken` returned is an
  empty string.

  <important> Workers should set their client side socket timeout to at least
  65 seconds (5 seconds higher than the maximum time the service may hold the
  poll request).

  </important>
  """
  def get_activity_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetActivityTask",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Returns the history of the specified execution as a list of events. By
  default, the results are returned in ascending order of the `timeStamp` of
  the events. Use the `reverseOrder` parameter to get the latest events
  first. The results may be split into multiple pages. To retrieve subsequent
  pages, make the call again using the `nextToken` returned by the previous
  call.
  """
  def get_execution_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetExecutionHistory",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Lists the existing activities. The results may be split into multiple
  pages. To retrieve subsequent pages, make the call again using the
  `nextToken` returned by the previous call.
  """
  def list_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListActivities",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Lists the executions of a state machine that meet the filtering criteria.
  The results may be split into multiple pages. To retrieve subsequent pages,
  make the call again using the `nextToken` returned by the previous call.
  """
  def list_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListExecutions",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Lists the existing state machines. The results may be split into multiple
  pages. To retrieve subsequent pages, make the call again using the
  `nextToken` returned by the previous call.
  """
  def list_state_machines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListStateMachines",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Used by workers to report that the task identified by the `taskToken`
  failed.
  """
  def send_task_failure(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SendTaskFailure",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Used by workers to report to the service that the task represented by the
  specified `taskToken` is still making progress. This action resets the
  `Heartbeat` clock. The `Heartbeat` threshold is specified in the state
  machine's Amazon States Language definition. This action does not in itself
  create an event in the execution history. However, if the task times out,
  the execution history will contain an `ActivityTimedOut` event.

  <note> The `Timeout` of a task, defined in the state machine's Amazon
  States Language definition, is its maximum allowed duration, regardless of
  the number of `SendTaskHeartbeat` requests received.

  </note> <note> This operation is only useful for long-lived tasks to report
  the liveliness of the task.

  </note>
  """
  def send_task_heartbeat(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SendTaskHeartbeat",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Used by workers to report that the task identified by the `taskToken`
  completed successfully.
  """
  def send_task_success(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SendTaskSuccess",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Starts a state machine execution.
  """
  def start_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartExecution",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
  @doc """
  Stops an execution.
  """
  def stop_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "states",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopExecution",
      
      target_prefix:  "AWSStepFunctions",
      
      type:           :json,
      version:        "2016-11-23",
      method:         :post
    }
  end
  
end