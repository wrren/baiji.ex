defmodule Baiji.CodePipeline do
  @moduledoc """
  AWS CodePipeline

  **Overview**

  This is the AWS CodePipeline API Reference. This guide provides
  descriptions of the actions and data types for AWS CodePipeline. Some
  functionality for your pipeline is only configurable through the API. For
  additional information, see the [AWS CodePipeline User
  Guide](http://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html).

  You can use the AWS CodePipeline API to work with pipelines, stages,
  actions, gates, and transitions, as described below.

  *Pipelines* are models of automated release processes. Each pipeline is
  uniquely named, and consists of actions, gates, and stages.

  You can work with pipelines by calling:

  <ul> <li> `CreatePipeline`, which creates a uniquely-named pipeline.

  </li> <li> `DeletePipeline`, which deletes the specified pipeline.

  </li> <li> `GetPipeline`, which returns information about a pipeline
  structure.

  </li> <li> `GetPipelineExecution`, which returns information about a
  specific execution of a pipeline.

  </li> <li> `GetPipelineState`, which returns information about the current
  state of the stages and actions of a pipeline.

  </li> <li> `ListPipelines`, which gets a summary of all of the pipelines
  associated with your account.

  </li> <li> `StartPipelineExecution`, which runs the the most recent
  revision of an artifact through the pipeline.

  </li> <li> `UpdatePipeline`, which updates a pipeline with edits or changes
  to the structure of the pipeline.

  </li> </ul> Pipelines include *stages*, which are logical groupings of
  gates and actions. Each stage contains one or more actions that must
  complete before the next stage begins. A stage will result in success or
  failure. If a stage fails, then the pipeline stops at that stage and will
  remain stopped until either a new version of an artifact appears in the
  source location, or a user takes action to re-run the most recent artifact
  through the pipeline. You can call `GetPipelineState`, which displays the
  status of a pipeline, including the status of stages in the pipeline, or
  `GetPipeline`, which returns the entire structure of the pipeline,
  including the stages of that pipeline. For more information about the
  structure of stages and actions, also refer to the [AWS CodePipeline
  Pipeline Structure
  Reference](http://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html).

  Pipeline stages include *actions*, which are categorized into categories
  such as source or build actions performed within a stage of a pipeline. For
  example, you can use a source action to import artifacts into a pipeline
  from a source such as Amazon S3. Like stages, you do not work with actions
  directly in most cases, but you do define and interact with actions when
  working with pipeline operations such as `CreatePipeline` and
  `GetPipelineState`.

  Pipelines also include *transitions*, which allow the transition of
  artifacts from one stage to the next in a pipeline after the actions in one
  stage complete.

  You can work with transitions by calling:

  <ul> <li> `DisableStageTransition`, which prevents artifacts from
  transitioning to the next stage in a pipeline.

  </li> <li> `EnableStageTransition`, which enables transition of artifacts
  between stages in a pipeline.

  </li> </ul> **Using the API to integrate with AWS CodePipeline**

  For third-party integrators or developers who want to create their own
  integrations with AWS CodePipeline, the expected sequence varies from the
  standard API user. In order to integrate with AWS CodePipeline, developers
  will need to work with the following items:

  **Jobs**, which are instances of an action. For example, a job for a source
  action might import a revision of an artifact from a source.

  You can work with jobs by calling:

  <ul> <li> `AcknowledgeJob`, which confirms whether a job worker has
  received the specified job,

  </li> <li> `GetJobDetails`, which returns the details of a job,

  </li> <li> `PollForJobs`, which determines whether there are any jobs to
  act upon,

  </li> <li> `PutJobFailureResult`, which provides details of a job failure,
  and

  </li> <li> `PutJobSuccessResult`, which provides details of a job success.

  </li> </ul> **Third party jobs**, which are instances of an action created
  by a partner action and integrated into AWS CodePipeline. Partner actions
  are created by members of the AWS Partner Network.

  You can work with third party jobs by calling:

  <ul> <li> `AcknowledgeThirdPartyJob`, which confirms whether a job worker
  has received the specified job,

  </li> <li> `GetThirdPartyJobDetails`, which requests the details of a job
  for a partner action,

  </li> <li> `PollForThirdPartyJobs`, which determines whether there are any
  jobs to act upon,

  </li> <li> `PutThirdPartyJobFailureResult`, which provides details of a job
  failure, and

  </li> <li> `PutThirdPartyJobSuccessResult`, which provides details of a job
  success.

  </li> </ul>
  """
  
  @doc """
  Returns information about a specified job and whether that job has been
  received by the job worker. Only used for custom actions.
  """
  def acknowledge_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AcknowledgeJob",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "AcknowledgeJobInput",
      output_shape:     "AcknowledgeJobOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Confirms a job worker has received the specified job. Only used for partner
  actions.
  """
  def acknowledge_third_party_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AcknowledgeThirdPartyJob",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "AcknowledgeThirdPartyJobInput",
      output_shape:     "AcknowledgeThirdPartyJobOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new custom action that can be used in all pipelines associated
  with the AWS account. Only used for custom actions.
  """
  def create_custom_action_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCustomActionType",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "CreateCustomActionTypeInput",
      output_shape:     "CreateCustomActionTypeOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a pipeline.
  """
  def create_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePipeline",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "CreatePipelineInput",
      output_shape:     "CreatePipelineOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Marks a custom action as deleted. PollForJobs for the custom action will
  fail after the action is marked for deletion. Only used for custom actions.

  <important> You cannot recreate a custom action after it has been deleted
  unless you increase the version number of the action.

  </important>
  """
  def delete_custom_action_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCustomActionType",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "DeleteCustomActionTypeInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified pipeline.
  """
  def delete_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeletePipeline",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "DeletePipelineInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Prevents artifacts in a pipeline from transitioning to the next stage in
  the pipeline.
  """
  def disable_stage_transition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableStageTransition",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "DisableStageTransitionInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Enables artifacts in a pipeline to transition to a stage in a pipeline.
  """
  def enable_stage_transition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableStageTransition",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "EnableStageTransitionInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about a job. Only used for custom actions.

  <important> When this API is called, AWS CodePipeline returns temporary
  credentials for the Amazon S3 bucket used to store artifacts for the
  pipeline, if the action requires access to that Amazon S3 bucket for input
  or output artifacts. Additionally, this API returns any secret values
  defined for the action.

  </important>
  """
  def get_job_details(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetJobDetails",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "GetJobDetailsInput",
      output_shape:     "GetJobDetailsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the metadata, structure, stages, and actions of a pipeline. Can be
  used to return the entire structure of a pipeline in JSON format, which can
  then be modified and used to update the pipeline structure with
  `UpdatePipeline`.
  """
  def get_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetPipeline",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "GetPipelineInput",
      output_shape:     "GetPipelineOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about an execution of a pipeline, including details
  about artifacts, the pipeline execution ID, and the name, version, and
  status of the pipeline.
  """
  def get_pipeline_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetPipelineExecution",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "GetPipelineExecutionInput",
      output_shape:     "GetPipelineExecutionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about the state of a pipeline, including the stages and
  actions.
  """
  def get_pipeline_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetPipelineState",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "GetPipelineStateInput",
      output_shape:     "GetPipelineStateOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Requests the details of a job for a third party action. Only used for
  partner actions.

  <important> When this API is called, AWS CodePipeline returns temporary
  credentials for the Amazon S3 bucket used to store artifacts for the
  pipeline, if the action requires access to that Amazon S3 bucket for input
  or output artifacts. Additionally, this API returns any secret values
  defined for the action.

  </important>
  """
  def get_third_party_job_details(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetThirdPartyJobDetails",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "GetThirdPartyJobDetailsInput",
      output_shape:     "GetThirdPartyJobDetailsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets a summary of all AWS CodePipeline action types associated with your
  account.
  """
  def list_action_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListActionTypes",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "ListActionTypesInput",
      output_shape:     "ListActionTypesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets a summary of the most recent executions for a pipeline.
  """
  def list_pipeline_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPipelineExecutions",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "ListPipelineExecutionsInput",
      output_shape:     "ListPipelineExecutionsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets a summary of all of the pipelines associated with your account.
  """
  def list_pipelines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPipelines",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "ListPipelinesInput",
      output_shape:     "ListPipelinesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about any jobs for AWS CodePipeline to act upon.

  <important> When this API is called, AWS CodePipeline returns temporary
  credentials for the Amazon S3 bucket used to store artifacts for the
  pipeline, if the action requires access to that Amazon S3 bucket for input
  or output artifacts. Additionally, this API returns any secret values
  defined for the action.

  </important>
  """
  def poll_for_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PollForJobs",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "PollForJobsInput",
      output_shape:     "PollForJobsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Determines whether there are any third party jobs for a job worker to act
  on. Only used for partner actions.

  <important> When this API is called, AWS CodePipeline returns temporary
  credentials for the Amazon S3 bucket used to store artifacts for the
  pipeline, if the action requires access to that Amazon S3 bucket for input
  or output artifacts.

  </important>
  """
  def poll_for_third_party_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PollForThirdPartyJobs",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "PollForThirdPartyJobsInput",
      output_shape:     "PollForThirdPartyJobsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides information to AWS CodePipeline about new revisions to a source.
  """
  def put_action_revision(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutActionRevision",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "PutActionRevisionInput",
      output_shape:     "PutActionRevisionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides the response to a manual approval request to AWS CodePipeline.
  Valid responses include Approved and Rejected.
  """
  def put_approval_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutApprovalResult",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "PutApprovalResultInput",
      output_shape:     "PutApprovalResultOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Represents the failure of a job as returned to the pipeline by a job
  worker. Only used for custom actions.
  """
  def put_job_failure_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutJobFailureResult",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "PutJobFailureResultInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Represents the success of a job as returned to the pipeline by a job
  worker. Only used for custom actions.
  """
  def put_job_success_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutJobSuccessResult",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "PutJobSuccessResultInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Represents the failure of a third party job as returned to the pipeline by
  a job worker. Only used for partner actions.
  """
  def put_third_party_job_failure_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutThirdPartyJobFailureResult",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "PutThirdPartyJobFailureResultInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Represents the success of a third party job as returned to the pipeline by
  a job worker. Only used for partner actions.
  """
  def put_third_party_job_success_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutThirdPartyJobSuccessResult",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "PutThirdPartyJobSuccessResultInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Resumes the pipeline execution by retrying the last failed actions in a
  stage.
  """
  def retry_stage_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RetryStageExecution",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "RetryStageExecutionInput",
      output_shape:     "RetryStageExecutionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts the specified pipeline. Specifically, it begins processing the
  latest commit to the source location specified as part of the pipeline.
  """
  def start_pipeline_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartPipelineExecution",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "StartPipelineExecutionInput",
      output_shape:     "StartPipelineExecutionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates a specified pipeline with edits or changes to its structure. Use a
  JSON file with the pipeline structure in conjunction with UpdatePipeline to
  provide the full structure of the pipeline. Updating the pipeline increases
  the version number of the pipeline by 1.
  """
  def update_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codepipeline",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdatePipeline",
      
      target_prefix:    "CodePipeline_20150709",
      
      endpoint_prefix:  "codepipeline",
      type:             :json,
      version:          "2015-07-09",
      method:           :post,
      input_shape:      "UpdatePipelineInput",
      output_shape:     "UpdatePipelineOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"UpdatePipelineOutput" => %{"members" => %{"pipeline" => %{"shape" => "PipelineDeclaration"}}, "type" => "structure"}, "StageTransitionType" => %{"enum" => ["Inbound", "Outbound"], "type" => "string"}, "InvalidJobException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Url" => %{"max" => 2048, "min" => 1, "type" => "string"}, "InvalidNonceException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "StageNotRetryableException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteCustomActionTypeInput" => %{"members" => %{"category" => %{"shape" => "ActionCategory"}, "provider" => %{"shape" => "ActionProvider"}, "version" => %{"shape" => "Version"}}, "required" => ["category", "provider", "version"], "type" => "structure"}, "Percentage" => %{"max" => 100, "min" => 0, "type" => "integer"}, "PutJobFailureResultInput" => %{"members" => %{"failureDetails" => %{"shape" => "FailureDetails"}, "jobId" => %{"shape" => "JobId"}}, "required" => ["jobId", "failureDetails"], "type" => "structure"}, "ThirdPartyJobData" => %{"members" => %{"actionConfiguration" => %{"shape" => "ActionConfiguration"}, "actionTypeId" => %{"shape" => "ActionTypeId"}, "artifactCredentials" => %{"shape" => "AWSSessionCredentials"}, "continuationToken" => %{"shape" => "ContinuationToken"}, "encryptionKey" => %{"shape" => "EncryptionKey"}, "inputArtifacts" => %{"shape" => "ArtifactList"}, "outputArtifacts" => %{"shape" => "ArtifactList"}, "pipelineContext" => %{"shape" => "PipelineContext"}}, "type" => "structure"}, "ActionState" => %{"members" => %{"actionName" => %{"shape" => "ActionName"}, "currentRevision" => %{"shape" => "ActionRevision"}, "entityUrl" => %{"shape" => "Url"}, "latestExecution" => %{"shape" => "ActionExecution"}, "revisionUrl" => %{"shape" => "Url"}}, "type" => "structure"}, "Code" => %{"type" => "string"}, "ClientId" => %{"pattern" => "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "type" => "string"}, "Job" => %{"members" => %{"accountId" => %{"shape" => "AccountId"}, "data" => %{"shape" => "JobData"}, "id" => %{"shape" => "JobId"}, "nonce" => %{"shape" => "Nonce"}}, "type" => "structure"}, "AcknowledgeJobOutput" => %{"members" => %{"status" => %{"shape" => "JobStatus"}}, "type" => "structure"}, "PipelineDeclaration" => %{"members" => %{"artifactStore" => %{"shape" => "ArtifactStore"}, "name" => %{"shape" => "PipelineName"}, "roleArn" => %{"shape" => "RoleArn"}, "stages" => %{"shape" => "PipelineStageDeclarationList"}, "version" => %{"shape" => "PipelineVersion"}}, "required" => ["name", "roleArn", "artifactStore", "stages"], "type" => "structure"}, "ActionOwner" => %{"enum" => ["AWS", "ThirdParty", "Custom"], "type" => "string"}, "PipelineSummary" => %{"members" => %{"created" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "PipelineName"}, "updated" => %{"shape" => "Timestamp"}, "version" => %{"shape" => "PipelineVersion"}}, "type" => "structure"}, "DisabledReason" => %{"max" => 300, "min" => 1, "pattern" => "[a-zA-Z0-9!@ \\(\\)\\.\\*\\?\\-]+", "type" => "string"}, "ActionNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "S3BucketName" => %{"type" => "string"}, "DisableStageTransitionInput" => %{"members" => %{"pipelineName" => %{"shape" => "PipelineName"}, "reason" => %{"shape" => "DisabledReason"}, "stageName" => %{"shape" => "StageName"}, "transitionType" => %{"shape" => "StageTransitionType"}}, "required" => ["pipelineName", "stageName", "transitionType", "reason"], "type" => "structure"}, "QueryParamMap" => %{"key" => %{"shape" => "ActionConfigurationKey"}, "max" => 1, "min" => 0, "type" => "map", "value" => %{"shape" => "ActionConfigurationQueryableValue"}}, "Boolean" => %{"type" => "boolean"}, "ActionType" => %{"members" => %{"actionConfigurationProperties" => %{"shape" => "ActionConfigurationPropertyList"}, "id" => %{"shape" => "ActionTypeId"}, "inputArtifactDetails" => %{"shape" => "ArtifactDetails"}, "outputArtifactDetails" => %{"shape" => "ArtifactDetails"}, "settings" => %{"shape" => "ActionTypeSettings"}}, "required" => ["id", "inputArtifactDetails", "outputArtifactDetails"], "type" => "structure"}, "GetPipelineExecutionInput" => %{"members" => %{"pipelineExecutionId" => %{"shape" => "PipelineExecutionId"}, "pipelineName" => %{"shape" => "PipelineName"}}, "required" => ["pipelineName", "pipelineExecutionId"], "type" => "structure"}, "ActionDeclaration" => %{"members" => %{"actionTypeId" => %{"shape" => "ActionTypeId"}, "configuration" => %{"shape" => "ActionConfigurationMap"}, "inputArtifacts" => %{"shape" => "InputArtifactList"}, "name" => %{"shape" => "ActionName"}, "outputArtifacts" => %{"shape" => "OutputArtifactList"}, "roleArn" => %{"shape" => "RoleArn"}, "runOrder" => %{"shape" => "ActionRunOrder"}}, "required" => ["name", "actionTypeId"], "type" => "structure"}, "InputArtifactList" => %{"member" => %{"shape" => "InputArtifact"}, "type" => "list"}, "ArtifactStoreType" => %{"enum" => ["S3"], "type" => "string"}, "ActionConfigurationPropertyList" => %{"max" => 10, "member" => %{"shape" => "ActionConfigurationProperty"}, "type" => "list"}, "Artifact" => %{"members" => %{"location" => %{"shape" => "ArtifactLocation"}, "name" => %{"shape" => "ArtifactName"}, "revision" => %{"shape" => "Revision"}}, "type" => "structure"}, "ActionTypeNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ThirdPartyJob" => %{"members" => %{"clientId" => %{"shape" => "ClientId"}, "jobId" => %{"shape" => "JobId"}}, "type" => "structure"}, "UrlTemplate" => %{"max" => 2048, "min" => 1, "type" => "string"}, "CreateCustomActionTypeOutput" => %{"members" => %{"actionType" => %{"shape" => "ActionType"}}, "required" => ["actionType"], "type" => "structure"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListActionTypesInput" => %{"members" => %{"actionOwnerFilter" => %{"shape" => "ActionOwner"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "LastChangedBy" => %{"type" => "string"}, "PipelineExecutionStatus" => %{"enum" => ["InProgress", "Succeeded", "Superseded", "Failed"], "type" => "string"}, "InvalidBlockerDeclarationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PollForThirdPartyJobsInput" => %{"members" => %{"actionTypeId" => %{"shape" => "ActionTypeId"}, "maxBatchSize" => %{"shape" => "MaxBatchSize"}}, "required" => ["actionTypeId"], "type" => "structure"}, "ActionExecutionStatus" => %{"enum" => ["InProgress", "Succeeded", "Failed"], "type" => "string"}, "ThirdPartyJobId" => %{"max" => 512, "min" => 1, "type" => "string"}, "PipelineName" => %{"max" => 100, "min" => 1, "pattern" => "[A-Za-z0-9.@\\-_]+", "type" => "string"}, "PipelineStageDeclarationList" => %{"member" => %{"shape" => "StageDeclaration"}, "type" => "list"}, "ThirdPartyJobList" => %{"member" => %{"shape" => "ThirdPartyJob"}, "type" => "list"}, "JobStatus" => %{"enum" => ["Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"], "type" => "string"}, "S3ObjectKey" => %{"type" => "string"}, "ApprovalAlreadyCompletedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PipelineExecutionId" => %{"pattern" => "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "type" => "string"}, "MaximumArtifactCount" => %{"max" => 5, "min" => 0, "type" => "integer"}, "GetPipelineExecutionOutput" => %{"members" => %{"pipelineExecution" => %{"shape" => "PipelineExecution"}}, "type" => "structure"}, "ClientToken" => %{"type" => "string"}, "StageRetryMode" => %{"enum" => ["FAILED_ACTIONS"], "type" => "string"}, "AccountId" => %{"pattern" => "[0-9]{12}", "type" => "string"}, "ActionRevision" => %{"members" => %{"created" => %{"shape" => "Timestamp"}, "revisionChangeId" => %{"shape" => "RevisionChangeIdentifier"}, "revisionId" => %{"shape" => "Revision"}}, "required" => ["revisionId", "revisionChangeId", "created"], "type" => "structure"}, "PipelineContext" => %{"members" => %{"action" => %{"shape" => "ActionContext"}, "pipelineName" => %{"shape" => "PipelineName"}, "stage" => %{"shape" => "StageContext"}}, "type" => "structure"}, "UpdatePipelineInput" => %{"members" => %{"pipeline" => %{"shape" => "PipelineDeclaration"}}, "required" => ["pipeline"], "type" => "structure"}, "ActionTypeSettings" => %{"members" => %{"entityUrlTemplate" => %{"shape" => "UrlTemplate"}, "executionUrlTemplate" => %{"shape" => "UrlTemplate"}, "revisionUrlTemplate" => %{"shape" => "UrlTemplate"}, "thirdPartyConfigurationUrl" => %{"shape" => "Url"}}, "type" => "structure"}, "FailureType" => %{"enum" => ["JobFailed", "ConfigurationError", "PermissionError", "RevisionOutOfSync", "RevisionUnavailable", "SystemUnavailable"], "type" => "string"}, "CreateCustomActionTypeInput" => %{"members" => %{"category" => %{"shape" => "ActionCategory"}, "configurationProperties" => %{"shape" => "ActionConfigurationPropertyList"}, "inputArtifactDetails" => %{"shape" => "ArtifactDetails"}, "outputArtifactDetails" => %{"shape" => "ArtifactDetails"}, "provider" => %{"shape" => "ActionProvider"}, "settings" => %{"shape" => "ActionTypeSettings"}, "version" => %{"shape" => "Version"}}, "required" => ["category", "provider", "version", "inputArtifactDetails", "outputArtifactDetails"], "type" => "structure"}, "BlockerDeclaration" => %{"members" => %{"name" => %{"shape" => "BlockerName"}, "type" => %{"shape" => "BlockerType"}}, "required" => ["name", "type"], "type" => "structure"}, "GetJobDetailsOutput" => %{"members" => %{"jobDetails" => %{"shape" => "JobDetails"}}, "type" => "structure"}, "StageBlockerDeclarationList" => %{"member" => %{"shape" => "BlockerDeclaration"}, "type" => "list"}, "AcknowledgeJobInput" => %{"members" => %{"jobId" => %{"shape" => "JobId"}, "nonce" => %{"shape" => "Nonce"}}, "required" => ["jobId", "nonce"], "type" => "structure"}, "GetThirdPartyJobDetailsInput" => %{"members" => %{"clientToken" => %{"shape" => "ClientToken"}, "jobId" => %{"shape" => "ThirdPartyJobId"}}, "required" => ["jobId", "clientToken"], "type" => "structure"}, "ActionTypeList" => %{"member" => %{"shape" => "ActionType"}, "type" => "list"}, "GetPipelineStateInput" => %{"members" => %{"name" => %{"shape" => "PipelineName"}}, "required" => ["name"], "type" => "structure"}, "ArtifactLocationType" => %{"enum" => ["S3"], "type" => "string"}, "LastChangedAt" => %{"type" => "timestamp"}, "ActionCategory" => %{"enum" => ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"], "type" => "string"}, "ArtifactRevisionList" => %{"member" => %{"shape" => "ArtifactRevision"}, "type" => "list"}, "Description" => %{"max" => 2048, "min" => 1, "type" => "string"}, "ActionStateList" => %{"member" => %{"shape" => "ActionState"}, "type" => "list"}, "GetJobDetailsInput" => %{"members" => %{"jobId" => %{"shape" => "JobId"}}, "required" => ["jobId"], "type" => "structure"}, "StageStateList" => %{"member" => %{"shape" => "StageState"}, "type" => "list"}, "Version" => %{"max" => 9, "min" => 1, "pattern" => "[0-9A-Za-z_-]+", "type" => "string"}, "Message" => %{"type" => "string"}, "RoleArn" => %{"max" => 1024, "pattern" => "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", "type" => "string"}, "ArtifactList" => %{"member" => %{"shape" => "Artifact"}, "type" => "list"}, "MaxBatchSize" => %{"min" => 1, "type" => "integer"}, "ActionConfigurationQueryableValue" => %{"max" => 50, "min" => 1, "pattern" => "[a-zA-Z0-9_-]+", "type" => "string"}, "ActionConfigurationKey" => %{"max" => 50, "min" => 1, "type" => "string"}, "PutThirdPartyJobSuccessResultInput" => %{"members" => %{"clientToken" => %{"shape" => "ClientToken"}, "continuationToken" => %{"shape" => "ContinuationToken"}, "currentRevision" => %{"shape" => "CurrentRevision"}, "executionDetails" => %{"shape" => "ExecutionDetails"}, "jobId" => %{"shape" => "ThirdPartyJobId"}}, "required" => ["jobId", "clientToken"], "type" => "structure"}, "PutApprovalResultInput" => %{"members" => %{"actionName" => %{"shape" => "ActionName"}, "pipelineName" => %{"shape" => "PipelineName"}, "result" => %{"shape" => "ApprovalResult"}, "stageName" => %{"shape" => "StageName"}, "token" => %{"shape" => "ApprovalToken"}}, "required" => ["pipelineName", "stageName", "actionName", "result", "token"], "type" => "structure"}, "PipelineExecution" => %{"members" => %{"artifactRevisions" => %{"shape" => "ArtifactRevisionList"}, "pipelineExecutionId" => %{"shape" => "PipelineExecutionId"}, "pipelineName" => %{"shape" => "PipelineName"}, "pipelineVersion" => %{"shape" => "PipelineVersion"}, "status" => %{"shape" => "PipelineExecutionStatus"}}, "type" => "structure"}, "BlockerName" => %{"max" => 100, "min" => 1, "type" => "string"}, "JobDetails" => %{"members" => %{"accountId" => %{"shape" => "AccountId"}, "data" => %{"shape" => "JobData"}, "id" => %{"shape" => "JobId"}}, "type" => "structure"}, "SessionToken" => %{"type" => "string"}, "Timestamp" => %{"type" => "timestamp"}, "ActionProvider" => %{"max" => 25, "min" => 1, "pattern" => "[0-9A-Za-z_-]+", "type" => "string"}, "StageDeclaration" => %{"members" => %{"actions" => %{"shape" => "StageActionDeclarationList"}, "blockers" => %{"shape" => "StageBlockerDeclarationList"}, "name" => %{"shape" => "StageName"}}, "required" => ["name", "actions"], "type" => "structure"}, "AcknowledgeThirdPartyJobOutput" => %{"members" => %{"status" => %{"shape" => "JobStatus"}}, "type" => "structure"}, "ActionConfigurationValue" => %{"max" => 1000, "min" => 1, "type" => "string"}, "JobData" => %{"members" => %{"actionConfiguration" => %{"shape" => "ActionConfiguration"}, "actionTypeId" => %{"shape" => "ActionTypeId"}, "artifactCredentials" => %{"shape" => "AWSSessionCredentials"}, "continuationToken" => %{"shape" => "ContinuationToken"}, "encryptionKey" => %{"shape" => "EncryptionKey"}, "inputArtifacts" => %{"shape" => "ArtifactList"}, "outputArtifacts" => %{"shape" => "ArtifactList"}, "pipelineContext" => %{"shape" => "PipelineContext"}}, "type" => "structure"}, "ApprovalStatus" => %{"enum" => ["Approved", "Rejected"], "type" => "string"}, "CurrentRevision" => %{"members" => %{"changeIdentifier" => %{"shape" => "RevisionChangeIdentifier"}, "created" => %{"shape" => "Time"}, "revision" => %{"shape" => "Revision"}, "revisionSummary" => %{"shape" => "RevisionSummary"}}, "required" => ["revision", "changeIdentifier"], "type" => "structure"}, "StageName" => %{"max" => 100, "min" => 1, "pattern" => "[A-Za-z0-9.@\\-_]+", "type" => "string"}, "MaxResults" => %{"max" => 100, "min" => 1, "type" => "integer"}, "PipelineVersion" => %{"min" => 1, "type" => "integer"}, "ArtifactLocation" => %{"members" => %{"s3Location" => %{"shape" => "S3ArtifactLocation"}, "type" => %{"shape" => "ArtifactLocationType"}}, "type" => "structure"}, "ListPipelineExecutionsOutput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "pipelineExecutionSummaries" => %{"shape" => "PipelineExecutionSummaryList"}}, "type" => "structure"}, "CreatePipelineOutput" => %{"members" => %{"pipeline" => %{"shape" => "PipelineDeclaration"}}, "type" => "structure"}, "ActionRunOrder" => %{"max" => 999, "min" => 1, "type" => "integer"}, "MinimumArtifactCount" => %{"max" => 5, "min" => 0, "type" => "integer"}, "ApprovalResult" => %{"members" => %{"status" => %{"shape" => "ApprovalStatus"}, "summary" => %{"shape" => "ApprovalSummary"}}, "required" => ["summary", "status"], "type" => "structure"}, "ValidationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "StageNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "StageActionDeclarationList" => %{"member" => %{"shape" => "ActionDeclaration"}, "type" => "list"}, "PipelineVersionNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "StageContext" => %{"members" => %{"name" => %{"shape" => "StageName"}}, "type" => "structure"}, "ListPipelineExecutionsInput" => %{"members" => %{"maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}, "pipelineName" => %{"shape" => "PipelineName"}}, "required" => ["pipelineName"], "type" => "structure"}, "StartPipelineExecutionOutput" => %{"members" => %{"pipelineExecutionId" => %{"shape" => "PipelineExecutionId"}}, "type" => "structure"}, "PipelineExecutionNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ActionName" => %{"max" => 100, "min" => 1, "pattern" => "[A-Za-z0-9.@\\-_]+", "type" => "string"}, "LastUpdatedBy" => %{"type" => "string"}, "PipelineNameInUseException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "EncryptionKeyType" => %{"enum" => ["KMS"], "type" => "string"}, "NotLatestPipelineExecutionException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ActionExecutionToken" => %{"type" => "string"}, "LimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RevisionSummary" => %{"max" => 2048, "min" => 1, "type" => "string"}, "PollForJobsOutput" => %{"members" => %{"jobs" => %{"shape" => "JobList"}}, "type" => "structure"}, "PollForThirdPartyJobsOutput" => %{"members" => %{"jobs" => %{"shape" => "ThirdPartyJobList"}}, "type" => "structure"}, "StartPipelineExecutionInput" => %{"members" => %{"name" => %{"shape" => "PipelineName"}}, "required" => ["name"], "type" => "structure"}, "ErrorDetails" => %{"members" => %{"code" => %{"shape" => "Code"}, "message" => %{"shape" => "Message"}}, "type" => "structure"}, "AWSSessionCredentials" => %{"members" => %{"accessKeyId" => %{"shape" => "AccessKeyId"}, "secretAccessKey" => %{"shape" => "SecretAccessKey"}, "sessionToken" => %{"shape" => "SessionToken"}}, "required" => ["accessKeyId", "secretAccessKey", "sessionToken"], "sensitive" => true, "type" => "structure"}, "InvalidClientTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ActionConfigurationPropertyType" => %{"enum" => ["String", "Number", "Boolean"], "type" => "string"}, "ArtifactRevision" => %{"members" => %{"created" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "ArtifactName"}, "revisionChangeIdentifier" => %{"shape" => "RevisionChangeIdentifier"}, "revisionId" => %{"shape" => "Revision"}, "revisionSummary" => %{"shape" => "RevisionSummary"}, "revisionUrl" => %{"shape" => "Url"}}, "type" => "structure"}, "ExecutionSummary" => %{"type" => "string"}, "GetPipelineStateOutput" => %{"members" => %{"created" => %{"shape" => "Timestamp"}, "pipelineName" => %{"shape" => "PipelineName"}, "pipelineVersion" => %{"shape" => "PipelineVersion"}, "stageStates" => %{"shape" => "StageStateList"}, "updated" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "ListPipelinesInput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ActionConfigurationProperty" => %{"members" => %{"description" => %{"shape" => "Description"}, "key" => %{"shape" => "Boolean"}, "name" => %{"shape" => "ActionConfigurationKey"}, "queryable" => %{"shape" => "Boolean"}, "required" => %{"shape" => "Boolean"}, "secret" => %{"shape" => "Boolean"}, "type" => %{"shape" => "ActionConfigurationPropertyType"}}, "required" => ["name", "required", "key", "secret"], "type" => "structure"}, "ArtifactStore" => %{"members" => %{"encryptionKey" => %{"shape" => "EncryptionKey"}, "location" => %{"shape" => "ArtifactStoreLocation"}, "type" => %{"shape" => "ArtifactStoreType"}}, "required" => ["type", "location"], "type" => "structure"}, "EncryptionKey" => %{"members" => %{"id" => %{"shape" => "EncryptionKeyId"}, "type" => %{"shape" => "EncryptionKeyType"}}, "required" => ["id", "type"], "type" => "structure"}, "JobNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "StageExecutionStatus" => %{"enum" => ["InProgress", "Failed", "Succeeded"], "type" => "string"}, "RetryStageExecutionInput" => %{"members" => %{"pipelineExecutionId" => %{"shape" => "PipelineExecutionId"}, "pipelineName" => %{"shape" => "PipelineName"}, "retryMode" => %{"shape" => "StageRetryMode"}, "stageName" => %{"shape" => "StageName"}}, "required" => ["pipelineName", "stageName", "pipelineExecutionId", "retryMode"], "type" => "structure"}, "PipelineExecutionSummaryList" => %{"member" => %{"shape" => "PipelineExecutionSummary"}, "type" => "list"}, "PipelineList" => %{"member" => %{"shape" => "PipelineSummary"}, "type" => "list"}, "AccessKeyId" => %{"type" => "string"}, "GetPipelineOutput" => %{"members" => %{"pipeline" => %{"shape" => "PipelineDeclaration"}}, "type" => "structure"}, "JobList" => %{"member" => %{"shape" => "Job"}, "type" => "list"}, "ArtifactName" => %{"max" => 100, "min" => 1, "pattern" => "[a-zA-Z0-9_\\-]+", "type" => "string"}, "BlockerType" => %{"enum" => ["Schedule"], "type" => "string"}, "OutputArtifact" => %{"members" => %{"name" => %{"shape" => "ArtifactName"}}, "required" => ["name"], "type" => "structure"}, "ActionConfigurationMap" => %{"key" => %{"shape" => "ActionConfigurationKey"}, "type" => "map", "value" => %{"shape" => "ActionConfigurationValue"}}, "ApprovalToken" => %{"pattern" => "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "type" => "string"}, "GetPipelineInput" => %{"members" => %{"name" => %{"shape" => "PipelineName"}, "version" => %{"shape" => "PipelineVersion"}}, "required" => ["name"], "type" => "structure"}, "InvalidJobStateException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Time" => %{"type" => "timestamp"}, "S3ArtifactLocation" => %{"members" => %{"bucketName" => %{"shape" => "S3BucketName"}, "objectKey" => %{"shape" => "S3ObjectKey"}}, "required" => ["bucketName", "objectKey"], "type" => "structure"}, "ContinuationToken" => %{"type" => "string"}, "PutActionRevisionInput" => %{"members" => %{"actionName" => %{"shape" => "ActionName"}, "actionRevision" => %{"shape" => "ActionRevision"}, "pipelineName" => %{"shape" => "PipelineName"}, "stageName" => %{"shape" => "StageName"}}, "required" => ["pipelineName", "stageName", "actionName", "actionRevision"], "type" => "structure"}, "TransitionState" => %{"members" => %{"disabledReason" => %{"shape" => "DisabledReason"}, "enabled" => %{"shape" => "Enabled"}, "lastChangedAt" => %{"shape" => "LastChangedAt"}, "lastChangedBy" => %{"shape" => "LastChangedBy"}}, "type" => "structure"}, "GetThirdPartyJobDetailsOutput" => %{"members" => %{"jobDetails" => %{"shape" => "ThirdPartyJobDetails"}}, "type" => "structure"}, "StageState" => %{"members" => %{"actionStates" => %{"shape" => "ActionStateList"}, "inboundTransitionState" => %{"shape" => "TransitionState"}, "latestExecution" => %{"shape" => "StageExecution"}, "stageName" => %{"shape" => "StageName"}}, "type" => "structure"}, "ListPipelinesOutput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "pipelines" => %{"shape" => "PipelineList"}}, "type" => "structure"}, "EnableStageTransitionInput" => %{"members" => %{"pipelineName" => %{"shape" => "PipelineName"}, "stageName" => %{"shape" => "StageName"}, "transitionType" => %{"shape" => "StageTransitionType"}}, "required" => ["pipelineName", "stageName", "transitionType"], "type" => "structure"}, "DeletePipelineInput" => %{"members" => %{"name" => %{"shape" => "PipelineName"}}, "required" => ["name"], "type" => "structure"}, "ThirdPartyJobDetails" => %{"members" => %{"data" => %{"shape" => "ThirdPartyJobData"}, "id" => %{"shape" => "ThirdPartyJobId"}, "nonce" => %{"shape" => "Nonce"}}, "type" => "structure"}, "FailureDetails" => %{"members" => %{"externalExecutionId" => %{"shape" => "ExecutionId"}, "message" => %{"shape" => "Message"}, "type" => %{"shape" => "FailureType"}}, "required" => ["type", "message"], "type" => "structure"}, "AcknowledgeThirdPartyJobInput" => %{"members" => %{"clientToken" => %{"shape" => "ClientToken"}, "jobId" => %{"shape" => "ThirdPartyJobId"}, "nonce" => %{"shape" => "Nonce"}}, "required" => ["jobId", "nonce", "clientToken"], "type" => "structure"}, "Enabled" => %{"type" => "boolean"}, "ActionConfiguration" => %{"members" => %{"configuration" => %{"shape" => "ActionConfigurationMap"}}, "type" => "structure"}, "EncryptionKeyId" => %{"max" => 100, "min" => 1, "type" => "string"}, "ApprovalSummary" => %{"max" => 512, "min" => 0, "type" => "string"}, "PutThirdPartyJobFailureResultInput" => %{"members" => %{"clientToken" => %{"shape" => "ClientToken"}, "failureDetails" => %{"shape" => "FailureDetails"}, "jobId" => %{"shape" => "ThirdPartyJobId"}}, "required" => ["jobId", "clientToken", "failureDetails"], "type" => "structure"}, "Nonce" => %{"type" => "string"}, "PipelineNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RevisionChangeIdentifier" => %{"max" => 100, "min" => 1, "type" => "string"}, "PutActionRevisionOutput" => %{"members" => %{"newRevision" => %{"shape" => "Boolean"}, "pipelineExecutionId" => %{"shape" => "PipelineExecutionId"}}, "type" => "structure"}, "ArtifactStoreLocation" => %{"max" => 63, "min" => 3, "pattern" => "[a-zA-Z0-9\\-\\.]+", "type" => "string"}, "ActionTypeId" => %{"members" => %{"category" => %{"shape" => "ActionCategory"}, "owner" => %{"shape" => "ActionOwner"}, "provider" => %{"shape" => "ActionProvider"}, "version" => %{"shape" => "Version"}}, "required" => ["category", "owner", "provider", "version"], "type" => "structure"}, "InputArtifact" => %{"members" => %{"name" => %{"shape" => "ArtifactName"}}, "required" => ["name"], "type" => "structure"}, "InvalidApprovalTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "OutputArtifactList" => %{"member" => %{"shape" => "OutputArtifact"}, "type" => "list"}, "ArtifactDetails" => %{"members" => %{"maximumCount" => %{"shape" => "MaximumArtifactCount"}, "minimumCount" => %{"shape" => "MinimumArtifactCount"}}, "required" => ["minimumCount", "maximumCount"], "type" => "structure"}, "ExecutionId" => %{"max" => 1500, "min" => 1, "type" => "string"}, "StageExecution" => %{"members" => %{"pipelineExecutionId" => %{"shape" => "PipelineExecutionId"}, "status" => %{"shape" => "StageExecutionStatus"}}, "required" => ["pipelineExecutionId", "status"], "type" => "structure"}, "JobId" => %{"pattern" => "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "type" => "string"}, "PollForJobsInput" => %{"members" => %{"actionTypeId" => %{"shape" => "ActionTypeId"}, "maxBatchSize" => %{"shape" => "MaxBatchSize"}, "queryParam" => %{"shape" => "QueryParamMap"}}, "required" => ["actionTypeId"], "type" => "structure"}, "PipelineExecutionSummary" => %{"members" => %{"lastUpdateTime" => %{"shape" => "Timestamp"}, "pipelineExecutionId" => %{"shape" => "PipelineExecutionId"}, "startTime" => %{"shape" => "Timestamp"}, "status" => %{"shape" => "PipelineExecutionStatus"}}, "type" => "structure"}, "ActionExecution" => %{"members" => %{"errorDetails" => %{"shape" => "ErrorDetails"}, "externalExecutionId" => %{"shape" => "ExecutionId"}, "externalExecutionUrl" => %{"shape" => "Url"}, "lastStatusChange" => %{"shape" => "Timestamp"}, "lastUpdatedBy" => %{"shape" => "LastUpdatedBy"}, "percentComplete" => %{"shape" => "Percentage"}, "status" => %{"shape" => "ActionExecutionStatus"}, "summary" => %{"shape" => "ExecutionSummary"}, "token" => %{"shape" => "ActionExecutionToken"}}, "type" => "structure"}, "InvalidActionDeclarationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CreatePipelineInput" => %{"members" => %{"pipeline" => %{"shape" => "PipelineDeclaration"}}, "required" => ["pipeline"], "type" => "structure"}, "ListActionTypesOutput" => %{"members" => %{"actionTypes" => %{"shape" => "ActionTypeList"}, "nextToken" => %{"shape" => "NextToken"}}, "required" => ["actionTypes"], "type" => "structure"}, "InvalidStageDeclarationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidStructureException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PutJobSuccessResultInput" => %{"members" => %{"continuationToken" => %{"shape" => "ContinuationToken"}, "currentRevision" => %{"shape" => "CurrentRevision"}, "executionDetails" => %{"shape" => "ExecutionDetails"}, "jobId" => %{"shape" => "JobId"}}, "required" => ["jobId"], "type" => "structure"}, "RetryStageExecutionOutput" => %{"members" => %{"pipelineExecutionId" => %{"shape" => "PipelineExecutionId"}}, "type" => "structure"}, "SecretAccessKey" => %{"type" => "string"}, "NextToken" => %{"type" => "string"}, "ExecutionDetails" => %{"members" => %{"externalExecutionId" => %{"shape" => "ExecutionId"}, "percentComplete" => %{"shape" => "Percentage"}, "summary" => %{"shape" => "ExecutionSummary"}}, "type" => "structure"}, "Revision" => %{"max" => 1500, "min" => 1, "type" => "string"}, "PutApprovalResultOutput" => %{"members" => %{"approvedAt" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "ActionContext" => %{"members" => %{"name" => %{"shape" => "ActionName"}}, "type" => "structure"}}
  end
end