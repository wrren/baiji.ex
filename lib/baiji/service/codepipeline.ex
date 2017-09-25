defmodule Baiji.Codepipeline do
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
      input:    input,
      options:  options,
      action:   "AcknowledgeJob",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Confirms a job worker has received the specified job. Only used for partner
  actions.
  """
  def acknowledge_third_party_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AcknowledgeThirdPartyJob",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new custom action that can be used in all pipelines associated
  with the AWS account. Only used for custom actions.
  """
  def create_custom_action_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateCustomActionType",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a pipeline.
  """
  def create_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreatePipeline",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteCustomActionType",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified pipeline.
  """
  def delete_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeletePipeline",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Prevents artifacts in a pipeline from transitioning to the next stage in
  the pipeline.
  """
  def disable_stage_transition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisableStageTransition",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Enables artifacts in a pipeline to transition to a stage in a pipeline.
  """
  def enable_stage_transition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "EnableStageTransition",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "GetJobDetails",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "GetPipeline",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about an execution of a pipeline, including details
  about artifacts, the pipeline execution ID, and the name, version, and
  status of the pipeline.
  """
  def get_pipeline_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetPipelineExecution",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about the state of a pipeline, including the stages and
  actions.
  """
  def get_pipeline_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetPipelineState",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "GetThirdPartyJobDetails",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets a summary of all AWS CodePipeline action types associated with your
  account.
  """
  def list_action_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListActionTypes",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets a summary of the most recent executions for a pipeline.
  """
  def list_pipeline_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPipelineExecutions",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets a summary of all of the pipelines associated with your account.
  """
  def list_pipelines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPipelines",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "PollForJobs",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "PollForThirdPartyJobs",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Provides information to AWS CodePipeline about new revisions to a source.
  """
  def put_action_revision(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutActionRevision",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Provides the response to a manual approval request to AWS CodePipeline.
  Valid responses include Approved and Rejected.
  """
  def put_approval_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutApprovalResult",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Represents the failure of a job as returned to the pipeline by a job
  worker. Only used for custom actions.
  """
  def put_job_failure_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutJobFailureResult",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Represents the success of a job as returned to the pipeline by a job
  worker. Only used for custom actions.
  """
  def put_job_success_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutJobSuccessResult",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Represents the failure of a third party job as returned to the pipeline by
  a job worker. Only used for partner actions.
  """
  def put_third_party_job_failure_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutThirdPartyJobFailureResult",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Represents the success of a third party job as returned to the pipeline by
  a job worker. Only used for partner actions.
  """
  def put_third_party_job_success_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutThirdPartyJobSuccessResult",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Resumes the pipeline execution by retrying the last failed actions in a
  stage.
  """
  def retry_stage_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RetryStageExecution",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Starts the specified pipeline. Specifically, it begins processing the
  latest commit to the source location specified as part of the pipeline.
  """
  def start_pipeline_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "StartPipelineExecution",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "UpdatePipeline",
      type:     :json,
      method:   :post
    }
  end
  
end