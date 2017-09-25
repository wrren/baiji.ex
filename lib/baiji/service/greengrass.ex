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
      input:    input,
      options:  options,
      action:   "ListFunctionDefinitions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Lists versions of a core definition.
  """
  def list_core_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListCoreDefinitionVersions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a version of a subscription definition which has already been
  defined.
  """
  def create_subscription_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateSubscriptionDefinitionVersion",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates a subscription definition.
  """
  def update_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateSubscriptionDefinition",
      type:     :json,
      method:   :put
    }
  end
  
  @doc """
  Create a version of a Lambda function definition that has already been
  defined.
  """
  def create_function_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateFunctionDefinitionVersion",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates the Cert expiry time for a group.
  """
  def update_group_certificate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateGroupCertificateConfiguration",
      type:     :json,
      method:   :put
    }
  end
  
  @doc """
  Disassociates the role from a group.
  """
  def disassociate_role_from_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociateRoleFromGroup",
      type:     :json,
      method:   :delete
    }
  end
  
  @doc """
  Retrieves information about a device definition version.
  """
  def get_device_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetDeviceDefinitionVersion",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves the current configuration for the CA used by the group.
  """
  def get_group_certificate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetGroupCertificateConfiguration",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Deletes a subscription definition. The subscription definition must not
  have been used in a deployment.
  """
  def delete_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteSubscriptionDefinition",
      type:     :json,
      method:   :delete
    }
  end
  
  @doc """
  Retrieves the current CAs for a group.
  """
  def list_group_certificate_authorities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListGroupCertificateAuthorities",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves the service role that is attached to the account.
  """
  def get_service_role_for_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetServiceRoleForAccount",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a version of a device definition that has already been defined.
  """
  def create_device_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateDeviceDefinitionVersion",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "CreateCoreDefinition",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  List the versions of a group.
  """
  def list_group_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListGroupVersions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves a list of logger definitions.
  """
  def list_logger_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListLoggerDefinitions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Deletes a group. The group must not have been used in deployment.
  """
  def delete_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteGroup",
      type:     :json,
      method:   :delete
    }
  end
  
  @doc """
  Updates a Lambda function definition.
  """
  def update_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateFunctionDefinition",
      type:     :json,
      method:   :put
    }
  end
  
  @doc """
  Deletes a device definition. The device definition must not have been used
  in a deployment.
  """
  def delete_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteDeviceDefinition",
      type:     :json,
      method:   :delete
    }
  end
  
  @doc """
  Retrieves information about a device definition.
  """
  def get_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetDeviceDefinition",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a deployment.
  """
  def create_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateDeployment",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a logger definition version.
  """
  def get_logger_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetLoggerDefinitionVersion",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves a list of device definitions.
  """
  def list_device_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListDeviceDefinitions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves information about a core definition version.
  """
  def get_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetCoreDefinition",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a logger definition. You may optionally provide the initial version
  of the logger definition or use ``CreateLoggerDefinitionVersion`` at a
  later time.
  """
  def create_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateLoggerDefinition",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves a list of core definitions.
  """
  def list_core_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListCoreDefinitions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a version of a logger definition that has already been defined.
  """
  def create_logger_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateLoggerDefinitionVersion",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a group version.
  """
  def get_group_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetGroupVersion",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Returns the status of a deployment.
  """
  def get_deployment_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetDeploymentStatus",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Lists the versions of a subscription definition.
  """
  def list_subscription_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListSubscriptionDefinitionVersions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a CA for the group. If a CA already exists, it will rotate the
  existing CA.
  """
  def create_group_certificate_authority(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateGroupCertificateAuthority",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a subscription definition version.
  """
  def get_subscription_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetSubscriptionDefinitionVersion",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves information about a group.
  """
  def get_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetGroup",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Updates a device definition.
  """
  def update_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateDeviceDefinition",
      type:     :json,
      method:   :put
    }
  end
  
  @doc """
  Updates a core definition.
  """
  def update_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateCoreDefinition",
      type:     :json,
      method:   :put
    }
  end
  
  @doc """
  Retrieves the connectivity information for a core.
  """
  def get_connectivity_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetConnectivityInfo",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves information about a Lambda function definition, such as its
  creation time and latest version.
  """
  def get_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetFunctionDefinition",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves a list of subscription definitions.
  """
  def list_subscription_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListSubscriptionDefinitions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a device definition. You may optinally provide the initial version
  of the device definition or use ``CreateDeviceDefinitionVersion`` at a
  later time.
  """
  def create_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateDeviceDefinition",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a logger definition.
  """
  def get_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetLoggerDefinition",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves the role associated with a particular group.
  """
  def get_associated_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetAssociatedRole",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a version of a group which has already been defined.
  """
  def create_group_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateGroupVersion",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves a list of groups.
  """
  def list_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListGroups",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retreives the CA associated with a group. Returns the public key of the CA.
  """
  def get_group_certificate_authority(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetGroupCertificateAuthority",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Lists the versions of a device definition.
  """
  def list_device_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListDeviceDefinitionVersions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Retrieves information about a subscription definition.
  """
  def get_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetSubscriptionDefinition",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Disassociates the service role from the account. Without a service role,
  deployments will not work.
  """
  def disassociate_service_role_from_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociateServiceRoleFromAccount",
      type:     :json,
      method:   :delete
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
      input:    input,
      options:  options,
      action:   "AssociateServiceRoleToAccount",
      type:     :json,
      method:   :put
    }
  end
  
  @doc """
  Retrieves information about a Lambda function definition version, such as
  which Lambda functions are included in the version and their
  configurations.
  """
  def get_function_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetFunctionDefinitionVersion",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Creates a version of a core definition that has already been defined. AWS
  Greengrass Groups must each contain exactly 1 AWS Greengrass Core.
  """
  def create_core_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateCoreDefinitionVersion",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a logger definition. The logger definition must not have been used
  in a deployment.
  """
  def delete_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteLoggerDefinition",
      type:     :json,
      method:   :delete
    }
  end
  
  @doc """
  Creates a subscription definition. You may optionally provide the initial
  version of the subscription definition or use
  ``CreateSubscriptionDefinitionVersion`` at a later time.
  """
  def create_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateSubscriptionDefinition",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a core definition version.
  """
  def get_core_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetCoreDefinitionVersion",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Returns a history of deployments for the group.
  """
  def list_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListDeployments",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Deletes a Lambda function definition. The Lambda function definition must
  not have been used in a deployment.
  """
  def delete_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteFunctionDefinition",
      type:     :json,
      method:   :delete
    }
  end
  
  @doc """
  Updates a group.
  """
  def update_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateGroup",
      type:     :json,
      method:   :put
    }
  end
  
  @doc """
  Lists the versions of a logger definition.
  """
  def list_logger_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListLoggerDefinitionVersions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Updates a logger definition.
  """
  def update_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateLoggerDefinition",
      type:     :json,
      method:   :put
    }
  end
  
  @doc """
  Creates a group. You may optionally provide the initial version of the
  group or use ''CreateGroupVersion'' at a later time.
  """
  def create_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a core definition. The core definition must not have been used in a
  deployment.
  """
  def delete_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteCoreDefinition",
      type:     :json,
      method:   :delete
    }
  end
  
  @doc """
  Lists the versions of a Lambda function definition.
  """
  def list_function_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListFunctionDefinitionVersions",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Updates the connectivity information for the core. Any devices that belong
  to the group which has this core will receive this information in order to
  find the location of the core and connect to it.
  """
  def update_connectivity_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateConnectivityInfo",
      type:     :json,
      method:   :put
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
      input:    input,
      options:  options,
      action:   "AssociateRoleToGroup",
      type:     :json,
      method:   :put
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
      input:    input,
      options:  options,
      action:   "CreateFunctionDefinition",
      type:     :json,
      method:   :post
    }
  end
  
end