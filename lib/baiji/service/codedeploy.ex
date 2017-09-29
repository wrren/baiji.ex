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
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SkipWaitTimeForInstanceTermination",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about a deployment group.
  """
  def get_deployment_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDeploymentGroup",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Changes the name of an application.
  """
  def update_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateApplication",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about an application.
  """
  def get_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetApplication",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about an on-premises instance.
  """
  def get_on_premises_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetOnPremisesInstance",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about one or more deployments.
  """
  def batch_get_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetDeployments",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes a deployment group.
  """
  def delete_deployment_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteDeploymentGroup",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates an application.
  """
  def create_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateApplication",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the deployment configurations with the applicable IAM user or AWS
  account.
  """
  def list_deployment_configs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListDeploymentConfigs",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Attempts to stop an ongoing deployment.
  """
  def stop_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopDeployment",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about one or more instance that are part of a deployment
  group.
  """
  def batch_get_deployment_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetDeploymentInstances",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the applications registered with the applicable IAM user or AWS
  account.
  """
  def list_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListApplications",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Adds tags to on-premises instances.
  """
  def add_tags_to_on_premises_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddTagsToOnPremisesInstances",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deploys an application revision through the specified deployment group.
  """
  def create_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateDeployment",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
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
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListOnPremisesInstances",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the names of stored connections to GitHub accounts.
  """
  def list_git_hub_account_token_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListGitHubAccountTokenNames",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about one or more application revisions.
  """
  def batch_get_application_revisions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetApplicationRevisions",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Removes one or more tags from one or more on-premises instances.
  """
  def remove_tags_from_on_premises_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemoveTagsFromOnPremisesInstances",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a deployment configuration.
  """
  def create_deployment_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateDeploymentConfig",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about one or more on-premises instances.
  """
  def batch_get_on_premises_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetOnPremisesInstances",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Registers with AWS CodeDeploy a revision for the specified application.
  """
  def register_application_revision(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RegisterApplicationRevision",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about one or more deployment groups.
  """
  def batch_get_deployment_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetDeploymentGroups",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists information about revisions for an application.
  """
  def list_application_revisions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListApplicationRevisions",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about one or more applications.
  """
  def batch_get_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetApplications",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the instance for a deployment associated with the applicable IAM user
  or AWS account.
  """
  def list_deployment_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListDeploymentInstances",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the deployment groups for an application registered with the
  applicable IAM user or AWS account.
  """
  def list_deployment_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListDeploymentGroups",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about an application revision.
  """
  def get_application_revision(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetApplicationRevision",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about a deployment configuration.
  """
  def get_deployment_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDeploymentConfig",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about an instance as part of a deployment.
  """
  def get_deployment_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDeploymentInstance",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
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
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ContinueDeployment",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Changes information about a deployment group.
  """
  def update_deployment_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateDeploymentGroup",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about a deployment.
  """
  def get_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDeployment",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
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
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RegisterOnPremisesInstance",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
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
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteDeploymentConfig",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the deployments in a deployment group for an application registered
  with the applicable IAM user or AWS account.
  """
  def list_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListDeployments",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a deployment group to which application revisions will be deployed.
  """
  def create_deployment_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateDeploymentGroup",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deregisters an on-premises instance.
  """
  def deregister_on_premises_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeregisterOnPremisesInstance",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes an application.
  """
  def delete_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codedeploy",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteApplication",
      
      target_prefix:  "CodeDeploy_20141006",
      
      type:           :json,
      method:         :post
    }
  end
  
end