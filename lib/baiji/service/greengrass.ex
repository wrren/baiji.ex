defmodule Baiji.Greengrass do
  @moduledoc """
  AWS Greengrass seamlessly extends AWS onto physical devices so they can act
  locally on the data they generate, while still using the cloud for
  management, analytics, and durable storage. AWS Greengrass ensures your
  devices can respond quickly to local events and operate with intermittent
  connectivity. AWS Greengrass minimizes the cost of transmitting data to the
  cloud by allowing you to author AWS Lambda functions that execute locally.
  """
  
  @doc """
  Retrieves a list of Lambda function definitions.
  """
  def list_function_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/functions",
      input:            input,
      options:          options,
      action:           "ListFunctionDefinitions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Lists versions of a core definition.
  """
  def list_core_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/cores/{CoreDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListCoreDefinitionVersions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a version of a subscription definition which has already been
  defined.
  """
  def create_subscription_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateSubscriptionDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Updates a subscription definition.
  """
  def update_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateSubscriptionDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Create a version of a Lambda function definition that has already been
  defined.
  """
  def create_function_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/functions/{FunctionDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateFunctionDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Updates the Cert expiry time for a group.
  """
  def update_group_certificate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry",
      input:            input,
      options:          options,
      action:           "UpdateGroupCertificateConfiguration",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Disassociates the role from a group.
  """
  def disassociate_role_from_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/role",
      input:            input,
      options:          options,
      action:           "DisassociateRoleFromGroup",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :delete
    }
  end
  
  @doc """
  Retrieves information about a device definition version.
  """
  def get_device_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetDeviceDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves the current configuration for the CA used by the group.
  """
  def get_group_certificate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry",
      input:            input,
      options:          options,
      action:           "GetGroupCertificateConfiguration",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Deletes a subscription definition. The subscription definition must not
  have been used in a deployment.
  """
  def delete_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteSubscriptionDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :delete
    }
  end
  
  @doc """
  Retrieves the current CAs for a group.
  """
  def list_group_certificate_authorities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/certificateauthorities",
      input:            input,
      options:          options,
      action:           "ListGroupCertificateAuthorities",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves the service role that is attached to the account.
  """
  def get_service_role_for_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/servicerole",
      input:            input,
      options:          options,
      action:           "GetServiceRoleForAccount",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a version of a device definition that has already been defined.
  """
  def create_device_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/devices/{DeviceDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateDeviceDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Creates a core definition. You may optionally provide the initial version
  of the core definition or use ''CreateCoreDefinitionVersion'' at a later
  time. AWS Greengrass Groups must each contain exactly 1 AWS Greengrass
  Core.
  """
  def create_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/cores",
      input:            input,
      options:          options,
      action:           "CreateCoreDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  List the versions of a group.
  """
  def list_group_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/versions",
      input:            input,
      options:          options,
      action:           "ListGroupVersions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves a list of logger definitions.
  """
  def list_logger_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/loggers",
      input:            input,
      options:          options,
      action:           "ListLoggerDefinitions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Deletes a group. The group must not have been used in deployment.
  """
  def delete_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}",
      input:            input,
      options:          options,
      action:           "DeleteGroup",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :delete
    }
  end
  
  @doc """
  Updates a Lambda function definition.
  """
  def update_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/functions/{FunctionDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateFunctionDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Deletes a device definition. The device definition must not have been used
  in a deployment.
  """
  def delete_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/devices/{DeviceDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteDeviceDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :delete
    }
  end
  
  @doc """
  Retrieves information about a device definition.
  """
  def get_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/devices/{DeviceDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetDeviceDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a deployment.
  """
  def create_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/deployments",
      input:            input,
      options:          options,
      action:           "CreateDeployment",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Retrieves information about a logger definition version.
  """
  def get_logger_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetLoggerDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves a list of device definitions.
  """
  def list_device_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/devices",
      input:            input,
      options:          options,
      action:           "ListDeviceDefinitions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves information about a core definition version.
  """
  def get_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/cores/{CoreDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetCoreDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a logger definition. You may optionally provide the initial version
  of the logger definition or use ``CreateLoggerDefinitionVersion`` at a
  later time.
  """
  def create_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/loggers",
      input:            input,
      options:          options,
      action:           "CreateLoggerDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Retrieves a list of core definitions.
  """
  def list_core_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/cores",
      input:            input,
      options:          options,
      action:           "ListCoreDefinitions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a version of a logger definition that has already been defined.
  """
  def create_logger_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/loggers/{LoggerDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateLoggerDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Retrieves information about a group version.
  """
  def get_group_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/versions/{GroupVersionId}",
      input:            input,
      options:          options,
      action:           "GetGroupVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Returns the status of a deployment.
  """
  def get_deployment_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status",
      input:            input,
      options:          options,
      action:           "GetDeploymentStatus",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Lists the versions of a subscription definition.
  """
  def list_subscription_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListSubscriptionDefinitionVersions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a CA for the group. If a CA already exists, it will rotate the
  existing CA.
  """
  def create_group_certificate_authority(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/certificateauthorities",
      input:            input,
      options:          options,
      action:           "CreateGroupCertificateAuthority",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Retrieves information about a subscription definition version.
  """
  def get_subscription_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetSubscriptionDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves information about a group.
  """
  def get_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}",
      input:            input,
      options:          options,
      action:           "GetGroup",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Updates a device definition.
  """
  def update_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/devices/{DeviceDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateDeviceDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Updates a core definition.
  """
  def update_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/cores/{CoreDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateCoreDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Retrieves the connectivity information for a core.
  """
  def get_connectivity_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/things/{ThingName}/connectivityInfo",
      input:            input,
      options:          options,
      action:           "GetConnectivityInfo",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves information about a Lambda function definition, such as its
  creation time and latest version.
  """
  def get_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/functions/{FunctionDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetFunctionDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves a list of subscription definitions.
  """
  def list_subscription_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/subscriptions",
      input:            input,
      options:          options,
      action:           "ListSubscriptionDefinitions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a device definition. You may optinally provide the initial version
  of the device definition or use ``CreateDeviceDefinitionVersion`` at a
  later time.
  """
  def create_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/devices",
      input:            input,
      options:          options,
      action:           "CreateDeviceDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Retrieves information about a logger definition.
  """
  def get_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/loggers/{LoggerDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetLoggerDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves the role associated with a particular group.
  """
  def get_associated_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/role",
      input:            input,
      options:          options,
      action:           "GetAssociatedRole",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a version of a group which has already been defined.
  """
  def create_group_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/versions",
      input:            input,
      options:          options,
      action:           "CreateGroupVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Retrieves a list of groups.
  """
  def list_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups",
      input:            input,
      options:          options,
      action:           "ListGroups",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retreives the CA associated with a group. Returns the public key of the CA.
  """
  def get_group_certificate_authority(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}",
      input:            input,
      options:          options,
      action:           "GetGroupCertificateAuthority",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Lists the versions of a device definition.
  """
  def list_device_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/devices/{DeviceDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListDeviceDefinitionVersions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Retrieves information about a subscription definition.
  """
  def get_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetSubscriptionDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Disassociates the service role from the account. Without a service role,
  deployments will not work.
  """
  def disassociate_service_role_from_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/servicerole",
      input:            input,
      options:          options,
      action:           "DisassociateServiceRoleFromAccount",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :delete
    }
  end
  
  @doc """
  Associates a role which is used by AWS Greengrass. AWS Greengrass uses the
  role to access your Lambda functions and AWS IoT resources. This is
  necessary for deployments to succeed. It needs to have minimum permissions
  in policy ``AWSGreengrassResourceAccessRolePolicy``
  """
  def associate_service_role_to_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/servicerole",
      input:            input,
      options:          options,
      action:           "AssociateServiceRoleToAccount",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Retrieves information about a Lambda function definition version, such as
  which Lambda functions are included in the version and their
  configurations.
  """
  def get_function_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetFunctionDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Creates a version of a core definition that has already been defined. AWS
  Greengrass Groups must each contain exactly 1 AWS Greengrass Core.
  """
  def create_core_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/cores/{CoreDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateCoreDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Deletes a logger definition. The logger definition must not have been used
  in a deployment.
  """
  def delete_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/loggers/{LoggerDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteLoggerDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :delete
    }
  end
  
  @doc """
  Creates a subscription definition. You may optionally provide the initial
  version of the subscription definition or use
  ``CreateSubscriptionDefinitionVersion`` at a later time.
  """
  def create_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/subscriptions",
      input:            input,
      options:          options,
      action:           "CreateSubscriptionDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Retrieves information about a core definition version.
  """
  def get_core_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetCoreDefinitionVersion",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Returns a history of deployments for the group.
  """
  def list_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/deployments",
      input:            input,
      options:          options,
      action:           "ListDeployments",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Deletes a Lambda function definition. The Lambda function definition must
  not have been used in a deployment.
  """
  def delete_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/functions/{FunctionDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteFunctionDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :delete
    }
  end
  
  @doc """
  Updates a group.
  """
  def update_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}",
      input:            input,
      options:          options,
      action:           "UpdateGroup",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Lists the versions of a logger definition.
  """
  def list_logger_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/loggers/{LoggerDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListLoggerDefinitionVersions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Updates a logger definition.
  """
  def update_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/loggers/{LoggerDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateLoggerDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Creates a group. You may optionally provide the initial version of the
  group or use ''CreateGroupVersion'' at a later time.
  """
  def create_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups",
      input:            input,
      options:          options,
      action:           "CreateGroup",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
  @doc """
  Deletes a core definition. The core definition must not have been used in a
  deployment.
  """
  def delete_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/cores/{CoreDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteCoreDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :delete
    }
  end
  
  @doc """
  Lists the versions of a Lambda function definition.
  """
  def list_function_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/functions/{FunctionDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListFunctionDefinitionVersions",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :get
    }
  end
  
  @doc """
  Updates the connectivity information for the core. Any devices that belong
  to the group which has this core will receive this information in order to
  find the location of the core and connect to it.
  """
  def update_connectivity_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/things/{ThingName}/connectivityInfo",
      input:            input,
      options:          options,
      action:           "UpdateConnectivityInfo",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Associates a role with a group. The role will be used by the AWS Greengrass
  core in order to access AWS cloud services. The role's permissions will
  allow Greengrass core Lambda functions to perform actions against the
  cloud.
  """
  def associate_role_to_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/groups/{GroupId}/role",
      input:            input,
      options:          options,
      action:           "AssociateRoleToGroup",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :put
    }
  end
  
  @doc """
  Creates a Lambda function definition which contains a list of Lambda
  functions and their configurations to be used in a group. You can create an
  initial version of the definition by providing a list of Lambda functions
  and their configurations now, or use ``CreateFunctionDefinitionVersion``
  later.
  """
  def create_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "greengrass",
      endpoint:         "/greengrass/definition/functions",
      input:            input,
      options:          options,
      action:           "CreateFunctionDefinition",
      
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      method:           :post
    }
  end
  
end