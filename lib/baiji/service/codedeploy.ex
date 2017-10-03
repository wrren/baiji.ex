defmodule Baiji.CodeDeploy do
  @moduledoc """
  AWS CodeDeploy

  AWS CodeDeploy is a deployment service that automates application
  deployments to Amazon EC2 instances or on-premises instances running in
  your own facility.

  You can deploy a nearly unlimited variety of application content, such as
  code, web and configuration files, executables, packages, scripts,
  multimedia files, and so on. AWS CodeDeploy can deploy application content
  stored in Amazon S3 buckets, GitHub repositories, or Bitbucket
  repositories. You do not need to make changes to your existing code before
  you can use AWS CodeDeploy.

  AWS CodeDeploy makes it easier for you to rapidly release new features,
  helps you avoid downtime during application deployment, and handles the
  complexity of updating your applications, without many of the risks
  associated with error-prone manual deployments.

  **AWS CodeDeploy Components**

  Use the information in this guide to help you work with the following AWS
  CodeDeploy components:

  <ul> <li> **Application**: A name that uniquely identifies the application
  you want to deploy. AWS CodeDeploy uses this name, which functions as a
  container, to ensure the correct combination of revision, deployment
  configuration, and deployment group are referenced during a deployment.

  </li> <li> **Deployment group**: A set of individual instances. A
  deployment group contains individually tagged instances, Amazon EC2
  instances in Auto Scaling groups, or both.

  </li> <li> **Deployment configuration**: A set of deployment rules and
  deployment success and failure conditions used by AWS CodeDeploy during a
  deployment.

  </li> <li> **Deployment**: The process, and the components involved in the
  process, of installing content on one or more instances.

  </li> <li> **Application revisions**: An archive file containing source
  content—source code, web pages, executable files, and deployment
  scripts—along with an application specification file (AppSpec file).
  Revisions are stored in Amazon S3 buckets or GitHub repositories. For
  Amazon S3, a revision is uniquely identified by its Amazon S3 object key
  and its ETag, version, or both. For GitHub, a revision is uniquely
  identified by its commit ID.

  </li> </ul> This guide also contains information to help you get details
  about the instances in your deployments and to make on-premises instances
  available for AWS CodeDeploy deployments.

  **AWS CodeDeploy Information Resources**

  <ul> <li> [AWS CodeDeploy User
  Guide](http://docs.aws.amazon.com/codedeploy/latest/userguide)

  </li> <li> [AWS CodeDeploy API Reference
  Guide](http://docs.aws.amazon.com/codedeploy/latest/APIReference/)

  </li> <li> [AWS CLI Reference for AWS
  CodeDeploy](http://docs.aws.amazon.com/cli/latest/reference/deploy/index.html)

  </li> <li> [AWS CodeDeploy Developer
  Forum](https://forums.aws.amazon.com/forum.jspa?forumID=179)

  </li> </ul>
  """
  
  @doc """
  In a blue/green deployment, overrides any specified wait time and starts
  terminating instances immediately after the traffic routing is completed.
  """
  def skip_wait_time_for_instance_termination(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SkipWaitTimeForInstanceTermination",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "SkipWaitTimeForInstanceTerminationInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about a deployment group.
  """
  def get_deployment_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDeploymentGroup",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "GetDeploymentGroupInput",
      output_shape:     "GetDeploymentGroupOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Changes the name of an application.
  """
  def update_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateApplication",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "UpdateApplicationInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about an application.
  """
  def get_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetApplication",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "GetApplicationInput",
      output_shape:     "GetApplicationOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about an on-premises instance.
  """
  def get_on_premises_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetOnPremisesInstance",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "GetOnPremisesInstanceInput",
      output_shape:     "GetOnPremisesInstanceOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about one or more deployments.
  """
  def batch_get_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetDeployments",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "BatchGetDeploymentsInput",
      output_shape:     "BatchGetDeploymentsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a deployment group.
  """
  def delete_deployment_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDeploymentGroup",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "DeleteDeploymentGroupInput",
      output_shape:     "DeleteDeploymentGroupOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an application.
  """
  def create_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateApplication",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "CreateApplicationInput",
      output_shape:     "CreateApplicationOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the deployment configurations with the applicable IAM user or AWS
  account.
  """
  def list_deployment_configs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDeploymentConfigs",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ListDeploymentConfigsInput",
      output_shape:     "ListDeploymentConfigsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Attempts to stop an ongoing deployment.
  """
  def stop_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopDeployment",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "StopDeploymentInput",
      output_shape:     "StopDeploymentOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about one or more instance that are part of a deployment
  group.
  """
  def batch_get_deployment_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetDeploymentInstances",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "BatchGetDeploymentInstancesInput",
      output_shape:     "BatchGetDeploymentInstancesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the applications registered with the applicable IAM user or AWS
  account.
  """
  def list_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListApplications",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ListApplicationsInput",
      output_shape:     "ListApplicationsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds tags to on-premises instances.
  """
  def add_tags_to_on_premises_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTagsToOnPremisesInstances",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "AddTagsToOnPremisesInstancesInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deploys an application revision through the specified deployment group.
  """
  def create_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDeployment",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "CreateDeploymentInput",
      output_shape:     "CreateDeploymentOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets a list of names for one or more on-premises instances.

  Unless otherwise specified, both registered and deregistered on-premises
  instance names will be listed. To list only registered or deregistered
  on-premises instance names, use the registration status parameter.
  """
  def list_on_premises_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListOnPremisesInstances",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ListOnPremisesInstancesInput",
      output_shape:     "ListOnPremisesInstancesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the names of stored connections to GitHub accounts.
  """
  def list_git_hub_account_token_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListGitHubAccountTokenNames",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ListGitHubAccountTokenNamesInput",
      output_shape:     "ListGitHubAccountTokenNamesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about one or more application revisions.
  """
  def batch_get_application_revisions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetApplicationRevisions",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "BatchGetApplicationRevisionsInput",
      output_shape:     "BatchGetApplicationRevisionsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes one or more tags from one or more on-premises instances.
  """
  def remove_tags_from_on_premises_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromOnPremisesInstances",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "RemoveTagsFromOnPremisesInstancesInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a deployment configuration.
  """
  def create_deployment_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDeploymentConfig",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "CreateDeploymentConfigInput",
      output_shape:     "CreateDeploymentConfigOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about one or more on-premises instances.
  """
  def batch_get_on_premises_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetOnPremisesInstances",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "BatchGetOnPremisesInstancesInput",
      output_shape:     "BatchGetOnPremisesInstancesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Registers with AWS CodeDeploy a revision for the specified application.
  """
  def register_application_revision(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterApplicationRevision",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "RegisterApplicationRevisionInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about one or more deployment groups.
  """
  def batch_get_deployment_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetDeploymentGroups",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "BatchGetDeploymentGroupsInput",
      output_shape:     "BatchGetDeploymentGroupsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists information about revisions for an application.
  """
  def list_application_revisions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListApplicationRevisions",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ListApplicationRevisionsInput",
      output_shape:     "ListApplicationRevisionsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about one or more applications.
  """
  def batch_get_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetApplications",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "BatchGetApplicationsInput",
      output_shape:     "BatchGetApplicationsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the instance for a deployment associated with the applicable IAM user
  or AWS account.
  """
  def list_deployment_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDeploymentInstances",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ListDeploymentInstancesInput",
      output_shape:     "ListDeploymentInstancesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the deployment groups for an application registered with the
  applicable IAM user or AWS account.
  """
  def list_deployment_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDeploymentGroups",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ListDeploymentGroupsInput",
      output_shape:     "ListDeploymentGroupsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about an application revision.
  """
  def get_application_revision(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetApplicationRevision",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "GetApplicationRevisionInput",
      output_shape:     "GetApplicationRevisionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about a deployment configuration.
  """
  def get_deployment_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDeploymentConfig",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "GetDeploymentConfigInput",
      output_shape:     "GetDeploymentConfigOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about an instance as part of a deployment.
  """
  def get_deployment_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDeploymentInstance",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "GetDeploymentInstanceInput",
      output_shape:     "GetDeploymentInstanceOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  For a blue/green deployment, starts the process of rerouting traffic from
  instances in the original environment to instances in the replacement
  environment without waiting for a specified wait time to elapse. (Traffic
  rerouting, which is achieved by registering instances in the replacement
  environment with the load balancer, can start as soon as all instances have
  a status of Ready.)
  """
  def continue_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ContinueDeployment",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ContinueDeploymentInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Changes information about a deployment group.
  """
  def update_deployment_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDeploymentGroup",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "UpdateDeploymentGroupInput",
      output_shape:     "UpdateDeploymentGroupOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about a deployment.
  """
  def get_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDeployment",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "GetDeploymentInput",
      output_shape:     "GetDeploymentOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Registers an on-premises instance.

  <note> Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported
  in the request. You cannot use both.

  </note>
  """
  def register_on_premises_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterOnPremisesInstance",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "RegisterOnPremisesInstanceInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a deployment configuration.

  <note> A deployment configuration cannot be deleted if it is currently in
  use. Predefined configurations cannot be deleted.

  </note>
  """
  def delete_deployment_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDeploymentConfig",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "DeleteDeploymentConfigInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the deployments in a deployment group for an application registered
  with the applicable IAM user or AWS account.
  """
  def list_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDeployments",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "ListDeploymentsInput",
      output_shape:     "ListDeploymentsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a deployment group to which application revisions will be deployed.
  """
  def create_deployment_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDeploymentGroup",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "CreateDeploymentGroupInput",
      output_shape:     "CreateDeploymentGroupOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deregisters an on-premises instance.
  """
  def deregister_on_premises_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterOnPremisesInstance",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "DeregisterOnPremisesInstanceInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes an application.
  """
  def delete_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codedeploy",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteApplication",
      
      target_prefix:    "CodeDeploy_20141006",
      
      endpoint_prefix:  "codedeploy",
      type:             :json,
      version:          "2014-10-06",
      method:           :post,
      input_shape:      "DeleteApplicationInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"InvalidDeployedStateFilterException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "MinimumHealthyHostsType" => %{"enum" => ["HOST_COUNT", "FLEET_PERCENT"], "type" => "string"}, "TagSetListLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListApplicationsOutput" => %{"members" => %{"applications" => %{"shape" => "ApplicationsList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "LoadBalancerInfo" => %{"members" => %{"elbInfoList" => %{"shape" => "ELBInfoList"}, "targetGroupInfoList" => %{"shape" => "TargetGroupInfoList"}}, "type" => "structure"}, "ListGitHubAccountTokenNamesInput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ELBInfo" => %{"members" => %{"name" => %{"shape" => "ELBName"}}, "type" => "structure"}, "ListDeploymentInstancesInput" => %{"members" => %{"deploymentId" => %{"shape" => "DeploymentId"}, "instanceStatusFilter" => %{"shape" => "InstanceStatusList"}, "instanceTypeFilter" => %{"shape" => "InstanceTypeList"}, "nextToken" => %{"shape" => "NextToken"}}, "required" => ["deploymentId"], "type" => "structure"}, "TriggerTargetsLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentGroupId" => %{"type" => "string"}, "ErrorInformation" => %{"members" => %{"code" => %{"shape" => "ErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StopDeploymentInput" => %{"members" => %{"autoRollbackEnabled" => %{"shape" => "NullableBoolean"}, "deploymentId" => %{"shape" => "DeploymentId"}}, "required" => ["deploymentId"], "type" => "structure"}, "InvalidLoadBalancerInfoException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListOnPremisesInstancesOutput" => %{"members" => %{"instanceNames" => %{"shape" => "InstanceNameList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "Diagnostics" => %{"members" => %{"errorCode" => %{"shape" => "LifecycleErrorCode"}, "logTail" => %{"shape" => "LogTail"}, "message" => %{"shape" => "LifecycleMessage"}, "scriptName" => %{"shape" => "ScriptName"}}, "type" => "structure"}, "IamSessionArnAlreadyRegisteredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentsInfoList" => %{"member" => %{"shape" => "DeploymentInfo"}, "type" => "list"}, "LogTail" => %{"type" => "string"}, "DeploymentStyle" => %{"members" => %{"deploymentOption" => %{"shape" => "DeploymentOption"}, "deploymentType" => %{"shape" => "DeploymentType"}}, "type" => "structure"}, "DeploymentGroupsList" => %{"member" => %{"shape" => "DeploymentGroupName"}, "type" => "list"}, "AutoRollbackEvent" => %{"enum" => ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"], "type" => "string"}, "InstanceLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TagFilterList" => %{"member" => %{"shape" => "TagFilter"}, "type" => "list"}, "RoleRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RegisterOnPremisesInstanceInput" => %{"members" => %{"iamSessionArn" => %{"shape" => "IamSessionArn"}, "iamUserArn" => %{"shape" => "IamUserArn"}, "instanceName" => %{"shape" => "InstanceName"}}, "required" => ["instanceName"], "type" => "structure"}, "BatchGetDeploymentInstancesInput" => %{"members" => %{"deploymentId" => %{"shape" => "DeploymentId"}, "instanceIds" => %{"shape" => "InstancesList"}}, "required" => ["deploymentId", "instanceIds"], "type" => "structure"}, "AdditionalDeploymentStatusInfo" => %{"type" => "string"}, "DeploymentReadyOption" => %{"members" => %{"actionOnTimeout" => %{"shape" => "DeploymentReadyAction"}, "waitTimeInMinutes" => %{"shape" => "Duration"}}, "type" => "structure"}, "DeploymentGroupNameRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidKeyPrefixFilterException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "ListStateFilterAction" => %{"enum" => ["include", "exclude", "ignore"], "type" => "string"}, "TargetGroupInfo" => %{"members" => %{"name" => %{"shape" => "TargetGroupName"}}, "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "LifecycleEventStatus" => %{"enum" => ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"], "type" => "string"}, "InvalidRevisionException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TriggerEventTypeList" => %{"member" => %{"shape" => "TriggerEventType"}, "type" => "list"}, "InvalidTargetInstancesException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Role" => %{"type" => "string"}, "InstanceNameList" => %{"member" => %{"shape" => "InstanceName"}, "type" => "list"}, "InstanceStatus" => %{"enum" => ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"], "type" => "string"}, "S3Location" => %{"members" => %{"bucket" => %{"shape" => "S3Bucket"}, "bundleType" => %{"shape" => "BundleType"}, "eTag" => %{"shape" => "ETag"}, "key" => %{"shape" => "S3Key"}, "version" => %{"shape" => "VersionId"}}, "type" => "structure"}, "InstanceIdRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentConfigAlreadyExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentId" => %{"type" => "string"}, "InstanceSummaryList" => %{"member" => %{"shape" => "InstanceSummary"}, "type" => "list"}, "DeploymentGroupInfo" => %{"members" => %{"alarmConfiguration" => %{"shape" => "AlarmConfiguration"}, "applicationName" => %{"shape" => "ApplicationName"}, "autoRollbackConfiguration" => %{"shape" => "AutoRollbackConfiguration"}, "autoScalingGroups" => %{"shape" => "AutoScalingGroupList"}, "blueGreenDeploymentConfiguration" => %{"shape" => "BlueGreenDeploymentConfiguration"}, "deploymentConfigName" => %{"shape" => "DeploymentConfigName"}, "deploymentGroupId" => %{"shape" => "DeploymentGroupId"}, "deploymentGroupName" => %{"shape" => "DeploymentGroupName"}, "deploymentStyle" => %{"shape" => "DeploymentStyle"}, "ec2TagFilters" => %{"shape" => "EC2TagFilterList"}, "ec2TagSet" => %{"shape" => "EC2TagSet"}, "lastAttemptedDeployment" => %{"shape" => "LastDeploymentInfo"}, "lastSuccessfulDeployment" => %{"shape" => "LastDeploymentInfo"}, "loadBalancerInfo" => %{"shape" => "LoadBalancerInfo"}, "onPremisesInstanceTagFilters" => %{"shape" => "TagFilterList"}, "onPremisesTagSet" => %{"shape" => "OnPremisesTagSet"}, "serviceRoleArn" => %{"shape" => "Role"}, "targetRevision" => %{"shape" => "RevisionLocation"}, "triggerConfigurations" => %{"shape" => "TriggerConfigList"}}, "type" => "structure"}, "ListDeploymentGroupsInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "nextToken" => %{"shape" => "NextToken"}}, "required" => ["applicationName"], "type" => "structure"}, "InvalidSortByException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListDeploymentGroupsOutput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "deploymentGroups" => %{"shape" => "DeploymentGroupsList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "TimeRange" => %{"members" => %{"end" => %{"shape" => "Timestamp"}, "start" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "CreateDeploymentConfigInput" => %{"members" => %{"deploymentConfigName" => %{"shape" => "DeploymentConfigName"}, "minimumHealthyHosts" => %{"shape" => "MinimumHealthyHosts"}}, "required" => ["deploymentConfigName", "minimumHealthyHosts"], "type" => "structure"}, "BatchGetDeploymentsInput" => %{"members" => %{"deploymentIds" => %{"shape" => "DeploymentsList"}}, "type" => "structure"}, "ListApplicationRevisionsOutput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "revisions" => %{"shape" => "RevisionLocationList"}}, "type" => "structure"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GitHubLocation" => %{"members" => %{"commitId" => %{"shape" => "CommitId"}, "repository" => %{"shape" => "Repository"}}, "type" => "structure"}, "ListDeploymentConfigsOutput" => %{"members" => %{"deploymentConfigsList" => %{"shape" => "DeploymentConfigsList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "GetDeploymentGroupInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "deploymentGroupName" => %{"shape" => "DeploymentGroupName"}}, "required" => ["applicationName", "deploymentGroupName"], "type" => "structure"}, "InstanceNameAlreadyRegisteredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TagRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "SortOrder" => %{"enum" => ["ascending", "descending"], "type" => "string"}, "ELBName" => %{"type" => "string"}, "DeploymentConfigId" => %{"type" => "string"}, "TagFilterType" => %{"enum" => ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"], "type" => "string"}, "LifecycleEvent" => %{"members" => %{"diagnostics" => %{"shape" => "Diagnostics"}, "endTime" => %{"shape" => "Timestamp"}, "lifecycleEventName" => %{"shape" => "LifecycleEventName"}, "startTime" => %{"shape" => "Timestamp"}, "status" => %{"shape" => "LifecycleEventStatus"}}, "type" => "structure"}, "BatchGetDeploymentsOutput" => %{"members" => %{"deploymentsInfo" => %{"shape" => "DeploymentsInfoList"}}, "type" => "structure"}, "ApplicationsInfoList" => %{"member" => %{"shape" => "ApplicationInfo"}, "type" => "list"}, "GetDeploymentInput" => %{"members" => %{"deploymentId" => %{"shape" => "DeploymentId"}}, "required" => ["deploymentId"], "type" => "structure"}, "AlarmConfiguration" => %{"members" => %{"alarms" => %{"shape" => "AlarmList"}, "enabled" => %{"shape" => "Boolean"}, "ignorePollAlarmFailure" => %{"shape" => "Boolean"}}, "type" => "structure"}, "IamSessionArn" => %{"type" => "string"}, "BatchGetDeploymentInstancesOutput" => %{"members" => %{"errorMessage" => %{"shape" => "ErrorMessage"}, "instancesSummary" => %{"shape" => "InstanceSummaryList"}}, "type" => "structure"}, "InstanceSummary" => %{"members" => %{"deploymentId" => %{"shape" => "DeploymentId"}, "instanceId" => %{"shape" => "InstanceId"}, "instanceType" => %{"shape" => "InstanceType"}, "lastUpdatedAt" => %{"shape" => "Timestamp"}, "lifecycleEvents" => %{"shape" => "LifecycleEventList"}, "status" => %{"shape" => "InstanceStatus"}}, "type" => "structure"}, "InstanceInfoList" => %{"member" => %{"shape" => "InstanceInfo"}, "type" => "list"}, "AutoRollbackEventsList" => %{"member" => %{"shape" => "AutoRollbackEvent"}, "type" => "list"}, "CreateDeploymentGroupInput" => %{"members" => %{"alarmConfiguration" => %{"shape" => "AlarmConfiguration"}, "applicationName" => %{"shape" => "ApplicationName"}, "autoRollbackConfiguration" => %{"shape" => "AutoRollbackConfiguration"}, "autoScalingGroups" => %{"shape" => "AutoScalingGroupNameList"}, "blueGreenDeploymentConfiguration" => %{"shape" => "BlueGreenDeploymentConfiguration"}, "deploymentConfigName" => %{"shape" => "DeploymentConfigName"}, "deploymentGroupName" => %{"shape" => "DeploymentGroupName"}, "deploymentStyle" => %{"shape" => "DeploymentStyle"}, "ec2TagFilters" => %{"shape" => "EC2TagFilterList"}, "ec2TagSet" => %{"shape" => "EC2TagSet"}, "loadBalancerInfo" => %{"shape" => "LoadBalancerInfo"}, "onPremisesInstanceTagFilters" => %{"shape" => "TagFilterList"}, "onPremisesTagSet" => %{"shape" => "OnPremisesTagSet"}, "serviceRoleArn" => %{"shape" => "Role"}, "triggerConfigurations" => %{"shape" => "TriggerConfigList"}}, "required" => ["applicationName", "deploymentGroupName", "serviceRoleArn"], "type" => "structure"}, "Key" => %{"type" => "string"}, "RevisionLocationList" => %{"member" => %{"shape" => "RevisionLocation"}, "type" => "list"}, "TagLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InstanceId" => %{"type" => "string"}, "DeploymentOverview" => %{"members" => %{"Failed" => %{"shape" => "InstanceCount"}, "InProgress" => %{"shape" => "InstanceCount"}, "Pending" => %{"shape" => "InstanceCount"}, "Ready" => %{"shape" => "InstanceCount"}, "Skipped" => %{"shape" => "InstanceCount"}, "Succeeded" => %{"shape" => "InstanceCount"}}, "type" => "structure"}, "DeleteApplicationInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}}, "required" => ["applicationName"], "type" => "structure"}, "BatchGetApplicationRevisionsInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "revisions" => %{"shape" => "RevisionLocationList"}}, "required" => ["applicationName", "revisions"], "type" => "structure"}, "GetDeploymentConfigOutput" => %{"members" => %{"deploymentConfigInfo" => %{"shape" => "DeploymentConfigInfo"}}, "type" => "structure"}, "AlarmsLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RegisterApplicationRevisionInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "description" => %{"shape" => "Description"}, "revision" => %{"shape" => "RevisionLocation"}}, "required" => ["applicationName", "revision"], "type" => "structure"}, "RegistrationStatus" => %{"enum" => ["Registered", "Deregistered"], "type" => "string"}, "IamUserArn" => %{"type" => "string"}, "S3Bucket" => %{"type" => "string"}, "GetDeploymentConfigInput" => %{"members" => %{"deploymentConfigName" => %{"shape" => "DeploymentConfigName"}}, "required" => ["deploymentConfigName"], "type" => "structure"}, "DeploymentConfigsList" => %{"member" => %{"shape" => "DeploymentConfigName"}, "type" => "list"}, "ListDeploymentConfigsInput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DeploymentConfigDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InstanceDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Duration" => %{"type" => "integer"}, "Description" => %{"type" => "string"}, "TargetGroupName" => %{"type" => "string"}, "InvalidDeploymentStyleException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InstanceNotRegisteredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ErrorCode" => %{"enum" => ["DEPLOYMENT_GROUP_MISSING", "APPLICATION_MISSING", "REVISION_MISSING", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "NO_EC2_SUBSCRIPTION", "OVER_MAX_INSTANCES", "NO_INSTANCES", "TIMEOUT", "HEALTH_CONSTRAINTS_INVALID", "HEALTH_CONSTRAINTS", "INTERNAL_ERROR", "THROTTLED", "ALARM_ACTIVE", "AGENT_ISSUE", "AUTO_SCALING_IAM_ROLE_PERMISSIONS", "AUTO_SCALING_CONFIGURATION", "MANUAL_STOP"], "type" => "string"}, "CreateDeploymentOutput" => %{"members" => %{"deploymentId" => %{"shape" => "DeploymentId"}}, "type" => "structure"}, "DeploymentGroupLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CreateDeploymentInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "autoRollbackConfiguration" => %{"shape" => "AutoRollbackConfiguration"}, "deploymentConfigName" => %{"shape" => "DeploymentConfigName"}, "deploymentGroupName" => %{"shape" => "DeploymentGroupName"}, "description" => %{"shape" => "Description"}, "fileExistsBehavior" => %{"shape" => "FileExistsBehavior"}, "ignoreApplicationStopFailures" => %{"shape" => "Boolean"}, "revision" => %{"shape" => "RevisionLocation"}, "targetInstances" => %{"shape" => "TargetInstances"}, "updateOutdatedInstancesOnly" => %{"shape" => "Boolean"}}, "required" => ["applicationName"], "type" => "structure"}, "AutoScalingGroupName" => %{"type" => "string"}, "DeploymentStatus" => %{"enum" => ["Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped", "Ready"], "type" => "string"}, "BatchGetOnPremisesInstancesInput" => %{"members" => %{"instanceNames" => %{"shape" => "InstanceNameList"}}, "type" => "structure"}, "Message" => %{"type" => "string"}, "EC2TagSet" => %{"members" => %{"ec2TagSetList" => %{"shape" => "EC2TagSetList"}}, "type" => "structure"}, "GetApplicationRevisionInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "revision" => %{"shape" => "RevisionLocation"}}, "required" => ["applicationName", "revision"], "type" => "structure"}, "RevisionLocation" => %{"members" => %{"gitHubLocation" => %{"shape" => "GitHubLocation"}, "revisionType" => %{"shape" => "RevisionLocationType"}, "s3Location" => %{"shape" => "S3Location"}}, "type" => "structure"}, "TriggerTargetArn" => %{"type" => "string"}, "ApplicationsList" => %{"member" => %{"shape" => "ApplicationName"}, "type" => "list"}, "DescriptionTooLongException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidEC2TagException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InstanceStatusList" => %{"member" => %{"shape" => "InstanceStatus"}, "type" => "list"}, "InvalidAutoRollbackConfigException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "EC2TagFilter" => %{"members" => %{"Key" => %{"shape" => "Key"}, "Type" => %{"shape" => "EC2TagFilterType"}, "Value" => %{"shape" => "Value"}}, "type" => "structure"}, "ListDeploymentsOutput" => %{"members" => %{"deployments" => %{"shape" => "DeploymentsList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "BundleType" => %{"enum" => ["tar", "tgz", "zip"], "type" => "string"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "Key"}, "Value" => %{"shape" => "Value"}}, "type" => "structure"}, "StopStatus" => %{"enum" => ["Pending", "Succeeded"], "type" => "string"}, "GetApplicationRevisionOutput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "revision" => %{"shape" => "RevisionLocation"}, "revisionInfo" => %{"shape" => "GenericRevisionInfo"}}, "type" => "structure"}, "EC2TagFilterType" => %{"enum" => ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"], "type" => "string"}, "InstancesList" => %{"member" => %{"shape" => "InstanceId"}, "type" => "list"}, "UpdateApplicationInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "newApplicationName" => %{"shape" => "ApplicationName"}}, "type" => "structure"}, "GreenFleetProvisioningOption" => %{"members" => %{"action" => %{"shape" => "GreenFleetProvisioningAction"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "AutoScalingGroupList" => %{"member" => %{"shape" => "AutoScalingGroup"}, "type" => "list"}, "RevisionInfo" => %{"members" => %{"genericRevisionInfo" => %{"shape" => "GenericRevisionInfo"}, "revisionLocation" => %{"shape" => "RevisionLocation"}}, "type" => "structure"}, "DeleteDeploymentConfigInput" => %{"members" => %{"deploymentConfigName" => %{"shape" => "DeploymentConfigName"}}, "required" => ["deploymentConfigName"], "type" => "structure"}, "InvalidTagException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InstanceNameRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidTagFilterException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidIamSessionArnException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ELBInfoList" => %{"member" => %{"shape" => "ELBInfo"}, "type" => "list"}, "LifecycleHookLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RevisionLocationType" => %{"enum" => ["S3", "GitHub"], "type" => "string"}, "InvalidDeploymentGroupNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidOnPremisesTagCombinationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LifecycleMessage" => %{"type" => "string"}, "CreateApplicationInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}}, "required" => ["applicationName"], "type" => "structure"}, "TagFilter" => %{"members" => %{"Key" => %{"shape" => "Key"}, "Type" => %{"shape" => "TagFilterType"}, "Value" => %{"shape" => "Value"}}, "type" => "structure"}, "CreateApplicationOutput" => %{"members" => %{"applicationId" => %{"shape" => "ApplicationId"}}, "type" => "structure"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "InvalidAlarmConfigException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidBucketNameFilterException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentConfigInfo" => %{"members" => %{"createTime" => %{"shape" => "Timestamp"}, "deploymentConfigId" => %{"shape" => "DeploymentConfigId"}, "deploymentConfigName" => %{"shape" => "DeploymentConfigName"}, "minimumHealthyHosts" => %{"shape" => "MinimumHealthyHosts"}}, "type" => "structure"}, "InvalidEC2TagCombinationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateDeploymentGroupOutput" => %{"members" => %{"hooksNotCleanedUp" => %{"shape" => "AutoScalingGroupList"}}, "type" => "structure"}, "GetDeploymentOutput" => %{"members" => %{"deploymentInfo" => %{"shape" => "DeploymentInfo"}}, "type" => "structure"}, "TriggerName" => %{"type" => "string"}, "AddTagsToOnPremisesInstancesInput" => %{"members" => %{"instanceNames" => %{"shape" => "InstanceNameList"}, "tags" => %{"shape" => "TagList"}}, "required" => ["tags", "instanceNames"], "type" => "structure"}, "DeploymentConfigNameRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidTriggerConfigException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ApplicationAlreadyExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentGroupInfoList" => %{"member" => %{"shape" => "DeploymentGroupInfo"}, "type" => "list"}, "IamUserArnAlreadyRegisteredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentGroupDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidSortOrderException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListDeploymentsInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "createTimeRange" => %{"shape" => "TimeRange"}, "deploymentGroupName" => %{"shape" => "DeploymentGroupName"}, "includeOnlyStatuses" => %{"shape" => "DeploymentStatusList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DeploymentStatusList" => %{"member" => %{"shape" => "DeploymentStatus"}, "type" => "list"}, "InvalidMinimumHealthyHostValueException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "NullableBoolean" => %{"type" => "boolean"}, "DeploymentConfigInUseException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TriggerEventType" => %{"enum" => ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"], "type" => "string"}, "InvalidDeploymentConfigNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TargetInstances" => %{"members" => %{"autoScalingGroups" => %{"shape" => "AutoScalingGroupNameList"}, "ec2TagSet" => %{"shape" => "EC2TagSet"}, "tagFilters" => %{"shape" => "EC2TagFilterList"}}, "type" => "structure"}, "StopDeploymentOutput" => %{"members" => %{"status" => %{"shape" => "StopStatus"}, "statusMessage" => %{"shape" => "Message"}}, "type" => "structure"}, "GetOnPremisesInstanceOutput" => %{"members" => %{"instanceInfo" => %{"shape" => "InstanceInfo"}}, "type" => "structure"}, "InvalidFileExistsBehaviorException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CreateDeploymentGroupOutput" => %{"members" => %{"deploymentGroupId" => %{"shape" => "DeploymentGroupId"}}, "type" => "structure"}, "InvalidInstanceTypeException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InstanceCount" => %{"type" => "long"}, "RemoveTagsFromOnPremisesInstancesInput" => %{"members" => %{"instanceNames" => %{"shape" => "InstanceNameList"}, "tags" => %{"shape" => "TagList"}}, "required" => ["tags", "instanceNames"], "type" => "structure"}, "GetDeploymentInstanceInput" => %{"members" => %{"deploymentId" => %{"shape" => "DeploymentId"}, "instanceId" => %{"shape" => "InstanceId"}}, "required" => ["deploymentId", "instanceId"], "type" => "structure"}, "GetDeploymentInstanceOutput" => %{"members" => %{"instanceSummary" => %{"shape" => "InstanceSummary"}}, "type" => "structure"}, "DeploymentsList" => %{"member" => %{"shape" => "DeploymentId"}, "type" => "list"}, "AutoScalingGroupNameList" => %{"member" => %{"shape" => "AutoScalingGroupName"}, "type" => "list"}, "VersionId" => %{"type" => "string"}, "Repository" => %{"type" => "string"}, "AutoScalingGroupHook" => %{"type" => "string"}, "ListApplicationsInput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "IamArnRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LifecycleErrorCode" => %{"enum" => ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"], "type" => "string"}, "LastDeploymentInfo" => %{"members" => %{"createTime" => %{"shape" => "Timestamp"}, "deploymentId" => %{"shape" => "DeploymentId"}, "endTime" => %{"shape" => "Timestamp"}, "status" => %{"shape" => "DeploymentStatus"}}, "type" => "structure"}, "BlueInstanceTerminationOption" => %{"members" => %{"action" => %{"shape" => "InstanceAction"}, "terminationWaitTimeInMinutes" => %{"shape" => "Duration"}}, "type" => "structure"}, "Value" => %{"type" => "string"}, "RevisionDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ApplicationNameRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InstanceAction" => %{"enum" => ["TERMINATE", "KEEP_ALIVE"], "type" => "string"}, "DeploymentCreator" => %{"enum" => ["user", "autoscaling", "codeDeployRollback"], "type" => "string"}, "DeploymentType" => %{"enum" => ["IN_PLACE", "BLUE_GREEN"], "type" => "string"}, "GetDeploymentGroupOutput" => %{"members" => %{"deploymentGroupInfo" => %{"shape" => "DeploymentGroupInfo"}}, "type" => "structure"}, "IamUserArnRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidDeploymentIdException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidAutoScalingGroupException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ApplicationInfo" => %{"members" => %{"applicationId" => %{"shape" => "ApplicationId"}, "applicationName" => %{"shape" => "ApplicationName"}, "createTime" => %{"shape" => "Timestamp"}, "gitHubAccountName" => %{"shape" => "GitHubAccountTokenName"}, "linkedToGitHub" => %{"shape" => "Boolean"}}, "type" => "structure"}, "EC2TagSetList" => %{"member" => %{"shape" => "EC2TagFilterList"}, "type" => "list"}, "DeregisterOnPremisesInstanceInput" => %{"members" => %{"instanceName" => %{"shape" => "InstanceName"}}, "required" => ["instanceName"], "type" => "structure"}, "InvalidInstanceStatusException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidIamUserArnException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidTimeRangeException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentConfigName" => %{"max" => 100, "min" => 1, "type" => "string"}, "ListDeploymentInstancesOutput" => %{"members" => %{"instancesList" => %{"shape" => "InstancesList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "GitHubAccountTokenName" => %{"type" => "string"}, "DeleteDeploymentGroupOutput" => %{"members" => %{"hooksNotCleanedUp" => %{"shape" => "AutoScalingGroupList"}}, "type" => "structure"}, "InvalidInstanceNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentOption" => %{"enum" => ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"], "type" => "string"}, "InstanceName" => %{"type" => "string"}, "BatchGetOnPremisesInstancesOutput" => %{"members" => %{"instanceInfos" => %{"shape" => "InstanceInfoList"}}, "type" => "structure"}, "RollbackInfo" => %{"members" => %{"rollbackDeploymentId" => %{"shape" => "DeploymentId"}, "rollbackMessage" => %{"shape" => "Description"}, "rollbackTriggeringDeploymentId" => %{"shape" => "DeploymentId"}}, "type" => "structure"}, "InstanceInfo" => %{"members" => %{"deregisterTime" => %{"shape" => "Timestamp"}, "iamSessionArn" => %{"shape" => "IamSessionArn"}, "iamUserArn" => %{"shape" => "IamUserArn"}, "instanceArn" => %{"shape" => "InstanceArn"}, "instanceName" => %{"shape" => "InstanceName"}, "registerTime" => %{"shape" => "Timestamp"}, "tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "DeploymentConfigLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BlueGreenDeploymentConfiguration" => %{"members" => %{"deploymentReadyOption" => %{"shape" => "DeploymentReadyOption"}, "greenFleetProvisioningOption" => %{"shape" => "GreenFleetProvisioningOption"}, "terminateBlueInstancesOnDeploymentSuccess" => %{"shape" => "BlueInstanceTerminationOption"}}, "type" => "structure"}, "InvalidDeploymentInstanceTypeException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BatchGetDeploymentGroupsInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "deploymentGroupNames" => %{"shape" => "DeploymentGroupsList"}}, "required" => ["applicationName", "deploymentGroupNames"], "type" => "structure"}, "MinimumHealthyHostsValue" => %{"type" => "integer"}, "FileExistsBehavior" => %{"enum" => ["DISALLOW", "OVERWRITE", "RETAIN"], "type" => "string"}, "SkipWaitTimeForInstanceTerminationInput" => %{"members" => %{"deploymentId" => %{"shape" => "DeploymentId"}}, "type" => "structure"}, "BatchLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "MultipleIamArnsProvidedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentGroupAlreadyExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentIdRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidApplicationNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteDeploymentGroupInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "deploymentGroupName" => %{"shape" => "DeploymentGroupName"}}, "required" => ["applicationName", "deploymentGroupName"], "type" => "structure"}, "InstanceArn" => %{"type" => "string"}, "LifecycleEventList" => %{"member" => %{"shape" => "LifecycleEvent"}, "type" => "list"}, "GitHubAccountTokenNameList" => %{"member" => %{"shape" => "GitHubAccountTokenName"}, "type" => "list"}, "EC2TagFilterList" => %{"member" => %{"shape" => "EC2TagFilter"}, "type" => "list"}, "DeploymentIsNotInReadyStateException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GreenFleetProvisioningAction" => %{"enum" => ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"], "type" => "string"}, "OnPremisesTagSetList" => %{"member" => %{"shape" => "TagFilterList"}, "type" => "list"}, "ApplicationName" => %{"max" => 100, "min" => 1, "type" => "string"}, "InvalidRoleException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidOperationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ApplicationDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeploymentGroupName" => %{"max" => 100, "min" => 1, "type" => "string"}, "GetApplicationOutput" => %{"members" => %{"application" => %{"shape" => "ApplicationInfo"}}, "type" => "structure"}, "InvalidBlueGreenDeploymentConfigurationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CommitId" => %{"type" => "string"}, "ContinueDeploymentInput" => %{"members" => %{"deploymentId" => %{"shape" => "DeploymentId"}}, "type" => "structure"}, "GenericRevisionInfo" => %{"members" => %{"deploymentGroups" => %{"shape" => "DeploymentGroupsList"}, "description" => %{"shape" => "Description"}, "firstUsedTime" => %{"shape" => "Timestamp"}, "lastUsedTime" => %{"shape" => "Timestamp"}, "registerTime" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "BatchGetApplicationRevisionsOutput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "errorMessage" => %{"shape" => "ErrorMessage"}, "revisions" => %{"shape" => "RevisionInfoList"}}, "type" => "structure"}, "DeploymentAlreadyCompletedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AlarmList" => %{"member" => %{"shape" => "Alarm"}, "type" => "list"}, "AlarmName" => %{"type" => "string"}, "ListGitHubAccountTokenNamesOutput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "tokenNameList" => %{"shape" => "GitHubAccountTokenNameList"}}, "type" => "structure"}, "DeploymentNotStartedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TargetGroupInfoList" => %{"member" => %{"shape" => "TargetGroupInfo"}, "type" => "list"}, "BatchGetApplicationsOutput" => %{"members" => %{"applicationsInfo" => %{"shape" => "ApplicationsInfoList"}}, "type" => "structure"}, "BatchGetDeploymentGroupsOutput" => %{"members" => %{"deploymentGroupsInfo" => %{"shape" => "DeploymentGroupInfoList"}, "errorMessage" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TriggerConfigList" => %{"member" => %{"shape" => "TriggerConfig"}, "type" => "list"}, "DeploymentLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListOnPremisesInstancesInput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "registrationStatus" => %{"shape" => "RegistrationStatus"}, "tagFilters" => %{"shape" => "TagFilterList"}}, "type" => "structure"}, "ScriptName" => %{"type" => "string"}, "ApplicationId" => %{"type" => "string"}, "TriggerConfig" => %{"members" => %{"triggerEvents" => %{"shape" => "TriggerEventTypeList"}, "triggerName" => %{"shape" => "TriggerName"}, "triggerTargetArn" => %{"shape" => "TriggerTargetArn"}}, "type" => "structure"}, "MinimumHealthyHosts" => %{"members" => %{"type" => %{"shape" => "MinimumHealthyHostsType"}, "value" => %{"shape" => "MinimumHealthyHostsValue"}}, "type" => "structure"}, "BucketNameFilterRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AutoScalingGroup" => %{"members" => %{"hook" => %{"shape" => "AutoScalingGroupHook"}, "name" => %{"shape" => "AutoScalingGroupName"}}, "type" => "structure"}, "ETag" => %{"type" => "string"}, "OnPremisesTagSet" => %{"members" => %{"onPremisesTagSetList" => %{"shape" => "OnPremisesTagSetList"}}, "type" => "structure"}, "DeploymentReadyAction" => %{"enum" => ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"], "type" => "string"}, "ApplicationRevisionSortBy" => %{"enum" => ["registerTime", "firstUsedTime", "lastUsedTime"], "type" => "string"}, "CreateDeploymentConfigOutput" => %{"members" => %{"deploymentConfigId" => %{"shape" => "DeploymentConfigId"}}, "type" => "structure"}, "ListApplicationRevisionsInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}, "deployed" => %{"shape" => "ListStateFilterAction"}, "nextToken" => %{"shape" => "NextToken"}, "s3Bucket" => %{"shape" => "S3Bucket"}, "s3KeyPrefix" => %{"shape" => "S3Key"}, "sortBy" => %{"shape" => "ApplicationRevisionSortBy"}, "sortOrder" => %{"shape" => "SortOrder"}}, "required" => ["applicationName"], "type" => "structure"}, "ApplicationLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateDeploymentGroupInput" => %{"members" => %{"alarmConfiguration" => %{"shape" => "AlarmConfiguration"}, "applicationName" => %{"shape" => "ApplicationName"}, "autoRollbackConfiguration" => %{"shape" => "AutoRollbackConfiguration"}, "autoScalingGroups" => %{"shape" => "AutoScalingGroupNameList"}, "blueGreenDeploymentConfiguration" => %{"shape" => "BlueGreenDeploymentConfiguration"}, "currentDeploymentGroupName" => %{"shape" => "DeploymentGroupName"}, "deploymentConfigName" => %{"shape" => "DeploymentConfigName"}, "deploymentStyle" => %{"shape" => "DeploymentStyle"}, "ec2TagFilters" => %{"shape" => "EC2TagFilterList"}, "ec2TagSet" => %{"shape" => "EC2TagSet"}, "loadBalancerInfo" => %{"shape" => "LoadBalancerInfo"}, "newDeploymentGroupName" => %{"shape" => "DeploymentGroupName"}, "onPremisesInstanceTagFilters" => %{"shape" => "TagFilterList"}, "onPremisesTagSet" => %{"shape" => "OnPremisesTagSet"}, "serviceRoleArn" => %{"shape" => "Role"}, "triggerConfigurations" => %{"shape" => "TriggerConfigList"}}, "required" => ["applicationName", "currentDeploymentGroupName"], "type" => "structure"}, "AutoRollbackConfiguration" => %{"members" => %{"enabled" => %{"shape" => "Boolean"}, "events" => %{"shape" => "AutoRollbackEventsList"}}, "type" => "structure"}, "GetApplicationInput" => %{"members" => %{"applicationName" => %{"shape" => "ApplicationName"}}, "required" => ["applicationName"], "type" => "structure"}, "InstanceTypeList" => %{"member" => %{"shape" => "InstanceType"}, "type" => "list"}, "GetOnPremisesInstanceInput" => %{"members" => %{"instanceName" => %{"shape" => "InstanceName"}}, "required" => ["instanceName"], "type" => "structure"}, "NextToken" => %{"type" => "string"}, "InstanceType" => %{"enum" => ["Blue", "Green"], "type" => "string"}, "S3Key" => %{"type" => "string"}, "RevisionInfoList" => %{"member" => %{"shape" => "RevisionInfo"}, "type" => "list"}, "UnsupportedActionForDeploymentTypeException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidRegistrationStatusException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RevisionRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BatchGetApplicationsInput" => %{"members" => %{"applicationNames" => %{"shape" => "ApplicationsList"}}, "type" => "structure"}, "DeploymentInfo" => %{"members" => %{"additionalDeploymentStatusInfo" => %{"shape" => "AdditionalDeploymentStatusInfo"}, "applicationName" => %{"shape" => "ApplicationName"}, "autoRollbackConfiguration" => %{"shape" => "AutoRollbackConfiguration"}, "blueGreenDeploymentConfiguration" => %{"shape" => "BlueGreenDeploymentConfiguration"}, "completeTime" => %{"shape" => "Timestamp"}, "createTime" => %{"shape" => "Timestamp"}, "creator" => %{"shape" => "DeploymentCreator"}, "deploymentConfigName" => %{"shape" => "DeploymentConfigName"}, "deploymentGroupName" => %{"shape" => "DeploymentGroupName"}, "deploymentId" => %{"shape" => "DeploymentId"}, "deploymentOverview" => %{"shape" => "DeploymentOverview"}, "deploymentStyle" => %{"shape" => "DeploymentStyle"}, "description" => %{"shape" => "Description"}, "errorInformation" => %{"shape" => "ErrorInformation"}, "fileExistsBehavior" => %{"shape" => "FileExistsBehavior"}, "ignoreApplicationStopFailures" => %{"shape" => "Boolean"}, "instanceTerminationWaitTimeStarted" => %{"shape" => "Boolean"}, "loadBalancerInfo" => %{"shape" => "LoadBalancerInfo"}, "previousRevision" => %{"shape" => "RevisionLocation"}, "revision" => %{"shape" => "RevisionLocation"}, "rollbackInfo" => %{"shape" => "RollbackInfo"}, "startTime" => %{"shape" => "Timestamp"}, "status" => %{"shape" => "DeploymentStatus"}, "targetInstances" => %{"shape" => "TargetInstances"}, "updateOutdatedInstancesOnly" => %{"shape" => "Boolean"}}, "type" => "structure"}, "Alarm" => %{"members" => %{"name" => %{"shape" => "AlarmName"}}, "type" => "structure"}, "InvalidDeploymentStatusException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GitHubAccountTokenDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LifecycleEventName" => %{"type" => "string"}, "ResourceValidationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}}
  end
end