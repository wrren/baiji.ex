defmodule Baiji.ElasticBeanstalk do
  @moduledoc """
  AWS Elastic Beanstalk

  AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage
  scalable, fault-tolerant applications running on the Amazon Web Services
  cloud.

  For more information about this product, go to the [AWS Elastic
  Beanstalk](http://aws.amazon.com/elasticbeanstalk/) details page. The
  location of the latest AWS Elastic Beanstalk WSDL is
  [http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl](http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl).
  To install the Software Development Kits (SDKs), Integrated Development
  Environment (IDE) Toolkits, and command line tools that enable you to
  access the API, go to [Tools for Amazon Web
  Services](http://aws.amazon.com/tools/).

  **Endpoints**

  For a list of region-specific endpoints that AWS Elastic Beanstalk
  supports, go to [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region)
  in the *Amazon Web Services Glossary*.
  """
  
  @doc """
  Lists the available platforms.
  """
  def list_platform_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListPlatformVersions",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates the Amazon S3 storage location for the account.

  This location is used to store user log files.
  """
  def create_storage_location(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateStorageLocation",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Swaps the CNAMEs of two environments.
  """
  def swap_environment_c_n_a_m_es(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SwapEnvironmentCNAMEs",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates a configuration template. Templates are associated with a specific
  application and are used to deploy different versions of the application
  with the same configuration settings.

  Related Topics

  <ul> <li> `DescribeConfigurationOptions`

  </li> <li> `DescribeConfigurationSettings`

  </li> <li> `ListAvailableSolutionStacks`

  </li> </ul>
  """
  def create_configuration_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateConfigurationTemplate",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Cancels in-progress environment configuration update or application version
  deployment.
  """
  def abort_environment_update(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AbortEnvironmentUpdate",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified configuration template.

  <note> When you launch an environment using a configuration template, the
  environment gets a copy of the template. You can delete or modify the
  environment's copy of the template without affecting the running
  environment.

  </note>
  """
  def delete_configuration_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteConfigurationTemplate",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Lists an environment's upcoming and in-progress managed actions.
  """
  def describe_environment_managed_actions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEnvironmentManagedActions",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Updates the specified application to have the specified properties.

  <note> If a property (for example, `description`) is not provided, the
  value remains unchanged. To clear these properties, specify an empty
  string.

  </note>
  """
  def update_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateApplication",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns list of event descriptions matching criteria up to the last 6
  weeks.

  <note> This action returns the most recent 1,000 events from the specified
  `NextToken`.

  </note>
  """
  def describe_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEvents",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Updates the specified configuration template to have the specified
  properties or configuration option values.

  <note> If a property (for example, `ApplicationName`) is not provided, its
  value remains unchanged. To clear such properties, specify an empty string.

  </note> Related Topics

  <ul> <li> `DescribeConfigurationOptions`

  </li> </ul>
  """
  def update_configuration_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateConfigurationTemplate",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified version of a custom platform.
  """
  def delete_platform_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeletePlatformVersion",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates an application that has one configuration template named `default`
  and no application versions.
  """
  def create_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateApplication",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns a description of the settings for the specified configuration set,
  that is, either a configuration template or the configuration set
  associated with a running environment.

  When describing the settings for the configuration set associated with a
  running environment, it is possible to receive two sets of setting
  descriptions. One is the deployed configuration set, and the other is a
  draft configuration of an environment that is either in the process of
  deployment or that failed to deploy.

  Related Topics

  <ul> <li> `DeleteEnvironmentConfiguration`

  </li> </ul>
  """
  def describe_configuration_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeConfigurationSettings",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Initiates a request to compile the specified type of information of the
  deployed environment.

  Setting the `InfoType` to `tail` compiles the last lines from the
  application server log files of every Amazon EC2 instance in your
  environment.

  Setting the `InfoType` to `bundle` compresses the application server log
  files for every Amazon EC2 instance into a `.zip` file. Legacy and .NET
  containers do not support bundle logs.

  Use `RetrieveEnvironmentInfo` to obtain the set of logs.

  Related Topics

  <ul> <li> `RetrieveEnvironmentInfo`

  </li> </ul>
  """
  def request_environment_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RequestEnvironmentInfo",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Terminates the specified environment.
  """
  def terminate_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "TerminateEnvironment",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Retrieves the compiled information from a `RequestEnvironmentInfo` request.

  Related Topics

  <ul> <li> `RequestEnvironmentInfo`

  </li> </ul>
  """
  def retrieve_environment_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RetrieveEnvironmentInfo",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Lists an environment's completed and failed managed actions.
  """
  def describe_environment_managed_action_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEnvironmentManagedActionHistory",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Modifies lifecycle settings for an application.
  """
  def update_application_resource_lifecycle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateApplicationResourceLifecycle",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Retrives detailed information about the health of instances in your AWS
  Elastic Beanstalk. This operation requires [enhanced health
  reporting](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html).
  """
  def describe_instances_health(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeInstancesHealth",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified version from the specified application.

  <note> You cannot delete an application version that is associated with a
  running environment.

  </note>
  """
  def delete_application_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteApplicationVersion",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes the draft configuration associated with the running environment.

  Updating a running environment with any configuration changes creates a
  draft configuration set. You can get the draft configuration using
  `DescribeConfigurationSettings` while the update is in progress or if the
  update fails. The `DeploymentStatus` for the draft configuration indicates
  whether the deployment is in process or has failed. The draft configuration
  remains in existence until it is deleted with this action.
  """
  def delete_environment_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteEnvironmentConfiguration",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns descriptions for existing environments.
  """
  def describe_environments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEnvironments",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Create a new version of your custom platform.
  """
  def create_platform_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreatePlatformVersion",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Updates the environment description, deploys a new application version,
  updates the configuration settings to an entirely new configuration
  template, or updates select configuration option values in the running
  environment.

  Attempting to update both the release and configuration is not allowed and
  AWS Elastic Beanstalk returns an `InvalidParameterCombination` error.

  When updating the configuration settings to a new template or individual
  settings, a draft configuration is created and
  `DescribeConfigurationSettings` for this environment returns two setting
  descriptions with different `DeploymentStatus` values.
  """
  def update_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateEnvironment",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Causes the environment to restart the application container server running
  on each Amazon EC2 instance.
  """
  def restart_app_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RestartAppServer",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Takes a set of configuration settings and either a configuration template
  or environment, and determines whether those values are valid.

  This action returns a list of messages indicating any errors or warnings
  associated with the selection of option values.
  """
  def validate_configuration_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ValidateConfigurationSettings",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Checks if the specified CNAME is available.
  """
  def check_d_n_s_availability(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CheckDNSAvailability",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns a list of the available solution stack names, with the public
  version first and then in reverse chronological order.
  """
  def list_available_solution_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAvailableSolutionStacks",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Describes the configuration options that are used in a particular
  configuration template or environment, or that a specified solution stack
  defines. The description includes the values the options, their default
  values, and an indication of the required action on a running environment
  if an option value is changed.
  """
  def describe_configuration_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeConfigurationOptions",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Create or update a group of environments that each run a separate component
  of a single application. Takes a list of version labels that specify
  application source bundles for each of the environments to create or
  update. The name of each environment and other required information must be
  included in the source bundles in an environment manifest named `env.yaml`.
  See [Compose
  Environments](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html)
  for details.
  """
  def compose_environments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ComposeEnvironments",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Creates an application version for the specified application. You can
  create an application version from a source bundle in Amazon S3, a commit
  in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:

  Specify a commit in an AWS CodeCommit repository with
  `SourceBuildInformation`.

  Specify a build in an AWS CodeBuild with `SourceBuildInformation` and
  `BuildConfiguration`.

  Specify a source bundle in S3 with `SourceBundle`

  Omit both `SourceBuildInformation` and `SourceBundle` to use the default
  sample application.

  <note> Once you create an application version with a specified Amazon S3
  bucket and key location, you cannot change that Amazon S3 location. If you
  change the Amazon S3 location, you receive an exception when you attempt to
  launch an environment from the application version.

  </note>
  """
  def create_application_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateApplicationVersion",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns the descriptions of existing applications.
  """
  def describe_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeApplications",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns AWS resources for this environment.
  """
  def describe_environment_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEnvironmentResources",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Launches an environment for the specified application using the specified
  configuration.
  """
  def create_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateEnvironment",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Retrieve a list of application versions.
  """
  def describe_application_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeApplicationVersions",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns information about the overall health of the specified environment.
  The **DescribeEnvironmentHealth** operation is only available with AWS
  Elastic Beanstalk Enhanced Health.
  """
  def describe_environment_health(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEnvironmentHealth",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Updates the specified application version to have the specified properties.

  <note> If a property (for example, `description`) is not provided, the
  value remains unchanged. To clear properties, specify an empty string.

  </note>
  """
  def update_application_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateApplicationVersion",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes and recreates all of the AWS resources (for example: the Auto
  Scaling group, load balancer, etc.) for a specified environment and forces
  a restart.
  """
  def rebuild_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RebuildEnvironment",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Describes the version of the platform.
  """
  def describe_platform_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribePlatformVersion",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified application along with all associated versions and
  configurations. The application versions will not be deleted from your
  Amazon S3 bucket.

  <note> You cannot delete an application that has a running environment.

  </note>
  """
  def delete_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteApplication",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Applies a scheduled managed action immediately. A managed action can be
  applied only if its status is `Scheduled`. Get the status and action ID of
  a managed action with `DescribeEnvironmentManagedActions`.
  """
  def apply_environment_managed_action(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "elasticbeanstalk",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ApplyEnvironmentManagedAction",
      
      type:           :xml,
      method:         :post
    }
  end
  
end