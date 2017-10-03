defmodule Baiji.ECS do
  @moduledoc """
  Amazon EC2 Container Service (Amazon ECS) is a highly scalable, fast,
  container management service that makes it easy to run, stop, and manage
  Docker containers on a cluster of EC2 instances. Amazon ECS lets you launch
  and stop container-enabled applications with simple API calls, allows you
  to get the state of your cluster from a centralized service, and gives you
  access to many familiar Amazon EC2 features like security groups, Amazon
  EBS volumes, and IAM roles.

  You can use Amazon ECS to schedule the placement of containers across your
  cluster based on your resource needs, isolation policies, and availability
  requirements. Amazon EC2 Container Service eliminates the need for you to
  operate your own cluster management and configuration management systems or
  worry about scaling your management infrastructure.
  """
  
  @doc """
  Creates a new Amazon ECS cluster. By default, your account receives a
  `default` cluster when you launch your first container instance. However,
  you can create your own cluster with a unique name with the `CreateCluster`
  action.
  """
  def create_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCluster",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "CreateClusterRequest",
      output_shape:     "CreateClusterResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Runs and maintains a desired number of tasks from a specified task
  definition. If the number of tasks running in a service drops below
  `desiredCount`, Amazon ECS spawns another copy of the task in the specified
  cluster. To update an existing service, see `UpdateService`.

  In addition to maintaining the desired count of tasks in your service, you
  can optionally run your service behind a load balancer. The load balancer
  distributes traffic across the tasks that are associated with the service.
  For more information, see [Service Load
  Balancing](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  You can optionally specify a deployment configuration for your service.
  During a deployment (which is triggered by changing the task definition or
  the desired count of a service with an `UpdateService` operation), the
  service scheduler uses the `minimumHealthyPercent` and `maximumPercent`
  parameters to determine the deployment strategy.

  The `minimumHealthyPercent` represents a lower limit on the number of your
  service's tasks that must remain in the `RUNNING` state during a
  deployment, as a percentage of the `desiredCount` (rounded up to the
  nearest integer). This parameter enables you to deploy without using
  additional cluster capacity. For example, if your service has a
  `desiredCount` of four tasks and a `minimumHealthyPercent` of 50%, the
  scheduler can stop two existing tasks to free up cluster capacity before
  starting two new tasks. Tasks for services that *do not* use a load
  balancer are considered healthy if they are in the `RUNNING` state. Tasks
  for services that *do* use a load balancer are considered healthy if they
  are in the `RUNNING` state and the container instance they are hosted on is
  reported as healthy by the load balancer. The default value for
  `minimumHealthyPercent` is 50% in the console and 100% for the AWS CLI, the
  AWS SDKs, and the APIs.

  The `maximumPercent` parameter represents an upper limit on the number of
  your service's tasks that are allowed in the `RUNNING` or `PENDING` state
  during a deployment, as a percentage of the `desiredCount` (rounded down to
  the nearest integer). This parameter enables you to define the deployment
  batch size. For example, if your service has a `desiredCount` of four tasks
  and a `maximumPercent` value of 200%, the scheduler can start four new
  tasks before stopping the four older tasks (provided that the cluster
  resources required to do this are available). The default value for
  `maximumPercent` is 200%.

  When the service scheduler launches new tasks, it determines task placement
  in your cluster using the following logic:

  <ul> <li> Determine which of the container instances in your cluster can
  support your service's task definition (for example, they have the required
  CPU, memory, ports, and container instance attributes).

  </li> <li> By default, the service scheduler attempts to balance tasks
  across Availability Zones in this manner (although you can choose a
  different placement strategy) with the `placementStrategy` parameter):

  <ul> <li> Sort the valid container instances by the fewest number of
  running tasks for this service in the same Availability Zone as the
  instance. For example, if zone A has one running service task and zones B
  and C each have zero, valid container instances in either zone B or C are
  considered optimal for placement.

  </li> <li> Place the new service task on a valid container instance in an
  optimal Availability Zone (based on the previous steps), favoring container
  instances with the fewest number of running tasks for this service.

  </li> </ul> </li> </ul>
  """
  def create_service(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateService",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "CreateServiceRequest",
      output_shape:     "CreateServiceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes one or more custom attributes from an Amazon ECS resource.
  """
  def delete_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteAttributes",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DeleteAttributesRequest",
      output_shape:     "DeleteAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified cluster. You must deregister all container instances
  from this cluster before you may delete it. You can list the container
  instances in a cluster with `ListContainerInstances` and deregister them
  with `DeregisterContainerInstance`.
  """
  def delete_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCluster",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DeleteClusterRequest",
      output_shape:     "DeleteClusterResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a specified service within a cluster. You can delete a service if
  you have no running tasks in it and the desired task count is zero. If the
  service is actively maintaining tasks, you cannot delete it, and you must
  update the service to a desired task count of zero. For more information,
  see `UpdateService`.

  <note> When you delete a service, if there are still running tasks that
  require cleanup, the service status moves from `ACTIVE` to `DRAINING`, and
  the service is no longer visible in the console or in `ListServices` API
  operations. After the tasks have stopped, then the service status moves
  from `DRAINING` to `INACTIVE`. Services in the `DRAINING` or `INACTIVE`
  status can still be viewed with `DescribeServices` API operations; however,
  in the future, `INACTIVE` services may be cleaned up and purged from Amazon
  ECS record keeping, and `DescribeServices` API operations on those services
  will return a `ServiceNotFoundException` error.

  </note>
  """
  def delete_service(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteService",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DeleteServiceRequest",
      output_shape:     "DeleteServiceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deregisters an Amazon ECS container instance from the specified cluster.
  This instance is no longer available to run tasks.

  If you intend to use the container instance for some other purpose after
  deregistration, you should stop all of the tasks running on the container
  instance before deregistration to avoid any orphaned tasks from consuming
  resources.

  Deregistering a container instance removes the instance from a cluster, but
  it does not terminate the EC2 instance; if you are finished using the
  instance, be sure to terminate it in the Amazon EC2 console to stop
  billing.

  <note> If you terminate a running container instance, Amazon ECS
  automatically deregisters the instance from your cluster (stopped container
  instances or instances with disconnected agents are not automatically
  deregistered when terminated).

  </note>
  """
  def deregister_container_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterContainerInstance",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DeregisterContainerInstanceRequest",
      output_shape:     "DeregisterContainerInstanceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deregisters the specified task definition by family and revision. Upon
  deregistration, the task definition is marked as `INACTIVE`. Existing tasks
  and services that reference an `INACTIVE` task definition continue to run
  without disruption. Existing services that reference an `INACTIVE` task
  definition can still scale up or down by modifying the service's desired
  count.

  You cannot use an `INACTIVE` task definition to run new tasks or create new
  services, and you cannot update an existing service to reference an
  `INACTIVE` task definition (although there may be up to a 10 minute window
  following deregistration where these restrictions have not yet taken
  effect).

  <note> At this time, `INACTIVE` task definitions remain discoverable in
  your account indefinitely; however, this behavior is subject to change in
  the future, so you should not rely on `INACTIVE` task definitions
  persisting beyond the life cycle of any associated tasks and services.

  </note>
  """
  def deregister_task_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterTaskDefinition",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DeregisterTaskDefinitionRequest",
      output_shape:     "DeregisterTaskDefinitionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your clusters.
  """
  def describe_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusters",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DescribeClustersRequest",
      output_shape:     "DescribeClustersResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes Amazon EC2 Container Service container instances. Returns
  metadata about registered and remaining resources on each container
  instance requested.
  """
  def describe_container_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeContainerInstances",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DescribeContainerInstancesRequest",
      output_shape:     "DescribeContainerInstancesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified services running in your cluster.
  """
  def describe_services(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeServices",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DescribeServicesRequest",
      output_shape:     "DescribeServicesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes a task definition. You can specify a `family` and `revision` to
  find information about a specific task definition, or you can simply
  specify the family to find the latest `ACTIVE` revision in that family.

  <note> You can only describe `INACTIVE` task definitions while an active
  task or service references them.

  </note>
  """
  def describe_task_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTaskDefinition",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DescribeTaskDefinitionRequest",
      output_shape:     "DescribeTaskDefinitionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes a specified task or tasks.
  """
  def describe_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTasks",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DescribeTasksRequest",
      output_shape:     "DescribeTasksResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  <note> This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Returns an endpoint for the Amazon EC2 Container Service agent to
  poll for updates.
  """
  def discover_poll_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DiscoverPollEndpoint",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "DiscoverPollEndpointRequest",
      output_shape:     "DiscoverPollEndpointResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the attributes for Amazon ECS resources within a specified target
  type and cluster. When you specify a target type and cluster,
  `ListAttributes` returns a list of attribute objects, one for each
  attribute on each resource. You can filter the list of results to a single
  attribute name to only return results that have that name. You can also
  filter the results by attribute name and value, for example, to see which
  container instances in a cluster are running a Linux AMI
  (`ecs.os-type=linux`).
  """
  def list_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAttributes",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "ListAttributesRequest",
      output_shape:     "ListAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of existing clusters.
  """
  def list_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListClusters",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "ListClustersRequest",
      output_shape:     "ListClustersResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of container instances in a specified cluster. You can
  filter the results of a `ListContainerInstances` operation with cluster
  query language statements inside the `filter` parameter. For more
  information, see [Cluster Query
  Language](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
  in the *Amazon EC2 Container Service Developer Guide*.
  """
  def list_container_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListContainerInstances",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "ListContainerInstancesRequest",
      output_shape:     "ListContainerInstancesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the services that are running in a specified cluster.
  """
  def list_services(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListServices",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "ListServicesRequest",
      output_shape:     "ListServicesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of task definition families that are registered to your
  account (which may include task definition families that no longer have any
  `ACTIVE` task definition revisions).

  You can filter out task definition families that do not contain any
  `ACTIVE` task definition revisions by setting the `status` parameter to
  `ACTIVE`. You can also filter the results with the `familyPrefix`
  parameter.
  """
  def list_task_definition_families(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTaskDefinitionFamilies",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "ListTaskDefinitionFamiliesRequest",
      output_shape:     "ListTaskDefinitionFamiliesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of task definitions that are registered to your account. You
  can filter the results by family name with the `familyPrefix` parameter or
  by status with the `status` parameter.
  """
  def list_task_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTaskDefinitions",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "ListTaskDefinitionsRequest",
      output_shape:     "ListTaskDefinitionsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of tasks for a specified cluster. You can filter the results
  by family name, by a particular container instance, or by the desired
  status of the task with the `family`, `containerInstance`, and
  `desiredStatus` parameters.

  Recently-stopped tasks might appear in the returned results. Currently,
  stopped tasks appear in the returned results for at least one hour.
  """
  def list_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTasks",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "ListTasksRequest",
      output_shape:     "ListTasksResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create or update an attribute on an Amazon ECS resource. If the attribute
  does not exist, it is created. If the attribute exists, its value is
  replaced with the specified value. To delete an attribute, use
  `DeleteAttributes`. For more information, see
  [Attributes](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
  in the *Amazon EC2 Container Service Developer Guide*.
  """
  def put_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutAttributes",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "PutAttributesRequest",
      output_shape:     "PutAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  <note> This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Registers an EC2 instance into the specified cluster. This instance
  becomes available to place containers on.
  """
  def register_container_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterContainerInstance",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "RegisterContainerInstanceRequest",
      output_shape:     "RegisterContainerInstanceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Registers a new task definition from the supplied `family` and
  `containerDefinitions`. Optionally, you can add data volumes to your
  containers with the `volumes` parameter. For more information about task
  definition parameters and defaults, see [Amazon ECS Task
  Definitions](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  You can specify an IAM role for your task with the `taskRoleArn` parameter.
  When you specify an IAM role for a task, its containers can then use the
  latest versions of the AWS CLI or SDKs to make API requests to the AWS
  services that are specified in the IAM policy associated with the role. For
  more information, see [IAM Roles for
  Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  You can specify a Docker networking mode for the containers in your task
  definition with the `networkMode` parameter. The available network modes
  correspond to those described in [Network
  settings](https://docs.docker.com/engine/reference/run/#/network-settings)
  in the Docker run reference.
  """
  def register_task_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterTaskDefinition",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "RegisterTaskDefinitionRequest",
      output_shape:     "RegisterTaskDefinitionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts a new task using the specified task definition.

  You can allow Amazon ECS to place tasks for you, or you can customize how
  Amazon ECS places tasks using placement constraints and placement
  strategies. For more information, see [Scheduling
  Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  Alternatively, you can use `StartTask` to use your own scheduler or place
  tasks manually on specific container instances.
  """
  def run_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RunTask",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "RunTaskRequest",
      output_shape:     "RunTaskResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts a new task from the specified task definition on the specified
  container instance or instances.

  Alternatively, you can use `RunTask` to place tasks for you. For more
  information, see [Scheduling
  Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon EC2 Container Service Developer Guide*.
  """
  def start_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartTask",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "StartTaskRequest",
      output_shape:     "StartTaskResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Stops a running task.

  When `StopTask` is called on a task, the equivalent of `docker stop` is
  issued to the containers running in the task. This results in a `SIGTERM`
  and a default 30-second timeout, after which `SIGKILL` is sent and the
  containers are forcibly stopped. If the container handles the `SIGTERM`
  gracefully and exits within 30 seconds from receiving it, no `SIGKILL` is
  sent.

  <note> The default 30-second timeout can be configured on the Amazon ECS
  container agent with the `ECS_CONTAINER_STOP_TIMEOUT` variable. For more
  information, see [Amazon ECS Container Agent
  Configuration](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  </note>
  """
  def stop_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopTask",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "StopTaskRequest",
      output_shape:     "StopTaskResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  <note> This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Sent to acknowledge that a container changed states.
  """
  def submit_container_state_change(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SubmitContainerStateChange",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "SubmitContainerStateChangeRequest",
      output_shape:     "SubmitContainerStateChangeResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  <note> This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Sent to acknowledge that a task changed states.
  """
  def submit_task_state_change(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SubmitTaskStateChange",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "SubmitTaskStateChangeRequest",
      output_shape:     "SubmitTaskStateChangeResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the Amazon ECS container agent on a specified container instance.
  Updating the Amazon ECS container agent does not interrupt running tasks or
  services on the container instance. The process for updating the agent
  differs depending on whether your container instance was launched with the
  Amazon ECS-optimized AMI or another operating system.

  `UpdateContainerAgent` requires the Amazon ECS-optimized AMI or Amazon
  Linux with the `ecs-init` service installed and running. For help updating
  the Amazon ECS container agent on other operating systems, see [Manually
  Updating the Amazon ECS Container
  Agent](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent)
  in the *Amazon EC2 Container Service Developer Guide*.
  """
  def update_container_agent(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateContainerAgent",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "UpdateContainerAgentRequest",
      output_shape:     "UpdateContainerAgentResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the status of an Amazon ECS container instance.

  You can change the status of a container instance to `DRAINING` to manually
  remove an instance from a cluster, for example to perform system updates,
  update the Docker daemon, or scale down the cluster size.

  When you set a container instance to `DRAINING`, Amazon ECS prevents new
  tasks from being scheduled for placement on the container instance and
  replacement service tasks are started on other container instances in the
  cluster if the resources are available. Service tasks on the container
  instance that are in the `PENDING` state are stopped immediately.

  Service tasks on the container instance that are in the `RUNNING` state are
  stopped and replaced according the service's deployment configuration
  parameters, `minimumHealthyPercent` and `maximumPercent`. Note that you can
  change the deployment configuration of your service using `UpdateService`.

  <ul> <li> If `minimumHealthyPercent` is below 100%, the scheduler can
  ignore `desiredCount` temporarily during task replacement. For example,
  `desiredCount` is four tasks, a minimum of 50% allows the scheduler to stop
  two existing tasks before starting two new tasks. If the minimum is 100%,
  the service scheduler can't remove existing tasks until the replacement
  tasks are considered healthy. Tasks for services that do not use a load
  balancer are considered healthy if they are in the `RUNNING` state. Tasks
  for services that use a load balancer are considered healthy if they are in
  the `RUNNING` state and the container instance they are hosted on is
  reported as healthy by the load balancer.

  </li> <li> The `maximumPercent` parameter represents an upper limit on the
  number of running tasks during task replacement, which enables you to
  define the replacement batch size. For example, if `desiredCount` of four
  tasks, a maximum of 200% starts four new tasks before stopping the four
  tasks to be drained (provided that the cluster resources required to do
  this are available). If the maximum is 100%, then replacement tasks can't
  start until the draining tasks have stopped.

  </li> </ul> Any `PENDING` or `RUNNING` tasks that do not belong to a
  service are not affected; you must wait for them to finish or stop them
  manually.

  A container instance has completed draining when it has no more `RUNNING`
  tasks. You can verify this using `ListTasks`.

  When you set a container instance to `ACTIVE`, the Amazon ECS scheduler can
  begin scheduling tasks on the instance again.
  """
  def update_container_instances_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateContainerInstancesState",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "UpdateContainerInstancesStateRequest",
      output_shape:     "UpdateContainerInstancesStateResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the desired count, deployment configuration, or task definition
  used in a service.

  You can add to or subtract from the number of instantiations of a task
  definition in a service by specifying the cluster that the service is
  running in and a new `desiredCount` parameter.

  You can use `UpdateService` to modify your task definition and deploy a new
  version of your service.

  You can also update the deployment configuration of a service. When a
  deployment is triggered by updating the task definition of a service, the
  service scheduler uses the deployment configuration parameters,
  `minimumHealthyPercent` and `maximumPercent`, to determine the deployment
  strategy.

  <ul> <li> If `minimumHealthyPercent` is below 100%, the scheduler can
  ignore `desiredCount` temporarily during a deployment. For example, if
  `desiredCount` is four tasks, a minimum of 50% allows the scheduler to stop
  two existing tasks before starting two new tasks. Tasks for services that
  do not use a load balancer are considered healthy if they are in the
  `RUNNING` state. Tasks for services that use a load balancer are considered
  healthy if they are in the `RUNNING` state and the container instance they
  are hosted on is reported as healthy by the load balancer.

  </li> <li> The `maximumPercent` parameter represents an upper limit on the
  number of running tasks during a deployment, which enables you to define
  the deployment batch size. For example, if `desiredCount` is four tasks, a
  maximum of 200% starts four new tasks before stopping the four older tasks
  (provided that the cluster resources required to do this are available).

  </li> </ul> When `UpdateService` stops a task during a deployment, the
  equivalent of `docker stop` is issued to the containers running in the
  task. This results in a `SIGTERM` and a 30-second timeout, after which
  `SIGKILL` is sent and the containers are forcibly stopped. If the container
  handles the `SIGTERM` gracefully and exits within 30 seconds from receiving
  it, no `SIGKILL` is sent.

  When the service scheduler launches new tasks, it determines task placement
  in your cluster with the following logic:

  <ul> <li> Determine which of the container instances in your cluster can
  support your service's task definition (for example, they have the required
  CPU, memory, ports, and container instance attributes).

  </li> <li> By default, the service scheduler attempts to balance tasks
  across Availability Zones in this manner (although you can choose a
  different placement strategy):

  <ul> <li> Sort the valid container instances by the fewest number of
  running tasks for this service in the same Availability Zone as the
  instance. For example, if zone A has one running service task and zones B
  and C each have zero, valid container instances in either zone B or C are
  considered optimal for placement.

  </li> <li> Place the new service task on a valid container instance in an
  optimal Availability Zone (based on the previous steps), favoring container
  instances with the fewest number of running tasks for this service.

  </li> </ul> </li> </ul> When the service scheduler stops running tasks, it
  attempts to maintain balance across the Availability Zones in your cluster
  using the following logic:

  <ul> <li> Sort the container instances by the largest number of running
  tasks for this service in the same Availability Zone as the instance. For
  example, if zone A has one running service task and zones B and C each have
  two, container instances in either zone B or C are considered optimal for
  termination.

  </li> <li> Stop the task on a container instance in an optimal Availability
  Zone (based on the previous steps), favoring container instances with the
  largest number of running tasks for this service.

  </li> </ul>
  """
  def update_service(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ecs",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateService",
      
      target_prefix:    "AmazonEC2ContainerServiceV20141113",
      
      endpoint_prefix:  "ecs",
      type:             :json,
      version:          "2014-11-13",
      method:           :post,
      input_shape:      "UpdateServiceRequest",
      output_shape:     "UpdateServiceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"UpdateInProgressException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteAttributesResponse" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}}, "type" => "structure"}, "RunTaskRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "count" => %{"shape" => "BoxedInteger"}, "group" => %{"shape" => "String"}, "overrides" => %{"shape" => "TaskOverride"}, "placementConstraints" => %{"shape" => "PlacementConstraints"}, "placementStrategy" => %{"shape" => "PlacementStrategies"}, "startedBy" => %{"shape" => "String"}, "taskDefinition" => %{"shape" => "String"}}, "required" => ["taskDefinition"], "type" => "structure"}, "PutAttributesResponse" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}}, "type" => "structure"}, "ListTaskDefinitionsResponse" => %{"members" => %{"nextToken" => %{"shape" => "String"}, "taskDefinitionArns" => %{"shape" => "StringList"}}, "type" => "structure"}, "MountPointList" => %{"member" => %{"shape" => "MountPoint"}, "type" => "list"}, "NetworkMode" => %{"enum" => ["bridge", "host", "none"], "type" => "string"}, "ClientException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidParameterException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ClusterNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "ContainerOverride" => %{"members" => %{"command" => %{"shape" => "StringList"}, "cpu" => %{"shape" => "BoxedInteger"}, "environment" => %{"shape" => "EnvironmentVariables"}, "memory" => %{"shape" => "BoxedInteger"}, "memoryReservation" => %{"shape" => "BoxedInteger"}, "name" => %{"shape" => "String"}}, "type" => "structure"}, "RegisterTaskDefinitionResponse" => %{"members" => %{"taskDefinition" => %{"shape" => "TaskDefinition"}}, "type" => "structure"}, "MissingVersionException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ServiceNotActiveException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Service" => %{"members" => %{"clusterArn" => %{"shape" => "String"}, "createdAt" => %{"shape" => "Timestamp"}, "deploymentConfiguration" => %{"shape" => "DeploymentConfiguration"}, "deployments" => %{"shape" => "Deployments"}, "desiredCount" => %{"shape" => "Integer"}, "events" => %{"shape" => "ServiceEvents"}, "loadBalancers" => %{"shape" => "LoadBalancers"}, "pendingCount" => %{"shape" => "Integer"}, "placementConstraints" => %{"shape" => "PlacementConstraints"}, "placementStrategy" => %{"shape" => "PlacementStrategies"}, "roleArn" => %{"shape" => "String"}, "runningCount" => %{"shape" => "Integer"}, "serviceArn" => %{"shape" => "String"}, "serviceName" => %{"shape" => "String"}, "status" => %{"shape" => "String"}, "taskDefinition" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeServicesResponse" => %{"members" => %{"failures" => %{"shape" => "Failures"}, "services" => %{"shape" => "Services"}}, "type" => "structure"}, "TaskDefinitionPlacementConstraintType" => %{"enum" => ["memberOf"], "type" => "string"}, "TaskDefinition" => %{"members" => %{"containerDefinitions" => %{"shape" => "ContainerDefinitions"}, "family" => %{"shape" => "String"}, "networkMode" => %{"shape" => "NetworkMode"}, "placementConstraints" => %{"shape" => "TaskDefinitionPlacementConstraints"}, "requiresAttributes" => %{"shape" => "RequiresAttributes"}, "revision" => %{"shape" => "Integer"}, "status" => %{"shape" => "TaskDefinitionStatus"}, "taskDefinitionArn" => %{"shape" => "String"}, "taskRoleArn" => %{"shape" => "String"}, "volumes" => %{"shape" => "VolumeList"}}, "type" => "structure"}, "Services" => %{"member" => %{"shape" => "Service"}, "type" => "list"}, "DeleteClusterResponse" => %{"members" => %{"cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ClusterContainsServicesException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListTasksRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "containerInstance" => %{"shape" => "String"}, "desiredStatus" => %{"shape" => "DesiredStatus"}, "family" => %{"shape" => "String"}, "maxResults" => %{"shape" => "BoxedInteger"}, "nextToken" => %{"shape" => "String"}, "serviceName" => %{"shape" => "String"}, "startedBy" => %{"shape" => "String"}}, "type" => "structure"}, "TargetType" => %{"enum" => ["container-instance"], "type" => "string"}, "ListTaskDefinitionFamiliesResponse" => %{"members" => %{"families" => %{"shape" => "StringList"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ListServicesResponse" => %{"members" => %{"nextToken" => %{"shape" => "String"}, "serviceArns" => %{"shape" => "StringList"}}, "type" => "structure"}, "Attribute" => %{"members" => %{"name" => %{"shape" => "String"}, "targetId" => %{"shape" => "String"}, "targetType" => %{"shape" => "TargetType"}, "value" => %{"shape" => "String"}}, "required" => ["name"], "type" => "structure"}, "DescribeClustersRequest" => %{"members" => %{"clusters" => %{"shape" => "StringList"}}, "type" => "structure"}, "TargetNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ServiceEvent" => %{"members" => %{"createdAt" => %{"shape" => "Timestamp"}, "id" => %{"shape" => "String"}, "message" => %{"shape" => "String"}}, "type" => "structure"}, "PortMapping" => %{"members" => %{"containerPort" => %{"shape" => "BoxedInteger"}, "hostPort" => %{"shape" => "BoxedInteger"}, "protocol" => %{"shape" => "TransportProtocol"}}, "type" => "structure"}, "BoxedBoolean" => %{"box" => true, "type" => "boolean"}, "DeleteClusterRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}}, "required" => ["cluster"], "type" => "structure"}, "DockerLabelsMap" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "TaskDefinitionPlacementConstraint" => %{"members" => %{"expression" => %{"shape" => "String"}, "type" => %{"shape" => "TaskDefinitionPlacementConstraintType"}}, "type" => "structure"}, "SortOrder" => %{"enum" => ["ASC", "DESC"], "type" => "string"}, "ContainerDefinition" => %{"members" => %{"command" => %{"shape" => "StringList"}, "cpu" => %{"shape" => "Integer"}, "disableNetworking" => %{"shape" => "BoxedBoolean"}, "dnsSearchDomains" => %{"shape" => "StringList"}, "dnsServers" => %{"shape" => "StringList"}, "dockerLabels" => %{"shape" => "DockerLabelsMap"}, "dockerSecurityOptions" => %{"shape" => "StringList"}, "entryPoint" => %{"shape" => "StringList"}, "environment" => %{"shape" => "EnvironmentVariables"}, "essential" => %{"shape" => "BoxedBoolean"}, "extraHosts" => %{"shape" => "HostEntryList"}, "hostname" => %{"shape" => "String"}, "image" => %{"shape" => "String"}, "links" => %{"shape" => "StringList"}, "logConfiguration" => %{"shape" => "LogConfiguration"}, "memory" => %{"shape" => "BoxedInteger"}, "memoryReservation" => %{"shape" => "BoxedInteger"}, "mountPoints" => %{"shape" => "MountPointList"}, "name" => %{"shape" => "String"}, "portMappings" => %{"shape" => "PortMappingList"}, "privileged" => %{"shape" => "BoxedBoolean"}, "readonlyRootFilesystem" => %{"shape" => "BoxedBoolean"}, "ulimits" => %{"shape" => "UlimitList"}, "user" => %{"shape" => "String"}, "volumesFrom" => %{"shape" => "VolumeFromList"}, "workingDirectory" => %{"shape" => "String"}}, "type" => "structure"}, "NetworkBindings" => %{"member" => %{"shape" => "NetworkBinding"}, "type" => "list"}, "ContainerInstance" => %{"members" => %{"agentConnected" => %{"shape" => "Boolean"}, "agentUpdateStatus" => %{"shape" => "AgentUpdateStatus"}, "attributes" => %{"shape" => "Attributes"}, "containerInstanceArn" => %{"shape" => "String"}, "ec2InstanceId" => %{"shape" => "String"}, "pendingTasksCount" => %{"shape" => "Integer"}, "registeredAt" => %{"shape" => "Timestamp"}, "registeredResources" => %{"shape" => "Resources"}, "remainingResources" => %{"shape" => "Resources"}, "runningTasksCount" => %{"shape" => "Integer"}, "status" => %{"shape" => "String"}, "version" => %{"shape" => "Long"}, "versionInfo" => %{"shape" => "VersionInfo"}}, "type" => "structure"}, "LoadBalancer" => %{"members" => %{"containerName" => %{"shape" => "String"}, "containerPort" => %{"shape" => "BoxedInteger"}, "loadBalancerName" => %{"shape" => "String"}, "targetGroupArn" => %{"shape" => "String"}}, "type" => "structure"}, "PlacementStrategies" => %{"member" => %{"shape" => "PlacementStrategy"}, "type" => "list"}, "ContainerDefinitions" => %{"member" => %{"shape" => "ContainerDefinition"}, "type" => "list"}, "DiscoverPollEndpointRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "containerInstance" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeTaskDefinitionRequest" => %{"members" => %{"taskDefinition" => %{"shape" => "String"}}, "required" => ["taskDefinition"], "type" => "structure"}, "Ulimit" => %{"members" => %{"hardLimit" => %{"shape" => "Integer"}, "name" => %{"shape" => "UlimitName"}, "softLimit" => %{"shape" => "Integer"}}, "required" => ["name", "softLimit", "hardLimit"], "type" => "structure"}, "StringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "Failure" => %{"members" => %{"arn" => %{"shape" => "String"}, "reason" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeContainerInstancesResponse" => %{"members" => %{"containerInstances" => %{"shape" => "ContainerInstances"}, "failures" => %{"shape" => "Failures"}}, "type" => "structure"}, "Resource" => %{"members" => %{"doubleValue" => %{"shape" => "Double"}, "integerValue" => %{"shape" => "Integer"}, "longValue" => %{"shape" => "Long"}, "name" => %{"shape" => "String"}, "stringSetValue" => %{"shape" => "StringList"}, "type" => %{"shape" => "String"}}, "type" => "structure"}, "UlimitList" => %{"member" => %{"shape" => "Ulimit"}, "type" => "list"}, "DeploymentConfiguration" => %{"members" => %{"maximumPercent" => %{"shape" => "BoxedInteger"}, "minimumHealthyPercent" => %{"shape" => "BoxedInteger"}}, "type" => "structure"}, "TaskOverride" => %{"members" => %{"containerOverrides" => %{"shape" => "ContainerOverrides"}, "taskRoleArn" => %{"shape" => "String"}}, "type" => "structure"}, "VersionInfo" => %{"members" => %{"agentHash" => %{"shape" => "String"}, "agentVersion" => %{"shape" => "String"}, "dockerVersion" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeTasksResponse" => %{"members" => %{"failures" => %{"shape" => "Failures"}, "tasks" => %{"shape" => "Tasks"}}, "type" => "structure"}, "ListTaskDefinitionsRequest" => %{"members" => %{"familyPrefix" => %{"shape" => "String"}, "maxResults" => %{"shape" => "BoxedInteger"}, "nextToken" => %{"shape" => "String"}, "sort" => %{"shape" => "SortOrder"}, "status" => %{"shape" => "TaskDefinitionStatus"}}, "type" => "structure"}, "RegisterTaskDefinitionRequest" => %{"members" => %{"containerDefinitions" => %{"shape" => "ContainerDefinitions"}, "family" => %{"shape" => "String"}, "networkMode" => %{"shape" => "NetworkMode"}, "placementConstraints" => %{"shape" => "TaskDefinitionPlacementConstraints"}, "taskRoleArn" => %{"shape" => "String"}, "volumes" => %{"shape" => "VolumeList"}}, "required" => ["family", "containerDefinitions"], "type" => "structure"}, "SubmitTaskStateChangeRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "reason" => %{"shape" => "String"}, "status" => %{"shape" => "String"}, "task" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeContainerInstancesRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "containerInstances" => %{"shape" => "StringList"}}, "required" => ["containerInstances"], "type" => "structure"}, "DiscoverPollEndpointResponse" => %{"members" => %{"endpoint" => %{"shape" => "String"}, "telemetryEndpoint" => %{"shape" => "String"}}, "type" => "structure"}, "CreateClusterRequest" => %{"members" => %{"clusterName" => %{"shape" => "String"}}, "type" => "structure"}, "PlacementConstraint" => %{"members" => %{"expression" => %{"shape" => "String"}, "type" => %{"shape" => "PlacementConstraintType"}}, "type" => "structure"}, "HostEntryList" => %{"member" => %{"shape" => "HostEntry"}, "type" => "list"}, "Deployment" => %{"members" => %{"createdAt" => %{"shape" => "Timestamp"}, "desiredCount" => %{"shape" => "Integer"}, "id" => %{"shape" => "String"}, "pendingCount" => %{"shape" => "Integer"}, "runningCount" => %{"shape" => "Integer"}, "status" => %{"shape" => "String"}, "taskDefinition" => %{"shape" => "String"}, "updatedAt" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "UpdateContainerInstancesStateResponse" => %{"members" => %{"containerInstances" => %{"shape" => "ContainerInstances"}, "failures" => %{"shape" => "Failures"}}, "type" => "structure"}, "StopTaskResponse" => %{"members" => %{"task" => %{"shape" => "Task"}}, "type" => "structure"}, "EnvironmentVariables" => %{"member" => %{"shape" => "KeyValuePair"}, "type" => "list"}, "ListTasksResponse" => %{"members" => %{"nextToken" => %{"shape" => "String"}, "taskArns" => %{"shape" => "StringList"}}, "type" => "structure"}, "ContainerOverrides" => %{"member" => %{"shape" => "ContainerOverride"}, "type" => "list"}, "DeregisterContainerInstanceResponse" => %{"members" => %{"containerInstance" => %{"shape" => "ContainerInstance"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "ListAttributesResponse" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ListServicesRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "maxResults" => %{"shape" => "BoxedInteger"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "LogConfiguration" => %{"members" => %{"logDriver" => %{"shape" => "LogDriver"}, "options" => %{"shape" => "LogConfigurationOptionsMap"}}, "required" => ["logDriver"], "type" => "structure"}, "DescribeTaskDefinitionResponse" => %{"members" => %{"taskDefinition" => %{"shape" => "TaskDefinition"}}, "type" => "structure"}, "UpdateServiceRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "deploymentConfiguration" => %{"shape" => "DeploymentConfiguration"}, "desiredCount" => %{"shape" => "BoxedInteger"}, "service" => %{"shape" => "String"}, "taskDefinition" => %{"shape" => "String"}}, "required" => ["service"], "type" => "structure"}, "MountPoint" => %{"members" => %{"containerPath" => %{"shape" => "String"}, "readOnly" => %{"shape" => "BoxedBoolean"}, "sourceVolume" => %{"shape" => "String"}}, "type" => "structure"}, "ContainerInstanceStatus" => %{"enum" => ["ACTIVE", "DRAINING"], "type" => "string"}, "RunTaskResponse" => %{"members" => %{"failures" => %{"shape" => "Failures"}, "tasks" => %{"shape" => "Tasks"}}, "type" => "structure"}, "PlacementConstraints" => %{"member" => %{"shape" => "PlacementConstraint"}, "type" => "list"}, "CreateClusterResponse" => %{"members" => %{"cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ServiceEvents" => %{"member" => %{"shape" => "ServiceEvent"}, "type" => "list"}, "UpdateContainerAgentRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "containerInstance" => %{"shape" => "String"}}, "required" => ["containerInstance"], "type" => "structure"}, "DeleteAttributesRequest" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}, "cluster" => %{"shape" => "String"}}, "required" => ["attributes"], "type" => "structure"}, "DeleteServiceResponse" => %{"members" => %{"service" => %{"shape" => "Service"}}, "type" => "structure"}, "TaskDefinitionStatus" => %{"enum" => ["ACTIVE", "INACTIVE"], "type" => "string"}, "DescribeServicesRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "services" => %{"shape" => "StringList"}}, "required" => ["services"], "type" => "structure"}, "SubmitContainerStateChangeRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "containerName" => %{"shape" => "String"}, "exitCode" => %{"shape" => "BoxedInteger"}, "networkBindings" => %{"shape" => "NetworkBindings"}, "reason" => %{"shape" => "String"}, "status" => %{"shape" => "String"}, "task" => %{"shape" => "String"}}, "type" => "structure"}, "StopTaskRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "reason" => %{"shape" => "String"}, "task" => %{"shape" => "String"}}, "required" => ["task"], "type" => "structure"}, "ListContainerInstancesRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "filter" => %{"shape" => "String"}, "maxResults" => %{"shape" => "BoxedInteger"}, "nextToken" => %{"shape" => "String"}, "status" => %{"shape" => "ContainerInstanceStatus"}}, "type" => "structure"}, "Task" => %{"members" => %{"clusterArn" => %{"shape" => "String"}, "containerInstanceArn" => %{"shape" => "String"}, "containers" => %{"shape" => "Containers"}, "createdAt" => %{"shape" => "Timestamp"}, "desiredStatus" => %{"shape" => "String"}, "group" => %{"shape" => "String"}, "lastStatus" => %{"shape" => "String"}, "overrides" => %{"shape" => "TaskOverride"}, "startedAt" => %{"shape" => "Timestamp"}, "startedBy" => %{"shape" => "String"}, "stoppedAt" => %{"shape" => "Timestamp"}, "stoppedReason" => %{"shape" => "String"}, "taskArn" => %{"shape" => "String"}, "taskDefinitionArn" => %{"shape" => "String"}, "version" => %{"shape" => "Long"}}, "type" => "structure"}, "ContainerInstances" => %{"member" => %{"shape" => "ContainerInstance"}, "type" => "list"}, "ListClustersRequest" => %{"members" => %{"maxResults" => %{"shape" => "BoxedInteger"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "Double" => %{"type" => "double"}, "DeregisterTaskDefinitionRequest" => %{"members" => %{"taskDefinition" => %{"shape" => "String"}}, "required" => ["taskDefinition"], "type" => "structure"}, "TransportProtocol" => %{"enum" => ["tcp", "udp"], "type" => "string"}, "KeyValuePair" => %{"members" => %{"name" => %{"shape" => "String"}, "value" => %{"shape" => "String"}}, "type" => "structure"}, "ListTaskDefinitionFamiliesRequest" => %{"members" => %{"familyPrefix" => %{"shape" => "String"}, "maxResults" => %{"shape" => "BoxedInteger"}, "nextToken" => %{"shape" => "String"}, "status" => %{"shape" => "TaskDefinitionFamilyStatus"}}, "type" => "structure"}, "AttributeLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LogDriver" => %{"enum" => ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"], "type" => "string"}, "Long" => %{"type" => "long"}, "StartTaskResponse" => %{"members" => %{"failures" => %{"shape" => "Failures"}, "tasks" => %{"shape" => "Tasks"}}, "type" => "structure"}, "RegisterContainerInstanceResponse" => %{"members" => %{"containerInstance" => %{"shape" => "ContainerInstance"}}, "type" => "structure"}, "Resources" => %{"member" => %{"shape" => "Resource"}, "type" => "list"}, "BoxedInteger" => %{"box" => true, "type" => "integer"}, "TaskDefinitionFamilyStatus" => %{"enum" => ["ACTIVE", "INACTIVE", "ALL"], "type" => "string"}, "StartTaskRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "containerInstances" => %{"shape" => "StringList"}, "group" => %{"shape" => "String"}, "overrides" => %{"shape" => "TaskOverride"}, "startedBy" => %{"shape" => "String"}, "taskDefinition" => %{"shape" => "String"}}, "required" => ["taskDefinition", "containerInstances"], "type" => "structure"}, "PutAttributesRequest" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}, "cluster" => %{"shape" => "String"}}, "required" => ["attributes"], "type" => "structure"}, "VolumeFrom" => %{"members" => %{"readOnly" => %{"shape" => "BoxedBoolean"}, "sourceContainer" => %{"shape" => "String"}}, "type" => "structure"}, "Cluster" => %{"members" => %{"activeServicesCount" => %{"shape" => "Integer"}, "clusterArn" => %{"shape" => "String"}, "clusterName" => %{"shape" => "String"}, "pendingTasksCount" => %{"shape" => "Integer"}, "registeredContainerInstancesCount" => %{"shape" => "Integer"}, "runningTasksCount" => %{"shape" => "Integer"}, "status" => %{"shape" => "String"}}, "type" => "structure"}, "Attributes" => %{"member" => %{"shape" => "Attribute"}, "type" => "list"}, "HostVolumeProperties" => %{"members" => %{"sourcePath" => %{"shape" => "String"}}, "type" => "structure"}, "NetworkBinding" => %{"members" => %{"bindIP" => %{"shape" => "String"}, "containerPort" => %{"shape" => "BoxedInteger"}, "hostPort" => %{"shape" => "BoxedInteger"}, "protocol" => %{"shape" => "TransportProtocol"}}, "type" => "structure"}, "Tasks" => %{"member" => %{"shape" => "Task"}, "type" => "list"}, "PortMappingList" => %{"member" => %{"shape" => "PortMapping"}, "type" => "list"}, "Deployments" => %{"member" => %{"shape" => "Deployment"}, "type" => "list"}, "ServiceNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RegisterContainerInstanceRequest" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}, "cluster" => %{"shape" => "String"}, "containerInstanceArn" => %{"shape" => "String"}, "instanceIdentityDocument" => %{"shape" => "String"}, "instanceIdentityDocumentSignature" => %{"shape" => "String"}, "totalResources" => %{"shape" => "Resources"}, "versionInfo" => %{"shape" => "VersionInfo"}}, "type" => "structure"}, "PlacementStrategy" => %{"members" => %{"field" => %{"shape" => "String"}, "type" => %{"shape" => "PlacementStrategyType"}}, "type" => "structure"}, "DeleteServiceRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "service" => %{"shape" => "String"}}, "required" => ["service"], "type" => "structure"}, "Container" => %{"members" => %{"containerArn" => %{"shape" => "String"}, "exitCode" => %{"shape" => "BoxedInteger"}, "lastStatus" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "networkBindings" => %{"shape" => "NetworkBindings"}, "reason" => %{"shape" => "String"}, "taskArn" => %{"shape" => "String"}}, "type" => "structure"}, "DeregisterTaskDefinitionResponse" => %{"members" => %{"taskDefinition" => %{"shape" => "TaskDefinition"}}, "type" => "structure"}, "AgentUpdateStatus" => %{"enum" => ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"], "type" => "string"}, "ListAttributesRequest" => %{"members" => %{"attributeName" => %{"shape" => "String"}, "attributeValue" => %{"shape" => "String"}, "cluster" => %{"shape" => "String"}, "maxResults" => %{"shape" => "BoxedInteger"}, "nextToken" => %{"shape" => "String"}, "targetType" => %{"shape" => "TargetType"}}, "required" => ["targetType"], "type" => "structure"}, "NoUpdateAvailableException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Clusters" => %{"member" => %{"shape" => "Cluster"}, "type" => "list"}, "RequiresAttributes" => %{"member" => %{"shape" => "Attribute"}, "type" => "list"}, "PlacementConstraintType" => %{"enum" => ["distinctInstance", "memberOf"], "type" => "string"}, "HostEntry" => %{"members" => %{"hostname" => %{"shape" => "String"}, "ipAddress" => %{"shape" => "String"}}, "required" => ["hostname", "ipAddress"], "type" => "structure"}, "Containers" => %{"member" => %{"shape" => "Container"}, "type" => "list"}, "ListContainerInstancesResponse" => %{"members" => %{"containerInstanceArns" => %{"shape" => "StringList"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateContainerInstancesStateRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "containerInstances" => %{"shape" => "StringList"}, "status" => %{"shape" => "ContainerInstanceStatus"}}, "required" => ["containerInstances", "status"], "type" => "structure"}, "UpdateContainerAgentResponse" => %{"members" => %{"containerInstance" => %{"shape" => "ContainerInstance"}}, "type" => "structure"}, "VolumeList" => %{"member" => %{"shape" => "Volume"}, "type" => "list"}, "LogConfigurationOptionsMap" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "DescribeTasksRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "tasks" => %{"shape" => "StringList"}}, "required" => ["tasks"], "type" => "structure"}, "LoadBalancers" => %{"member" => %{"shape" => "LoadBalancer"}, "type" => "list"}, "ListClustersResponse" => %{"members" => %{"clusterArns" => %{"shape" => "StringList"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "Failures" => %{"member" => %{"shape" => "Failure"}, "type" => "list"}, "TaskDefinitionPlacementConstraints" => %{"member" => %{"shape" => "TaskDefinitionPlacementConstraint"}, "type" => "list"}, "Integer" => %{"type" => "integer"}, "UlimitName" => %{"enum" => ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"], "type" => "string"}, "SubmitTaskStateChangeResponse" => %{"members" => %{"acknowledgment" => %{"shape" => "String"}}, "type" => "structure"}, "CreateServiceResponse" => %{"members" => %{"service" => %{"shape" => "Service"}}, "type" => "structure"}, "PlacementStrategyType" => %{"enum" => ["random", "spread", "binpack"], "type" => "string"}, "Volume" => %{"members" => %{"host" => %{"shape" => "HostVolumeProperties"}, "name" => %{"shape" => "String"}}, "type" => "structure"}, "ServerException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "VolumeFromList" => %{"member" => %{"shape" => "VolumeFrom"}, "type" => "list"}, "DescribeClustersResponse" => %{"members" => %{"clusters" => %{"shape" => "Clusters"}, "failures" => %{"shape" => "Failures"}}, "type" => "structure"}, "DesiredStatus" => %{"enum" => ["RUNNING", "PENDING", "STOPPED"], "type" => "string"}, "CreateServiceRequest" => %{"members" => %{"clientToken" => %{"shape" => "String"}, "cluster" => %{"shape" => "String"}, "deploymentConfiguration" => %{"shape" => "DeploymentConfiguration"}, "desiredCount" => %{"shape" => "BoxedInteger"}, "loadBalancers" => %{"shape" => "LoadBalancers"}, "placementConstraints" => %{"shape" => "PlacementConstraints"}, "placementStrategy" => %{"shape" => "PlacementStrategies"}, "role" => %{"shape" => "String"}, "serviceName" => %{"shape" => "String"}, "taskDefinition" => %{"shape" => "String"}}, "required" => ["serviceName", "taskDefinition", "desiredCount"], "type" => "structure"}, "DeregisterContainerInstanceRequest" => %{"members" => %{"cluster" => %{"shape" => "String"}, "containerInstance" => %{"shape" => "String"}, "force" => %{"shape" => "BoxedBoolean"}}, "required" => ["containerInstance"], "type" => "structure"}, "ClusterContainsContainerInstancesException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateServiceResponse" => %{"members" => %{"service" => %{"shape" => "Service"}}, "type" => "structure"}, "SubmitContainerStateChangeResponse" => %{"members" => %{"acknowledgment" => %{"shape" => "String"}}, "type" => "structure"}}
  end
end