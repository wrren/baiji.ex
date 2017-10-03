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
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateActivity",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "CreateActivityInput",
      output_shape:     "CreateActivityOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a state machine.
  """
  def create_state_machine(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateStateMachine",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "CreateStateMachineInput",
      output_shape:     "CreateStateMachineOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes an activity.
  """
  def delete_activity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteActivity",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "DeleteActivityInput",
      output_shape:     "DeleteActivityOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a state machine. This is an asynchronous operation-- it sets the
  state machine's status to "DELETING" and begins the delete process.
  """
  def delete_state_machine(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteStateMachine",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "DeleteStateMachineInput",
      output_shape:     "DeleteStateMachineOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes an activity.
  """
  def describe_activity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeActivity",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "DescribeActivityInput",
      output_shape:     "DescribeActivityOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes an execution.
  """
  def describe_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeExecution",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "DescribeExecutionInput",
      output_shape:     "DescribeExecutionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes a state machine.
  """
  def describe_state_machine(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeStateMachine",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "DescribeStateMachineInput",
      output_shape:     "DescribeStateMachineOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetActivityTask",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "GetActivityTaskInput",
      output_shape:     "GetActivityTaskOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetExecutionHistory",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "GetExecutionHistoryInput",
      output_shape:     "GetExecutionHistoryOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the existing activities. The results may be split into multiple
  pages. To retrieve subsequent pages, make the call again using the
  `nextToken` returned by the previous call.
  """
  def list_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListActivities",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "ListActivitiesInput",
      output_shape:     "ListActivitiesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the executions of a state machine that meet the filtering criteria.
  The results may be split into multiple pages. To retrieve subsequent pages,
  make the call again using the `nextToken` returned by the previous call.
  """
  def list_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListExecutions",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "ListExecutionsInput",
      output_shape:     "ListExecutionsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the existing state machines. The results may be split into multiple
  pages. To retrieve subsequent pages, make the call again using the
  `nextToken` returned by the previous call.
  """
  def list_state_machines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListStateMachines",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "ListStateMachinesInput",
      output_shape:     "ListStateMachinesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Used by workers to report that the task identified by the `taskToken`
  failed.
  """
  def send_task_failure(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SendTaskFailure",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "SendTaskFailureInput",
      output_shape:     "SendTaskFailureOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SendTaskHeartbeat",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "SendTaskHeartbeatInput",
      output_shape:     "SendTaskHeartbeatOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Used by workers to report that the task identified by the `taskToken`
  completed successfully.
  """
  def send_task_success(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SendTaskSuccess",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "SendTaskSuccessInput",
      output_shape:     "SendTaskSuccessOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts a state machine execution.
  """
  def start_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartExecution",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "StartExecutionInput",
      output_shape:     "StartExecutionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Stops an execution.
  """
  def stop_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "states",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopExecution",
      
      target_prefix:    "AWSStepFunctions",
      
      endpoint_prefix:  "states",
      type:             :json,
      version:          "2016-11-23",
      method:           :post,
      input_shape:      "StopExecutionInput",
      output_shape:     "StopExecutionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"PageSize" => %{"max" => 1000, "min" => 0, "type" => "integer"}, "HistoryEventList" => %{"member" => %{"shape" => "HistoryEvent"}, "type" => "list"}, "ListActivitiesOutput" => %{"members" => %{"activities" => %{"shape" => "ActivityList"}, "nextToken" => %{"shape" => "PageToken"}}, "required" => ["activities"], "type" => "structure"}, "ExecutionStatus" => %{"enum" => ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"], "type" => "string"}, "ActivityWorkerLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListActivitiesInput" => %{"members" => %{"maxResults" => %{"shape" => "PageSize"}, "nextToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "InvalidOutput" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "DeleteActivityInput" => %{"members" => %{"activityArn" => %{"shape" => "Arn"}}, "required" => ["activityArn"], "type" => "structure"}, "DeleteStateMachineInput" => %{"members" => %{"stateMachineArn" => %{"shape" => "Arn"}}, "required" => ["stateMachineArn"], "type" => "structure"}, "ExecutionAbortedEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "DescribeExecutionOutput" => %{"members" => %{"executionArn" => %{"shape" => "Arn"}, "input" => %{"shape" => "Data"}, "name" => %{"shape" => "Name"}, "output" => %{"shape" => "Data"}, "startDate" => %{"shape" => "Timestamp"}, "stateMachineArn" => %{"shape" => "Arn"}, "status" => %{"shape" => "ExecutionStatus"}, "stopDate" => %{"shape" => "Timestamp"}}, "required" => ["executionArn", "stateMachineArn", "status", "startDate", "input"], "type" => "structure"}, "ExecutionTimedOutEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "DescribeStateMachineInput" => %{"members" => %{"stateMachineArn" => %{"shape" => "Arn"}}, "required" => ["stateMachineArn"], "type" => "structure"}, "SendTaskHeartbeatOutput" => %{"members" => %{}, "type" => "structure"}, "StopExecutionOutput" => %{"members" => %{"stopDate" => %{"shape" => "Timestamp"}}, "required" => ["stopDate"], "type" => "structure"}, "DeleteStateMachineOutput" => %{"members" => %{}, "type" => "structure"}, "ExecutionList" => %{"member" => %{"shape" => "ExecutionListItem"}, "type" => "list"}, "StateMachineAlreadyExists" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TaskToken" => %{"max" => 1024, "min" => 1, "type" => "string"}, "GetExecutionHistoryInput" => %{"members" => %{"executionArn" => %{"shape" => "Arn"}, "maxResults" => %{"shape" => "PageSize"}, "nextToken" => %{"shape" => "PageToken"}, "reverseOrder" => %{"shape" => "ReverseOrder"}}, "required" => ["executionArn"], "type" => "structure"}, "LambdaFunctionSucceededEventDetails" => %{"members" => %{"output" => %{"shape" => "Data"}}, "type" => "structure"}, "ActivityLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StateEnteredEventDetails" => %{"members" => %{"input" => %{"shape" => "Data"}, "name" => %{"shape" => "Name"}}, "required" => ["name"], "type" => "structure"}, "StateMachineListItem" => %{"members" => %{"creationDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "Name"}, "stateMachineArn" => %{"shape" => "Arn"}}, "required" => ["stateMachineArn", "name", "creationDate"], "type" => "structure"}, "LambdaFunctionFailedEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "Name" => %{"max" => 80, "min" => 1, "type" => "string"}, "HistoryEventType" => %{"enum" => ["ActivityFailed", "ActivityScheduleFailed", "ActivityScheduled", "ActivityStarted", "ActivitySucceeded", "ActivityTimedOut", "ChoiceStateEntered", "ChoiceStateExited", "ExecutionFailed", "ExecutionStarted", "ExecutionSucceeded", "ExecutionAborted", "ExecutionTimedOut", "FailStateEntered", "LambdaFunctionFailed", "LambdaFunctionScheduleFailed", "LambdaFunctionScheduled", "LambdaFunctionStartFailed", "LambdaFunctionStarted", "LambdaFunctionSucceeded", "LambdaFunctionTimedOut", "SucceedStateEntered", "SucceedStateExited", "TaskStateEntered", "TaskStateExited", "PassStateEntered", "PassStateExited", "ParallelStateEntered", "ParallelStateExited", "WaitStateEntered", "WaitStateExited"], "type" => "string"}, "ExecutionFailedEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "EventId" => %{"type" => "long"}, "ListStateMachinesOutput" => %{"members" => %{"nextToken" => %{"shape" => "PageToken"}, "stateMachines" => %{"shape" => "StateMachineList"}}, "required" => ["stateMachines"], "type" => "structure"}, "LambdaFunctionTimedOutEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "GetActivityTaskOutput" => %{"members" => %{"input" => %{"shape" => "Data"}, "taskToken" => %{"shape" => "TaskToken"}}, "type" => "structure"}, "DescribeActivityOutput" => %{"members" => %{"activityArn" => %{"shape" => "Arn"}, "creationDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "Name"}}, "required" => ["activityArn", "name", "creationDate"], "type" => "structure"}, "DescribeActivityInput" => %{"members" => %{"activityArn" => %{"shape" => "Arn"}}, "required" => ["activityArn"], "type" => "structure"}, "StateExitedEventDetails" => %{"members" => %{"name" => %{"shape" => "Name"}, "output" => %{"shape" => "Data"}}, "required" => ["name"], "type" => "structure"}, "ActivityList" => %{"member" => %{"shape" => "ActivityListItem"}, "type" => "list"}, "CreateStateMachineInput" => %{"members" => %{"definition" => %{"shape" => "Definition"}, "name" => %{"shape" => "Name"}, "roleArn" => %{"shape" => "Arn"}}, "required" => ["name", "definition", "roleArn"], "type" => "structure"}, "PageToken" => %{"max" => 1024, "min" => 1, "type" => "string"}, "CreateActivityInput" => %{"members" => %{"name" => %{"shape" => "Name"}}, "required" => ["name"], "type" => "structure"}, "InvalidToken" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DescribeStateMachineOutput" => %{"members" => %{"creationDate" => %{"shape" => "Timestamp"}, "definition" => %{"shape" => "Definition"}, "name" => %{"shape" => "Name"}, "roleArn" => %{"shape" => "Arn"}, "stateMachineArn" => %{"shape" => "Arn"}, "status" => %{"shape" => "StateMachineStatus"}}, "required" => ["stateMachineArn", "name", "definition", "roleArn", "creationDate"], "type" => "structure"}, "LambdaFunctionScheduledEventDetails" => %{"members" => %{"input" => %{"shape" => "Data"}, "resource" => %{"shape" => "Arn"}, "timeoutInSeconds" => %{"box" => true, "shape" => "TimeoutInSeconds"}}, "required" => ["resource"], "type" => "structure"}, "GetExecutionHistoryOutput" => %{"members" => %{"events" => %{"shape" => "HistoryEventList"}, "nextToken" => %{"shape" => "PageToken"}}, "required" => ["events"], "type" => "structure"}, "InvalidDefinition" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "ExecutionDoesNotExist" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ActivityTimedOutEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "Identity" => %{"max" => 256, "type" => "string"}, "ActivityFailedEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "StateMachineList" => %{"member" => %{"shape" => "StateMachineListItem"}, "type" => "list"}, "InvalidExecutionInput" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StateMachineLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Arn" => %{"max" => 256, "min" => 1, "type" => "string"}, "Cause" => %{"max" => 32768, "min" => 0, "type" => "string"}, "StateMachineDeleting" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ExecutionLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TaskTimedOut" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DescribeExecutionInput" => %{"members" => %{"executionArn" => %{"shape" => "Arn"}}, "required" => ["executionArn"], "type" => "structure"}, "TimeoutInSeconds" => %{"type" => "long"}, "SendTaskHeartbeatInput" => %{"members" => %{"taskToken" => %{"shape" => "TaskToken"}}, "required" => ["taskToken"], "type" => "structure"}, "SendTaskFailureOutput" => %{"members" => %{}, "type" => "structure"}, "ExecutionListItem" => %{"members" => %{"executionArn" => %{"shape" => "Arn"}, "name" => %{"shape" => "Name"}, "startDate" => %{"shape" => "Timestamp"}, "stateMachineArn" => %{"shape" => "Arn"}, "status" => %{"shape" => "ExecutionStatus"}, "stopDate" => %{"shape" => "Timestamp"}}, "required" => ["executionArn", "stateMachineArn", "name", "status", "startDate"], "type" => "structure"}, "ExecutionAlreadyExists" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ActivityListItem" => %{"members" => %{"activityArn" => %{"shape" => "Arn"}, "creationDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "Name"}}, "required" => ["activityArn", "name", "creationDate"], "type" => "structure"}, "StateMachineDoesNotExist" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LambdaFunctionScheduleFailedEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "ExecutionStartedEventDetails" => %{"members" => %{"input" => %{"shape" => "Data"}, "roleArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "StopExecutionInput" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}, "executionArn" => %{"shape" => "Arn"}}, "required" => ["executionArn"], "type" => "structure"}, "ActivityScheduleFailedEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "Error" => %{"max" => 256, "min" => 0, "type" => "string"}, "CreateStateMachineOutput" => %{"members" => %{"creationDate" => %{"shape" => "Timestamp"}, "stateMachineArn" => %{"shape" => "Arn"}}, "required" => ["stateMachineArn", "creationDate"], "type" => "structure"}, "SendTaskSuccessInput" => %{"members" => %{"output" => %{"shape" => "Data"}, "taskToken" => %{"shape" => "TaskToken"}}, "required" => ["taskToken", "output"], "type" => "structure"}, "ActivityDoesNotExist" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ReverseOrder" => %{"type" => "boolean"}, "StartExecutionInput" => %{"members" => %{"input" => %{"shape" => "Data"}, "name" => %{"shape" => "Name"}, "stateMachineArn" => %{"shape" => "Arn"}}, "required" => ["stateMachineArn"], "type" => "structure"}, "Data" => %{"max" => 32768, "type" => "string"}, "InvalidArn" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InvalidName" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetActivityTaskInput" => %{"members" => %{"activityArn" => %{"shape" => "Arn"}, "workerName" => %{"shape" => "Name"}}, "required" => ["activityArn"], "type" => "structure"}, "ActivitySucceededEventDetails" => %{"members" => %{"output" => %{"shape" => "Data"}}, "type" => "structure"}, "DeleteActivityOutput" => %{"members" => %{}, "type" => "structure"}, "ActivityStartedEventDetails" => %{"members" => %{"workerName" => %{"shape" => "Identity"}}, "type" => "structure"}, "HistoryEvent" => %{"members" => %{"activityFailedEventDetails" => %{"shape" => "ActivityFailedEventDetails"}, "activityScheduleFailedEventDetails" => %{"shape" => "ActivityScheduleFailedEventDetails"}, "activityScheduledEventDetails" => %{"shape" => "ActivityScheduledEventDetails"}, "activityStartedEventDetails" => %{"shape" => "ActivityStartedEventDetails"}, "activitySucceededEventDetails" => %{"shape" => "ActivitySucceededEventDetails"}, "activityTimedOutEventDetails" => %{"shape" => "ActivityTimedOutEventDetails"}, "executionAbortedEventDetails" => %{"shape" => "ExecutionAbortedEventDetails"}, "executionFailedEventDetails" => %{"shape" => "ExecutionFailedEventDetails"}, "executionStartedEventDetails" => %{"shape" => "ExecutionStartedEventDetails"}, "executionSucceededEventDetails" => %{"shape" => "ExecutionSucceededEventDetails"}, "executionTimedOutEventDetails" => %{"shape" => "ExecutionTimedOutEventDetails"}, "id" => %{"shape" => "EventId"}, "lambdaFunctionFailedEventDetails" => %{"shape" => "LambdaFunctionFailedEventDetails"}, "lambdaFunctionScheduleFailedEventDetails" => %{"shape" => "LambdaFunctionScheduleFailedEventDetails"}, "lambdaFunctionScheduledEventDetails" => %{"shape" => "LambdaFunctionScheduledEventDetails"}, "lambdaFunctionStartFailedEventDetails" => %{"shape" => "LambdaFunctionStartFailedEventDetails"}, "lambdaFunctionSucceededEventDetails" => %{"shape" => "LambdaFunctionSucceededEventDetails"}, "lambdaFunctionTimedOutEventDetails" => %{"shape" => "LambdaFunctionTimedOutEventDetails"}, "previousEventId" => %{"shape" => "EventId"}, "stateEnteredEventDetails" => %{"shape" => "StateEnteredEventDetails"}, "stateExitedEventDetails" => %{"shape" => "StateExitedEventDetails"}, "timestamp" => %{"shape" => "Timestamp"}, "type" => %{"shape" => "HistoryEventType"}}, "required" => ["timestamp", "type", "id"], "type" => "structure"}, "StateMachineStatus" => %{"enum" => ["ACTIVE", "DELETING"], "type" => "string"}, "SendTaskSuccessOutput" => %{"members" => %{}, "type" => "structure"}, "Definition" => %{"max" => 1048576, "min" => 1, "type" => "string"}, "LambdaFunctionStartFailedEventDetails" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}}, "type" => "structure"}, "ExecutionSucceededEventDetails" => %{"members" => %{"output" => %{"shape" => "Data"}}, "type" => "structure"}, "SendTaskFailureInput" => %{"members" => %{"cause" => %{"shape" => "Cause"}, "error" => %{"shape" => "Error"}, "taskToken" => %{"shape" => "TaskToken"}}, "required" => ["taskToken"], "type" => "structure"}, "ListExecutionsInput" => %{"members" => %{"maxResults" => %{"shape" => "PageSize"}, "nextToken" => %{"shape" => "PageToken"}, "stateMachineArn" => %{"shape" => "Arn"}, "statusFilter" => %{"shape" => "ExecutionStatus"}}, "required" => ["stateMachineArn"], "type" => "structure"}, "StartExecutionOutput" => %{"members" => %{"executionArn" => %{"shape" => "Arn"}, "startDate" => %{"shape" => "Timestamp"}}, "required" => ["executionArn", "startDate"], "type" => "structure"}, "CreateActivityOutput" => %{"members" => %{"activityArn" => %{"shape" => "Arn"}, "creationDate" => %{"shape" => "Timestamp"}}, "required" => ["activityArn", "creationDate"], "type" => "structure"}, "ListExecutionsOutput" => %{"members" => %{"executions" => %{"shape" => "ExecutionList"}, "nextToken" => %{"shape" => "PageToken"}}, "required" => ["executions"], "type" => "structure"}, "ListStateMachinesInput" => %{"members" => %{"maxResults" => %{"shape" => "PageSize"}, "nextToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "TaskDoesNotExist" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ActivityScheduledEventDetails" => %{"members" => %{"heartbeatInSeconds" => %{"box" => true, "shape" => "TimeoutInSeconds"}, "input" => %{"shape" => "Data"}, "resource" => %{"shape" => "Arn"}, "timeoutInSeconds" => %{"box" => true, "shape" => "TimeoutInSeconds"}}, "required" => ["resource"], "type" => "structure"}}
  end
end