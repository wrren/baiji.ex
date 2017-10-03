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
      service:          "batch",
      endpoint:         "/v1/canceljob",
      input:            input,
      options:          options,
      action:           "CancelJob",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "CancelJobRequest",
      output_shape:     "CancelJobResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an AWS Batch compute environment. You can create `MANAGED` or
  `UNMANAGED` compute environments.

  In a managed compute environment, AWS Batch manages the compute resources
  within the environment, based on the compute resources that you specify.
  Instances launched into a managed compute environment use a recent,
  approved version of the Amazon ECS-optimized AMI. You can choose to use
  Amazon EC2 On-Demand instances in your managed compute environment, or you
  can use Amazon EC2 Spot instances that only launch when the Spot bid price
  is below a specified percentage of the On-Demand price.

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
      service:          "batch",
      endpoint:         "/v1/createcomputeenvironment",
      input:            input,
      options:          options,
      action:           "CreateComputeEnvironment",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "CreateComputeEnvironmentRequest",
      output_shape:     "CreateComputeEnvironmentResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "batch",
      endpoint:         "/v1/createjobqueue",
      input:            input,
      options:          options,
      action:           "CreateJobQueue",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "CreateJobQueueRequest",
      output_shape:     "CreateJobQueueResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "batch",
      endpoint:         "/v1/deletecomputeenvironment",
      input:            input,
      options:          options,
      action:           "DeleteComputeEnvironment",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "DeleteComputeEnvironmentRequest",
      output_shape:     "DeleteComputeEnvironmentResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified job queue. You must first disable submissions for a
  queue with the `UpdateJobQueue` operation. All jobs in the queue are
  terminated when you delete a job queue.

  It is not necessary to disassociate compute environments from a queue
  before submitting a `DeleteJobQueue` request.
  """
  def delete_job_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/deletejobqueue",
      input:            input,
      options:          options,
      action:           "DeleteJobQueue",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "DeleteJobQueueRequest",
      output_shape:     "DeleteJobQueueResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deregisters an AWS Batch job definition.
  """
  def deregister_job_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/deregisterjobdefinition",
      input:            input,
      options:          options,
      action:           "DeregisterJobDefinition",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "DeregisterJobDefinitionRequest",
      output_shape:     "DeregisterJobDefinitionResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "batch",
      endpoint:         "/v1/describecomputeenvironments",
      input:            input,
      options:          options,
      action:           "DescribeComputeEnvironments",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "DescribeComputeEnvironmentsRequest",
      output_shape:     "DescribeComputeEnvironmentsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes a list of job definitions. You can specify a `status` (such as
  `ACTIVE`) to only return job definitions that match that status.
  """
  def describe_job_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/describejobdefinitions",
      input:            input,
      options:          options,
      action:           "DescribeJobDefinitions",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "DescribeJobDefinitionsRequest",
      output_shape:     "DescribeJobDefinitionsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your job queues.
  """
  def describe_job_queues(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/describejobqueues",
      input:            input,
      options:          options,
      action:           "DescribeJobQueues",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "DescribeJobQueuesRequest",
      output_shape:     "DescribeJobQueuesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes a list of AWS Batch jobs.
  """
  def describe_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/describejobs",
      input:            input,
      options:          options,
      action:           "DescribeJobs",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "DescribeJobsRequest",
      output_shape:     "DescribeJobsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of task jobs for a specified job queue. You can filter the
  results by job status with the `jobStatus` parameter. If you do not specify
  a status, only `RUNNING` jobs are returned.
  """
  def list_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/listjobs",
      input:            input,
      options:          options,
      action:           "ListJobs",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "ListJobsRequest",
      output_shape:     "ListJobsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Registers an AWS Batch job definition.
  """
  def register_job_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/registerjobdefinition",
      input:            input,
      options:          options,
      action:           "RegisterJobDefinition",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "RegisterJobDefinitionRequest",
      output_shape:     "RegisterJobDefinitionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Submits an AWS Batch job from a job definition. Parameters specified during
  `SubmitJob` override parameters defined in the job definition.
  """
  def submit_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/submitjob",
      input:            input,
      options:          options,
      action:           "SubmitJob",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "SubmitJobRequest",
      output_shape:     "SubmitJobResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "batch",
      endpoint:         "/v1/terminatejob",
      input:            input,
      options:          options,
      action:           "TerminateJob",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "TerminateJobRequest",
      output_shape:     "TerminateJobResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates an AWS Batch compute environment.
  """
  def update_compute_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/updatecomputeenvironment",
      input:            input,
      options:          options,
      action:           "UpdateComputeEnvironment",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "UpdateComputeEnvironmentRequest",
      output_shape:     "UpdateComputeEnvironmentResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates a job queue.
  """
  def update_job_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "batch",
      endpoint:         "/v1/updatejobqueue",
      input:            input,
      options:          options,
      action:           "UpdateJobQueue",
      
      endpoint_prefix:  "batch",
      type:             :json,
      version:          "2016-08-10",
      method:           :post,
      input_shape:      "UpdateJobQueueRequest",
      output_shape:     "UpdateJobQueueResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"ComputeEnvironmentDetail" => %{"members" => %{"computeEnvironmentArn" => %{"shape" => "String"}, "computeEnvironmentName" => %{"shape" => "String"}, "computeResources" => %{"shape" => "ComputeResource"}, "ecsClusterArn" => %{"shape" => "String"}, "serviceRole" => %{"shape" => "String"}, "state" => %{"shape" => "CEState"}, "status" => %{"shape" => "CEStatus"}, "statusReason" => %{"shape" => "String"}, "type" => %{"shape" => "CEType"}}, "required" => ["computeEnvironmentName", "computeEnvironmentArn", "ecsClusterArn"], "type" => "structure"}, "CEStatus" => %{"enum" => ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"], "type" => "string"}, "DeleteJobQueueResponse" => %{"members" => %{}, "type" => "structure"}, "CRType" => %{"enum" => ["EC2", "SPOT"], "type" => "string"}, "ClientException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "MountPoints" => %{"member" => %{"shape" => "MountPoint"}, "type" => "list"}, "Volumes" => %{"member" => %{"shape" => "Volume"}, "type" => "list"}, "UpdateComputeEnvironmentRequest" => %{"members" => %{"computeEnvironment" => %{"shape" => "String"}, "computeResources" => %{"shape" => "ComputeResourceUpdate"}, "serviceRole" => %{"shape" => "String"}, "state" => %{"shape" => "CEState"}}, "required" => ["computeEnvironment"], "type" => "structure"}, "RegisterJobDefinitionResponse" => %{"members" => %{"jobDefinitionArn" => %{"shape" => "String"}, "jobDefinitionName" => %{"shape" => "String"}, "revision" => %{"shape" => "Integer"}}, "required" => ["jobDefinitionName", "jobDefinitionArn", "revision"], "type" => "structure"}, "ComputeResourceUpdate" => %{"members" => %{"desiredvCpus" => %{"shape" => "Integer"}, "maxvCpus" => %{"shape" => "Integer"}, "minvCpus" => %{"shape" => "Integer"}}, "type" => "structure"}, "CancelJobRequest" => %{"members" => %{"jobId" => %{"shape" => "String"}, "reason" => %{"shape" => "String"}}, "required" => ["jobId", "reason"], "type" => "structure"}, "CreateJobQueueResponse" => %{"members" => %{"jobQueueArn" => %{"shape" => "String"}, "jobQueueName" => %{"shape" => "String"}}, "required" => ["jobQueueName", "jobQueueArn"], "type" => "structure"}, "RetryStrategy" => %{"members" => %{"attempts" => %{"shape" => "Integer"}}, "type" => "structure"}, "JobDefinition" => %{"members" => %{"containerProperties" => %{"shape" => "ContainerProperties"}, "jobDefinitionArn" => %{"shape" => "String"}, "jobDefinitionName" => %{"shape" => "String"}, "parameters" => %{"shape" => "ParametersMap"}, "retryStrategy" => %{"shape" => "RetryStrategy"}, "revision" => %{"shape" => "Integer"}, "status" => %{"shape" => "String"}, "type" => %{"shape" => "String"}}, "required" => ["jobDefinitionName", "jobDefinitionArn", "revision", "type"], "type" => "structure"}, "JQStatus" => %{"enum" => ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"], "type" => "string"}, "TagsMap" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "ComputeEnvironmentOrders" => %{"member" => %{"shape" => "ComputeEnvironmentOrder"}, "type" => "list"}, "JobStatus" => %{"enum" => ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"], "type" => "string"}, "Ulimits" => %{"member" => %{"shape" => "Ulimit"}, "type" => "list"}, "DeleteComputeEnvironmentResponse" => %{"members" => %{}, "type" => "structure"}, "DeregisterJobDefinitionRequest" => %{"members" => %{"jobDefinition" => %{"shape" => "String"}}, "required" => ["jobDefinition"], "type" => "structure"}, "Ulimit" => %{"members" => %{"hardLimit" => %{"shape" => "Integer"}, "name" => %{"shape" => "String"}, "softLimit" => %{"shape" => "Integer"}}, "required" => ["hardLimit", "name", "softLimit"], "type" => "structure"}, "StringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "JobQueueDetail" => %{"members" => %{"computeEnvironmentOrder" => %{"shape" => "ComputeEnvironmentOrders"}, "jobQueueArn" => %{"shape" => "String"}, "jobQueueName" => %{"shape" => "String"}, "priority" => %{"shape" => "Integer"}, "state" => %{"shape" => "JQState"}, "status" => %{"shape" => "JQStatus"}, "statusReason" => %{"shape" => "String"}}, "required" => ["jobQueueName", "jobQueueArn", "state", "priority", "computeEnvironmentOrder"], "type" => "structure"}, "ContainerProperties" => %{"members" => %{"command" => %{"shape" => "StringList"}, "environment" => %{"shape" => "EnvironmentVariables"}, "image" => %{"shape" => "String"}, "jobRoleArn" => %{"shape" => "String"}, "memory" => %{"shape" => "Integer"}, "mountPoints" => %{"shape" => "MountPoints"}, "privileged" => %{"shape" => "Boolean"}, "readonlyRootFilesystem" => %{"shape" => "Boolean"}, "ulimits" => %{"shape" => "Ulimits"}, "user" => %{"shape" => "String"}, "vcpus" => %{"shape" => "Integer"}, "volumes" => %{"shape" => "Volumes"}}, "required" => ["image", "vcpus", "memory"], "type" => "structure"}, "DescribeJobQueuesRequest" => %{"members" => %{"jobQueues" => %{"shape" => "StringList"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateComputeEnvironmentResponse" => %{"members" => %{"computeEnvironmentArn" => %{"shape" => "String"}, "computeEnvironmentName" => %{"shape" => "String"}}, "type" => "structure"}, "ComputeResource" => %{"members" => %{"bidPercentage" => %{"shape" => "Integer"}, "desiredvCpus" => %{"shape" => "Integer"}, "ec2KeyPair" => %{"shape" => "String"}, "imageId" => %{"shape" => "String"}, "instanceRole" => %{"shape" => "String"}, "instanceTypes" => %{"shape" => "StringList"}, "maxvCpus" => %{"shape" => "Integer"}, "minvCpus" => %{"shape" => "Integer"}, "securityGroupIds" => %{"shape" => "StringList"}, "spotIamFleetRole" => %{"shape" => "String"}, "subnets" => %{"shape" => "StringList"}, "tags" => %{"shape" => "TagsMap"}, "type" => %{"shape" => "CRType"}}, "required" => ["type", "minvCpus", "maxvCpus", "instanceTypes", "subnets", "securityGroupIds", "instanceRole"], "type" => "structure"}, "AttemptDetail" => %{"members" => %{"container" => %{"shape" => "AttemptContainerDetail"}, "startedAt" => %{"shape" => "Long"}, "statusReason" => %{"shape" => "String"}, "stoppedAt" => %{"shape" => "Long"}}, "type" => "structure"}, "Host" => %{"members" => %{"sourcePath" => %{"shape" => "String"}}, "type" => "structure"}, "JobSummaryList" => %{"member" => %{"shape" => "JobSummary"}, "type" => "list"}, "DescribeComputeEnvironmentsRequest" => %{"members" => %{"computeEnvironments" => %{"shape" => "StringList"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "EnvironmentVariables" => %{"member" => %{"shape" => "KeyValuePair"}, "type" => "list"}, "JQState" => %{"enum" => ["ENABLED", "DISABLED"], "type" => "string"}, "ContainerOverrides" => %{"members" => %{"command" => %{"shape" => "StringList"}, "environment" => %{"shape" => "EnvironmentVariables"}, "memory" => %{"shape" => "Integer"}, "vcpus" => %{"shape" => "Integer"}}, "type" => "structure"}, "CreateJobQueueRequest" => %{"members" => %{"computeEnvironmentOrder" => %{"shape" => "ComputeEnvironmentOrders"}, "jobQueueName" => %{"shape" => "String"}, "priority" => %{"shape" => "Integer"}, "state" => %{"shape" => "JQState"}}, "required" => ["jobQueueName", "priority", "computeEnvironmentOrder"], "type" => "structure"}, "JobDependencyList" => %{"member" => %{"shape" => "JobDependency"}, "type" => "list"}, "MountPoint" => %{"members" => %{"containerPath" => %{"shape" => "String"}, "readOnly" => %{"shape" => "Boolean"}, "sourceVolume" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeJobsResponse" => %{"members" => %{"jobs" => %{"shape" => "JobDetailList"}}, "type" => "structure"}, "DeleteJobQueueRequest" => %{"members" => %{"jobQueue" => %{"shape" => "String"}}, "required" => ["jobQueue"], "type" => "structure"}, "TerminateJobResponse" => %{"members" => %{}, "type" => "structure"}, "DescribeComputeEnvironmentsResponse" => %{"members" => %{"computeEnvironments" => %{"shape" => "ComputeEnvironmentDetailList"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "JobDefinitionType" => %{"enum" => ["container"], "type" => "string"}, "UpdateJobQueueResponse" => %{"members" => %{"jobQueueArn" => %{"shape" => "String"}, "jobQueueName" => %{"shape" => "String"}}, "type" => "structure"}, "JobQueueDetailList" => %{"member" => %{"shape" => "JobQueueDetail"}, "type" => "list"}, "KeyValuePair" => %{"members" => %{"name" => %{"shape" => "String"}, "value" => %{"shape" => "String"}}, "type" => "structure"}, "Long" => %{"type" => "long"}, "CreateComputeEnvironmentRequest" => %{"members" => %{"computeEnvironmentName" => %{"shape" => "String"}, "computeResources" => %{"shape" => "ComputeResource"}, "serviceRole" => %{"shape" => "String"}, "state" => %{"shape" => "CEState"}, "type" => %{"shape" => "CEType"}}, "required" => ["computeEnvironmentName", "type", "serviceRole"], "type" => "structure"}, "DescribeJobQueuesResponse" => %{"members" => %{"jobQueues" => %{"shape" => "JobQueueDetailList"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DeregisterJobDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "JobDetailList" => %{"member" => %{"shape" => "JobDetail"}, "type" => "list"}, "ComputeEnvironmentOrder" => %{"members" => %{"computeEnvironment" => %{"shape" => "String"}, "order" => %{"shape" => "Integer"}}, "required" => ["order", "computeEnvironment"], "type" => "structure"}, "CancelJobResponse" => %{"members" => %{}, "type" => "structure"}, "ComputeEnvironmentDetailList" => %{"member" => %{"shape" => "ComputeEnvironmentDetail"}, "type" => "list"}, "AttemptContainerDetail" => %{"members" => %{"containerInstanceArn" => %{"shape" => "String"}, "exitCode" => %{"shape" => "Integer"}, "logStreamName" => %{"shape" => "String"}, "reason" => %{"shape" => "String"}, "taskArn" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeJobsRequest" => %{"members" => %{"jobs" => %{"shape" => "StringList"}}, "required" => ["jobs"], "type" => "structure"}, "SubmitJobRequest" => %{"members" => %{"containerOverrides" => %{"shape" => "ContainerOverrides"}, "dependsOn" => %{"shape" => "JobDependencyList"}, "jobDefinition" => %{"shape" => "String"}, "jobName" => %{"shape" => "String"}, "jobQueue" => %{"shape" => "String"}, "parameters" => %{"shape" => "ParametersMap"}, "retryStrategy" => %{"shape" => "RetryStrategy"}}, "required" => ["jobName", "jobQueue", "jobDefinition"], "type" => "structure"}, "ContainerDetail" => %{"members" => %{"command" => %{"shape" => "StringList"}, "containerInstanceArn" => %{"shape" => "String"}, "environment" => %{"shape" => "EnvironmentVariables"}, "exitCode" => %{"shape" => "Integer"}, "image" => %{"shape" => "String"}, "jobRoleArn" => %{"shape" => "String"}, "logStreamName" => %{"shape" => "String"}, "memory" => %{"shape" => "Integer"}, "mountPoints" => %{"shape" => "MountPoints"}, "privileged" => %{"shape" => "Boolean"}, "readonlyRootFilesystem" => %{"shape" => "Boolean"}, "reason" => %{"shape" => "String"}, "taskArn" => %{"shape" => "String"}, "ulimits" => %{"shape" => "Ulimits"}, "user" => %{"shape" => "String"}, "vcpus" => %{"shape" => "Integer"}, "volumes" => %{"shape" => "Volumes"}}, "type" => "structure"}, "ListJobsRequest" => %{"members" => %{"jobQueue" => %{"shape" => "String"}, "jobStatus" => %{"shape" => "JobStatus"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "String"}}, "required" => ["jobQueue"], "type" => "structure"}, "CEType" => %{"enum" => ["MANAGED", "UNMANAGED"], "type" => "string"}, "SubmitJobResponse" => %{"members" => %{"jobId" => %{"shape" => "String"}, "jobName" => %{"shape" => "String"}}, "required" => ["jobName", "jobId"], "type" => "structure"}, "CreateComputeEnvironmentResponse" => %{"members" => %{"computeEnvironmentArn" => %{"shape" => "String"}, "computeEnvironmentName" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeJobDefinitionsResponse" => %{"members" => %{"jobDefinitions" => %{"shape" => "JobDefinitionList"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "AttemptDetails" => %{"member" => %{"shape" => "AttemptDetail"}, "type" => "list"}, "CEState" => %{"enum" => ["ENABLED", "DISABLED"], "type" => "string"}, "JobDetail" => %{"members" => %{"attempts" => %{"shape" => "AttemptDetails"}, "container" => %{"shape" => "ContainerDetail"}, "createdAt" => %{"shape" => "Long"}, "dependsOn" => %{"shape" => "JobDependencyList"}, "jobDefinition" => %{"shape" => "String"}, "jobId" => %{"shape" => "String"}, "jobName" => %{"shape" => "String"}, "jobQueue" => %{"shape" => "String"}, "parameters" => %{"shape" => "ParametersMap"}, "retryStrategy" => %{"shape" => "RetryStrategy"}, "startedAt" => %{"shape" => "Long"}, "status" => %{"shape" => "JobStatus"}, "statusReason" => %{"shape" => "String"}, "stoppedAt" => %{"shape" => "Long"}}, "required" => ["jobName", "jobId", "jobQueue", "status", "startedAt", "jobDefinition"], "type" => "structure"}, "JobDefinitionList" => %{"member" => %{"shape" => "JobDefinition"}, "type" => "list"}, "DeleteComputeEnvironmentRequest" => %{"members" => %{"computeEnvironment" => %{"shape" => "String"}}, "required" => ["computeEnvironment"], "type" => "structure"}, "ParametersMap" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "Integer" => %{"type" => "integer"}, "UpdateJobQueueRequest" => %{"members" => %{"computeEnvironmentOrder" => %{"shape" => "ComputeEnvironmentOrders"}, "jobQueue" => %{"shape" => "String"}, "priority" => %{"shape" => "Integer"}, "state" => %{"shape" => "JQState"}}, "required" => ["jobQueue"], "type" => "structure"}, "RegisterJobDefinitionRequest" => %{"members" => %{"containerProperties" => %{"shape" => "ContainerProperties"}, "jobDefinitionName" => %{"shape" => "String"}, "parameters" => %{"shape" => "ParametersMap"}, "retryStrategy" => %{"shape" => "RetryStrategy"}, "type" => %{"shape" => "JobDefinitionType"}}, "required" => ["jobDefinitionName", "type"], "type" => "structure"}, "JobSummary" => %{"members" => %{"jobId" => %{"shape" => "String"}, "jobName" => %{"shape" => "String"}}, "required" => ["jobId", "jobName"], "type" => "structure"}, "TerminateJobRequest" => %{"members" => %{"jobId" => %{"shape" => "String"}, "reason" => %{"shape" => "String"}}, "required" => ["jobId", "reason"], "type" => "structure"}, "Volume" => %{"members" => %{"host" => %{"shape" => "Host"}, "name" => %{"shape" => "String"}}, "type" => "structure"}, "ServerException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "JobDependency" => %{"members" => %{"jobId" => %{"shape" => "String"}}, "type" => "structure"}, "ListJobsResponse" => %{"members" => %{"jobSummaryList" => %{"shape" => "JobSummaryList"}, "nextToken" => %{"shape" => "String"}}, "required" => ["jobSummaryList"], "type" => "structure"}, "DescribeJobDefinitionsRequest" => %{"members" => %{"jobDefinitionName" => %{"shape" => "String"}, "jobDefinitions" => %{"shape" => "StringList"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "String"}, "status" => %{"shape" => "String"}}, "type" => "structure"}}
  end
end