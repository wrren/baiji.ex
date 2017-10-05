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
      path:             "/greengrass/definition/functions",
      input:            input,
      options:          options,
      action:           "ListFunctionDefinitions",
      method:           :get,
      input_shape:      "ListFunctionDefinitionsRequest",
      output_shape:     "ListFunctionDefinitionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists versions of a core definition.
  """
  def list_core_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/cores/{CoreDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListCoreDefinitionVersions",
      method:           :get,
      input_shape:      "ListCoreDefinitionVersionsRequest",
      output_shape:     "ListCoreDefinitionVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a version of a subscription definition which has already been
  defined.
  """
  def create_subscription_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateSubscriptionDefinitionVersion",
      method:           :post,
      input_shape:      "CreateSubscriptionDefinitionVersionRequest",
      output_shape:     "CreateSubscriptionDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a subscription definition.
  """
  def update_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateSubscriptionDefinition",
      method:           :put,
      input_shape:      "UpdateSubscriptionDefinitionRequest",
      output_shape:     "UpdateSubscriptionDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Create a version of a Lambda function definition that has already been
  defined.
  """
  def create_function_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/functions/{FunctionDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateFunctionDefinitionVersion",
      method:           :post,
      input_shape:      "CreateFunctionDefinitionVersionRequest",
      output_shape:     "CreateFunctionDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the Cert expiry time for a group.
  """
  def update_group_certificate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry",
      input:            input,
      options:          options,
      action:           "UpdateGroupCertificateConfiguration",
      method:           :put,
      input_shape:      "UpdateGroupCertificateConfigurationRequest",
      output_shape:     "UpdateGroupCertificateConfigurationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociates the role from a group.
  """
  def disassociate_role_from_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/role",
      input:            input,
      options:          options,
      action:           "DisassociateRoleFromGroup",
      method:           :delete,
      input_shape:      "DisassociateRoleFromGroupRequest",
      output_shape:     "DisassociateRoleFromGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a device definition version.
  """
  def get_device_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetDeviceDefinitionVersion",
      method:           :get,
      input_shape:      "GetDeviceDefinitionVersionRequest",
      output_shape:     "GetDeviceDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the current configuration for the CA used by the group.
  """
  def get_group_certificate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry",
      input:            input,
      options:          options,
      action:           "GetGroupCertificateConfiguration",
      method:           :get,
      input_shape:      "GetGroupCertificateConfigurationRequest",
      output_shape:     "GetGroupCertificateConfigurationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a subscription definition. The subscription definition must not
  have been used in a deployment.
  """
  def delete_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteSubscriptionDefinition",
      method:           :delete,
      input_shape:      "DeleteSubscriptionDefinitionRequest",
      output_shape:     "DeleteSubscriptionDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the current CAs for a group.
  """
  def list_group_certificate_authorities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/certificateauthorities",
      input:            input,
      options:          options,
      action:           "ListGroupCertificateAuthorities",
      method:           :get,
      input_shape:      "ListGroupCertificateAuthoritiesRequest",
      output_shape:     "ListGroupCertificateAuthoritiesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the service role that is attached to the account.
  """
  def get_service_role_for_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/servicerole",
      input:            input,
      options:          options,
      action:           "GetServiceRoleForAccount",
      method:           :get,
      input_shape:      "GetServiceRoleForAccountRequest",
      output_shape:     "GetServiceRoleForAccountResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a version of a device definition that has already been defined.
  """
  def create_device_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/devices/{DeviceDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateDeviceDefinitionVersion",
      method:           :post,
      input_shape:      "CreateDeviceDefinitionVersionRequest",
      output_shape:     "CreateDeviceDefinitionVersionResponse",
      endpoint:         __spec__()
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
      path:             "/greengrass/definition/cores",
      input:            input,
      options:          options,
      action:           "CreateCoreDefinition",
      method:           :post,
      input_shape:      "CreateCoreDefinitionRequest",
      output_shape:     "CreateCoreDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  List the versions of a group.
  """
  def list_group_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/versions",
      input:            input,
      options:          options,
      action:           "ListGroupVersions",
      method:           :get,
      input_shape:      "ListGroupVersionsRequest",
      output_shape:     "ListGroupVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of logger definitions.
  """
  def list_logger_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/loggers",
      input:            input,
      options:          options,
      action:           "ListLoggerDefinitions",
      method:           :get,
      input_shape:      "ListLoggerDefinitionsRequest",
      output_shape:     "ListLoggerDefinitionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a group. The group must not have been used in deployment.
  """
  def delete_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}",
      input:            input,
      options:          options,
      action:           "DeleteGroup",
      method:           :delete,
      input_shape:      "DeleteGroupRequest",
      output_shape:     "DeleteGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a Lambda function definition.
  """
  def update_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/functions/{FunctionDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateFunctionDefinition",
      method:           :put,
      input_shape:      "UpdateFunctionDefinitionRequest",
      output_shape:     "UpdateFunctionDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a device definition. The device definition must not have been used
  in a deployment.
  """
  def delete_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/devices/{DeviceDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteDeviceDefinition",
      method:           :delete,
      input_shape:      "DeleteDeviceDefinitionRequest",
      output_shape:     "DeleteDeviceDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a device definition.
  """
  def get_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/devices/{DeviceDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetDeviceDefinition",
      method:           :get,
      input_shape:      "GetDeviceDefinitionRequest",
      output_shape:     "GetDeviceDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a deployment.
  """
  def create_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/deployments",
      input:            input,
      options:          options,
      action:           "CreateDeployment",
      method:           :post,
      input_shape:      "CreateDeploymentRequest",
      output_shape:     "CreateDeploymentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a logger definition version.
  """
  def get_logger_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetLoggerDefinitionVersion",
      method:           :get,
      input_shape:      "GetLoggerDefinitionVersionRequest",
      output_shape:     "GetLoggerDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of device definitions.
  """
  def list_device_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/devices",
      input:            input,
      options:          options,
      action:           "ListDeviceDefinitions",
      method:           :get,
      input_shape:      "ListDeviceDefinitionsRequest",
      output_shape:     "ListDeviceDefinitionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a core definition version.
  """
  def get_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/cores/{CoreDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetCoreDefinition",
      method:           :get,
      input_shape:      "GetCoreDefinitionRequest",
      output_shape:     "GetCoreDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a logger definition. You may optionally provide the initial version
  of the logger definition or use ``CreateLoggerDefinitionVersion`` at a
  later time.
  """
  def create_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/loggers",
      input:            input,
      options:          options,
      action:           "CreateLoggerDefinition",
      method:           :post,
      input_shape:      "CreateLoggerDefinitionRequest",
      output_shape:     "CreateLoggerDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of core definitions.
  """
  def list_core_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/cores",
      input:            input,
      options:          options,
      action:           "ListCoreDefinitions",
      method:           :get,
      input_shape:      "ListCoreDefinitionsRequest",
      output_shape:     "ListCoreDefinitionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a version of a logger definition that has already been defined.
  """
  def create_logger_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/loggers/{LoggerDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateLoggerDefinitionVersion",
      method:           :post,
      input_shape:      "CreateLoggerDefinitionVersionRequest",
      output_shape:     "CreateLoggerDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a group version.
  """
  def get_group_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/versions/{GroupVersionId}",
      input:            input,
      options:          options,
      action:           "GetGroupVersion",
      method:           :get,
      input_shape:      "GetGroupVersionRequest",
      output_shape:     "GetGroupVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the status of a deployment.
  """
  def get_deployment_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status",
      input:            input,
      options:          options,
      action:           "GetDeploymentStatus",
      method:           :get,
      input_shape:      "GetDeploymentStatusRequest",
      output_shape:     "GetDeploymentStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the versions of a subscription definition.
  """
  def list_subscription_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListSubscriptionDefinitionVersions",
      method:           :get,
      input_shape:      "ListSubscriptionDefinitionVersionsRequest",
      output_shape:     "ListSubscriptionDefinitionVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a CA for the group. If a CA already exists, it will rotate the
  existing CA.
  """
  def create_group_certificate_authority(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/certificateauthorities",
      input:            input,
      options:          options,
      action:           "CreateGroupCertificateAuthority",
      method:           :post,
      input_shape:      "CreateGroupCertificateAuthorityRequest",
      output_shape:     "CreateGroupCertificateAuthorityResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a subscription definition version.
  """
  def get_subscription_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetSubscriptionDefinitionVersion",
      method:           :get,
      input_shape:      "GetSubscriptionDefinitionVersionRequest",
      output_shape:     "GetSubscriptionDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a group.
  """
  def get_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}",
      input:            input,
      options:          options,
      action:           "GetGroup",
      method:           :get,
      input_shape:      "GetGroupRequest",
      output_shape:     "GetGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a device definition.
  """
  def update_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/devices/{DeviceDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateDeviceDefinition",
      method:           :put,
      input_shape:      "UpdateDeviceDefinitionRequest",
      output_shape:     "UpdateDeviceDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a core definition.
  """
  def update_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/cores/{CoreDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateCoreDefinition",
      method:           :put,
      input_shape:      "UpdateCoreDefinitionRequest",
      output_shape:     "UpdateCoreDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the connectivity information for a core.
  """
  def get_connectivity_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/things/{ThingName}/connectivityInfo",
      input:            input,
      options:          options,
      action:           "GetConnectivityInfo",
      method:           :get,
      input_shape:      "GetConnectivityInfoRequest",
      output_shape:     "GetConnectivityInfoResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a Lambda function definition, such as its
  creation time and latest version.
  """
  def get_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/functions/{FunctionDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetFunctionDefinition",
      method:           :get,
      input_shape:      "GetFunctionDefinitionRequest",
      output_shape:     "GetFunctionDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of subscription definitions.
  """
  def list_subscription_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/subscriptions",
      input:            input,
      options:          options,
      action:           "ListSubscriptionDefinitions",
      method:           :get,
      input_shape:      "ListSubscriptionDefinitionsRequest",
      output_shape:     "ListSubscriptionDefinitionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a device definition. You may optinally provide the initial version
  of the device definition or use ``CreateDeviceDefinitionVersion`` at a
  later time.
  """
  def create_device_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/devices",
      input:            input,
      options:          options,
      action:           "CreateDeviceDefinition",
      method:           :post,
      input_shape:      "CreateDeviceDefinitionRequest",
      output_shape:     "CreateDeviceDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a logger definition.
  """
  def get_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/loggers/{LoggerDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetLoggerDefinition",
      method:           :get,
      input_shape:      "GetLoggerDefinitionRequest",
      output_shape:     "GetLoggerDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the role associated with a particular group.
  """
  def get_associated_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/role",
      input:            input,
      options:          options,
      action:           "GetAssociatedRole",
      method:           :get,
      input_shape:      "GetAssociatedRoleRequest",
      output_shape:     "GetAssociatedRoleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a version of a group which has already been defined.
  """
  def create_group_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/versions",
      input:            input,
      options:          options,
      action:           "CreateGroupVersion",
      method:           :post,
      input_shape:      "CreateGroupVersionRequest",
      output_shape:     "CreateGroupVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of groups.
  """
  def list_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups",
      input:            input,
      options:          options,
      action:           "ListGroups",
      method:           :get,
      input_shape:      "ListGroupsRequest",
      output_shape:     "ListGroupsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retreives the CA associated with a group. Returns the public key of the CA.
  """
  def get_group_certificate_authority(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}",
      input:            input,
      options:          options,
      action:           "GetGroupCertificateAuthority",
      method:           :get,
      input_shape:      "GetGroupCertificateAuthorityRequest",
      output_shape:     "GetGroupCertificateAuthorityResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the versions of a device definition.
  """
  def list_device_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/devices/{DeviceDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListDeviceDefinitionVersions",
      method:           :get,
      input_shape:      "ListDeviceDefinitionVersionsRequest",
      output_shape:     "ListDeviceDefinitionVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a subscription definition.
  """
  def get_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
      input:            input,
      options:          options,
      action:           "GetSubscriptionDefinition",
      method:           :get,
      input_shape:      "GetSubscriptionDefinitionRequest",
      output_shape:     "GetSubscriptionDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociates the service role from the account. Without a service role,
  deployments will not work.
  """
  def disassociate_service_role_from_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/servicerole",
      input:            input,
      options:          options,
      action:           "DisassociateServiceRoleFromAccount",
      method:           :delete,
      input_shape:      "DisassociateServiceRoleFromAccountRequest",
      output_shape:     "DisassociateServiceRoleFromAccountResponse",
      endpoint:         __spec__()
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
      path:             "/greengrass/servicerole",
      input:            input,
      options:          options,
      action:           "AssociateServiceRoleToAccount",
      method:           :put,
      input_shape:      "AssociateServiceRoleToAccountRequest",
      output_shape:     "AssociateServiceRoleToAccountResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a Lambda function definition version, such as
  which Lambda functions are included in the version and their
  configurations.
  """
  def get_function_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetFunctionDefinitionVersion",
      method:           :get,
      input_shape:      "GetFunctionDefinitionVersionRequest",
      output_shape:     "GetFunctionDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a version of a core definition that has already been defined. AWS
  Greengrass Groups must each contain exactly 1 AWS Greengrass Core.
  """
  def create_core_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/cores/{CoreDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "CreateCoreDefinitionVersion",
      method:           :post,
      input_shape:      "CreateCoreDefinitionVersionRequest",
      output_shape:     "CreateCoreDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a logger definition. The logger definition must not have been used
  in a deployment.
  """
  def delete_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/loggers/{LoggerDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteLoggerDefinition",
      method:           :delete,
      input_shape:      "DeleteLoggerDefinitionRequest",
      output_shape:     "DeleteLoggerDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a subscription definition. You may optionally provide the initial
  version of the subscription definition or use
  ``CreateSubscriptionDefinitionVersion`` at a later time.
  """
  def create_subscription_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/subscriptions",
      input:            input,
      options:          options,
      action:           "CreateSubscriptionDefinition",
      method:           :post,
      input_shape:      "CreateSubscriptionDefinitionRequest",
      output_shape:     "CreateSubscriptionDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a core definition version.
  """
  def get_core_definition_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}",
      input:            input,
      options:          options,
      action:           "GetCoreDefinitionVersion",
      method:           :get,
      input_shape:      "GetCoreDefinitionVersionRequest",
      output_shape:     "GetCoreDefinitionVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a history of deployments for the group.
  """
  def list_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}/deployments",
      input:            input,
      options:          options,
      action:           "ListDeployments",
      method:           :get,
      input_shape:      "ListDeploymentsRequest",
      output_shape:     "ListDeploymentsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a Lambda function definition. The Lambda function definition must
  not have been used in a deployment.
  """
  def delete_function_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/functions/{FunctionDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteFunctionDefinition",
      method:           :delete,
      input_shape:      "DeleteFunctionDefinitionRequest",
      output_shape:     "DeleteFunctionDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a group.
  """
  def update_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups/{GroupId}",
      input:            input,
      options:          options,
      action:           "UpdateGroup",
      method:           :put,
      input_shape:      "UpdateGroupRequest",
      output_shape:     "UpdateGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the versions of a logger definition.
  """
  def list_logger_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/loggers/{LoggerDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListLoggerDefinitionVersions",
      method:           :get,
      input_shape:      "ListLoggerDefinitionVersionsRequest",
      output_shape:     "ListLoggerDefinitionVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a logger definition.
  """
  def update_logger_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/loggers/{LoggerDefinitionId}",
      input:            input,
      options:          options,
      action:           "UpdateLoggerDefinition",
      method:           :put,
      input_shape:      "UpdateLoggerDefinitionRequest",
      output_shape:     "UpdateLoggerDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a group. You may optionally provide the initial version of the
  group or use ''CreateGroupVersion'' at a later time.
  """
  def create_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/groups",
      input:            input,
      options:          options,
      action:           "CreateGroup",
      method:           :post,
      input_shape:      "CreateGroupRequest",
      output_shape:     "CreateGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a core definition. The core definition must not have been used in a
  deployment.
  """
  def delete_core_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/cores/{CoreDefinitionId}",
      input:            input,
      options:          options,
      action:           "DeleteCoreDefinition",
      method:           :delete,
      input_shape:      "DeleteCoreDefinitionRequest",
      output_shape:     "DeleteCoreDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the versions of a Lambda function definition.
  """
  def list_function_definition_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/definition/functions/{FunctionDefinitionId}/versions",
      input:            input,
      options:          options,
      action:           "ListFunctionDefinitionVersions",
      method:           :get,
      input_shape:      "ListFunctionDefinitionVersionsRequest",
      output_shape:     "ListFunctionDefinitionVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the connectivity information for the core. Any devices that belong
  to the group which has this core will receive this information in order to
  find the location of the core and connect to it.
  """
  def update_connectivity_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/greengrass/things/{ThingName}/connectivityInfo",
      input:            input,
      options:          options,
      action:           "UpdateConnectivityInfo",
      method:           :put,
      input_shape:      "UpdateConnectivityInfoRequest",
      output_shape:     "UpdateConnectivityInfoResponse",
      endpoint:         __spec__()
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
      path:             "/greengrass/groups/{GroupId}/role",
      input:            input,
      options:          options,
      action:           "AssociateRoleToGroup",
      method:           :put,
      input_shape:      "AssociateRoleToGroupRequest",
      output_shape:     "AssociateRoleToGroupResponse",
      endpoint:         __spec__()
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
      path:             "/greengrass/definition/functions",
      input:            input,
      options:          options,
      action:           "CreateFunctionDefinition",
      method:           :post,
      input_shape:      "CreateFunctionDefinitionRequest",
      output_shape:     "CreateFunctionDefinitionResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "greengrass",
      endpoint_prefix:  "greengrass",
      type:             :json,
      version:          "2017-06-07",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"DeleteLoggerDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "UpdateSubscriptionDefinitionRequest" => %{"members" => %{"Name" => %{"shape" => "__string"}, "SubscriptionDefinitionId" => %{"location" => "uri", "locationName" => "SubscriptionDefinitionId", "shape" => "__string"}}, "required" => ["SubscriptionDefinitionId"], "type" => "structure"}, "DeleteSubscriptionDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "CreateDeploymentResponse" => %{"members" => %{"DeploymentArn" => %{"shape" => "__string"}, "DeploymentId" => %{"shape" => "__string"}}, "type" => "structure"}, "DeleteSubscriptionDefinitionRequest" => %{"members" => %{"SubscriptionDefinitionId" => %{"location" => "uri", "locationName" => "SubscriptionDefinitionId", "shape" => "__string"}}, "required" => ["SubscriptionDefinitionId"], "type" => "structure"}, "ListSubscriptionDefinitionVersionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "__string"}, "Versions" => %{"shape" => "ListOfVersionInformation"}}, "type" => "structure"}, "ListDefinitionsResponse" => %{"members" => %{"Definitions" => %{"shape" => "ListOfDefinitionInformation"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateDeviceDefinitionVersionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "DeviceDefinitionId" => %{"location" => "uri", "locationName" => "DeviceDefinitionId", "shape" => "__string"}, "Devices" => %{"shape" => "ListOfDevice"}}, "required" => ["DeviceDefinitionId"], "type" => "structure"}, "AssociateServiceRoleToAccountRequest" => %{"members" => %{"RoleArn" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateLoggerDefinitionRequest" => %{"members" => %{"LoggerDefinitionId" => %{"location" => "uri", "locationName" => "LoggerDefinitionId", "shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "required" => ["LoggerDefinitionId"], "type" => "structure"}, "UpdateGroupRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "AssociateServiceRoleToAccountResponse" => %{"members" => %{"AssociatedAt" => %{"shape" => "__string"}}, "type" => "structure"}, "GetAssociatedRoleResponse" => %{"members" => %{"AssociatedAt" => %{"shape" => "__string"}, "RoleArn" => %{"shape" => "__string"}}, "type" => "structure"}, "GetSubscriptionDefinitionRequest" => %{"members" => %{"SubscriptionDefinitionId" => %{"location" => "uri", "locationName" => "SubscriptionDefinitionId", "shape" => "__string"}}, "required" => ["SubscriptionDefinitionId"], "type" => "structure"}, "GetLoggerDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "GetServiceRoleForAccountRequest" => %{"members" => %{}, "type" => "structure"}, "CreateCoreDefinitionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "InitialVersion" => %{"shape" => "CoreDefinitionVersion"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "GetLoggerDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Definition" => %{"shape" => "LoggerDefinitionVersion"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "DisassociateServiceRoleFromAccountResponse" => %{"members" => %{"DisassociatedAt" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateDeploymentRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "DeploymentId" => %{"shape" => "__string"}, "DeploymentType" => %{"shape" => "DeploymentType"}, "GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}, "GroupVersionId" => %{"shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "LoggerType" => %{"enum" => ["FileSystem", "AWSCloudWatch"], "type" => "string"}, "CreateLoggerDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "DeleteGroupRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "CreateGroupVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "GroupCertificateConfiguration" => %{"members" => %{"CertificateAuthorityExpiryInMilliseconds" => %{"shape" => "__string"}, "CertificateExpiryInMilliseconds" => %{"shape" => "__string"}, "GroupId" => %{"shape" => "__string"}}, "type" => "structure"}, "ListOfCore" => %{"member" => %{"shape" => "Core"}, "type" => "list"}, "GroupCertificateAuthorityProperties" => %{"members" => %{"GroupCertificateAuthorityArn" => %{"shape" => "__string"}, "GroupCertificateAuthorityId" => %{"shape" => "__string"}}, "type" => "structure"}, "ListDeviceDefinitionVersionsRequest" => %{"members" => %{"DeviceDefinitionId" => %{"location" => "uri", "locationName" => "DeviceDefinitionId", "shape" => "__string"}, "MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "required" => ["DeviceDefinitionId"], "type" => "structure"}, "ListCoreDefinitionsRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "type" => "structure"}, "CoreDefinitionVersion" => %{"members" => %{"Cores" => %{"shape" => "ListOfCore"}}, "type" => "structure"}, "CreateLoggerDefinitionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "InitialVersion" => %{"shape" => "LoggerDefinitionVersion"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "ListDeviceDefinitionsResponse" => %{"members" => %{"Definitions" => %{"shape" => "ListOfDefinitionInformation"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "ListOfConnectivityInfo" => %{"member" => %{"shape" => "ConnectivityInfo"}, "type" => "list"}, "Core" => %{"members" => %{"CertificateArn" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "SyncShadow" => %{"shape" => "__boolean"}, "ThingArn" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateGroupCertificateConfigurationResponse" => %{"members" => %{"CertificateAuthorityExpiryInMilliseconds" => %{"shape" => "__string"}, "CertificateExpiryInMilliseconds" => %{"shape" => "__string"}, "GroupId" => %{"shape" => "__string"}}, "type" => "structure"}, "DisassociateServiceRoleFromAccountRequest" => %{"members" => %{}, "type" => "structure"}, "CreateFunctionDefinitionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "InitialVersion" => %{"shape" => "FunctionDefinitionVersion"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "LoggerLevel" => %{"enum" => ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"], "type" => "string"}, "ListOfGroupCertificateAuthorityProperties" => %{"member" => %{"shape" => "GroupCertificateAuthorityProperties"}, "type" => "list"}, "DeleteLoggerDefinitionRequest" => %{"members" => %{"LoggerDefinitionId" => %{"location" => "uri", "locationName" => "LoggerDefinitionId", "shape" => "__string"}}, "required" => ["LoggerDefinitionId"], "type" => "structure"}, "GetCoreDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "ListSubscriptionDefinitionsResponse" => %{"members" => %{"Definitions" => %{"shape" => "ListOfDefinitionInformation"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "DeleteDeviceDefinitionRequest" => %{"members" => %{"DeviceDefinitionId" => %{"location" => "uri", "locationName" => "DeviceDefinitionId", "shape" => "__string"}}, "required" => ["DeviceDefinitionId"], "type" => "structure"}, "GetGroupVersionRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}, "GroupVersionId" => %{"location" => "uri", "locationName" => "GroupVersionId", "shape" => "__string"}}, "required" => ["GroupVersionId", "GroupId"], "type" => "structure"}, "ListGroupsResponse" => %{"members" => %{"Groups" => %{"shape" => "ListOfGroupInformation"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "GetFunctionDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "DisassociateRoleFromGroupRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "GetCoreDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Definition" => %{"shape" => "CoreDefinitionVersion"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "ListOfVersionInformation" => %{"member" => %{"shape" => "VersionInformation"}, "type" => "list"}, "CreateGroupCertificateAuthorityResponse" => %{"members" => %{"GroupCertificateAuthorityArn" => %{"shape" => "__string"}}, "type" => "structure"}, "SubscriptionDefinitionVersion" => %{"members" => %{"Subscriptions" => %{"shape" => "ListOfSubscription"}}, "type" => "structure"}, "CreateDeviceDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "LoggerComponent" => %{"enum" => ["GreengrassSystem", "Lambda"], "type" => "string"}, "UpdateDeviceDefinitionRequest" => %{"members" => %{"DeviceDefinitionId" => %{"location" => "uri", "locationName" => "DeviceDefinitionId", "shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "required" => ["DeviceDefinitionId"], "type" => "structure"}, "GetGroupRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "ListDeviceDefinitionsRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "type" => "structure"}, "ListGroupVersionsRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}, "MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "ListLoggerDefinitionVersionsRequest" => %{"members" => %{"LoggerDefinitionId" => %{"location" => "uri", "locationName" => "LoggerDefinitionId", "shape" => "__string"}, "MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "required" => ["LoggerDefinitionId"], "type" => "structure"}, "CreateGroupRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "InitialVersion" => %{"shape" => "GroupVersion"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "FunctionDefinitionVersion" => %{"members" => %{"Functions" => %{"shape" => "ListOfFunction"}}, "type" => "structure"}, "Deployment" => %{"members" => %{"CreatedAt" => %{"shape" => "__string"}, "DeploymentArn" => %{"shape" => "__string"}, "DeploymentId" => %{"shape" => "__string"}, "GroupArn" => %{"shape" => "__string"}}, "type" => "structure"}, "__double" => %{"type" => "double"}, "CreateLoggerDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateLoggerDefinitionVersionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "LoggerDefinitionId" => %{"location" => "uri", "locationName" => "LoggerDefinitionId", "shape" => "__string"}, "Loggers" => %{"shape" => "ListOfLogger"}}, "required" => ["LoggerDefinitionId"], "type" => "structure"}, "GetLoggerDefinitionRequest" => %{"members" => %{"LoggerDefinitionId" => %{"location" => "uri", "locationName" => "LoggerDefinitionId", "shape" => "__string"}}, "required" => ["LoggerDefinitionId"], "type" => "structure"}, "UpdateCoreDefinitionRequest" => %{"members" => %{"CoreDefinitionId" => %{"location" => "uri", "locationName" => "CoreDefinitionId", "shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "required" => ["CoreDefinitionId"], "type" => "structure"}, "AssociateRoleToGroupResponse" => %{"members" => %{"AssociatedAt" => %{"shape" => "__string"}}, "type" => "structure"}, "GetDeviceDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Definition" => %{"shape" => "DeviceDefinitionVersion"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateFunctionDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "GetDeploymentStatusResponse" => %{"members" => %{"DeploymentStatus" => %{"shape" => "__string"}, "ErrorMessage" => %{"shape" => "__string"}, "UpdatedAt" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateGroupResponse" => %{"members" => %{}, "type" => "structure"}, "UpdateFunctionDefinitionRequest" => %{"members" => %{"FunctionDefinitionId" => %{"location" => "uri", "locationName" => "FunctionDefinitionId", "shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "required" => ["FunctionDefinitionId"], "type" => "structure"}, "DisassociateRoleFromGroupResponse" => %{"members" => %{"DisassociatedAt" => %{"shape" => "__string"}}, "type" => "structure"}, "GetGroupResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateCoreDefinitionVersionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "CoreDefinitionId" => %{"location" => "uri", "locationName" => "CoreDefinitionId", "shape" => "__string"}, "Cores" => %{"shape" => "ListOfCore"}}, "required" => ["CoreDefinitionId"], "type" => "structure"}, "GetCoreDefinitionRequest" => %{"members" => %{"CoreDefinitionId" => %{"location" => "uri", "locationName" => "CoreDefinitionId", "shape" => "__string"}}, "required" => ["CoreDefinitionId"], "type" => "structure"}, "CreateFunctionDefinitionVersionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "FunctionDefinitionId" => %{"location" => "uri", "locationName" => "FunctionDefinitionId", "shape" => "__string"}, "Functions" => %{"shape" => "ListOfFunction"}}, "required" => ["FunctionDefinitionId"], "type" => "structure"}, "UpdateDeviceDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "GetLoggerDefinitionVersionRequest" => %{"members" => %{"LoggerDefinitionId" => %{"location" => "uri", "locationName" => "LoggerDefinitionId", "shape" => "__string"}, "LoggerDefinitionVersionId" => %{"location" => "uri", "locationName" => "LoggerDefinitionVersionId", "shape" => "__string"}}, "required" => ["LoggerDefinitionVersionId", "LoggerDefinitionId"], "type" => "structure"}, "CreateGroupCertificateAuthorityRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "UpdateLoggerDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "GetConnectivityInfoRequest" => %{"members" => %{"ThingName" => %{"location" => "uri", "locationName" => "ThingName", "shape" => "__string"}}, "required" => ["ThingName"], "type" => "structure"}, "ListLoggerDefinitionsRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "type" => "structure"}, "GetGroupCertificateConfigurationResponse" => %{"members" => %{"CertificateAuthorityExpiryInMilliseconds" => %{"shape" => "__string"}, "CertificateExpiryInMilliseconds" => %{"shape" => "__string"}, "GroupId" => %{"shape" => "__string"}}, "type" => "structure"}, "Subscription" => %{"members" => %{"Id" => %{"shape" => "__string"}, "Source" => %{"shape" => "__string"}, "Subject" => %{"shape" => "__string"}, "Target" => %{"shape" => "__string"}}, "type" => "structure"}, "ListSubscriptionDefinitionsRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "type" => "structure"}, "DeleteGroupResponse" => %{"members" => %{}, "type" => "structure"}, "ListVersionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "__string"}, "Versions" => %{"shape" => "ListOfVersionInformation"}}, "type" => "structure"}, "FunctionConfiguration" => %{"members" => %{"Environment" => %{"shape" => "FunctionConfigurationEnvironment"}, "ExecArgs" => %{"shape" => "__string"}, "Executable" => %{"shape" => "__string"}, "MemorySize" => %{"shape" => "__integer"}, "Pinned" => %{"shape" => "__boolean"}, "Timeout" => %{"shape" => "__integer"}}, "type" => "structure"}, "ListFunctionDefinitionsRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "type" => "structure"}, "ListOfSubscription" => %{"member" => %{"shape" => "Subscription"}, "type" => "list"}, "__boolean" => %{"type" => "boolean"}, "BadRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"ErrorDetails" => %{"shape" => "ErrorDetails"}, "Message" => %{"shape" => "__string"}}, "type" => "structure"}, "ListGroupCertificateAuthoritiesRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "ListOfDevice" => %{"member" => %{"shape" => "Device"}, "type" => "list"}, "UpdateSubscriptionDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "CreateSubscriptionDefinitionVersionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "SubscriptionDefinitionId" => %{"location" => "uri", "locationName" => "SubscriptionDefinitionId", "shape" => "__string"}, "Subscriptions" => %{"shape" => "ListOfSubscription"}}, "required" => ["SubscriptionDefinitionId"], "type" => "structure"}, "UpdateCoreDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "ListSubscriptionDefinitionVersionsRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}, "SubscriptionDefinitionId" => %{"location" => "uri", "locationName" => "SubscriptionDefinitionId", "shape" => "__string"}}, "required" => ["SubscriptionDefinitionId"], "type" => "structure"}, "Empty" => %{"members" => %{}, "type" => "structure"}, "ListCoreDefinitionVersionsRequest" => %{"members" => %{"CoreDefinitionId" => %{"location" => "uri", "locationName" => "CoreDefinitionId", "shape" => "__string"}, "MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "required" => ["CoreDefinitionId"], "type" => "structure"}, "UpdateGroupCertificateConfigurationRequest" => %{"members" => %{"CertificateExpiryInMilliseconds" => %{"shape" => "__string"}, "GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "ErrorDetails" => %{"member" => %{"shape" => "ErrorDetail"}, "type" => "list"}, "GroupInformation" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "ListOfDefinitionInformation" => %{"member" => %{"shape" => "DefinitionInformation"}, "type" => "list"}, "GetFunctionDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Definition" => %{"shape" => "FunctionDefinitionVersion"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "DeploymentType" => %{"enum" => ["NewDeployment", "Redeployment"], "type" => "string"}, "ListGroupCertificateAuthoritiesResponse" => %{"members" => %{"GroupCertificateAuthorities" => %{"shape" => "ListOfGroupCertificateAuthorityProperties"}}, "type" => "structure"}, "ErrorDetail" => %{"members" => %{"DetailedErrorCode" => %{"shape" => "__string"}, "DetailedErrorMessage" => %{"shape" => "__string"}}, "type" => "structure"}, "GetGroupCertificateConfigurationRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "ListOfLogger" => %{"member" => %{"shape" => "Logger"}, "type" => "list"}, "UpdateConnectivityInfoRequest" => %{"members" => %{"ConnectivityInfo" => %{"shape" => "ListOfConnectivityInfo"}, "ThingName" => %{"location" => "uri", "locationName" => "ThingName", "shape" => "__string"}}, "required" => ["ThingName"], "type" => "structure"}, "ConnectivityInfo" => %{"members" => %{"HostAddress" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Metadata" => %{"shape" => "__string"}, "PortNumber" => %{"shape" => "__integer"}}, "type" => "structure"}, "Function" => %{"members" => %{"FunctionArn" => %{"shape" => "__string"}, "FunctionConfiguration" => %{"shape" => "FunctionConfiguration"}, "Id" => %{"shape" => "__string"}}, "type" => "structure"}, "GetSubscriptionDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Definition" => %{"shape" => "SubscriptionDefinitionVersion"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateGroupVersionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "CoreDefinitionVersionArn" => %{"shape" => "__string"}, "DeviceDefinitionVersionArn" => %{"shape" => "__string"}, "FunctionDefinitionVersionArn" => %{"shape" => "__string"}, "GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}, "LoggerDefinitionVersionArn" => %{"shape" => "__string"}, "SubscriptionDefinitionVersionArn" => %{"shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "CreateSubscriptionDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "ListGroupVersionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "__string"}, "Versions" => %{"shape" => "ListOfVersionInformation"}}, "type" => "structure"}, "GetDeploymentStatusRequest" => %{"members" => %{"DeploymentId" => %{"location" => "uri", "locationName" => "DeploymentId", "shape" => "__string"}, "GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId", "DeploymentId"], "type" => "structure"}, "ListGroupsRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "type" => "structure"}, "VersionInformation" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "MapOf__string" => %{"key" => %{"shape" => "__string"}, "type" => "map", "value" => %{"shape" => "__string"}}, "ListFunctionDefinitionVersionsRequest" => %{"members" => %{"FunctionDefinitionId" => %{"location" => "uri", "locationName" => "FunctionDefinitionId", "shape" => "__string"}, "MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "required" => ["FunctionDefinitionId"], "type" => "structure"}, "GetDeviceDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "GetServiceRoleForAccountResponse" => %{"members" => %{"AssociatedAt" => %{"shape" => "__string"}, "RoleArn" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateFunctionDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "DeleteCoreDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "GetDeviceDefinitionRequest" => %{"members" => %{"DeviceDefinitionId" => %{"location" => "uri", "locationName" => "DeviceDefinitionId", "shape" => "__string"}}, "required" => ["DeviceDefinitionId"], "type" => "structure"}, "DeleteDeviceDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "ListLoggerDefinitionsResponse" => %{"members" => %{"Definitions" => %{"shape" => "ListOfDefinitionInformation"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "GetAssociatedRoleRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "ListOfFunction" => %{"member" => %{"shape" => "Function"}, "type" => "list"}, "DeleteCoreDefinitionRequest" => %{"members" => %{"CoreDefinitionId" => %{"location" => "uri", "locationName" => "CoreDefinitionId", "shape" => "__string"}}, "required" => ["CoreDefinitionId"], "type" => "structure"}, "CreateCoreDefinitionVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateDeviceDefinitionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "InitialVersion" => %{"shape" => "DeviceDefinitionVersion"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "DeviceDefinitionVersion" => %{"members" => %{"Devices" => %{"shape" => "ListOfDevice"}}, "type" => "structure"}, "GetGroupVersionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Definition" => %{"shape" => "GroupVersion"}, "Id" => %{"shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateFunctionDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "GetSubscriptionDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "GetSubscriptionDefinitionVersionRequest" => %{"members" => %{"SubscriptionDefinitionId" => %{"location" => "uri", "locationName" => "SubscriptionDefinitionId", "shape" => "__string"}, "SubscriptionDefinitionVersionId" => %{"location" => "uri", "locationName" => "SubscriptionDefinitionVersionId", "shape" => "__string"}}, "required" => ["SubscriptionDefinitionId", "SubscriptionDefinitionVersionId"], "type" => "structure"}, "GetDeviceDefinitionVersionRequest" => %{"members" => %{"DeviceDefinitionId" => %{"location" => "uri", "locationName" => "DeviceDefinitionId", "shape" => "__string"}, "DeviceDefinitionVersionId" => %{"location" => "uri", "locationName" => "DeviceDefinitionVersionId", "shape" => "__string"}}, "required" => ["DeviceDefinitionVersionId", "DeviceDefinitionId"], "type" => "structure"}, "Device" => %{"members" => %{"CertificateArn" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "SyncShadow" => %{"shape" => "__boolean"}, "ThingArn" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateCoreDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "Deployments" => %{"member" => %{"shape" => "Deployment"}, "type" => "list"}, "GetCoreDefinitionVersionRequest" => %{"members" => %{"CoreDefinitionId" => %{"location" => "uri", "locationName" => "CoreDefinitionId", "shape" => "__string"}, "CoreDefinitionVersionId" => %{"location" => "uri", "locationName" => "CoreDefinitionVersionId", "shape" => "__string"}}, "required" => ["CoreDefinitionId", "CoreDefinitionVersionId"], "type" => "structure"}, "DeleteFunctionDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "GetGroupCertificateAuthorityResponse" => %{"members" => %{"GroupCertificateAuthorityArn" => %{"shape" => "__string"}, "GroupCertificateAuthorityId" => %{"shape" => "__string"}, "PemEncodedCertificate" => %{"shape" => "__string"}}, "type" => "structure"}, "GroupVersion" => %{"members" => %{"CoreDefinitionVersionArn" => %{"shape" => "__string"}, "DeviceDefinitionVersionArn" => %{"shape" => "__string"}, "FunctionDefinitionVersionArn" => %{"shape" => "__string"}, "LoggerDefinitionVersionArn" => %{"shape" => "__string"}, "SubscriptionDefinitionVersionArn" => %{"shape" => "__string"}}, "type" => "structure"}, "__string" => %{"type" => "string"}, "CreateSubscriptionDefinitionRequest" => %{"members" => %{"AmznClientToken" => %{"location" => "header", "locationName" => "X-Amzn-Client-Token", "shape" => "__string"}, "InitialVersion" => %{"shape" => "SubscriptionDefinitionVersion"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "GetGroupCertificateAuthorityRequest" => %{"members" => %{"CertificateAuthorityId" => %{"location" => "uri", "locationName" => "CertificateAuthorityId", "shape" => "__string"}, "GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}}, "required" => ["CertificateAuthorityId", "GroupId"], "type" => "structure"}, "FunctionConfigurationEnvironment" => %{"members" => %{"Variables" => %{"shape" => "MapOf__string"}}, "type" => "structure"}, "InternalServerErrorException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "members" => %{"ErrorDetails" => %{"shape" => "ErrorDetails"}, "Message" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateDeviceDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateGroupResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "GetConnectivityInfoResponse" => %{"members" => %{"ConnectivityInfo" => %{"shape" => "ListOfConnectivityInfo"}, "Message" => %{"locationName" => "message", "shape" => "__string"}}, "type" => "structure"}, "Logger" => %{"members" => %{"Component" => %{"shape" => "LoggerComponent"}, "Id" => %{"shape" => "__string"}, "Level" => %{"shape" => "LoggerLevel"}, "Space" => %{"shape" => "__integer"}, "Type" => %{"shape" => "LoggerType"}}, "type" => "structure"}, "GetFunctionDefinitionRequest" => %{"members" => %{"FunctionDefinitionId" => %{"location" => "uri", "locationName" => "FunctionDefinitionId", "shape" => "__string"}}, "required" => ["FunctionDefinitionId"], "type" => "structure"}, "DefinitionInformation" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "ListDeploymentsResponse" => %{"members" => %{"Deployments" => %{"shape" => "Deployments"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "ListFunctionDefinitionVersionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "__string"}, "Versions" => %{"shape" => "ListOfVersionInformation"}}, "type" => "structure"}, "ListOfGroupInformation" => %{"member" => %{"shape" => "GroupInformation"}, "type" => "list"}, "GetFunctionDefinitionVersionRequest" => %{"members" => %{"FunctionDefinitionId" => %{"location" => "uri", "locationName" => "FunctionDefinitionId", "shape" => "__string"}, "FunctionDefinitionVersionId" => %{"location" => "uri", "locationName" => "FunctionDefinitionVersionId", "shape" => "__string"}}, "required" => ["FunctionDefinitionId", "FunctionDefinitionVersionId"], "type" => "structure"}, "ListCoreDefinitionsResponse" => %{"members" => %{"Definitions" => %{"shape" => "ListOfDefinitionInformation"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateConnectivityInfoResponse" => %{"members" => %{"Message" => %{"locationName" => "message", "shape" => "__string"}, "Version" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateSubscriptionDefinitionResponse" => %{"members" => %{"Arn" => %{"shape" => "__string"}, "CreationTimestamp" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "LastUpdatedTimestamp" => %{"shape" => "__string"}, "LatestVersion" => %{"shape" => "__string"}, "LatestVersionArn" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "LoggerDefinitionVersion" => %{"members" => %{"Loggers" => %{"shape" => "ListOfLogger"}}, "type" => "structure"}, "ListFunctionDefinitionsResponse" => %{"members" => %{"Definitions" => %{"shape" => "ListOfDefinitionInformation"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "GeneralError" => %{"members" => %{"ErrorDetails" => %{"shape" => "ErrorDetails"}, "Message" => %{"shape" => "__string"}}, "type" => "structure"}, "__integer" => %{"type" => "integer"}, "ListDeploymentsRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}, "MaxResults" => %{"location" => "querystring", "locationName" => "MaxResults", "shape" => "__string"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "ListLoggerDefinitionVersionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "__string"}, "Versions" => %{"shape" => "ListOfVersionInformation"}}, "type" => "structure"}, "__timestamp" => %{"type" => "timestamp"}, "DeleteFunctionDefinitionRequest" => %{"members" => %{"FunctionDefinitionId" => %{"location" => "uri", "locationName" => "FunctionDefinitionId", "shape" => "__string"}}, "required" => ["FunctionDefinitionId"], "type" => "structure"}, "ListDeviceDefinitionVersionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "__string"}, "Versions" => %{"shape" => "ListOfVersionInformation"}}, "type" => "structure"}, "AssociateRoleToGroupRequest" => %{"members" => %{"GroupId" => %{"location" => "uri", "locationName" => "GroupId", "shape" => "__string"}, "RoleArn" => %{"shape" => "__string"}}, "required" => ["GroupId"], "type" => "structure"}, "ListCoreDefinitionVersionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "__string"}, "Versions" => %{"shape" => "ListOfVersionInformation"}}, "type" => "structure"}}
  end
end