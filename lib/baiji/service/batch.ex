defmodule Baiji.Batch do
  @moduledoc """
  AWS Batch enables you to run batch computing workloads on the AWS Cloud.
  Batch computing is a common way for developers, scientists, and engineers
  to access large amounts of compute resources, and AWS Batch removes the
  undifferentiated heavy lifting of configuring and managing the required
  infrastructure. AWS Batch will be familiar to users of traditional batch
  computing software. This service can efficiently provision resources in
  response to jobs submitted in order to eliminate capacity constraints,
  reduce compute costs, and deliver results quickly.

  As a fully managed service, AWS Batch enables developers, scientists, and
  engineers to run batch computing workloads of any scale. AWS Batch
  automatically provisions compute resources and optimizes the workload
  distribution based on the quantity and scale of the workloads. With AWS
  Batch, there is no need to install or manage batch computing software,
  which allows you to focus on analyzing results and solving problems. AWS
  Batch reduces operational complexities, saves time, and reduces costs,
  which makes it easy for developers, scientists, and engineers to run their
  batch jobs in the AWS Cloud.
  """
  
  @doc """
  Cancels jobs in an AWS Batch job queue. Jobs that are in the `SUBMITTED`,
  `PENDING`, or `RUNNABLE` state are cancelled. Jobs that have progressed to
  `STARTING` or `RUNNING` are not cancelled (but the API operation still
  succeeds, even if no jobs are cancelled); these jobs must be terminated
  with the `TerminateJob` operation.
  """
  def cancel_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CancelJob",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an AWS Batch compute environment. You can create `MANAGED` or
  `UNMANAGED` compute environments.

  In a managed compute environment, AWS Batch manages the compute resources
  within the environment, based on the compute resources that you specify.
  Instances launched into a managed compute environment use the latest Amazon
  ECS-optimized AMI. You can choose to use Amazon EC2 On-Demand instances in
  your managed compute environment, or you can use Amazon EC2 Spot instances
  that only launch when the Spot bid price is below a specified percentage of
  the On-Demand price.

  In an unmanaged compute environment, you can manage your own compute
  resources. This provides more compute resource configuration options, such
  as using a custom AMI, but you must ensure that your AMI meets the Amazon
  ECS container instance AMI specification. For more information, see
  [Container Instance
  AMIs](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html)
  in the *Amazon EC2 Container Service Developer Guide*. After you have
  created your unmanaged compute environment, you can use the
  `DescribeComputeEnvironments` operation to find the Amazon ECS cluster that
  is associated with it and then manually launch your container instances
  into that Amazon ECS cluster. For more information, see [Launching an
  Amazon ECS Container
  Instance](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html)
  in the *Amazon EC2 Container Service Developer Guide*.
  """
  def create_compute_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateComputeEnvironment",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an AWS Batch job queue. When you create a job queue, you associate
  one or more compute environments to the queue and assign an order of
  preference for the compute environments.

  You also set a priority to the job queue that determines the order in which
  the AWS Batch scheduler places jobs onto its associated compute
  environments. For example, if a compute environment is associated with more
  than one job queue, the job queue with a higher priority is given
  preference for scheduling jobs to that compute environment.
  """
  def create_job_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateJobQueue",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes an AWS Batch compute environment.

  Before you can delete a compute environment, you must set its state to
  `DISABLED` with the `UpdateComputeEnvironment` API operation and
  disassociate it from any job queues with the `UpdateJobQueue` API
  operation.
  """
  def delete_compute_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteComputeEnvironment",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified job queue. You must first disable submissions for a
  queue with the `UpdateJobQueue` operation and terminate any jobs that have
  not completed with the `TerminateJob`.

  It is not necessary to disassociate compute environments from a queue
  before submitting a `DeleteJobQueue` request.
  """
  def delete_job_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteJobQueue",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deregisters an AWS Batch job definition.
  """
  def deregister_job_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeregisterJobDefinition",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes one or more of your compute environments.

  If you are using an unmanaged compute environment, you can use the
  `DescribeComputeEnvironment` operation to determine the `ecsClusterArn`
  that you should launch your Amazon ECS container instances into.
  """
  def describe_compute_environments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeComputeEnvironments",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes a list of job definitions. You can specify a `status` (such as
  `ACTIVE`) to only return job definitions that match that status.
  """
  def describe_job_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeJobDefinitions",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes one or more of your job queues.
  """
  def describe_job_queues(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeJobQueues",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes a list of AWS Batch jobs.
  """
  def describe_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeJobs",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a list of task jobs for a specified job queue. You can filter the
  results by job status with the `jobStatus` parameter.
  """
  def list_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListJobs",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Registers an AWS Batch job definition.
  """
  def register_job_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RegisterJobDefinition",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Submits an AWS Batch job from a job definition. Parameters specified during
  `SubmitJob` override parameters defined in the job definition.
  """
  def submit_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "SubmitJob",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Terminates jobs in a job queue. Jobs that are in the `STARTING` or
  `RUNNING` state are terminated, which causes them to transition to
  `FAILED`. Jobs that have not progressed to the `STARTING` state are
  cancelled.
  """
  def terminate_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "TerminateJob",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates an AWS Batch compute environment.
  """
  def update_compute_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateComputeEnvironment",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates a job queue.
  """
  def update_job_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateJobQueue",
      type:     :json,
      method:   :post
    }
  end
  
end