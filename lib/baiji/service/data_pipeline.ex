defmodule Baiji.DataPipeline do
  @moduledoc """
  AWS Data Pipeline configures and manages a data-driven workflow called a
  pipeline. AWS Data Pipeline handles the details of scheduling and ensuring
  that data dependencies are met so that your application can focus on
  processing the data.

  AWS Data Pipeline provides a JAR implementation of a task runner called AWS
  Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for
  common data management scenarios, such as performing database queries and
  running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can
  use AWS Data Pipeline Task Runner as your task runner, or you can write
  your own task runner to provide custom data management.

  AWS Data Pipeline implements two main sets of functionality. Use the first
  set to create a pipeline and define data sources, schedules, dependencies,
  and the transforms to be performed on the data. Use the second set in your
  task runner application to receive the next task ready for processing. The
  logic for performing the task, such as querying the data, running data
  analysis, or converting the data from one format to another, is contained
  within the task runner. The task runner performs the task assigned to it by
  the web service, reporting progress to the web service as it does so. When
  the task is done, the task runner reports the final success or failure of
  the task to the web service.
  """
  
  @doc """
  Validates the specified pipeline and starts processing pipeline tasks. If
  the pipeline does not pass validation, activation fails.

  If you need to pause the pipeline to investigate an issue with a component,
  such as a data source or script, call `DeactivatePipeline`.

  To activate a finished pipeline, modify the end date for the pipeline and
  then activate it.
  """
  def activate_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ActivatePipeline",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "ActivatePipelineInput",
      output_shape:     "ActivatePipelineOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds or modifies tags for the specified pipeline.
  """
  def add_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTags",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "AddTagsInput",
      output_shape:     "AddTagsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new, empty pipeline. Use `PutPipelineDefinition` to populate the
  pipeline.
  """
  def create_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePipeline",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "CreatePipelineInput",
      output_shape:     "CreatePipelineOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deactivates the specified running pipeline. The pipeline is set to the
  `DEACTIVATING` state until the deactivation process completes.

  To resume a deactivated pipeline, use `ActivatePipeline`. By default, the
  pipeline resumes from the last completed execution. Optionally, you can
  specify the date and time to resume the pipeline.
  """
  def deactivate_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeactivatePipeline",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "DeactivatePipelineInput",
      output_shape:     "DeactivatePipelineOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a pipeline, its pipeline definition, and its run history. AWS Data
  Pipeline attempts to cancel instances associated with the pipeline that are
  currently being processed by task runners.

  Deleting a pipeline cannot be undone. You cannot query or restore a deleted
  pipeline. To temporarily pause a pipeline instead of deleting it, call
  `SetStatus` with the status set to `PAUSE` on individual components.
  Components that are paused by `SetStatus` can be resumed.
  """
  def delete_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeletePipeline",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "DeletePipelineInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets the object definitions for a set of objects associated with the
  pipeline. Object definitions are composed of a set of fields that define
  the properties of the object.
  """
  def describe_objects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeObjects",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "DescribeObjectsInput",
      output_shape:     "DescribeObjectsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves metadata about one or more pipelines. The information retrieved
  includes the name of the pipeline, the pipeline identifier, its current
  state, and the user account that owns the pipeline. Using account
  credentials, you can retrieve metadata about pipelines that you or your IAM
  users have created. If you are using an IAM user account, you can retrieve
  metadata about only those pipelines for which you have read permissions.

  To retrieve the full pipeline definition instead of metadata about the
  pipeline, call `GetPipelineDefinition`.
  """
  def describe_pipelines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePipelines",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "DescribePipelinesInput",
      output_shape:     "DescribePipelinesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Task runners call `EvaluateExpression` to evaluate a string in the context
  of the specified object. For example, a task runner can evaluate SQL
  queries stored in Amazon S3.
  """
  def evaluate_expression(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EvaluateExpression",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "EvaluateExpressionInput",
      output_shape:     "EvaluateExpressionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets the definition of the specified pipeline. You can call
  `GetPipelineDefinition` to retrieve the pipeline definition that you
  provided using `PutPipelineDefinition`.
  """
  def get_pipeline_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetPipelineDefinition",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "GetPipelineDefinitionInput",
      output_shape:     "GetPipelineDefinitionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the pipeline identifiers for all active pipelines that you have
  permission to access.
  """
  def list_pipelines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPipelines",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "ListPipelinesInput",
      output_shape:     "ListPipelinesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Task runners call `PollForTask` to receive a task to perform from AWS Data
  Pipeline. The task runner specifies which tasks it can perform by setting a
  value for the `workerGroup` parameter. The task returned can come from any
  of the pipelines that match the `workerGroup` value passed in by the task
  runner and that was launched using the IAM user credentials specified by
  the task runner.

  If tasks are ready in the work queue, `PollForTask` returns a response
  immediately. If no tasks are available in the queue, `PollForTask` uses
  long-polling and holds on to a poll connection for up to a 90 seconds,
  during which time the first newly scheduled task is handed to the task
  runner. To accomodate this, set the socket timeout in your task runner to
  90 seconds. The task runner should not call `PollForTask` again on the same
  `workerGroup` until it receives a response, and this can take up to 90
  seconds.
  """
  def poll_for_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PollForTask",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "PollForTaskInput",
      output_shape:     "PollForTaskOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds tasks, schedules, and preconditions to the specified pipeline. You can
  use `PutPipelineDefinition` to populate a new pipeline.

  `PutPipelineDefinition` also validates the configuration as it adds it to
  the pipeline. Changes to the pipeline are saved unless one of the following
  three validation errors exists in the pipeline.

  <ol> <li>An object is missing a name or identifier field.</li> <li>A string
  or reference field is empty.</li> <li>The number of objects in the pipeline
  exceeds the maximum allowed objects.</li> <li>The pipeline is in a FINISHED
  state.</li> </ol> Pipeline object definitions are passed to the
  `PutPipelineDefinition` action and returned by the `GetPipelineDefinition`
  action.
  """
  def put_pipeline_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutPipelineDefinition",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "PutPipelineDefinitionInput",
      output_shape:     "PutPipelineDefinitionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Queries the specified pipeline for the names of objects that match the
  specified set of conditions.
  """
  def query_objects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "QueryObjects",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "QueryObjectsInput",
      output_shape:     "QueryObjectsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes existing tags from the specified pipeline.
  """
  def remove_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTags",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "RemoveTagsInput",
      output_shape:     "RemoveTagsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Task runners call `ReportTaskProgress` when assigned a task to acknowledge
  that it has the task. If the web service does not receive this
  acknowledgement within 2 minutes, it assigns the task in a subsequent
  `PollForTask` call. After this initial acknowledgement, the task runner
  only needs to report progress every 15 minutes to maintain its ownership of
  the task. You can change this reporting time from 15 minutes by specifying
  a `reportProgressTimeout` field in your pipeline.

  If a task runner does not report its status after 5 minutes, AWS Data
  Pipeline assumes that the task runner is unable to process the task and
  reassigns the task in a subsequent response to `PollForTask`. Task runners
  should call `ReportTaskProgress` every 60 seconds.
  """
  def report_task_progress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReportTaskProgress",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "ReportTaskProgressInput",
      output_shape:     "ReportTaskProgressOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Task runners call `ReportTaskRunnerHeartbeat` every 15 minutes to indicate
  that they are operational. If the AWS Data Pipeline Task Runner is launched
  on a resource managed by AWS Data Pipeline, the web service can use this
  call to detect when the task runner application has failed and restart a
  new instance.
  """
  def report_task_runner_heartbeat(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReportTaskRunnerHeartbeat",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "ReportTaskRunnerHeartbeatInput",
      output_shape:     "ReportTaskRunnerHeartbeatOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Requests that the status of the specified physical or logical pipeline
  objects be updated in the specified pipeline. This update might not occur
  immediately, but is eventually consistent. The status that can be set
  depends on the type of object (for example, DataNode or Activity). You
  cannot perform this operation on `FINISHED` pipelines and attempting to do
  so returns `InvalidRequestException`.
  """
  def set_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetStatus",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "SetStatusInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Task runners call `SetTaskStatus` to notify AWS Data Pipeline that a task
  is completed and provide information about the final status. A task runner
  makes this call regardless of whether the task was sucessful. A task runner
  does not need to call `SetTaskStatus` for tasks that are canceled by the
  web service during a call to `ReportTaskProgress`.
  """
  def set_task_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetTaskStatus",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "SetTaskStatusInput",
      output_shape:     "SetTaskStatusOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Validates the specified pipeline definition to ensure that it is well
  formed and can be run without error.
  """
  def validate_pipeline_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "datapipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ValidatePipelineDefinition",
      
      target_prefix:    "DataPipeline",
      
      endpoint_prefix:  "datapipeline",
      type:             :json,
      version:          "2012-10-29",
      method:           :post,
      input_shape:      "ValidatePipelineDefinitionInput",
      output_shape:     "ValidatePipelineDefinitionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"tagKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "attributeNameString" => %{"max" => 256, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "ValidationWarnings" => %{"member" => %{"shape" => "ValidationWarning"}, "type" => "list"}, "SetStatusInput" => %{"members" => %{"objectIds" => %{"shape" => "idList"}, "pipelineId" => %{"shape" => "id"}, "status" => %{"shape" => "string"}}, "required" => ["pipelineId", "objectIds", "status"], "type" => "structure"}, "EvaluateExpressionInput" => %{"members" => %{"expression" => %{"shape" => "longString"}, "objectId" => %{"shape" => "id"}, "pipelineId" => %{"shape" => "id"}}, "required" => ["pipelineId", "objectId", "expression"], "type" => "structure"}, "Field" => %{"members" => %{"key" => %{"shape" => "fieldNameString"}, "refValue" => %{"shape" => "fieldNameString"}, "stringValue" => %{"shape" => "fieldStringValue"}}, "required" => ["key"], "type" => "structure"}, "DeactivatePipelineInput" => %{"members" => %{"cancelActive" => %{"shape" => "cancelActive"}, "pipelineId" => %{"shape" => "id"}}, "required" => ["pipelineId"], "type" => "structure"}, "AddTagsOutput" => %{"members" => %{}, "type" => "structure"}, "Operator" => %{"members" => %{"type" => %{"shape" => "OperatorType"}, "values" => %{"shape" => "stringList"}}, "type" => "structure"}, "ValidatePipelineDefinitionOutput" => %{"members" => %{"errored" => %{"shape" => "boolean"}, "validationErrors" => %{"shape" => "ValidationErrors"}, "validationWarnings" => %{"shape" => "ValidationWarnings"}}, "required" => ["errored"], "type" => "structure"}, "PipelineObject" => %{"members" => %{"fields" => %{"shape" => "fieldList"}, "id" => %{"shape" => "id"}, "name" => %{"shape" => "id"}}, "required" => ["id", "name", "fields"], "type" => "structure"}, "ReportTaskRunnerHeartbeatOutput" => %{"members" => %{"terminate" => %{"shape" => "boolean"}}, "required" => ["terminate"], "type" => "structure"}, "ParameterObjectList" => %{"member" => %{"shape" => "ParameterObject"}, "type" => "list"}, "RemoveTagsOutput" => %{"members" => %{}, "type" => "structure"}, "fieldStringValue" => %{"max" => 10240, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "GetPipelineDefinitionOutput" => %{"members" => %{"parameterObjects" => %{"shape" => "ParameterObjectList"}, "parameterValues" => %{"shape" => "ParameterValueList"}, "pipelineObjects" => %{"shape" => "PipelineObjectList"}}, "type" => "structure"}, "QueryObjectsOutput" => %{"members" => %{"hasMoreResults" => %{"shape" => "boolean"}, "ids" => %{"shape" => "idList"}, "marker" => %{"shape" => "string"}}, "type" => "structure"}, "ActivatePipelineInput" => %{"members" => %{"parameterValues" => %{"shape" => "ParameterValueList"}, "pipelineId" => %{"shape" => "id"}, "startTimestamp" => %{"shape" => "timestamp"}}, "required" => ["pipelineId"], "type" => "structure"}, "idList" => %{"member" => %{"shape" => "id"}, "type" => "list"}, "fieldNameString" => %{"max" => 256, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "PipelineObjectMap" => %{"key" => %{"shape" => "id"}, "type" => "map", "value" => %{"shape" => "PipelineObject"}}, "Selector" => %{"members" => %{"fieldName" => %{"shape" => "string"}, "operator" => %{"shape" => "Operator"}}, "type" => "structure"}, "boolean" => %{"type" => "boolean"}, "OperatorType" => %{"enum" => ["EQ", "REF_EQ", "LE", "GE", "BETWEEN"], "type" => "string"}, "AddTagsInput" => %{"members" => %{"pipelineId" => %{"shape" => "id"}, "tags" => %{"shape" => "tagList"}}, "required" => ["pipelineId", "tags"], "type" => "structure"}, "id" => %{"max" => 1024, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "pipelineList" => %{"member" => %{"shape" => "PipelineIdName"}, "type" => "list"}, "ValidationErrors" => %{"member" => %{"shape" => "ValidationError"}, "type" => "list"}, "ParameterValue" => %{"members" => %{"id" => %{"shape" => "fieldNameString"}, "stringValue" => %{"shape" => "fieldStringValue"}}, "required" => ["id", "stringValue"], "type" => "structure"}, "PipelineDescription" => %{"members" => %{"description" => %{"shape" => "string"}, "fields" => %{"shape" => "fieldList"}, "name" => %{"shape" => "id"}, "pipelineId" => %{"shape" => "id"}, "tags" => %{"shape" => "tagList"}}, "required" => ["pipelineId", "name", "fields"], "type" => "structure"}, "PipelineDescriptionList" => %{"member" => %{"shape" => "PipelineDescription"}, "type" => "list"}, "PollForTaskOutput" => %{"members" => %{"taskObject" => %{"shape" => "TaskObject"}}, "type" => "structure"}, "TaskNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "errorMessage" => %{"type" => "string"}, "RemoveTagsInput" => %{"members" => %{"pipelineId" => %{"shape" => "id"}, "tagKeys" => %{"shape" => "stringList"}}, "required" => ["pipelineId", "tagKeys"], "type" => "structure"}, "fieldList" => %{"member" => %{"shape" => "Field"}, "type" => "list"}, "Tag" => %{"members" => %{"key" => %{"shape" => "tagKey"}, "value" => %{"shape" => "tagValue"}}, "required" => ["key", "value"], "type" => "structure"}, "SetTaskStatusInput" => %{"members" => %{"errorId" => %{"shape" => "string"}, "errorMessage" => %{"shape" => "errorMessage"}, "errorStackTrace" => %{"shape" => "string"}, "taskId" => %{"shape" => "taskId"}, "taskStatus" => %{"shape" => "TaskStatus"}}, "required" => ["taskId", "taskStatus"], "type" => "structure"}, "PutPipelineDefinitionOutput" => %{"members" => %{"errored" => %{"shape" => "boolean"}, "validationErrors" => %{"shape" => "ValidationErrors"}, "validationWarnings" => %{"shape" => "ValidationWarnings"}}, "required" => ["errored"], "type" => "structure"}, "SetTaskStatusOutput" => %{"members" => %{}, "type" => "structure"}, "ReportTaskProgressInput" => %{"members" => %{"fields" => %{"shape" => "fieldList"}, "taskId" => %{"shape" => "taskId"}}, "required" => ["taskId"], "type" => "structure"}, "string" => %{"max" => 1024, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "timestamp" => %{"type" => "timestamp"}, "ValidationError" => %{"members" => %{"errors" => %{"shape" => "validationMessages"}, "id" => %{"shape" => "id"}}, "type" => "structure"}, "TaskStatus" => %{"enum" => ["FINISHED", "FAILED", "FALSE"], "type" => "string"}, "CreatePipelineOutput" => %{"members" => %{"pipelineId" => %{"shape" => "id"}}, "required" => ["pipelineId"], "type" => "structure"}, "ParameterAttributeList" => %{"member" => %{"shape" => "ParameterAttribute"}, "type" => "list"}, "stringList" => %{"member" => %{"shape" => "string"}, "type" => "list"}, "InstanceIdentity" => %{"members" => %{"document" => %{"shape" => "string"}, "signature" => %{"shape" => "string"}}, "type" => "structure"}, "TaskObject" => %{"members" => %{"attemptId" => %{"shape" => "id"}, "objects" => %{"shape" => "PipelineObjectMap"}, "pipelineId" => %{"shape" => "id"}, "taskId" => %{"shape" => "taskId"}}, "type" => "structure"}, "ParameterObject" => %{"members" => %{"attributes" => %{"shape" => "ParameterAttributeList"}, "id" => %{"shape" => "fieldNameString"}}, "required" => ["id", "attributes"], "type" => "structure"}, "Query" => %{"members" => %{"selectors" => %{"shape" => "SelectorList"}}, "type" => "structure"}, "QueryObjectsInput" => %{"members" => %{"limit" => %{"shape" => "int"}, "marker" => %{"shape" => "string"}, "pipelineId" => %{"shape" => "id"}, "query" => %{"shape" => "Query"}, "sphere" => %{"shape" => "string"}}, "required" => ["pipelineId", "sphere"], "type" => "structure"}, "SelectorList" => %{"member" => %{"shape" => "Selector"}, "type" => "list"}, "int" => %{"type" => "integer"}, "InvalidRequestException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeactivatePipelineOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeObjectsInput" => %{"members" => %{"evaluateExpressions" => %{"shape" => "boolean"}, "marker" => %{"shape" => "string"}, "objectIds" => %{"shape" => "idList"}, "pipelineId" => %{"shape" => "id"}}, "required" => ["pipelineId", "objectIds"], "type" => "structure"}, "validationMessage" => %{"max" => 10000, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "ListPipelinesInput" => %{"members" => %{"marker" => %{"shape" => "string"}}, "type" => "structure"}, "PipelineIdName" => %{"members" => %{"id" => %{"shape" => "id"}, "name" => %{"shape" => "id"}}, "type" => "structure"}, "validationMessages" => %{"member" => %{"shape" => "validationMessage"}, "type" => "list"}, "PollForTaskInput" => %{"members" => %{"hostname" => %{"shape" => "id"}, "instanceIdentity" => %{"shape" => "InstanceIdentity"}, "workerGroup" => %{"shape" => "string"}}, "required" => ["workerGroup"], "type" => "structure"}, "ValidationWarning" => %{"members" => %{"id" => %{"shape" => "id"}, "warnings" => %{"shape" => "validationMessages"}}, "type" => "structure"}, "PipelineObjectList" => %{"member" => %{"shape" => "PipelineObject"}, "type" => "list"}, "attributeValueString" => %{"max" => 10240, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "InternalServiceError" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "taskId" => %{"max" => 2048, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "PipelineDeletedException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "cancelActive" => %{"type" => "boolean"}, "DescribePipelinesOutput" => %{"members" => %{"pipelineDescriptionList" => %{"shape" => "PipelineDescriptionList"}}, "required" => ["pipelineDescriptionList"], "type" => "structure"}, "ParameterValueList" => %{"member" => %{"shape" => "ParameterValue"}, "type" => "list"}, "ActivatePipelineOutput" => %{"members" => %{}, "type" => "structure"}, "DescribePipelinesInput" => %{"members" => %{"pipelineIds" => %{"shape" => "idList"}}, "required" => ["pipelineIds"], "type" => "structure"}, "ListPipelinesOutput" => %{"members" => %{"hasMoreResults" => %{"shape" => "boolean"}, "marker" => %{"shape" => "string"}, "pipelineIdList" => %{"shape" => "pipelineList"}}, "required" => ["pipelineIdList"], "type" => "structure"}, "ParameterAttribute" => %{"members" => %{"key" => %{"shape" => "attributeNameString"}, "stringValue" => %{"shape" => "attributeValueString"}}, "required" => ["key", "stringValue"], "type" => "structure"}, "DeletePipelineInput" => %{"members" => %{"pipelineId" => %{"shape" => "id"}}, "required" => ["pipelineId"], "type" => "structure"}, "EvaluateExpressionOutput" => %{"members" => %{"evaluatedExpression" => %{"shape" => "longString"}}, "required" => ["evaluatedExpression"], "type" => "structure"}, "PipelineNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "tagValue" => %{"max" => 256, "min" => 0, "type" => "string"}, "longString" => %{"max" => 20971520, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "GetPipelineDefinitionInput" => %{"members" => %{"pipelineId" => %{"shape" => "id"}, "version" => %{"shape" => "string"}}, "required" => ["pipelineId"], "type" => "structure"}, "CreatePipelineInput" => %{"members" => %{"description" => %{"shape" => "string"}, "name" => %{"shape" => "id"}, "tags" => %{"shape" => "tagList"}, "uniqueId" => %{"shape" => "id"}}, "required" => ["name", "uniqueId"], "type" => "structure"}, "DescribeObjectsOutput" => %{"members" => %{"hasMoreResults" => %{"shape" => "boolean"}, "marker" => %{"shape" => "string"}, "pipelineObjects" => %{"shape" => "PipelineObjectList"}}, "required" => ["pipelineObjects"], "type" => "structure"}, "ReportTaskProgressOutput" => %{"members" => %{"canceled" => %{"shape" => "boolean"}}, "required" => ["canceled"], "type" => "structure"}, "tagList" => %{"max" => 10, "member" => %{"shape" => "Tag"}, "min" => 0, "type" => "list"}, "ValidatePipelineDefinitionInput" => %{"members" => %{"parameterObjects" => %{"shape" => "ParameterObjectList"}, "parameterValues" => %{"shape" => "ParameterValueList"}, "pipelineId" => %{"shape" => "id"}, "pipelineObjects" => %{"shape" => "PipelineObjectList"}}, "required" => ["pipelineId", "pipelineObjects"], "type" => "structure"}, "PutPipelineDefinitionInput" => %{"members" => %{"parameterObjects" => %{"shape" => "ParameterObjectList"}, "parameterValues" => %{"shape" => "ParameterValueList"}, "pipelineId" => %{"shape" => "id"}, "pipelineObjects" => %{"shape" => "PipelineObjectList"}}, "required" => ["pipelineId", "pipelineObjects"], "type" => "structure"}, "ReportTaskRunnerHeartbeatInput" => %{"members" => %{"hostname" => %{"shape" => "id"}, "taskrunnerId" => %{"shape" => "id"}, "workerGroup" => %{"shape" => "string"}}, "required" => ["taskrunnerId"], "type" => "structure"}}
  end
end