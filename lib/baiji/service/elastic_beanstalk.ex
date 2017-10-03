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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPlatformVersions",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ListPlatformVersionsRequest",
      output_shape:     "ListPlatformVersionsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates the Amazon S3 storage location for the account.

  This location is used to store user log files.
  """
  def create_storage_location(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateStorageLocation",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "CreateStorageLocationResultMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Swaps the CNAMEs of two environments.
  """
  def swap_environment_c_n_a_m_es(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SwapEnvironmentCNAMEs",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SwapEnvironmentCNAMEsMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateConfigurationTemplate",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateConfigurationTemplateMessage",
      output_shape:     "ConfigurationSettingsDescription",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Cancels in-progress environment configuration update or application version
  deployment.
  """
  def abort_environment_update(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AbortEnvironmentUpdate",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "AbortEnvironmentUpdateMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteConfigurationTemplate",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteConfigurationTemplateMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists an environment's upcoming and in-progress managed actions.
  """
  def describe_environment_managed_actions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEnvironmentManagedActions",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeEnvironmentManagedActionsRequest",
      output_shape:     "DescribeEnvironmentManagedActionsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateApplication",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "UpdateApplicationMessage",
      output_shape:     "ApplicationDescriptionMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEvents",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeEventsMessage",
      output_shape:     "EventDescriptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateConfigurationTemplate",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "UpdateConfigurationTemplateMessage",
      output_shape:     "ConfigurationSettingsDescription",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified version of a custom platform.
  """
  def delete_platform_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeletePlatformVersion",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeletePlatformVersionRequest",
      output_shape:     "DeletePlatformVersionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an application that has one configuration template named `default`
  and no application versions.
  """
  def create_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateApplication",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateApplicationMessage",
      output_shape:     "ApplicationDescriptionMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeConfigurationSettings",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeConfigurationSettingsMessage",
      output_shape:     "ConfigurationSettingsDescriptions",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RequestEnvironmentInfo",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "RequestEnvironmentInfoMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Terminates the specified environment.
  """
  def terminate_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TerminateEnvironment",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "TerminateEnvironmentMessage",
      output_shape:     "EnvironmentDescription",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RetrieveEnvironmentInfo",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "RetrieveEnvironmentInfoMessage",
      output_shape:     "RetrieveEnvironmentInfoResultMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists an environment's completed and failed managed actions.
  """
  def describe_environment_managed_action_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEnvironmentManagedActionHistory",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeEnvironmentManagedActionHistoryRequest",
      output_shape:     "DescribeEnvironmentManagedActionHistoryResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies lifecycle settings for an application.
  """
  def update_application_resource_lifecycle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateApplicationResourceLifecycle",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "UpdateApplicationResourceLifecycleMessage",
      output_shape:     "ApplicationResourceLifecycleDescriptionMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrives detailed information about the health of instances in your AWS
  Elastic Beanstalk. This operation requires [enhanced health
  reporting](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html).
  """
  def describe_instances_health(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstancesHealth",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeInstancesHealthRequest",
      output_shape:     "DescribeInstancesHealthResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteApplicationVersion",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteApplicationVersionMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteEnvironmentConfiguration",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteEnvironmentConfigurationMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns descriptions for existing environments.
  """
  def describe_environments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEnvironments",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeEnvironmentsMessage",
      output_shape:     "EnvironmentDescriptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new version of your custom platform.
  """
  def create_platform_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePlatformVersion",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreatePlatformVersionRequest",
      output_shape:     "CreatePlatformVersionResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateEnvironment",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "UpdateEnvironmentMessage",
      output_shape:     "EnvironmentDescription",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Causes the environment to restart the application container server running
  on each Amazon EC2 instance.
  """
  def restart_app_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestartAppServer",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "RestartAppServerMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ValidateConfigurationSettings",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ValidateConfigurationSettingsMessage",
      output_shape:     "ConfigurationSettingsValidationMessages",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Checks if the specified CNAME is available.
  """
  def check_d_n_s_availability(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CheckDNSAvailability",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CheckDNSAvailabilityMessage",
      output_shape:     "CheckDNSAvailabilityResultMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of the available solution stack names, with the public
  version first and then in reverse chronological order.
  """
  def list_available_solution_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAvailableSolutionStacks",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "ListAvailableSolutionStacksResultMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeConfigurationOptions",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeConfigurationOptionsMessage",
      output_shape:     "ConfigurationOptionsDescription",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ComposeEnvironments",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ComposeEnvironmentsMessage",
      output_shape:     "EnvironmentDescriptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateApplicationVersion",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateApplicationVersionMessage",
      output_shape:     "ApplicationVersionDescriptionMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the descriptions of existing applications.
  """
  def describe_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeApplications",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeApplicationsMessage",
      output_shape:     "ApplicationDescriptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns AWS resources for this environment.
  """
  def describe_environment_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEnvironmentResources",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeEnvironmentResourcesMessage",
      output_shape:     "EnvironmentResourceDescriptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Launches an environment for the specified application using the specified
  configuration.
  """
  def create_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateEnvironment",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateEnvironmentMessage",
      output_shape:     "EnvironmentDescription",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieve a list of application versions.
  """
  def describe_application_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeApplicationVersions",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeApplicationVersionsMessage",
      output_shape:     "ApplicationVersionDescriptionsMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about the overall health of the specified environment.
  The **DescribeEnvironmentHealth** operation is only available with AWS
  Elastic Beanstalk Enhanced Health.
  """
  def describe_environment_health(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEnvironmentHealth",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeEnvironmentHealthRequest",
      output_shape:     "DescribeEnvironmentHealthResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateApplicationVersion",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "UpdateApplicationVersionMessage",
      output_shape:     "ApplicationVersionDescriptionMessage",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes and recreates all of the AWS resources (for example: the Auto
  Scaling group, load balancer, etc.) for a specified environment and forces
  a restart.
  """
  def rebuild_environment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RebuildEnvironment",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "RebuildEnvironmentMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the version of the platform.
  """
  def describe_platform_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePlatformVersion",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribePlatformVersionRequest",
      output_shape:     "DescribePlatformVersionResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteApplication",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteApplicationMessage",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Applies a scheduled managed action immediately. A managed action can be
  applied only if its status is `Scheduled`. Get the status and action ID of
  a managed action with `DescribeEnvironmentManagedActions`.
  """
  def apply_environment_managed_action(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "elasticbeanstalk",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ApplyEnvironmentManagedAction",
      
      endpoint_prefix:  "elasticbeanstalk",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ApplyEnvironmentManagedActionRequest",
      output_shape:     "ApplyEnvironmentManagedActionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"CreateConfigurationTemplateMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "Description" => %{"shape" => "Description"}, "EnvironmentId" => %{"shape" => "EnvironmentId"}, "OptionSettings" => %{"shape" => "ConfigurationOptionSettingsList"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}, "SourceConfiguration" => %{"shape" => "SourceConfiguration"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}}, "required" => ["ApplicationName", "TemplateName"], "type" => "structure"}, "EnvironmentId" => %{"type" => "string"}, "LoadBalancerList" => %{"member" => %{"shape" => "LoadBalancer"}, "type" => "list"}, "RequestEnvironmentInfoMessage" => %{"members" => %{"EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "InfoType" => %{"shape" => "EnvironmentInfoType"}}, "required" => ["InfoType"], "type" => "structure"}, "SourceType" => %{"enum" => ["Git", "Zip"], "type" => "string"}, "RegexPattern" => %{"type" => "string"}, "ApplicationVersionDescriptionsMessage" => %{"members" => %{"ApplicationVersions" => %{"shape" => "ApplicationVersionDescriptionList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "LoadAverageValue" => %{"type" => "double"}, "Causes" => %{"member" => %{"shape" => "Cause"}, "type" => "list"}, "ConfigurationOptionDefaultValue" => %{"type" => "string"}, "ApplicationVersionLifecycleConfig" => %{"members" => %{"MaxAgeRule" => %{"shape" => "MaxAgeRule"}, "MaxCountRule" => %{"shape" => "MaxCountRule"}}, "type" => "structure"}, "InstanceHealthSummary" => %{"members" => %{"Degraded" => %{"shape" => "NullableInteger"}, "Info" => %{"shape" => "NullableInteger"}, "NoData" => %{"shape" => "NullableInteger"}, "Ok" => %{"shape" => "NullableInteger"}, "Pending" => %{"shape" => "NullableInteger"}, "Severe" => %{"shape" => "NullableInteger"}, "Unknown" => %{"shape" => "NullableInteger"}, "Warning" => %{"shape" => "NullableInteger"}}, "type" => "structure"}, "UpdateEnvironmentMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "Description" => %{"shape" => "Description"}, "EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "GroupName" => %{"shape" => "GroupName"}, "OptionSettings" => %{"shape" => "ConfigurationOptionSettingsList"}, "OptionsToRemove" => %{"shape" => "OptionsSpecifierList"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}, "Tier" => %{"shape" => "EnvironmentTier"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "type" => "structure"}, "EnvironmentLink" => %{"members" => %{"EnvironmentName" => %{"shape" => "String"}, "LinkName" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeInstancesHealthResult" => %{"members" => %{"InstanceHealthList" => %{"shape" => "InstanceHealthList"}, "NextToken" => %{"shape" => "NextToken"}, "RefreshedAt" => %{"shape" => "RefreshedAt"}}, "type" => "structure"}, "EventMessage" => %{"type" => "string"}, "DescribeEnvironmentManagedActionHistoryResult" => %{"members" => %{"ManagedActionHistoryItems" => %{"shape" => "ManagedActionHistoryItems"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ActionHistoryStatus" => %{"enum" => ["Completed", "Failed", "Unknown"], "type" => "string"}, "UpdateApplicationMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "Description" => %{"shape" => "Description"}}, "required" => ["ApplicationName"], "type" => "structure"}, "InsufficientPrivilegesException" => %{"error" => %{"code" => "InsufficientPrivilegesException", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EnvironmentDescriptionsMessage" => %{"members" => %{"Environments" => %{"shape" => "EnvironmentDescriptionsList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "OptionRestrictionMinValue" => %{"type" => "integer"}, "ValidationMessage" => %{"members" => %{"Message" => %{"shape" => "ValidationMessageString"}, "Namespace" => %{"shape" => "OptionNamespace"}, "OptionName" => %{"shape" => "ConfigurationOptionName"}, "Severity" => %{"shape" => "ValidationSeverity"}}, "type" => "structure"}, "Listener" => %{"members" => %{"Port" => %{"shape" => "Integer"}, "Protocol" => %{"shape" => "String"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "RebuildEnvironmentMessage" => %{"members" => %{"EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}}, "type" => "structure"}, "CheckDNSAvailabilityMessage" => %{"members" => %{"CNAMEPrefix" => %{"shape" => "DNSCnamePrefix"}}, "required" => ["CNAMEPrefix"], "type" => "structure"}, "MaxCountRule" => %{"members" => %{"DeleteSourceFromS3" => %{"shape" => "BoxedBoolean"}, "Enabled" => %{"shape" => "BoxedBoolean"}, "MaxCount" => %{"shape" => "BoxedInt"}}, "required" => ["Enabled"], "type" => "structure"}, "ManagedActionHistoryItem" => %{"members" => %{"ActionDescription" => %{"shape" => "String"}, "ActionId" => %{"shape" => "String"}, "ActionType" => %{"shape" => "ActionType"}, "ExecutedTime" => %{"shape" => "Timestamp"}, "FailureDescription" => %{"shape" => "String"}, "FailureType" => %{"shape" => "FailureType"}, "FinishedTime" => %{"shape" => "Timestamp"}, "Status" => %{"shape" => "ActionHistoryStatus"}}, "type" => "structure"}, "ImageId" => %{"type" => "string"}, "CPUUtilization" => %{"members" => %{"IOWait" => %{"shape" => "NullableDouble"}, "IRQ" => %{"shape" => "NullableDouble"}, "Idle" => %{"shape" => "NullableDouble"}, "Nice" => %{"shape" => "NullableDouble"}, "SoftIRQ" => %{"shape" => "NullableDouble"}, "System" => %{"shape" => "NullableDouble"}, "User" => %{"shape" => "NullableDouble"}}, "type" => "structure"}, "EventDescriptionsMessage" => %{"members" => %{"Events" => %{"shape" => "EventDescriptionList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "ActionType" => %{"enum" => ["InstanceRefresh", "PlatformUpdate", "Unknown"], "type" => "string"}, "CreationDate" => %{"type" => "timestamp"}, "DescribeApplicationVersionsMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "Token"}, "VersionLabels" => %{"shape" => "VersionLabelsList"}}, "type" => "structure"}, "DNSCnamePrefix" => %{"max" => 63, "min" => 4, "type" => "string"}, "S3Location" => %{"members" => %{"S3Bucket" => %{"shape" => "S3Bucket"}, "S3Key" => %{"shape" => "S3Key"}}, "type" => "structure"}, "ConfigurationOptionSetting" => %{"members" => %{"Namespace" => %{"shape" => "OptionNamespace"}, "OptionName" => %{"shape" => "ConfigurationOptionName"}, "ResourceName" => %{"shape" => "ResourceName"}, "Value" => %{"shape" => "ConfigurationOptionValue"}}, "type" => "structure"}, "ActionStatus" => %{"enum" => ["Scheduled", "Pending", "Running", "Unknown"], "type" => "string"}, "DescribeConfigurationSettingsMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}}, "required" => ["ApplicationName"], "type" => "structure"}, "DeleteSourceBundle" => %{"type" => "boolean"}, "EnvironmentName" => %{"max" => 40, "min" => 4, "type" => "string"}, "EnvironmentHealthAttribute" => %{"enum" => ["Status", "Color", "Causes", "ApplicationMetrics", "InstancesHealth", "All", "HealthStatus", "RefreshedAt"], "type" => "string"}, "ApplicationVersionStatus" => %{"enum" => ["Processed", "Unprocessed", "Failed", "Processing", "Building"], "type" => "string"}, "AbortEnvironmentUpdateMessage" => %{"members" => %{"EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}}, "type" => "structure"}, "ConfigurationOptionDescription" => %{"members" => %{"ChangeSeverity" => %{"shape" => "ConfigurationOptionSeverity"}, "DefaultValue" => %{"shape" => "ConfigurationOptionDefaultValue"}, "MaxLength" => %{"shape" => "OptionRestrictionMaxLength"}, "MaxValue" => %{"shape" => "OptionRestrictionMaxValue"}, "MinValue" => %{"shape" => "OptionRestrictionMinValue"}, "Name" => %{"shape" => "ConfigurationOptionName"}, "Namespace" => %{"shape" => "OptionNamespace"}, "Regex" => %{"shape" => "OptionRestrictionRegex"}, "UserDefined" => %{"shape" => "UserDefinedOption"}, "ValueOptions" => %{"shape" => "ConfigurationOptionPossibleValues"}, "ValueType" => %{"shape" => "ConfigurationOptionValueType"}}, "type" => "structure"}, "ConfigurationTemplateName" => %{"max" => 100, "min" => 1, "type" => "string"}, "TimeFilterStart" => %{"type" => "timestamp"}, "ApplicationVersionDescription" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "BuildArn" => %{"shape" => "String"}, "DateCreated" => %{"shape" => "CreationDate"}, "DateUpdated" => %{"shape" => "UpdateDate"}, "Description" => %{"shape" => "Description"}, "SourceBuildInformation" => %{"shape" => "SourceBuildInformation"}, "SourceBundle" => %{"shape" => "S3Location"}, "Status" => %{"shape" => "ApplicationVersionStatus"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "type" => "structure"}, "UpdateDate" => %{"type" => "timestamp"}, "CreateApplicationMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "Description" => %{"shape" => "Description"}, "ResourceLifecycleConfig" => %{"shape" => "ApplicationResourceLifecycleConfig"}}, "required" => ["ApplicationName"], "type" => "structure"}, "DNSCname" => %{"max" => 255, "min" => 1, "type" => "string"}, "ConfigurationDeploymentStatus" => %{"enum" => ["deployed", "pending", "failed"], "type" => "string"}, "ManagedAction" => %{"members" => %{"ActionDescription" => %{"shape" => "String"}, "ActionId" => %{"shape" => "String"}, "ActionType" => %{"shape" => "ActionType"}, "Status" => %{"shape" => "ActionStatus"}, "WindowStartTime" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "BoxedBoolean" => %{"type" => "boolean"}, "InstanceHealthList" => %{"member" => %{"shape" => "SingleInstanceHealth"}, "type" => "list"}, "TooManyApplicationsException" => %{"error" => %{"code" => "TooManyApplicationsException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ApplicationVersionProccess" => %{"type" => "boolean"}, "InstanceList" => %{"member" => %{"shape" => "Instance"}, "type" => "list"}, "UpdateConfigurationTemplateMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "Description" => %{"shape" => "Description"}, "OptionSettings" => %{"shape" => "ConfigurationOptionSettingsList"}, "OptionsToRemove" => %{"shape" => "OptionsSpecifierList"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}}, "required" => ["ApplicationName", "TemplateName"], "type" => "structure"}, "ApplicationVersionDescriptionList" => %{"member" => %{"shape" => "ApplicationVersionDescription"}, "type" => "list"}, "LoadBalancer" => %{"members" => %{"Name" => %{"shape" => "ResourceId"}}, "type" => "structure"}, "EndpointURL" => %{"type" => "string"}, "PlatformStatus" => %{"enum" => ["Creating", "Failed", "Ready", "Deleting", "Deleted"], "type" => "string"}, "EventDate" => %{"type" => "timestamp"}, "DescribeEnvironmentManagedActionsRequest" => %{"members" => %{"EnvironmentId" => %{"shape" => "String"}, "EnvironmentName" => %{"shape" => "String"}, "Status" => %{"shape" => "ActionStatus"}}, "type" => "structure"}, "DescribeEnvironmentManagedActionHistoryRequest" => %{"members" => %{"EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "MaxItems" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ConfigurationOptionsDescription" => %{"members" => %{"Options" => %{"shape" => "ConfigurationOptionDescriptionsList"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}}, "type" => "structure"}, "ValidationMessagesList" => %{"member" => %{"shape" => "ValidationMessage"}, "type" => "list"}, "IncludeDeletedBackTo" => %{"type" => "timestamp"}, "ARN" => %{"type" => "string"}, "EnvironmentDescription" => %{"members" => %{"AbortableOperationInProgress" => %{"shape" => "AbortableOperationInProgress"}, "ApplicationName" => %{"shape" => "ApplicationName"}, "CNAME" => %{"shape" => "DNSCname"}, "DateCreated" => %{"shape" => "CreationDate"}, "DateUpdated" => %{"shape" => "UpdateDate"}, "Description" => %{"shape" => "Description"}, "EndpointURL" => %{"shape" => "EndpointURL"}, "EnvironmentArn" => %{"shape" => "EnvironmentArn"}, "EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentLinks" => %{"shape" => "EnvironmentLinks"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "Health" => %{"shape" => "EnvironmentHealth"}, "HealthStatus" => %{"shape" => "EnvironmentHealthStatus"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "Resources" => %{"shape" => "EnvironmentResourcesDescription"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}, "Status" => %{"shape" => "EnvironmentStatus"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}, "Tier" => %{"shape" => "EnvironmentTier"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "type" => "structure"}, "SolutionStackName" => %{"type" => "string"}, "UpdateApplicationVersionMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "Description" => %{"shape" => "Description"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "required" => ["ApplicationName", "VersionLabel"], "type" => "structure"}, "InstanceId" => %{"max" => 255, "min" => 1, "type" => "string"}, "SolutionStackFileTypeList" => %{"member" => %{"shape" => "FileTypeExtension"}, "type" => "list"}, "TerminateEnvironmentResources" => %{"type" => "boolean"}, "SystemStatus" => %{"members" => %{"CPUUtilization" => %{"shape" => "CPUUtilization"}, "LoadAverage" => %{"shape" => "LoadAverage"}}, "type" => "structure"}, "InstancesHealthAttribute" => %{"enum" => ["HealthStatus", "Color", "Causes", "ApplicationMetrics", "RefreshedAt", "LaunchedAt", "System", "Deployment", "AvailabilityZone", "InstanceType", "All"], "type" => "string"}, "FailureType" => %{"enum" => ["UpdateCancelled", "CancellationFailed", "RollbackFailed", "RollbackSuccessful", "InternalFailure", "InvalidEnvironmentState", "PermissionsError"], "type" => "string"}, "ConfigurationSettingsDescriptions" => %{"members" => %{"ConfigurationSettings" => %{"shape" => "ConfigurationSettingsDescriptionList"}}, "type" => "structure"}, "PlatformArn" => %{"type" => "string"}, "TooManyEnvironmentsException" => %{"error" => %{"code" => "TooManyEnvironmentsException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ConfigurationSettingsDescriptionList" => %{"member" => %{"shape" => "ConfigurationSettingsDescription"}, "type" => "list"}, "ManagedActions" => %{"max" => 100, "member" => %{"shape" => "ManagedAction"}, "min" => 1, "type" => "list"}, "Token" => %{"type" => "string"}, "LaunchedAt" => %{"type" => "timestamp"}, "ApplicationResourceLifecycleDescriptionMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "ResourceLifecycleConfig" => %{"shape" => "ApplicationResourceLifecycleConfig"}}, "type" => "structure"}, "IncludeDeleted" => %{"type" => "boolean"}, "PlatformFilter" => %{"members" => %{"Operator" => %{"shape" => "PlatformFilterOperator"}, "Type" => %{"shape" => "PlatformFilterType"}, "Values" => %{"shape" => "PlatformFilterValueList"}}, "type" => "structure"}, "LoadBalancerDescription" => %{"members" => %{"Domain" => %{"shape" => "String"}, "Listeners" => %{"shape" => "LoadBalancerListenersDescription"}, "LoadBalancerName" => %{"shape" => "String"}}, "type" => "structure"}, "S3Bucket" => %{"max" => 255, "type" => "string"}, "PlatformFramework" => %{"members" => %{"Name" => %{"shape" => "String"}, "Version" => %{"shape" => "String"}}, "type" => "structure"}, "PlatformFrameworks" => %{"member" => %{"shape" => "PlatformFramework"}, "type" => "list"}, "ConfigurationOptionSeverity" => %{"type" => "string"}, "EnvironmentLinks" => %{"member" => %{"shape" => "EnvironmentLink"}, "type" => "list"}, "VersionLabels" => %{"member" => %{"shape" => "VersionLabel"}, "type" => "list"}, "OptionRestrictionRegex" => %{"members" => %{"Label" => %{"shape" => "RegexLabel"}, "Pattern" => %{"shape" => "RegexPattern"}}, "type" => "structure"}, "NullableInteger" => %{"type" => "integer"}, "Ec2InstanceId" => %{"type" => "string"}, "CustomAmiList" => %{"member" => %{"shape" => "CustomAmi"}, "type" => "list"}, "Description" => %{"max" => 200, "type" => "string"}, "FileTypeExtension" => %{"max" => 100, "min" => 1, "type" => "string"}, "ConfigurationOptionValueType" => %{"enum" => ["Scalar", "List"], "type" => "string"}, "PlatformOwner" => %{"type" => "string"}, "ApplicationMetrics" => %{"members" => %{"Duration" => %{"shape" => "NullableInteger"}, "Latency" => %{"shape" => "Latency"}, "RequestCount" => %{"shape" => "RequestCount"}, "StatusCodes" => %{"shape" => "StatusCodes"}}, "type" => "structure"}, "LaunchConfigurationList" => %{"member" => %{"shape" => "LaunchConfiguration"}, "type" => "list"}, "TerminateEnvForce" => %{"type" => "boolean"}, "PlatformSummaryList" => %{"member" => %{"shape" => "PlatformSummary"}, "type" => "list"}, "ConfigurationOptionDescriptionsList" => %{"member" => %{"shape" => "ConfigurationOptionDescription"}, "type" => "list"}, "Deployment" => %{"members" => %{"DeploymentId" => %{"shape" => "NullableLong"}, "DeploymentTime" => %{"shape" => "DeploymentTimestamp"}, "Status" => %{"shape" => "String"}, "VersionLabel" => %{"shape" => "String"}}, "type" => "structure"}, "MaxAgeRule" => %{"members" => %{"DeleteSourceFromS3" => %{"shape" => "BoxedBoolean"}, "Enabled" => %{"shape" => "BoxedBoolean"}, "MaxAgeInDays" => %{"shape" => "BoxedInt"}}, "required" => ["Enabled"], "type" => "structure"}, "Message" => %{"type" => "string"}, "EnvironmentHealthStatus" => %{"enum" => ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe"], "type" => "string"}, "NonEmptyString" => %{"pattern" => ".*\\S.*", "type" => "string"}, "ApplicationResourceLifecycleConfig" => %{"members" => %{"ServiceRole" => %{"shape" => "String"}, "VersionLifecycleConfig" => %{"shape" => "ApplicationVersionLifecycleConfig"}}, "type" => "structure"}, "OptionsSpecifierList" => %{"member" => %{"shape" => "OptionSpecification"}, "type" => "list"}, "CreatePlatformVersionResult" => %{"members" => %{"Builder" => %{"shape" => "Builder"}, "PlatformSummary" => %{"shape" => "PlatformSummary"}}, "type" => "structure"}, "Tags" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "type" => "structure"}, "DescribeConfigurationOptionsMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "Options" => %{"shape" => "OptionsSpecifierList"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}}, "type" => "structure"}, "EnvironmentHealthAttributes" => %{"member" => %{"shape" => "EnvironmentHealthAttribute"}, "type" => "list"}, "VersionLabelsList" => %{"member" => %{"shape" => "VersionLabel"}, "type" => "list"}, "Timestamp" => %{"type" => "timestamp"}, "AutoScalingGroupList" => %{"member" => %{"shape" => "AutoScalingGroup"}, "type" => "list"}, "DescribeInstancesHealthRequest" => %{"members" => %{"AttributeNames" => %{"shape" => "InstancesHealthAttributes"}, "EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "RequestCount" => %{"type" => "integer"}, "CreateStorageLocationResultMessage" => %{"members" => %{"S3Bucket" => %{"shape" => "S3Bucket"}}, "type" => "structure"}, "DescribeApplicationsMessage" => %{"members" => %{"ApplicationNames" => %{"shape" => "ApplicationNamesList"}}, "type" => "structure"}, "Queue" => %{"members" => %{"Name" => %{"shape" => "String"}, "URL" => %{"shape" => "String"}}, "type" => "structure"}, "PlatformDescription" => %{"members" => %{"CustomAmiList" => %{"shape" => "CustomAmiList"}, "DateCreated" => %{"shape" => "CreationDate"}, "DateUpdated" => %{"shape" => "UpdateDate"}, "Description" => %{"shape" => "Description"}, "Frameworks" => %{"shape" => "PlatformFrameworks"}, "Maintainer" => %{"shape" => "Maintainer"}, "OperatingSystemName" => %{"shape" => "OperatingSystemName"}, "OperatingSystemVersion" => %{"shape" => "OperatingSystemVersion"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "PlatformCategory" => %{"shape" => "PlatformCategory"}, "PlatformName" => %{"shape" => "PlatformName"}, "PlatformOwner" => %{"shape" => "PlatformOwner"}, "PlatformStatus" => %{"shape" => "PlatformStatus"}, "PlatformVersion" => %{"shape" => "PlatformVersion"}, "ProgrammingLanguages" => %{"shape" => "PlatformProgrammingLanguages"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}, "SupportedAddonList" => %{"shape" => "SupportedAddonList"}, "SupportedTierList" => %{"shape" => "SupportedTierList"}}, "type" => "structure"}, "DeleteApplicationVersionMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "DeleteSourceBundle" => %{"shape" => "DeleteSourceBundle"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "required" => ["ApplicationName", "VersionLabel"], "type" => "structure"}, "ConfigurationOptionPossibleValue" => %{"type" => "string"}, "TagValue" => %{"max" => 256, "min" => 1, "type" => "string"}, "CnameAvailability" => %{"type" => "boolean"}, "PlatformVersionStillReferencedException" => %{"error" => %{"code" => "PlatformVersionStillReferencedException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "MaxRecords" => %{"max" => 1000, "min" => 1, "type" => "integer"}, "Latency" => %{"members" => %{"P10" => %{"shape" => "NullableDouble"}, "P50" => %{"shape" => "NullableDouble"}, "P75" => %{"shape" => "NullableDouble"}, "P85" => %{"shape" => "NullableDouble"}, "P90" => %{"shape" => "NullableDouble"}, "P95" => %{"shape" => "NullableDouble"}, "P99" => %{"shape" => "NullableDouble"}, "P999" => %{"shape" => "NullableDouble"}}, "type" => "structure"}, "EnvironmentTier" => %{"members" => %{"Name" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}, "Version" => %{"shape" => "String"}}, "type" => "structure"}, "RetrieveEnvironmentInfoResultMessage" => %{"members" => %{"EnvironmentInfo" => %{"shape" => "EnvironmentInfoDescriptionList"}}, "type" => "structure"}, "EnvironmentStatus" => %{"enum" => ["Launching", "Updating", "Ready", "Terminating", "Terminated"], "type" => "string"}, "ApplicationDescriptionsMessage" => %{"members" => %{"Applications" => %{"shape" => "ApplicationDescriptionList"}}, "type" => "structure"}, "VersionLabel" => %{"max" => 100, "min" => 1, "type" => "string"}, "PlatformFilterValueList" => %{"member" => %{"shape" => "PlatformFilterValue"}, "type" => "list"}, "LoadAverage" => %{"member" => %{"shape" => "LoadAverageValue"}, "type" => "list"}, "BoxedInt" => %{"type" => "integer"}, "TerminateEnvironmentMessage" => %{"members" => %{"EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "ForceTerminate" => %{"shape" => "ForceTerminate"}, "TerminateResources" => %{"shape" => "TerminateEnvironmentResources"}}, "type" => "structure"}, "ValidationSeverity" => %{"enum" => ["error", "warning"], "type" => "string"}, "OptionNamespace" => %{"type" => "string"}, "ComputeType" => %{"enum" => ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"], "type" => "string"}, "EnvironmentNamesList" => %{"member" => %{"shape" => "EnvironmentName"}, "type" => "list"}, "TooManyApplicationVersionsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LaunchConfiguration" => %{"members" => %{"Name" => %{"shape" => "ResourceId"}}, "type" => "structure"}, "Cause" => %{"max" => 255, "min" => 1, "type" => "string"}, "OptionSpecification" => %{"members" => %{"Namespace" => %{"shape" => "OptionNamespace"}, "OptionName" => %{"shape" => "ConfigurationOptionName"}, "ResourceName" => %{"shape" => "ResourceName"}}, "type" => "structure"}, "EnvironmentResourcesDescription" => %{"members" => %{"LoadBalancer" => %{"shape" => "LoadBalancerDescription"}}, "type" => "structure"}, "NullableLong" => %{"type" => "long"}, "PlatformCategory" => %{"type" => "string"}, "ResourceId" => %{"type" => "string"}, "TooManyPlatformsException" => %{"error" => %{"code" => "TooManyPlatformsException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EnvironmentInfoDescription" => %{"members" => %{"Ec2InstanceId" => %{"shape" => "Ec2InstanceId"}, "InfoType" => %{"shape" => "EnvironmentInfoType"}, "Message" => %{"shape" => "Message"}, "SampleTimestamp" => %{"shape" => "SampleTimestamp"}}, "type" => "structure"}, "ConfigurationSettingsValidationMessages" => %{"members" => %{"Messages" => %{"shape" => "ValidationMessagesList"}}, "type" => "structure"}, "PlatformProgrammingLanguage" => %{"members" => %{"Name" => %{"shape" => "String"}, "Version" => %{"shape" => "String"}}, "type" => "structure"}, "SolutionStackDescription" => %{"members" => %{"PermittedFileTypes" => %{"shape" => "SolutionStackFileTypeList"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}}, "type" => "structure"}, "InvalidRequestException" => %{"error" => %{"code" => "InvalidRequestException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "EventSeverity" => %{"enum" => ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"], "type" => "string"}, "EnvironmentDescriptionsList" => %{"member" => %{"shape" => "EnvironmentDescription"}, "type" => "list"}, "EventDescriptionList" => %{"member" => %{"shape" => "EventDescription"}, "type" => "list"}, "ConfigurationOptionName" => %{"type" => "string"}, "PlatformSummary" => %{"members" => %{"OperatingSystemName" => %{"shape" => "OperatingSystemName"}, "OperatingSystemVersion" => %{"shape" => "OperatingSystemVersion"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "PlatformCategory" => %{"shape" => "PlatformCategory"}, "PlatformOwner" => %{"shape" => "PlatformOwner"}, "PlatformStatus" => %{"shape" => "PlatformStatus"}, "SupportedAddonList" => %{"shape" => "SupportedAddonList"}, "SupportedTierList" => %{"shape" => "SupportedTierList"}}, "type" => "structure"}, "DeleteConfigurationTemplateMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}}, "required" => ["ApplicationName", "TemplateName"], "type" => "structure"}, "AvailableSolutionStackDetailsList" => %{"member" => %{"shape" => "SolutionStackDescription"}, "type" => "list"}, "GroupName" => %{"max" => 19, "min" => 1, "type" => "string"}, "ConfigurationOptionValue" => %{"type" => "string"}, "ConfigurationTemplateNamesList" => %{"member" => %{"shape" => "ConfigurationTemplateName"}, "type" => "list"}, "S3SubscriptionRequiredException" => %{"error" => %{"code" => "S3SubscriptionRequiredException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "PlatformVersion" => %{"type" => "string"}, "PlatformName" => %{"type" => "string"}, "RefreshedAt" => %{"type" => "timestamp"}, "TooManyConfigurationTemplatesException" => %{"error" => %{"code" => "TooManyConfigurationTemplatesException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CheckDNSAvailabilityResultMessage" => %{"members" => %{"Available" => %{"shape" => "CnameAvailability"}, "FullyQualifiedCNAME" => %{"shape" => "DNSCname"}}, "type" => "structure"}, "DescribeEnvironmentHealthResult" => %{"members" => %{"ApplicationMetrics" => %{"shape" => "ApplicationMetrics"}, "Causes" => %{"shape" => "Causes"}, "Color" => %{"shape" => "String"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "HealthStatus" => %{"shape" => "String"}, "InstancesHealth" => %{"shape" => "InstanceHealthSummary"}, "RefreshedAt" => %{"shape" => "RefreshedAt"}, "Status" => %{"shape" => "EnvironmentHealth"}}, "type" => "structure"}, "OperatingSystemVersion" => %{"type" => "string"}, "OperatingSystemName" => %{"type" => "string"}, "SourceBundleDeletionException" => %{"error" => %{"code" => "SourceBundleDeletionFailure", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreatePlatformVersionRequest" => %{"members" => %{"EnvironmentName" => %{"shape" => "EnvironmentName"}, "OptionSettings" => %{"shape" => "ConfigurationOptionSettingsList"}, "PlatformDefinitionBundle" => %{"shape" => "S3Location"}, "PlatformName" => %{"shape" => "PlatformName"}, "PlatformVersion" => %{"shape" => "PlatformVersion"}}, "required" => ["PlatformName", "PlatformVersion", "PlatformDefinitionBundle"], "type" => "structure"}, "ListPlatformVersionsRequest" => %{"members" => %{"Filters" => %{"shape" => "PlatformFilters"}, "MaxRecords" => %{"shape" => "PlatformMaxRecords"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "ConfigurationOptionPossibleValues" => %{"member" => %{"shape" => "ConfigurationOptionPossibleValue"}, "type" => "list"}, "SupportedAddon" => %{"type" => "string"}, "CodeBuildNotInServiceRegionException" => %{"error" => %{"code" => "CodeBuildNotInServiceRegionException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SupportedTier" => %{"type" => "string"}, "ComposeEnvironmentsMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "GroupName" => %{"shape" => "GroupName"}, "VersionLabels" => %{"shape" => "VersionLabels"}}, "type" => "structure"}, "DescribeEventsMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "EndTime" => %{"shape" => "TimeFilterEnd"}, "EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "Token"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "RequestId" => %{"shape" => "RequestId"}, "Severity" => %{"shape" => "EventSeverity"}, "StartTime" => %{"shape" => "TimeFilterStart"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "type" => "structure"}, "SwapEnvironmentCNAMEsMessage" => %{"members" => %{"DestinationEnvironmentId" => %{"shape" => "EnvironmentId"}, "DestinationEnvironmentName" => %{"shape" => "EnvironmentName"}, "SourceEnvironmentId" => %{"shape" => "EnvironmentId"}, "SourceEnvironmentName" => %{"shape" => "EnvironmentName"}}, "type" => "structure"}, "SourceBuildInformation" => %{"members" => %{"SourceLocation" => %{"shape" => "SourceLocation"}, "SourceRepository" => %{"shape" => "SourceRepository"}, "SourceType" => %{"shape" => "SourceType"}}, "required" => ["SourceType", "SourceRepository", "SourceLocation"], "type" => "structure"}, "ApplicationDescriptionList" => %{"member" => %{"shape" => "ApplicationDescription"}, "type" => "list"}, "AbortableOperationInProgress" => %{"type" => "boolean"}, "ListPlatformVersionsResult" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "PlatformSummaryList" => %{"shape" => "PlatformSummaryList"}}, "type" => "structure"}, "SourceRepository" => %{"enum" => ["CodeCommit", "S3"], "type" => "string"}, "ManagedActionHistoryItems" => %{"max" => 100, "member" => %{"shape" => "ManagedActionHistoryItem"}, "min" => 1, "type" => "list"}, "SupportedAddonList" => %{"member" => %{"shape" => "SupportedAddon"}, "type" => "list"}, "DeletePlatformVersionRequest" => %{"members" => %{"PlatformArn" => %{"shape" => "PlatformArn"}}, "type" => "structure"}, "ValidationMessageString" => %{"type" => "string"}, "DescribePlatformVersionRequest" => %{"members" => %{"PlatformArn" => %{"shape" => "PlatformArn"}}, "type" => "structure"}, "PlatformFilters" => %{"member" => %{"shape" => "PlatformFilter"}, "type" => "list"}, "ExceptionMessage" => %{"type" => "string"}, "RegexLabel" => %{"type" => "string"}, "Trigger" => %{"members" => %{"Name" => %{"shape" => "ResourceId"}}, "type" => "structure"}, "InstancesHealthAttributes" => %{"member" => %{"shape" => "InstancesHealthAttribute"}, "type" => "list"}, "Builder" => %{"members" => %{"ARN" => %{"shape" => "ARN"}}, "type" => "structure"}, "TriggerList" => %{"member" => %{"shape" => "Trigger"}, "type" => "list"}, "CustomAmi" => %{"members" => %{"ImageId" => %{"shape" => "ImageId"}, "VirtualizationType" => %{"shape" => "VirtualizationType"}}, "type" => "structure"}, "ApplicationName" => %{"max" => 100, "min" => 1, "type" => "string"}, "NullableDouble" => %{"type" => "double"}, "ApplicationDescriptionMessage" => %{"members" => %{"Application" => %{"shape" => "ApplicationDescription"}}, "type" => "structure"}, "DescribeEnvironmentsMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "EnvironmentIds" => %{"shape" => "EnvironmentIdList"}, "EnvironmentNames" => %{"shape" => "EnvironmentNamesList"}, "IncludeDeleted" => %{"shape" => "IncludeDeleted"}, "IncludedDeletedBackTo" => %{"shape" => "IncludeDeletedBackTo"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "Token"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "type" => "structure"}, "TooManyBucketsException" => %{"error" => %{"code" => "TooManyBucketsException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "BuildConfiguration" => %{"members" => %{"ArtifactName" => %{"shape" => "String"}, "CodeBuildServiceRole" => %{"shape" => "NonEmptyString"}, "ComputeType" => %{"shape" => "ComputeType"}, "Image" => %{"shape" => "NonEmptyString"}, "TimeoutInMinutes" => %{"shape" => "BoxedInt"}}, "required" => ["CodeBuildServiceRole", "Image"], "type" => "structure"}, "UserDefinedOption" => %{"type" => "boolean"}, "ApplicationVersionDescriptionMessage" => %{"members" => %{"ApplicationVersion" => %{"shape" => "ApplicationVersionDescription"}}, "type" => "structure"}, "RequestId" => %{"type" => "string"}, "QueueList" => %{"member" => %{"shape" => "Queue"}, "type" => "list"}, "TagKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "EnvironmentResourceDescriptionsMessage" => %{"members" => %{"EnvironmentResources" => %{"shape" => "EnvironmentResourceDescription"}}, "type" => "structure"}, "DescribeEnvironmentManagedActionsResult" => %{"members" => %{"ManagedActions" => %{"shape" => "ManagedActions"}}, "type" => "structure"}, "SampleTimestamp" => %{"type" => "timestamp"}, "SingleInstanceHealth" => %{"members" => %{"ApplicationMetrics" => %{"shape" => "ApplicationMetrics"}, "AvailabilityZone" => %{"shape" => "String"}, "Causes" => %{"shape" => "Causes"}, "Color" => %{"shape" => "String"}, "Deployment" => %{"shape" => "Deployment"}, "HealthStatus" => %{"shape" => "String"}, "InstanceId" => %{"shape" => "InstanceId"}, "InstanceType" => %{"shape" => "String"}, "LaunchedAt" => %{"shape" => "LaunchedAt"}, "System" => %{"shape" => "SystemStatus"}}, "type" => "structure"}, "RetrieveEnvironmentInfoMessage" => %{"members" => %{"EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "InfoType" => %{"shape" => "EnvironmentInfoType"}}, "required" => ["InfoType"], "type" => "structure"}, "EnvironmentInfoType" => %{"enum" => ["tail", "bundle"], "type" => "string"}, "EnvironmentArn" => %{"type" => "string"}, "CreateApplicationVersionMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "AutoCreateApplication" => %{"shape" => "AutoCreateApplication"}, "BuildConfiguration" => %{"shape" => "BuildConfiguration"}, "Description" => %{"shape" => "Description"}, "Process" => %{"shape" => "ApplicationVersionProccess"}, "SourceBuildInformation" => %{"shape" => "SourceBuildInformation"}, "SourceBundle" => %{"shape" => "S3Location"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "required" => ["ApplicationName", "VersionLabel"], "type" => "structure"}, "DeletePlatformVersionResult" => %{"members" => %{"PlatformSummary" => %{"shape" => "PlatformSummary"}}, "type" => "structure"}, "ApplicationDescription" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "ConfigurationTemplates" => %{"shape" => "ConfigurationTemplateNamesList"}, "DateCreated" => %{"shape" => "CreationDate"}, "DateUpdated" => %{"shape" => "UpdateDate"}, "Description" => %{"shape" => "Description"}, "ResourceLifecycleConfig" => %{"shape" => "ApplicationResourceLifecycleConfig"}, "Versions" => %{"shape" => "VersionLabelsList"}}, "type" => "structure"}, "PlatformFilterType" => %{"type" => "string"}, "ConfigurationSettingsDescription" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "DateCreated" => %{"shape" => "CreationDate"}, "DateUpdated" => %{"shape" => "UpdateDate"}, "DeploymentStatus" => %{"shape" => "ConfigurationDeploymentStatus"}, "Description" => %{"shape" => "Description"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "OptionSettings" => %{"shape" => "ConfigurationOptionSettingsList"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}}, "type" => "structure"}, "ApplicationNamesList" => %{"member" => %{"shape" => "ApplicationName"}, "type" => "list"}, "ApplyEnvironmentManagedActionRequest" => %{"members" => %{"ActionId" => %{"shape" => "String"}, "EnvironmentId" => %{"shape" => "String"}, "EnvironmentName" => %{"shape" => "String"}}, "required" => ["ActionId"], "type" => "structure"}, "DeploymentTimestamp" => %{"type" => "timestamp"}, "AutoScalingGroup" => %{"members" => %{"Name" => %{"shape" => "ResourceId"}}, "type" => "structure"}, "PlatformFilterValue" => %{"type" => "string"}, "ResourceName" => %{"max" => 256, "min" => 1, "type" => "string"}, "EnvironmentInfoDescriptionList" => %{"member" => %{"shape" => "EnvironmentInfoDescription"}, "type" => "list"}, "DeleteEnvironmentConfigurationMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}}, "required" => ["ApplicationName", "EnvironmentName"], "type" => "structure"}, "EventDescription" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "EventDate" => %{"shape" => "EventDate"}, "Message" => %{"shape" => "EventMessage"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "RequestId" => %{"shape" => "RequestId"}, "Severity" => %{"shape" => "EventSeverity"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "type" => "structure"}, "ListAvailableSolutionStacksResultMessage" => %{"members" => %{"SolutionStackDetails" => %{"shape" => "AvailableSolutionStackDetailsList"}, "SolutionStacks" => %{"shape" => "AvailableSolutionStackNamesList"}}, "type" => "structure"}, "PlatformFilterOperator" => %{"type" => "string"}, "UpdateApplicationResourceLifecycleMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "ResourceLifecycleConfig" => %{"shape" => "ApplicationResourceLifecycleConfig"}}, "required" => ["ApplicationName", "ResourceLifecycleConfig"], "type" => "structure"}, "EnvironmentResourceDescription" => %{"members" => %{"AutoScalingGroups" => %{"shape" => "AutoScalingGroupList"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "Instances" => %{"shape" => "InstanceList"}, "LaunchConfigurations" => %{"shape" => "LaunchConfigurationList"}, "LoadBalancers" => %{"shape" => "LoadBalancerList"}, "Queues" => %{"shape" => "QueueList"}, "Triggers" => %{"shape" => "TriggerList"}}, "type" => "structure"}, "DescribePlatformVersionResult" => %{"members" => %{"PlatformDescription" => %{"shape" => "PlatformDescription"}}, "type" => "structure"}, "SourceConfiguration" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}}, "type" => "structure"}, "DeleteApplicationMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "TerminateEnvByForce" => %{"shape" => "TerminateEnvForce"}}, "required" => ["ApplicationName"], "type" => "structure"}, "Integer" => %{"type" => "integer"}, "AutoCreateApplication" => %{"type" => "boolean"}, "OperationInProgressException" => %{"error" => %{"code" => "OperationInProgressFailure", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AvailableSolutionStackNamesList" => %{"member" => %{"shape" => "SolutionStackName"}, "type" => "list"}, "SupportedTierList" => %{"member" => %{"shape" => "SupportedTier"}, "type" => "list"}, "TimeFilterEnd" => %{"type" => "timestamp"}, "ElasticBeanstalkServiceException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "PlatformProgrammingLanguages" => %{"member" => %{"shape" => "PlatformProgrammingLanguage"}, "type" => "list"}, "NextToken" => %{"max" => 100, "min" => 1, "type" => "string"}, "S3Key" => %{"max" => 1024, "type" => "string"}, "LoadBalancerListenersDescription" => %{"member" => %{"shape" => "Listener"}, "type" => "list"}, "DescribeEnvironmentHealthRequest" => %{"members" => %{"AttributeNames" => %{"shape" => "EnvironmentHealthAttributes"}, "EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}}, "type" => "structure"}, "SourceLocation" => %{"max" => 255, "min" => 3, "pattern" => ".+/.+", "type" => "string"}, "ConfigurationOptionSettingsList" => %{"member" => %{"shape" => "ConfigurationOptionSetting"}, "type" => "list"}, "DescribeEnvironmentResourcesMessage" => %{"members" => %{"EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}}, "type" => "structure"}, "Maintainer" => %{"type" => "string"}, "CreateEnvironmentMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CNAMEPrefix" => %{"shape" => "DNSCnamePrefix"}, "Description" => %{"shape" => "Description"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "GroupName" => %{"shape" => "GroupName"}, "OptionSettings" => %{"shape" => "ConfigurationOptionSettingsList"}, "OptionsToRemove" => %{"shape" => "OptionsSpecifierList"}, "PlatformArn" => %{"shape" => "PlatformArn"}, "SolutionStackName" => %{"shape" => "SolutionStackName"}, "Tags" => %{"shape" => "Tags"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}, "Tier" => %{"shape" => "EnvironmentTier"}, "VersionLabel" => %{"shape" => "VersionLabel"}}, "required" => ["ApplicationName"], "type" => "structure"}, "EnvironmentHealth" => %{"enum" => ["Green", "Yellow", "Red", "Grey"], "type" => "string"}, "OptionRestrictionMaxLength" => %{"type" => "integer"}, "StatusCodes" => %{"members" => %{"Status2xx" => %{"shape" => "NullableInteger"}, "Status3xx" => %{"shape" => "NullableInteger"}, "Status4xx" => %{"shape" => "NullableInteger"}, "Status5xx" => %{"shape" => "NullableInteger"}}, "type" => "structure"}, "ApplyEnvironmentManagedActionResult" => %{"members" => %{"ActionDescription" => %{"shape" => "String"}, "ActionId" => %{"shape" => "String"}, "ActionType" => %{"shape" => "ActionType"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "OptionRestrictionMaxValue" => %{"type" => "integer"}, "EnvironmentIdList" => %{"member" => %{"shape" => "EnvironmentId"}, "type" => "list"}, "RestartAppServerMessage" => %{"members" => %{"EnvironmentId" => %{"shape" => "EnvironmentId"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}}, "type" => "structure"}, "ForceTerminate" => %{"type" => "boolean"}, "ValidateConfigurationSettingsMessage" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "EnvironmentName" => %{"shape" => "EnvironmentName"}, "OptionSettings" => %{"shape" => "ConfigurationOptionSettingsList"}, "TemplateName" => %{"shape" => "ConfigurationTemplateName"}}, "required" => ["ApplicationName", "OptionSettings"], "type" => "structure"}, "ManagedActionInvalidStateException" => %{"error" => %{"code" => "ManagedActionInvalidStateException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "VirtualizationType" => %{"type" => "string"}, "PlatformMaxRecords" => %{"min" => 1, "type" => "integer"}, "Instance" => %{"members" => %{"Id" => %{"shape" => "ResourceId"}}, "type" => "structure"}, "S3LocationNotInServiceRegionException" => %{"error" => %{"code" => "S3LocationNotInServiceRegionException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}}
  end
end