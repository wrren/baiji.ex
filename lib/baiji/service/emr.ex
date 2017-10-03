defmodule Baiji.EMR do
  @moduledoc """
  Amazon EMR is a web service that makes it easy to process large amounts of
  data efficiently. Amazon EMR uses Hadoop processing combined with several
  AWS products to do tasks such as web indexing, data mining, log file
  analysis, machine learning, scientific simulation, and data warehousing.
  """
  
  @doc """
  Adds an instance fleet to a running cluster.

  <note> The instance fleet configuration is available only in Amazon EMR
  versions 4.8.0 and later, excluding 5.0.x.

  </note>
  """
  def add_instance_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddInstanceFleet",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "AddInstanceFleetInput",
      output_shape:     "AddInstanceFleetOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds one or more instance groups to a running cluster.
  """
  def add_instance_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddInstanceGroups",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "AddInstanceGroupsInput",
      output_shape:     "AddInstanceGroupsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps
  are allowed in each job flow.

  If your cluster is long-running (such as a Hive data warehouse) or complex,
  you may require more than 256 steps to process your data. You can bypass
  the 256-step limitation in various ways, including using SSH to connect to
  the master node and submitting queries directly to the software running on
  the master node, such as Hive and Hadoop. For more information on how to do
  this, see [Add More than 256 Steps to a
  Cluster](http://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/AddMoreThan256Steps.html)
  in the *Amazon EMR Management Guide*.

  A step specifies the location of a JAR file stored either on the master
  node of the cluster or in Amazon S3. Each step is performed by the main
  function of the main class of the JAR file. The main class can be specified
  either in the manifest of the JAR or by using the MainFunction parameter of
  the step.

  Amazon EMR executes each step in the order listed. For a step to be
  considered complete, the main function must exit with a zero exit code and
  all Hadoop jobs started while the step was running must have completed and
  run successfully.

  You can only add steps to a cluster that is in one of the following states:
  STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
  """
  def add_job_flow_steps(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddJobFlowSteps",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "AddJobFlowStepsInput",
      output_shape:     "AddJobFlowStepsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds tags to an Amazon EMR resource. Tags make it easier to associate
  clusters in various ways, such as grouping clusters to track your Amazon
  EMR resource allocation costs. For more information, see [Tagging Amazon
  EMR
  Resources](http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html).
  """
  def add_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTags",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "AddTagsInput",
      output_shape:     "AddTagsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Cancels a pending step or steps in a running cluster. Available only in
  Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of
  256 steps are allowed in each CancelSteps request. CancelSteps is
  idempotent but asynchronous; it does not guarantee a step will be canceled,
  even if the request is successfully submitted. You can only cancel steps
  that are in a `PENDING` state.
  """
  def cancel_steps(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelSteps",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "CancelStepsInput",
      output_shape:     "CancelStepsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a security configuration, which is stored in the service and can be
  specified when a cluster is created.
  """
  def create_security_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSecurityConfiguration",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "CreateSecurityConfigurationInput",
      output_shape:     "CreateSecurityConfigurationOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a security configuration.
  """
  def delete_security_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSecurityConfiguration",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "DeleteSecurityConfigurationInput",
      output_shape:     "DeleteSecurityConfigurationOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides cluster-level details including status, hardware and software
  configuration, VPC settings, and so on. For information about the cluster
  steps, see `ListSteps`.
  """
  def describe_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCluster",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "DescribeClusterInput",
      output_shape:     "DescribeClusterOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This API is deprecated and will eventually be removed. We recommend you use
  `ListClusters`, `DescribeCluster`, `ListSteps`, `ListInstanceGroups` and
  `ListBootstrapActions` instead.

  DescribeJobFlows returns a list of job flows that match all of the supplied
  parameters. The parameters can include a list of job flow IDs, job flow
  states, and restrictions on job flow creation date and time.

  Regardless of supplied parameters, only job flows created within the last
  two months are returned.

  If no parameters are supplied, then job flows matching either of the
  following criteria are returned:

  <ul> <li> Job flows created and completed in the last two weeks

  </li> <li> Job flows created within the last two months that are in one of
  the following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`

  </li> </ul> Amazon EMR can return a maximum of 512 job flow descriptions.
  """
  def describe_job_flows(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeJobFlows",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "DescribeJobFlowsInput",
      output_shape:     "DescribeJobFlowsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides the details of a security configuration by returning the
  configuration JSON.
  """
  def describe_security_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSecurityConfiguration",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "DescribeSecurityConfigurationInput",
      output_shape:     "DescribeSecurityConfigurationOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides more detail about the cluster step.
  """
  def describe_step(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeStep",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "DescribeStepInput",
      output_shape:     "DescribeStepOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides information about the bootstrap actions associated with a cluster.
  """
  def list_bootstrap_actions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListBootstrapActions",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ListBootstrapActionsInput",
      output_shape:     "ListBootstrapActionsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides the status of all clusters visible to this AWS account. Allows you
  to filter the list of clusters based on certain criteria; for example,
  filtering by cluster creation date and time or by status. This call returns
  a maximum of 50 clusters per call, but returns a marker to track the paging
  of the cluster list across multiple ListClusters calls.
  """
  def list_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListClusters",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ListClustersInput",
      output_shape:     "ListClustersOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all available details about the instance fleets in a cluster.

  <note> The instance fleet configuration is available only in Amazon EMR
  versions 4.8.0 and later, excluding 5.0.x versions.

  </note>
  """
  def list_instance_fleets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListInstanceFleets",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ListInstanceFleetsInput",
      output_shape:     "ListInstanceFleetsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides all available details about the instance groups in a cluster.
  """
  def list_instance_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListInstanceGroups",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ListInstanceGroupsInput",
      output_shape:     "ListInstanceGroupsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides information for all active EC2 instances and EC2 instances
  terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in
  any of the following states are considered active: AWAITING_FULFILLMENT,
  PROVISIONING, BOOTSTRAPPING, RUNNING.
  """
  def list_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListInstances",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ListInstancesInput",
      output_shape:     "ListInstancesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all the security configurations visible to this account, providing
  their creation dates and times, and their names. This call returns a
  maximum of 50 clusters per call, but returns a marker to track the paging
  of the cluster list across multiple ListSecurityConfigurations calls.
  """
  def list_security_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListSecurityConfigurations",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ListSecurityConfigurationsInput",
      output_shape:     "ListSecurityConfigurationsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Provides a list of steps for the cluster in reverse order unless you
  specify stepIds with the request.
  """
  def list_steps(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListSteps",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ListStepsInput",
      output_shape:     "ListStepsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the target On-Demand and target Spot capacities for the instance
  fleet with the specified InstanceFleetID within the cluster specified using
  ClusterID. The call either succeeds or fails atomically.

  <note> The instance fleet configuration is available only in Amazon EMR
  versions 4.8.0 and later, excluding 5.0.x versions.

  </note>
  """
  def modify_instance_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyInstanceFleet",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ModifyInstanceFleetInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  ModifyInstanceGroups modifies the number of nodes and configuration
  settings of an instance group. The input parameters include the new target
  instance count for the group and the instance group ID. The call will
  either succeed or fail atomically.
  """
  def modify_instance_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyInstanceGroups",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "ModifyInstanceGroupsInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates or updates an automatic scaling policy for a core instance group or
  task instance group in an Amazon EMR cluster. The automatic scaling policy
  defines how an instance group dynamically adds and terminates EC2 instances
  in response to the value of a CloudWatch metric.
  """
  def put_auto_scaling_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutAutoScalingPolicy",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "PutAutoScalingPolicyInput",
      output_shape:     "PutAutoScalingPolicyOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes an automatic scaling policy from a specified instance group within
  an EMR cluster.
  """
  def remove_auto_scaling_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveAutoScalingPolicy",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "RemoveAutoScalingPolicyInput",
      output_shape:     "RemoveAutoScalingPolicyOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes tags from an Amazon EMR resource. Tags make it easier to associate
  clusters in various ways, such as grouping clusters to track your Amazon
  EMR resource allocation costs. For more information, see [Tagging Amazon
  EMR
  Resources](http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html).

  The following example removes the stack tag with value Prod from a cluster:
  """
  def remove_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTags",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "RemoveTagsInput",
      output_shape:     "RemoveTagsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  RunJobFlow creates and starts running a new cluster (job flow). The cluster
  runs the steps specified. After the steps complete, the cluster stops and
  the HDFS partition is lost. To prevent loss of data, configure the last
  step of the job flow to store results in Amazon S3. If the
  `JobFlowInstancesConfig` `KeepJobFlowAliveWhenNoSteps` parameter is set to
  `TRUE`, the cluster transitions to the WAITING state rather than shutting
  down after the steps have completed.

  For additional protection, you can set the `JobFlowInstancesConfig`
  `TerminationProtected` parameter to `TRUE` to lock the cluster and prevent
  it from being terminated by API call, user intervention, or in the event of
  a job flow error.

  A maximum of 256 steps are allowed in each job flow.

  If your cluster is long-running (such as a Hive data warehouse) or complex,
  you may require more than 256 steps to process your data. You can bypass
  the 256-step limitation in various ways, including using the SSH shell to
  connect to the master node and submitting queries directly to the software
  running on the master node, such as Hive and Hadoop. For more information
  on how to do this, see [Add More than 256 Steps to a
  Cluster](http://docs.aws.amazon.com/ElasticMapReduce/latest/Management/Guide/AddMoreThan256Steps.html)
  in the *Amazon EMR Management Guide*.

  For long running clusters, we recommend that you periodically store your
  results.

  <note> The instance fleets configuration is available only in Amazon EMR
  versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request
  can contain InstanceFleets parameters or InstanceGroups parameters, but not
  both.

  </note>
  """
  def run_job_flow(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RunJobFlow",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "RunJobFlowInput",
      output_shape:     "RunJobFlowOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  SetTerminationProtection locks a cluster (job flow) so the EC2 instances in
  the cluster cannot be terminated by user intervention, an API call, or in
  the event of a job-flow error. The cluster still terminates upon successful
  completion of the job flow. Calling `SetTerminationProtection` on a cluster
  is similar to calling the Amazon EC2 `DisableAPITermination` API on all EC2
  instances in a cluster.

  `SetTerminationProtection` is used to prevent accidental termination of a
  cluster and to ensure that in the event of an error, the instances persist
  so that you can recover any data stored in their ephemeral instance
  storage.

  To terminate a cluster that has been locked by setting
  `SetTerminationProtection` to `true`, you must first unlock the job flow by
  a subsequent call to `SetTerminationProtection` in which you set the value
  to `false`.

  For more information, see[Managing Cluster
  Termination](http://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html)
  in the *Amazon EMR Management Guide*.
  """
  def set_termination_protection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetTerminationProtection",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "SetTerminationProtectionInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets whether all AWS Identity and Access Management (IAM) users under your
  account can access the specified clusters (job flows). This action works on
  running clusters. You can also set the visibility of a cluster when you
  launch it using the `VisibleToAllUsers` parameter of `RunJobFlow`. The
  SetVisibleToAllUsers action can be called only by an IAM user who created
  the cluster or the AWS account that owns the cluster.
  """
  def set_visible_to_all_users(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetVisibleToAllUsers",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "SetVisibleToAllUsersInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  TerminateJobFlows shuts a list of clusters (job flows) down. When a job
  flow is shut down, any step not yet completed is canceled and the EC2
  instances on which the cluster is running are stopped. Any log files not
  already saved are uploaded to Amazon S3 if a LogUri was specified when the
  cluster was created.

  The maximum number of clusters allowed is 10. The call to
  `TerminateJobFlows` is asynchronous. Depending on the configuration of the
  cluster, it may take up to 1-5 minutes for the cluster to completely
  terminate and release allocated resources, such as Amazon EC2 instances.
  """
  def terminate_job_flows(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticmapreduce",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TerminateJobFlows",
      
      target_prefix:    "ElasticMapReduce",
      
      endpoint_prefix:  "elasticmapreduce",
      type:             :json,
      version:          "2009-03-31",
      method:           :post,
      input_shape:      "TerminateJobFlowsInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"InstanceGroupList" => %{"member" => %{"shape" => "InstanceGroup"}, "type" => "list"}, "JobFlowExecutionState" => %{"enum" => ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"], "type" => "string"}, "Statistic" => %{"enum" => ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"], "type" => "string"}, "EbsBlockDeviceConfigList" => %{"member" => %{"shape" => "EbsBlockDeviceConfig"}, "type" => "list"}, "Application" => %{"members" => %{"AdditionalInfo" => %{"shape" => "StringMap"}, "Args" => %{"shape" => "StringList"}, "Name" => %{"shape" => "String"}, "Version" => %{"shape" => "String"}}, "type" => "structure"}, "ModifyInstanceGroupsInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "InstanceGroups" => %{"shape" => "InstanceGroupModifyConfigList"}}, "type" => "structure"}, "ClusterSummary" => %{"members" => %{"Id" => %{"shape" => "ClusterId"}, "Name" => %{"shape" => "String"}, "NormalizedInstanceHours" => %{"shape" => "Integer"}, "Status" => %{"shape" => "ClusterStatus"}}, "type" => "structure"}, "ClusterStateList" => %{"member" => %{"shape" => "ClusterState"}, "type" => "list"}, "AddTagsOutput" => %{"members" => %{}, "type" => "structure"}, "StepIdsList" => %{"member" => %{"shape" => "XmlStringMaxLen256"}, "type" => "list"}, "SecurityConfigurationSummary" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "Name" => %{"shape" => "XmlString"}}, "type" => "structure"}, "PutAutoScalingPolicyOutput" => %{"members" => %{"AutoScalingPolicy" => %{"shape" => "AutoScalingPolicyDescription"}, "ClusterId" => %{"shape" => "ClusterId"}, "InstanceGroupId" => %{"shape" => "InstanceGroupId"}}, "type" => "structure"}, "StepConfig" => %{"members" => %{"ActionOnFailure" => %{"shape" => "ActionOnFailure"}, "HadoopJarStep" => %{"shape" => "HadoopJarStepConfig"}, "Name" => %{"shape" => "XmlStringMaxLen256"}}, "required" => ["Name", "HadoopJarStep"], "type" => "structure"}, "StepSummary" => %{"members" => %{"ActionOnFailure" => %{"shape" => "ActionOnFailure"}, "Config" => %{"shape" => "HadoopStepConfig"}, "Id" => %{"shape" => "StepId"}, "Name" => %{"shape" => "String"}, "Status" => %{"shape" => "StepStatus"}}, "type" => "structure"}, "ClusterState" => %{"enum" => ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"], "type" => "string"}, "BootstrapActionDetailList" => %{"member" => %{"shape" => "BootstrapActionDetail"}, "type" => "list"}, "String" => %{"type" => "string"}, "ListBootstrapActionsOutput" => %{"members" => %{"BootstrapActions" => %{"shape" => "CommandList"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "ActionOnFailure" => %{"enum" => ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"], "type" => "string"}, "Boolean" => %{"type" => "boolean"}, "XmlStringMaxLen256" => %{"max" => 256, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "AutoScalingPolicy" => %{"members" => %{"Constraints" => %{"shape" => "ScalingConstraints"}, "Rules" => %{"shape" => "ScalingRuleList"}}, "required" => ["Constraints", "Rules"], "type" => "structure"}, "Unit" => %{"enum" => ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"], "type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "RemoveTagsOutput" => %{"members" => %{}, "type" => "structure"}, "NewSupportedProductsList" => %{"member" => %{"shape" => "SupportedProductConfig"}, "type" => "list"}, "InstanceStatus" => %{"members" => %{"State" => %{"shape" => "InstanceState"}, "StateChangeReason" => %{"shape" => "InstanceStateChangeReason"}, "Timeline" => %{"shape" => "InstanceTimeline"}}, "type" => "structure"}, "EbsVolumeList" => %{"member" => %{"shape" => "EbsVolume"}, "type" => "list"}, "AddInstanceGroupsInput" => %{"members" => %{"InstanceGroups" => %{"shape" => "InstanceGroupConfigList"}, "JobFlowId" => %{"shape" => "XmlStringMaxLen256"}}, "required" => ["InstanceGroups", "JobFlowId"], "type" => "structure"}, "CommandList" => %{"member" => %{"shape" => "Command"}, "type" => "list"}, "HadoopStepConfig" => %{"members" => %{"Args" => %{"shape" => "StringList"}, "Jar" => %{"shape" => "String"}, "MainClass" => %{"shape" => "String"}, "Properties" => %{"shape" => "StringMap"}}, "type" => "structure"}, "AddInstanceGroupsOutput" => %{"members" => %{"InstanceGroupIds" => %{"shape" => "InstanceGroupIdsList"}, "JobFlowId" => %{"shape" => "XmlStringMaxLen256"}}, "type" => "structure"}, "AddInstanceFleetOutput" => %{"members" => %{"ClusterId" => %{"shape" => "XmlStringMaxLen256"}, "InstanceFleetId" => %{"shape" => "InstanceFleetId"}}, "type" => "structure"}, "NonNegativeDouble" => %{"min" => 0.0, "type" => "double"}, "InstanceFleetStateChangeReasonCode" => %{"enum" => ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"], "type" => "string"}, "ScalingAction" => %{"members" => %{"Market" => %{"shape" => "MarketType"}, "SimpleScalingPolicyConfiguration" => %{"shape" => "SimpleScalingPolicyConfiguration"}}, "required" => ["SimpleScalingPolicyConfiguration"], "type" => "structure"}, "ScalingRuleList" => %{"member" => %{"shape" => "ScalingRule"}, "type" => "list"}, "InstanceGroupDetail" => %{"members" => %{"BidPrice" => %{"shape" => "XmlStringMaxLen256"}, "CreationDateTime" => %{"shape" => "Date"}, "EndDateTime" => %{"shape" => "Date"}, "InstanceGroupId" => %{"shape" => "XmlStringMaxLen256"}, "InstanceRequestCount" => %{"shape" => "Integer"}, "InstanceRole" => %{"shape" => "InstanceRoleType"}, "InstanceRunningCount" => %{"shape" => "Integer"}, "InstanceType" => %{"shape" => "InstanceType"}, "LastStateChangeReason" => %{"shape" => "XmlString"}, "Market" => %{"shape" => "MarketType"}, "Name" => %{"shape" => "XmlStringMaxLen256"}, "ReadyDateTime" => %{"shape" => "Date"}, "StartDateTime" => %{"shape" => "Date"}, "State" => %{"shape" => "InstanceGroupState"}}, "required" => ["Market", "InstanceRole", "InstanceType", "InstanceRequestCount", "InstanceRunningCount", "State", "CreationDateTime"], "type" => "structure"}, "ScalingRule" => %{"members" => %{"Action" => %{"shape" => "ScalingAction"}, "Description" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Trigger" => %{"shape" => "ScalingTrigger"}}, "required" => ["Name", "Action", "Trigger"], "type" => "structure"}, "EC2InstanceIdsToTerminateList" => %{"member" => %{"shape" => "InstanceId"}, "type" => "list"}, "InstanceTypeSpecification" => %{"members" => %{"BidPrice" => %{"shape" => "XmlStringMaxLen256"}, "BidPriceAsPercentageOfOnDemandPrice" => %{"shape" => "NonNegativeDouble"}, "Configurations" => %{"shape" => "ConfigurationList"}, "EbsBlockDevices" => %{"shape" => "EbsBlockDeviceList"}, "EbsOptimized" => %{"shape" => "BooleanObject"}, "InstanceType" => %{"shape" => "InstanceType"}, "WeightedCapacity" => %{"shape" => "WholeNumber"}}, "type" => "structure"}, "BootstrapActionConfigList" => %{"member" => %{"shape" => "BootstrapActionConfig"}, "type" => "list"}, "VolumeSpecification" => %{"members" => %{"Iops" => %{"shape" => "Integer"}, "SizeInGB" => %{"shape" => "Integer"}, "VolumeType" => %{"shape" => "String"}}, "required" => ["VolumeType", "SizeInGB"], "type" => "structure"}, "StepTimeline" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "EndDateTime" => %{"shape" => "Date"}, "StartDateTime" => %{"shape" => "Date"}}, "type" => "structure"}, "ClusterTimeline" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "EndDateTime" => %{"shape" => "Date"}, "ReadyDateTime" => %{"shape" => "Date"}}, "type" => "structure"}, "InstanceList" => %{"member" => %{"shape" => "Instance"}, "type" => "list"}, "InstanceStateList" => %{"member" => %{"shape" => "InstanceState"}, "type" => "list"}, "DescribeSecurityConfigurationInput" => %{"members" => %{"Name" => %{"shape" => "XmlString"}}, "required" => ["Name"], "type" => "structure"}, "ListBootstrapActionsInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "Marker" => %{"shape" => "Marker"}}, "required" => ["ClusterId"], "type" => "structure"}, "ClusterStatus" => %{"members" => %{"State" => %{"shape" => "ClusterState"}, "StateChangeReason" => %{"shape" => "ClusterStateChangeReason"}, "Timeline" => %{"shape" => "ClusterTimeline"}}, "type" => "structure"}, "InstanceFleetConfig" => %{"members" => %{"InstanceFleetType" => %{"shape" => "InstanceFleetType"}, "InstanceTypeConfigs" => %{"shape" => "InstanceTypeConfigList"}, "LaunchSpecifications" => %{"shape" => "InstanceFleetProvisioningSpecifications"}, "Name" => %{"shape" => "XmlStringMaxLen256"}, "TargetOnDemandCapacity" => %{"shape" => "WholeNumber"}, "TargetSpotCapacity" => %{"shape" => "WholeNumber"}}, "required" => ["InstanceFleetType"], "type" => "structure"}, "StepStatus" => %{"members" => %{"FailureDetails" => %{"shape" => "FailureDetails"}, "State" => %{"shape" => "StepState"}, "StateChangeReason" => %{"shape" => "StepStateChangeReason"}, "Timeline" => %{"shape" => "StepTimeline"}}, "type" => "structure"}, "KeyValue" => %{"members" => %{"Key" => %{"shape" => "XmlString"}, "Value" => %{"shape" => "XmlString"}}, "type" => "structure"}, "AddTagsInput" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceId", "Tags"], "type" => "structure"}, "StringMap" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "StringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "AutoScalingPolicyState" => %{"enum" => ["PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"], "type" => "string"}, "InstanceId" => %{"type" => "string"}, "ScriptBootstrapActionConfig" => %{"members" => %{"Args" => %{"shape" => "XmlStringList"}, "Path" => %{"shape" => "XmlString"}}, "required" => ["Path"], "type" => "structure"}, "HadoopJarStepConfig" => %{"members" => %{"Args" => %{"shape" => "XmlStringList"}, "Jar" => %{"shape" => "XmlString"}, "MainClass" => %{"shape" => "XmlString"}, "Properties" => %{"shape" => "KeyValueList"}}, "required" => ["Jar"], "type" => "structure"}, "EbsConfiguration" => %{"members" => %{"EbsBlockDeviceConfigs" => %{"shape" => "EbsBlockDeviceConfigList"}, "EbsOptimized" => %{"shape" => "BooleanObject"}}, "type" => "structure"}, "ListInstanceFleetsInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "Marker" => %{"shape" => "Marker"}}, "required" => ["ClusterId"], "type" => "structure"}, "SecurityGroupsList" => %{"member" => %{"shape" => "XmlStringMaxLen256"}, "type" => "list"}, "ListInstancesInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "InstanceFleetId" => %{"shape" => "InstanceFleetId"}, "InstanceFleetType" => %{"shape" => "InstanceFleetType"}, "InstanceGroupId" => %{"shape" => "InstanceGroupId"}, "InstanceGroupTypes" => %{"shape" => "InstanceGroupTypeList"}, "InstanceStates" => %{"shape" => "InstanceStateList"}, "Marker" => %{"shape" => "Marker"}}, "required" => ["ClusterId"], "type" => "structure"}, "MarketType" => %{"enum" => ["ON_DEMAND", "SPOT"], "type" => "string"}, "BooleanObject" => %{"type" => "boolean"}, "EC2InstanceIdsList" => %{"member" => %{"shape" => "InstanceId"}, "type" => "list"}, "JobFlowDetail" => %{"members" => %{"AmiVersion" => %{"shape" => "XmlStringMaxLen256"}, "AutoScalingRole" => %{"shape" => "XmlString"}, "BootstrapActions" => %{"shape" => "BootstrapActionDetailList"}, "ExecutionStatusDetail" => %{"shape" => "JobFlowExecutionStatusDetail"}, "Instances" => %{"shape" => "JobFlowInstancesDetail"}, "JobFlowId" => %{"shape" => "XmlStringMaxLen256"}, "JobFlowRole" => %{"shape" => "XmlString"}, "LogUri" => %{"shape" => "XmlString"}, "Name" => %{"shape" => "XmlStringMaxLen256"}, "ScaleDownBehavior" => %{"shape" => "ScaleDownBehavior"}, "ServiceRole" => %{"shape" => "XmlString"}, "Steps" => %{"shape" => "StepDetailList"}, "SupportedProducts" => %{"shape" => "SupportedProductsList"}, "VisibleToAllUsers" => %{"shape" => "Boolean"}}, "required" => ["JobFlowId", "Name", "ExecutionStatusDetail", "Instances"], "type" => "structure"}, "JobFlowDetailList" => %{"member" => %{"shape" => "JobFlowDetail"}, "type" => "list"}, "PutAutoScalingPolicyInput" => %{"members" => %{"AutoScalingPolicy" => %{"shape" => "AutoScalingPolicy"}, "ClusterId" => %{"shape" => "ClusterId"}, "InstanceGroupId" => %{"shape" => "InstanceGroupId"}}, "required" => ["ClusterId", "InstanceGroupId", "AutoScalingPolicy"], "type" => "structure"}, "ClusterSummaryList" => %{"member" => %{"shape" => "ClusterSummary"}, "type" => "list"}, "EbsVolume" => %{"members" => %{"Device" => %{"shape" => "String"}, "VolumeId" => %{"shape" => "String"}}, "type" => "structure"}, "StepExecutionState" => %{"enum" => ["PENDING", "RUNNING", "CONTINUE", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"], "type" => "string"}, "InstanceStateChangeReason" => %{"members" => %{"Code" => %{"shape" => "InstanceStateChangeReasonCode"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}, "ErrorCode" => %{"max" => 256, "min" => 1, "type" => "string"}, "JobFlowInstancesDetail" => %{"members" => %{"Ec2KeyName" => %{"shape" => "XmlStringMaxLen256"}, "Ec2SubnetId" => %{"shape" => "XmlStringMaxLen256"}, "HadoopVersion" => %{"shape" => "XmlStringMaxLen256"}, "InstanceCount" => %{"shape" => "Integer"}, "InstanceGroups" => %{"shape" => "InstanceGroupDetailList"}, "KeepJobFlowAliveWhenNoSteps" => %{"shape" => "Boolean"}, "MasterInstanceId" => %{"shape" => "XmlString"}, "MasterInstanceType" => %{"shape" => "InstanceType"}, "MasterPublicDnsName" => %{"shape" => "XmlString"}, "NormalizedInstanceHours" => %{"shape" => "Integer"}, "Placement" => %{"shape" => "PlacementType"}, "SlaveInstanceType" => %{"shape" => "InstanceType"}, "TerminationProtected" => %{"shape" => "Boolean"}}, "required" => ["MasterInstanceType", "SlaveInstanceType", "InstanceCount"], "type" => "structure"}, "ClusterId" => %{"type" => "string"}, "StepStateChangeReason" => %{"members" => %{"Code" => %{"shape" => "StepStateChangeReasonCode"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}, "Date" => %{"type" => "timestamp"}, "DeleteSecurityConfigurationInput" => %{"members" => %{"Name" => %{"shape" => "XmlString"}}, "required" => ["Name"], "type" => "structure"}, "CreateSecurityConfigurationInput" => %{"members" => %{"Name" => %{"shape" => "XmlString"}, "SecurityConfiguration" => %{"shape" => "String"}}, "required" => ["Name", "SecurityConfiguration"], "type" => "structure"}, "RemoveTagsInput" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "TagKeys" => %{"shape" => "StringList"}}, "required" => ["ResourceId", "TagKeys"], "type" => "structure"}, "Ec2InstanceAttributes" => %{"members" => %{"AdditionalMasterSecurityGroups" => %{"shape" => "StringList"}, "AdditionalSlaveSecurityGroups" => %{"shape" => "StringList"}, "Ec2AvailabilityZone" => %{"shape" => "String"}, "Ec2KeyName" => %{"shape" => "String"}, "Ec2SubnetId" => %{"shape" => "String"}, "EmrManagedMasterSecurityGroup" => %{"shape" => "String"}, "EmrManagedSlaveSecurityGroup" => %{"shape" => "String"}, "IamInstanceProfile" => %{"shape" => "String"}, "RequestedEc2AvailabilityZones" => %{"shape" => "XmlStringMaxLen256List"}, "RequestedEc2SubnetIds" => %{"shape" => "XmlStringMaxLen256List"}, "ServiceAccessSecurityGroup" => %{"shape" => "String"}}, "type" => "structure"}, "ApplicationList" => %{"member" => %{"shape" => "Application"}, "type" => "list"}, "WholeNumber" => %{"min" => 0, "type" => "integer"}, "ListStepsInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "Marker" => %{"shape" => "Marker"}, "StepIds" => %{"shape" => "XmlStringList"}, "StepStates" => %{"shape" => "StepStateList"}}, "required" => ["ClusterId"], "type" => "structure"}, "DescribeClusterOutput" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ListInstancesOutput" => %{"members" => %{"Instances" => %{"shape" => "InstanceList"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "InstanceFleetTimeline" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "EndDateTime" => %{"shape" => "Date"}, "ReadyDateTime" => %{"shape" => "Date"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "CancelStepsInfoList" => %{"member" => %{"shape" => "CancelStepsInfo"}, "type" => "list"}, "InstanceGroupType" => %{"enum" => ["MASTER", "CORE", "TASK"], "type" => "string"}, "InstanceGroupStatus" => %{"members" => %{"State" => %{"shape" => "InstanceGroupState"}, "StateChangeReason" => %{"shape" => "InstanceGroupStateChangeReason"}, "Timeline" => %{"shape" => "InstanceGroupTimeline"}}, "type" => "structure"}, "StepConfigList" => %{"member" => %{"shape" => "StepConfig"}, "type" => "list"}, "Command" => %{"members" => %{"Args" => %{"shape" => "StringList"}, "Name" => %{"shape" => "String"}, "ScriptPath" => %{"shape" => "String"}}, "type" => "structure"}, "InstanceFleetConfigList" => %{"member" => %{"shape" => "InstanceFleetConfig"}, "type" => "list"}, "TerminateJobFlowsInput" => %{"members" => %{"JobFlowIds" => %{"shape" => "XmlStringList"}}, "required" => ["JobFlowIds"], "type" => "structure"}, "StepState" => %{"enum" => ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"], "type" => "string"}, "ScalingConstraints" => %{"members" => %{"MaxCapacity" => %{"shape" => "Integer"}, "MinCapacity" => %{"shape" => "Integer"}}, "required" => ["MinCapacity", "MaxCapacity"], "type" => "structure"}, "InstanceFleetModifyConfig" => %{"members" => %{"InstanceFleetId" => %{"shape" => "InstanceFleetId"}, "TargetOnDemandCapacity" => %{"shape" => "WholeNumber"}, "TargetSpotCapacity" => %{"shape" => "WholeNumber"}}, "required" => ["InstanceFleetId"], "type" => "structure"}, "AdjustmentType" => %{"enum" => ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"], "type" => "string"}, "EbsBlockDeviceList" => %{"member" => %{"shape" => "EbsBlockDevice"}, "type" => "list"}, "ModifyInstanceFleetInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "InstanceFleet" => %{"shape" => "InstanceFleetModifyConfig"}}, "required" => ["ClusterId", "InstanceFleet"], "type" => "structure"}, "InstanceGroupId" => %{"type" => "string"}, "DescribeStepOutput" => %{"members" => %{"Step" => %{"shape" => "Step"}}, "type" => "structure"}, "AutoScalingPolicyStateChangeReasonCode" => %{"enum" => ["USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"], "type" => "string"}, "DescribeSecurityConfigurationOutput" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "Name" => %{"shape" => "XmlString"}, "SecurityConfiguration" => %{"shape" => "String"}}, "type" => "structure"}, "SpotProvisioningTimeoutAction" => %{"enum" => ["SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"], "type" => "string"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "InstanceGroupConfig" => %{"members" => %{"AutoScalingPolicy" => %{"shape" => "AutoScalingPolicy"}, "BidPrice" => %{"shape" => "XmlStringMaxLen256"}, "Configurations" => %{"shape" => "ConfigurationList"}, "EbsConfiguration" => %{"shape" => "EbsConfiguration"}, "InstanceCount" => %{"shape" => "Integer"}, "InstanceRole" => %{"shape" => "InstanceRoleType"}, "InstanceType" => %{"shape" => "InstanceType"}, "Market" => %{"shape" => "MarketType"}, "Name" => %{"shape" => "XmlStringMaxLen256"}}, "required" => ["InstanceRole", "InstanceType", "InstanceCount"], "type" => "structure"}, "StepStateChangeReasonCode" => %{"enum" => ["NONE"], "type" => "string"}, "JobFlowExecutionStateList" => %{"member" => %{"shape" => "JobFlowExecutionState"}, "type" => "list"}, "StepExecutionStatusDetail" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "EndDateTime" => %{"shape" => "Date"}, "LastStateChangeReason" => %{"shape" => "XmlString"}, "StartDateTime" => %{"shape" => "Date"}, "State" => %{"shape" => "StepExecutionState"}}, "required" => ["State", "CreationDateTime"], "type" => "structure"}, "XmlString" => %{"max" => 10280, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "SetVisibleToAllUsersInput" => %{"members" => %{"JobFlowIds" => %{"shape" => "XmlStringList"}, "VisibleToAllUsers" => %{"shape" => "Boolean"}}, "required" => ["JobFlowIds", "VisibleToAllUsers"], "type" => "structure"}, "RemoveAutoScalingPolicyInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "InstanceGroupId" => %{"shape" => "InstanceGroupId"}}, "required" => ["ClusterId", "InstanceGroupId"], "type" => "structure"}, "InstanceGroupStateChangeReasonCode" => %{"enum" => ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"], "type" => "string"}, "ScalingTrigger" => %{"members" => %{"CloudWatchAlarmDefinition" => %{"shape" => "CloudWatchAlarmDefinition"}}, "required" => ["CloudWatchAlarmDefinition"], "type" => "structure"}, "InstanceGroupModifyConfig" => %{"members" => %{"EC2InstanceIdsToTerminate" => %{"shape" => "EC2InstanceIdsToTerminateList"}, "InstanceCount" => %{"shape" => "Integer"}, "InstanceGroupId" => %{"shape" => "XmlStringMaxLen256"}, "ShrinkPolicy" => %{"shape" => "ShrinkPolicy"}}, "required" => ["InstanceGroupId"], "type" => "structure"}, "SecurityConfigurationList" => %{"member" => %{"shape" => "SecurityConfigurationSummary"}, "type" => "list"}, "RunJobFlowOutput" => %{"members" => %{"JobFlowId" => %{"shape" => "XmlStringMaxLen256"}}, "type" => "structure"}, "ClusterStateChangeReason" => %{"members" => %{"Code" => %{"shape" => "ClusterStateChangeReasonCode"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}, "ListSecurityConfigurationsInput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "SetTerminationProtectionInput" => %{"members" => %{"JobFlowIds" => %{"shape" => "XmlStringList"}, "TerminationProtected" => %{"shape" => "Boolean"}}, "required" => ["JobFlowIds", "TerminationProtected"], "type" => "structure"}, "SpotProvisioningSpecification" => %{"members" => %{"BlockDurationMinutes" => %{"shape" => "WholeNumber"}, "TimeoutAction" => %{"shape" => "SpotProvisioningTimeoutAction"}, "TimeoutDurationMinutes" => %{"shape" => "WholeNumber"}}, "required" => ["TimeoutDurationMinutes", "TimeoutAction"], "type" => "structure"}, "InstanceTypeSpecificationList" => %{"member" => %{"shape" => "InstanceTypeSpecification"}, "type" => "list"}, "ResourceId" => %{"type" => "string"}, "InternalServerError" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeJobFlowsInput" => %{"members" => %{"CreatedAfter" => %{"shape" => "Date"}, "CreatedBefore" => %{"shape" => "Date"}, "JobFlowIds" => %{"shape" => "XmlStringList"}, "JobFlowStates" => %{"shape" => "JobFlowExecutionStateList"}}, "type" => "structure"}, "MetricDimension" => %{"members" => %{"Key" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeClusterInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}}, "required" => ["ClusterId"], "type" => "structure"}, "InstanceRoleType" => %{"enum" => ["MASTER", "CORE", "TASK"], "type" => "string"}, "BootstrapActionDetail" => %{"members" => %{"BootstrapActionConfig" => %{"shape" => "BootstrapActionConfig"}}, "type" => "structure"}, "InvalidRequestException" => %{"exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PlacementType" => %{"members" => %{"AvailabilityZone" => %{"shape" => "XmlString"}, "AvailabilityZones" => %{"shape" => "XmlStringMaxLen256List"}}, "type" => "structure"}, "ComparisonOperator" => %{"enum" => ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"], "type" => "string"}, "ListStepsOutput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "Steps" => %{"shape" => "StepSummaryList"}}, "type" => "structure"}, "InstanceGroup" => %{"members" => %{"AutoScalingPolicy" => %{"shape" => "AutoScalingPolicyDescription"}, "BidPrice" => %{"shape" => "String"}, "Configurations" => %{"shape" => "ConfigurationList"}, "EbsBlockDevices" => %{"shape" => "EbsBlockDeviceList"}, "EbsOptimized" => %{"shape" => "BooleanObject"}, "Id" => %{"shape" => "InstanceGroupId"}, "InstanceGroupType" => %{"shape" => "InstanceGroupType"}, "InstanceType" => %{"shape" => "InstanceType"}, "Market" => %{"shape" => "MarketType"}, "Name" => %{"shape" => "String"}, "RequestedInstanceCount" => %{"shape" => "Integer"}, "RunningInstanceCount" => %{"shape" => "Integer"}, "ShrinkPolicy" => %{"shape" => "ShrinkPolicy"}, "Status" => %{"shape" => "InstanceGroupStatus"}}, "type" => "structure"}, "CancelStepsRequestStatus" => %{"enum" => ["SUBMITTED", "FAILED"], "type" => "string"}, "ConfigurationList" => %{"member" => %{"shape" => "Configuration"}, "type" => "list"}, "JobFlowExecutionStatusDetail" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "EndDateTime" => %{"shape" => "Date"}, "LastStateChangeReason" => %{"shape" => "XmlString"}, "ReadyDateTime" => %{"shape" => "Date"}, "StartDateTime" => %{"shape" => "Date"}, "State" => %{"shape" => "JobFlowExecutionState"}}, "required" => ["State", "CreationDateTime"], "type" => "structure"}, "InstanceState" => %{"enum" => ["AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"], "type" => "string"}, "DeleteSecurityConfigurationOutput" => %{"members" => %{}, "type" => "structure"}, "RunJobFlowInput" => %{"members" => %{"AdditionalInfo" => %{"shape" => "XmlString"}, "AmiVersion" => %{"shape" => "XmlStringMaxLen256"}, "Applications" => %{"shape" => "ApplicationList"}, "AutoScalingRole" => %{"shape" => "XmlString"}, "BootstrapActions" => %{"shape" => "BootstrapActionConfigList"}, "Configurations" => %{"shape" => "ConfigurationList"}, "CustomAmiId" => %{"shape" => "XmlStringMaxLen256"}, "EbsRootVolumeSize" => %{"shape" => "Integer"}, "Instances" => %{"shape" => "JobFlowInstancesConfig"}, "JobFlowRole" => %{"shape" => "XmlString"}, "LogUri" => %{"shape" => "XmlString"}, "Name" => %{"shape" => "XmlStringMaxLen256"}, "NewSupportedProducts" => %{"shape" => "NewSupportedProductsList"}, "ReleaseLabel" => %{"shape" => "XmlStringMaxLen256"}, "RepoUpgradeOnBoot" => %{"shape" => "RepoUpgradeOnBoot"}, "ScaleDownBehavior" => %{"shape" => "ScaleDownBehavior"}, "SecurityConfiguration" => %{"shape" => "XmlString"}, "ServiceRole" => %{"shape" => "XmlString"}, "Steps" => %{"shape" => "StepConfigList"}, "SupportedProducts" => %{"shape" => "SupportedProductsList"}, "Tags" => %{"shape" => "TagList"}, "VisibleToAllUsers" => %{"shape" => "Boolean"}}, "required" => ["Name", "Instances"], "type" => "structure"}, "ListSecurityConfigurationsOutput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "SecurityConfigurations" => %{"shape" => "SecurityConfigurationList"}}, "type" => "structure"}, "AutoScalingPolicyDescription" => %{"members" => %{"Constraints" => %{"shape" => "ScalingConstraints"}, "Rules" => %{"shape" => "ScalingRuleList"}, "Status" => %{"shape" => "AutoScalingPolicyStatus"}}, "type" => "structure"}, "KeyValueList" => %{"member" => %{"shape" => "KeyValue"}, "type" => "list"}, "AddJobFlowStepsInput" => %{"members" => %{"JobFlowId" => %{"shape" => "XmlStringMaxLen256"}, "Steps" => %{"shape" => "StepConfigList"}}, "required" => ["JobFlowId", "Steps"], "type" => "structure"}, "InstanceFleetList" => %{"member" => %{"shape" => "InstanceFleet"}, "type" => "list"}, "CloudWatchAlarmDefinition" => %{"members" => %{"ComparisonOperator" => %{"shape" => "ComparisonOperator"}, "Dimensions" => %{"shape" => "MetricDimensionList"}, "EvaluationPeriods" => %{"shape" => "Integer"}, "MetricName" => %{"shape" => "String"}, "Namespace" => %{"shape" => "String"}, "Period" => %{"shape" => "Integer"}, "Statistic" => %{"shape" => "Statistic"}, "Threshold" => %{"shape" => "NonNegativeDouble"}, "Unit" => %{"shape" => "Unit"}}, "required" => ["ComparisonOperator", "MetricName", "Period", "Threshold"], "type" => "structure"}, "Marker" => %{"type" => "string"}, "StepDetail" => %{"members" => %{"ExecutionStatusDetail" => %{"shape" => "StepExecutionStatusDetail"}, "StepConfig" => %{"shape" => "StepConfig"}}, "required" => ["StepConfig", "ExecutionStatusDetail"], "type" => "structure"}, "CancelStepsOutput" => %{"members" => %{"CancelStepsInfoList" => %{"shape" => "CancelStepsInfoList"}}, "type" => "structure"}, "ScaleDownBehavior" => %{"enum" => ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"], "type" => "string"}, "EbsBlockDevice" => %{"members" => %{"Device" => %{"shape" => "String"}, "VolumeSpecification" => %{"shape" => "VolumeSpecification"}}, "type" => "structure"}, "ListClustersInput" => %{"members" => %{"ClusterStates" => %{"shape" => "ClusterStateList"}, "CreatedAfter" => %{"shape" => "Date"}, "CreatedBefore" => %{"shape" => "Date"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "RepoUpgradeOnBoot" => %{"enum" => ["SECURITY", "NONE"], "type" => "string"}, "ListClustersOutput" => %{"members" => %{"Clusters" => %{"shape" => "ClusterSummaryList"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "RemoveAutoScalingPolicyOutput" => %{"members" => %{}, "type" => "structure"}, "InstanceFleetStatus" => %{"members" => %{"State" => %{"shape" => "InstanceFleetState"}, "StateChangeReason" => %{"shape" => "InstanceFleetStateChangeReason"}, "Timeline" => %{"shape" => "InstanceFleetTimeline"}}, "type" => "structure"}, "InstanceGroupIdsList" => %{"member" => %{"shape" => "XmlStringMaxLen256"}, "type" => "list"}, "JobFlowInstancesConfig" => %{"members" => %{"AdditionalMasterSecurityGroups" => %{"shape" => "SecurityGroupsList"}, "AdditionalSlaveSecurityGroups" => %{"shape" => "SecurityGroupsList"}, "Ec2KeyName" => %{"shape" => "XmlStringMaxLen256"}, "Ec2SubnetId" => %{"shape" => "XmlStringMaxLen256"}, "Ec2SubnetIds" => %{"shape" => "XmlStringMaxLen256List"}, "EmrManagedMasterSecurityGroup" => %{"shape" => "XmlStringMaxLen256"}, "EmrManagedSlaveSecurityGroup" => %{"shape" => "XmlStringMaxLen256"}, "HadoopVersion" => %{"shape" => "XmlStringMaxLen256"}, "InstanceCount" => %{"shape" => "Integer"}, "InstanceFleets" => %{"shape" => "InstanceFleetConfigList"}, "InstanceGroups" => %{"shape" => "InstanceGroupConfigList"}, "KeepJobFlowAliveWhenNoSteps" => %{"shape" => "Boolean"}, "MasterInstanceType" => %{"shape" => "InstanceType"}, "Placement" => %{"shape" => "PlacementType"}, "ServiceAccessSecurityGroup" => %{"shape" => "XmlStringMaxLen256"}, "SlaveInstanceType" => %{"shape" => "InstanceType"}, "TerminationProtected" => %{"shape" => "Boolean"}}, "type" => "structure"}, "ListInstanceFleetsOutput" => %{"members" => %{"InstanceFleets" => %{"shape" => "InstanceFleetList"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "Cluster" => %{"members" => %{"Applications" => %{"shape" => "ApplicationList"}, "AutoScalingRole" => %{"shape" => "XmlString"}, "AutoTerminate" => %{"shape" => "Boolean"}, "Configurations" => %{"shape" => "ConfigurationList"}, "CustomAmiId" => %{"shape" => "XmlStringMaxLen256"}, "EbsRootVolumeSize" => %{"shape" => "Integer"}, "Ec2InstanceAttributes" => %{"shape" => "Ec2InstanceAttributes"}, "Id" => %{"shape" => "ClusterId"}, "InstanceCollectionType" => %{"shape" => "InstanceCollectionType"}, "LogUri" => %{"shape" => "String"}, "MasterPublicDnsName" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "NormalizedInstanceHours" => %{"shape" => "Integer"}, "ReleaseLabel" => %{"shape" => "String"}, "RepoUpgradeOnBoot" => %{"shape" => "RepoUpgradeOnBoot"}, "RequestedAmiVersion" => %{"shape" => "String"}, "RunningAmiVersion" => %{"shape" => "String"}, "ScaleDownBehavior" => %{"shape" => "ScaleDownBehavior"}, "SecurityConfiguration" => %{"shape" => "XmlString"}, "ServiceRole" => %{"shape" => "String"}, "Status" => %{"shape" => "ClusterStatus"}, "Tags" => %{"shape" => "TagList"}, "TerminationProtected" => %{"shape" => "Boolean"}, "VisibleToAllUsers" => %{"shape" => "Boolean"}}, "type" => "structure"}, "InstanceGroupTypeList" => %{"member" => %{"shape" => "InstanceGroupType"}, "type" => "list"}, "ListInstanceGroupsOutput" => %{"members" => %{"InstanceGroups" => %{"shape" => "InstanceGroupList"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "InstanceGroupStateChangeReason" => %{"members" => %{"Code" => %{"shape" => "InstanceGroupStateChangeReasonCode"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}, "CreateSecurityConfigurationOutput" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "Name" => %{"shape" => "XmlString"}}, "required" => ["Name", "CreationDateTime"], "type" => "structure"}, "SupportedProductsList" => %{"member" => %{"shape" => "XmlStringMaxLen256"}, "type" => "list"}, "StepSummaryList" => %{"member" => %{"shape" => "StepSummary"}, "type" => "list"}, "InstanceCollectionType" => %{"enum" => ["INSTANCE_FLEET", "INSTANCE_GROUP"], "type" => "string"}, "InstanceResizePolicy" => %{"members" => %{"InstanceTerminationTimeout" => %{"shape" => "Integer"}, "InstancesToProtect" => %{"shape" => "EC2InstanceIdsList"}, "InstancesToTerminate" => %{"shape" => "EC2InstanceIdsList"}}, "type" => "structure"}, "AddJobFlowStepsOutput" => %{"members" => %{"StepIds" => %{"shape" => "StepIdsList"}}, "type" => "structure"}, "MetricDimensionList" => %{"member" => %{"shape" => "MetricDimension"}, "type" => "list"}, "ClusterStateChangeReasonCode" => %{"enum" => ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"], "type" => "string"}, "StepStateList" => %{"member" => %{"shape" => "StepState"}, "type" => "list"}, "InstanceStateChangeReasonCode" => %{"enum" => ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "CLUSTER_TERMINATED"], "type" => "string"}, "SupportedProductConfig" => %{"members" => %{"Args" => %{"shape" => "XmlStringList"}, "Name" => %{"shape" => "XmlStringMaxLen256"}}, "type" => "structure"}, "CancelStepsInfo" => %{"members" => %{"Reason" => %{"shape" => "String"}, "Status" => %{"shape" => "CancelStepsRequestStatus"}, "StepId" => %{"shape" => "StepId"}}, "type" => "structure"}, "FailureDetails" => %{"members" => %{"LogFile" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}, "Reason" => %{"shape" => "String"}}, "type" => "structure"}, "XmlStringMaxLen256List" => %{"member" => %{"shape" => "XmlStringMaxLen256"}, "type" => "list"}, "BootstrapActionConfig" => %{"members" => %{"Name" => %{"shape" => "XmlStringMaxLen256"}, "ScriptBootstrapAction" => %{"shape" => "ScriptBootstrapActionConfig"}}, "required" => ["Name", "ScriptBootstrapAction"], "type" => "structure"}, "ShrinkPolicy" => %{"members" => %{"DecommissionTimeout" => %{"shape" => "Integer"}, "InstanceResizePolicy" => %{"shape" => "InstanceResizePolicy"}}, "type" => "structure"}, "InternalServerException" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InstanceGroupConfigList" => %{"member" => %{"shape" => "InstanceGroupConfig"}, "type" => "list"}, "Step" => %{"members" => %{"ActionOnFailure" => %{"shape" => "ActionOnFailure"}, "Config" => %{"shape" => "HadoopStepConfig"}, "Id" => %{"shape" => "StepId"}, "Name" => %{"shape" => "String"}, "Status" => %{"shape" => "StepStatus"}}, "type" => "structure"}, "AutoScalingPolicyStatus" => %{"members" => %{"State" => %{"shape" => "AutoScalingPolicyState"}, "StateChangeReason" => %{"shape" => "AutoScalingPolicyStateChangeReason"}}, "type" => "structure"}, "InstanceFleetId" => %{"type" => "string"}, "InstanceGroupModifyConfigList" => %{"member" => %{"shape" => "InstanceGroupModifyConfig"}, "type" => "list"}, "SimpleScalingPolicyConfiguration" => %{"members" => %{"AdjustmentType" => %{"shape" => "AdjustmentType"}, "CoolDown" => %{"shape" => "Integer"}, "ScalingAdjustment" => %{"shape" => "Integer"}}, "required" => ["ScalingAdjustment"], "type" => "structure"}, "InstanceFleetStateChangeReason" => %{"members" => %{"Code" => %{"shape" => "InstanceFleetStateChangeReasonCode"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}, "InstanceGroupTimeline" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "EndDateTime" => %{"shape" => "Date"}, "ReadyDateTime" => %{"shape" => "Date"}}, "type" => "structure"}, "InstanceGroupDetailList" => %{"member" => %{"shape" => "InstanceGroupDetail"}, "type" => "list"}, "AutoScalingPolicyStateChangeReason" => %{"members" => %{"Code" => %{"shape" => "AutoScalingPolicyStateChangeReasonCode"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}, "InstanceFleetProvisioningSpecifications" => %{"members" => %{"SpotSpecification" => %{"shape" => "SpotProvisioningSpecification"}}, "required" => ["SpotSpecification"], "type" => "structure"}, "Integer" => %{"type" => "integer"}, "StepDetailList" => %{"member" => %{"shape" => "StepDetail"}, "type" => "list"}, "InstanceFleetState" => %{"enum" => ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED"], "type" => "string"}, "InstanceTypeConfigList" => %{"member" => %{"shape" => "InstanceTypeConfig"}, "type" => "list"}, "Configuration" => %{"members" => %{"Classification" => %{"shape" => "String"}, "Configurations" => %{"shape" => "ConfigurationList"}, "Properties" => %{"shape" => "StringMap"}}, "type" => "structure"}, "EbsBlockDeviceConfig" => %{"members" => %{"VolumeSpecification" => %{"shape" => "VolumeSpecification"}, "VolumesPerInstance" => %{"shape" => "Integer"}}, "required" => ["VolumeSpecification"], "type" => "structure"}, "CancelStepsInput" => %{"members" => %{"ClusterId" => %{"shape" => "XmlStringMaxLen256"}, "StepIds" => %{"shape" => "StepIdsList"}}, "type" => "structure"}, "ListInstanceGroupsInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "Marker" => %{"shape" => "Marker"}}, "required" => ["ClusterId"], "type" => "structure"}, "InstanceType" => %{"max" => 256, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "AddInstanceFleetInput" => %{"members" => %{"ClusterId" => %{"shape" => "XmlStringMaxLen256"}, "InstanceFleet" => %{"shape" => "InstanceFleetConfig"}}, "required" => ["ClusterId", "InstanceFleet"], "type" => "structure"}, "InstanceGroupState" => %{"enum" => ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"], "type" => "string"}, "DescribeJobFlowsOutput" => %{"members" => %{"JobFlows" => %{"shape" => "JobFlowDetailList"}}, "type" => "structure"}, "XmlStringList" => %{"member" => %{"shape" => "XmlString"}, "type" => "list"}, "DescribeStepInput" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "StepId" => %{"shape" => "StepId"}}, "required" => ["ClusterId", "StepId"], "type" => "structure"}, "InstanceFleetType" => %{"enum" => ["MASTER", "CORE", "TASK"], "type" => "string"}, "StepId" => %{"type" => "string"}, "InstanceTimeline" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "EndDateTime" => %{"shape" => "Date"}, "ReadyDateTime" => %{"shape" => "Date"}}, "type" => "structure"}, "InstanceTypeConfig" => %{"members" => %{"BidPrice" => %{"shape" => "XmlStringMaxLen256"}, "BidPriceAsPercentageOfOnDemandPrice" => %{"shape" => "NonNegativeDouble"}, "Configurations" => %{"shape" => "ConfigurationList"}, "EbsConfiguration" => %{"shape" => "EbsConfiguration"}, "InstanceType" => %{"shape" => "InstanceType"}, "WeightedCapacity" => %{"shape" => "WholeNumber"}}, "required" => ["InstanceType"], "type" => "structure"}, "Instance" => %{"members" => %{"EbsVolumes" => %{"shape" => "EbsVolumeList"}, "Ec2InstanceId" => %{"shape" => "InstanceId"}, "Id" => %{"shape" => "InstanceId"}, "InstanceFleetId" => %{"shape" => "InstanceFleetId"}, "InstanceGroupId" => %{"shape" => "String"}, "InstanceType" => %{"shape" => "InstanceType"}, "Market" => %{"shape" => "MarketType"}, "PrivateDnsName" => %{"shape" => "String"}, "PrivateIpAddress" => %{"shape" => "String"}, "PublicDnsName" => %{"shape" => "String"}, "PublicIpAddress" => %{"shape" => "String"}, "Status" => %{"shape" => "InstanceStatus"}}, "type" => "structure"}, "InstanceFleet" => %{"members" => %{"Id" => %{"shape" => "InstanceFleetId"}, "InstanceFleetType" => %{"shape" => "InstanceFleetType"}, "InstanceTypeSpecifications" => %{"shape" => "InstanceTypeSpecificationList"}, "LaunchSpecifications" => %{"shape" => "InstanceFleetProvisioningSpecifications"}, "Name" => %{"shape" => "XmlStringMaxLen256"}, "ProvisionedOnDemandCapacity" => %{"shape" => "WholeNumber"}, "ProvisionedSpotCapacity" => %{"shape" => "WholeNumber"}, "Status" => %{"shape" => "InstanceFleetStatus"}, "TargetOnDemandCapacity" => %{"shape" => "WholeNumber"}, "TargetSpotCapacity" => %{"shape" => "WholeNumber"}}, "type" => "structure"}}
  end
end