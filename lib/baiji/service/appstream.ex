defmodule Baiji.Appstream do
  @moduledoc """
  Amazon AppStream 2.0

  API documentation for Amazon AppStream 2.0.
  """
  
  @doc """
  Associate a fleet to a stack.
  """
  def associate_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateFleet",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "AssociateFleetRequest",
      output_shape:     "AssociateFleetResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a directory configuration with the given parameters.
  """
  def create_directory_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDirectoryConfig",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "CreateDirectoryConfigRequest",
      output_shape:     "CreateDirectoryConfigResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new fleet.
  """
  def create_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateFleet",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "CreateFleetRequest",
      output_shape:     "CreateFleetResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new stack.
  """
  def create_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateStack",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "CreateStackRequest",
      output_shape:     "CreateStackResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a URL to start an AppStream 2.0 streaming session for a user. By
  default, the URL is valid only for 1 minute from the time that it is
  generated.
  """
  def create_streaming_u_r_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateStreamingURL",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "CreateStreamingURLRequest",
      output_shape:     "CreateStreamingURLResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the directory configuration with the given parameters.
  """
  def delete_directory_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDirectoryConfig",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DeleteDirectoryConfigRequest",
      output_shape:     "DeleteDirectoryConfigResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a fleet.
  """
  def delete_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteFleet",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DeleteFleetRequest",
      output_shape:     "DeleteFleetResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the stack. After this operation completes, the environment can no
  longer be activated, and any reservations made for the stack are released.
  """
  def delete_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteStack",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DeleteStackRequest",
      output_shape:     "DeleteStackResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list describing the specified directory configurations.
  """
  def describe_directory_configs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDirectoryConfigs",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DescribeDirectoryConfigsRequest",
      output_shape:     "DescribeDirectoryConfigsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  If fleet names are provided, this operation describes the specified fleets;
  otherwise, all the fleets in the account are described.
  """
  def describe_fleets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFleets",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DescribeFleetsRequest",
      output_shape:     "DescribeFleetsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the images. If a list of names is not provided, all images in
  your account are returned. This operation does not return a paginated
  result.
  """
  def describe_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeImages",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DescribeImagesRequest",
      output_shape:     "DescribeImagesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the streaming sessions for a stack and a fleet. If a user ID is
  provided, this operation returns streaming sessions for only that user. To
  retrieve the next set of items, pass this value for the `nextToken`
  parameter in a subsequent call to this operation. If an authentication type
  is not provided, the operation defaults to users authenticated using a
  streaming URL.
  """
  def describe_sessions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSessions",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DescribeSessionsRequest",
      output_shape:     "DescribeSessionsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  If stack names are not provided, this operation describes the specified
  stacks; otherwise, all stacks in the account are described. To retrieve the
  next set of items, pass the `nextToken` value in a subsequent call to this
  operation.
  """
  def describe_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeStacks",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DescribeStacksRequest",
      output_shape:     "DescribeStacksResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disassociates a fleet from a stack.
  """
  def disassociate_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateFleet",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "DisassociateFleetRequest",
      output_shape:     "DisassociateFleetResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation immediately stops a streaming session.
  """
  def expire_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ExpireSession",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "ExpireSessionRequest",
      output_shape:     "ExpireSessionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all fleets associated with the stack.
  """
  def list_associated_fleets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAssociatedFleets",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "ListAssociatedFleetsRequest",
      output_shape:     "ListAssociatedFleetsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all stacks to which the specified fleet is associated.
  """
  def list_associated_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAssociatedStacks",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "ListAssociatedStacksRequest",
      output_shape:     "ListAssociatedStacksResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts a fleet.
  """
  def start_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartFleet",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "StartFleetRequest",
      output_shape:     "StartFleetResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Stops a fleet.
  """
  def stop_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopFleet",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "StopFleetRequest",
      output_shape:     "StopFleetResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the directory configuration with the given parameters.
  """
  def update_directory_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDirectoryConfig",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "UpdateDirectoryConfigRequest",
      output_shape:     "UpdateDirectoryConfigResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates an existing fleet. All the attributes except the fleet name can be
  updated in the **STOPPED** state. When a fleet is in the **RUNNING** state,
  only `DisplayName` and `ComputeCapacity` can be updated. A fleet cannot be
  updated in a status of **STARTING** or **STOPPING**.
  """
  def update_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateFleet",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "UpdateFleetRequest",
      output_shape:     "UpdateFleetResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the specified fields in the stack with the specified name.
  """
  def update_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "appstream",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateStack",
      
      target_prefix:    "PhotonAdminProxyService",
      
      endpoint_prefix:  "appstream2",
      type:             :json,
      version:          "2016-12-01",
      method:           :post,
      input_shape:      "UpdateStackRequest",
      output_shape:     "UpdateStackResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"DescribeStacksResult" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "Stacks" => %{"shape" => "StackList"}}, "type" => "structure"}, "DeleteDirectoryConfigResult" => %{"members" => %{}, "type" => "structure"}, "Application" => %{"members" => %{"DisplayName" => %{"shape" => "String"}, "Enabled" => %{"shape" => "Boolean"}, "IconURL" => %{"shape" => "String"}, "LaunchParameters" => %{"shape" => "String"}, "LaunchPath" => %{"shape" => "String"}, "Metadata" => %{"shape" => "Metadata"}, "Name" => %{"shape" => "String"}}, "type" => "structure"}, "StackList" => %{"member" => %{"shape" => "Stack"}, "type" => "list"}, "DescribeImagesRequest" => %{"members" => %{"Names" => %{"shape" => "StringList"}}, "type" => "structure"}, "UpdateFleetResult" => %{"members" => %{"Fleet" => %{"shape" => "Fleet"}}, "type" => "structure"}, "SessionState" => %{"enum" => ["ACTIVE", "PENDING", "EXPIRED"], "type" => "string"}, "DisplayName" => %{"max" => 100, "type" => "string"}, "DescribeDirectoryConfigsResult" => %{"members" => %{"DirectoryConfigs" => %{"shape" => "DirectoryConfigList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ImageStateChangeReasonCode" => %{"enum" => ["INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE"], "type" => "string"}, "ListAssociatedFleetsResult" => %{"members" => %{"Names" => %{"shape" => "StringList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "FleetState" => %{"enum" => ["STARTING", "RUNNING", "STOPPING", "STOPPED"], "type" => "string"}, "String" => %{"min" => 1, "type" => "string"}, "Boolean" => %{"type" => "boolean"}, "ErrorMessage" => %{"type" => "string"}, "StorageConnector" => %{"members" => %{"ConnectorType" => %{"shape" => "StorageConnectorType"}, "ResourceIdentifier" => %{"shape" => "ResourceIdentifier"}}, "required" => ["ConnectorType"], "type" => "structure"}, "ComputeCapacity" => %{"members" => %{"DesiredInstances" => %{"shape" => "Integer"}}, "required" => ["DesiredInstances"], "type" => "structure"}, "DeleteStackResult" => %{"members" => %{}, "type" => "structure"}, "DirectoryConfigList" => %{"member" => %{"shape" => "DirectoryConfig"}, "type" => "list"}, "FleetAttribute" => %{"enum" => ["VPC_CONFIGURATION", "VPC_CONFIGURATION_SECURITY_GROUP_IDS", "DOMAIN_JOIN_INFO"], "type" => "string"}, "DescribeFleetsResult" => %{"members" => %{"Fleets" => %{"shape" => "FleetList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "FleetErrorCode" => %{"enum" => ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"], "type" => "string"}, "CreateStackRequest" => %{"members" => %{"Description" => %{"shape" => "Description"}, "DisplayName" => %{"shape" => "DisplayName"}, "Name" => %{"shape" => "String"}, "StorageConnectors" => %{"shape" => "StorageConnectorList"}}, "required" => ["Name"], "type" => "structure"}, "Metadata" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "IncompatibleImageException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StorageConnectorType" => %{"enum" => ["HOMEFOLDERS"], "type" => "string"}, "ResourceInUseException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "VisibilityType" => %{"enum" => ["PUBLIC", "PRIVATE"], "type" => "string"}, "VpcConfig" => %{"members" => %{"SecurityGroupIds" => %{"shape" => "SecurityGroupIdList"}, "SubnetIds" => %{"shape" => "SubnetIdList"}}, "type" => "structure"}, "ExpireSessionResult" => %{"members" => %{}, "type" => "structure"}, "StringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "ImageState" => %{"enum" => ["PENDING", "AVAILABLE", "FAILED", "DELETING"], "type" => "string"}, "Name" => %{"pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$", "type" => "string"}, "StartFleetResult" => %{"members" => %{}, "type" => "structure"}, "BooleanObject" => %{"type" => "boolean"}, "StackErrorCode" => %{"enum" => ["STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"], "type" => "string"}, "DescribeFleetsRequest" => %{"members" => %{"Names" => %{"shape" => "StringList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "Stack" => %{"members" => %{"Arn" => %{"shape" => "Arn"}, "CreatedTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}, "DisplayName" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "StackErrors" => %{"shape" => "StackErrors"}, "StorageConnectors" => %{"shape" => "StorageConnectorList"}}, "required" => ["Name"], "type" => "structure"}, "FleetAttributes" => %{"member" => %{"shape" => "FleetAttribute"}, "type" => "list"}, "CreateStreamingURLRequest" => %{"members" => %{"ApplicationId" => %{"shape" => "String"}, "FleetName" => %{"shape" => "String"}, "SessionContext" => %{"shape" => "String"}, "StackName" => %{"shape" => "String"}, "UserId" => %{"shape" => "StreamingUrlUserId"}, "Validity" => %{"shape" => "Long"}}, "required" => ["StackName", "FleetName", "UserId"], "type" => "structure"}, "AuthenticationType" => %{"enum" => ["API", "SAML", "USERPOOL"], "type" => "string"}, "UpdateDirectoryConfigRequest" => %{"members" => %{"DirectoryName" => %{"shape" => "DirectoryName"}, "OrganizationalUnitDistinguishedNames" => %{"shape" => "OrganizationalUnitDistinguishedNamesList"}, "ServiceAccountCredentials" => %{"shape" => "ServiceAccountCredentials"}}, "required" => ["DirectoryName"], "type" => "structure"}, "Description" => %{"max" => 256, "type" => "string"}, "FleetErrors" => %{"member" => %{"shape" => "FleetError"}, "type" => "list"}, "CreateStreamingURLResult" => %{"members" => %{"Expires" => %{"shape" => "Timestamp"}, "StreamingURL" => %{"shape" => "String"}}, "type" => "structure"}, "StackErrors" => %{"member" => %{"shape" => "StackError"}, "type" => "list"}, "ImageList" => %{"member" => %{"shape" => "Image"}, "type" => "list"}, "UpdateFleetRequest" => %{"members" => %{"AttributesToDelete" => %{"shape" => "FleetAttributes"}, "ComputeCapacity" => %{"shape" => "ComputeCapacity"}, "DeleteVpcConfig" => %{"deprecated" => true, "shape" => "Boolean"}, "Description" => %{"shape" => "Description"}, "DisconnectTimeoutInSeconds" => %{"shape" => "Integer"}, "DisplayName" => %{"shape" => "DisplayName"}, "DomainJoinInfo" => %{"shape" => "DomainJoinInfo"}, "EnableDefaultInternetAccess" => %{"shape" => "BooleanObject"}, "ImageName" => %{"shape" => "String"}, "InstanceType" => %{"shape" => "String"}, "MaxUserDurationInSeconds" => %{"shape" => "Integer"}, "Name" => %{"shape" => "String"}, "VpcConfig" => %{"shape" => "VpcConfig"}}, "required" => ["Name"], "type" => "structure"}, "SessionList" => %{"member" => %{"shape" => "Session"}, "type" => "list"}, "ResourceNotAvailableException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StartFleetRequest" => %{"members" => %{"Name" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "DirectoryNameList" => %{"member" => %{"shape" => "DirectoryName"}, "type" => "list"}, "Timestamp" => %{"type" => "timestamp"}, "OrganizationalUnitDistinguishedNamesList" => %{"member" => %{"shape" => "OrganizationalUnitDistinguishedName"}, "type" => "list"}, "DisassociateFleetRequest" => %{"members" => %{"FleetName" => %{"shape" => "String"}, "StackName" => %{"shape" => "String"}}, "required" => ["FleetName", "StackName"], "type" => "structure"}, "FleetError" => %{"members" => %{"ErrorCode" => %{"shape" => "FleetErrorCode"}, "ErrorMessage" => %{"shape" => "String"}}, "type" => "structure"}, "ExpireSessionRequest" => %{"members" => %{"SessionId" => %{"shape" => "String"}}, "required" => ["SessionId"], "type" => "structure"}, "Arn" => %{"pattern" => "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$", "type" => "string"}, "ComputeCapacityStatus" => %{"members" => %{"Available" => %{"shape" => "Integer"}, "Desired" => %{"shape" => "Integer"}, "InUse" => %{"shape" => "Integer"}, "Running" => %{"shape" => "Integer"}}, "required" => ["Desired"], "type" => "structure"}, "DeleteFleetResult" => %{"members" => %{}, "type" => "structure"}, "ListAssociatedStacksResult" => %{"members" => %{"Names" => %{"shape" => "StringList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "Fleet" => %{"members" => %{"Arn" => %{"shape" => "Arn"}, "ComputeCapacityStatus" => %{"shape" => "ComputeCapacityStatus"}, "CreatedTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}, "DisconnectTimeoutInSeconds" => %{"shape" => "Integer"}, "DisplayName" => %{"shape" => "String"}, "DomainJoinInfo" => %{"shape" => "DomainJoinInfo"}, "EnableDefaultInternetAccess" => %{"shape" => "BooleanObject"}, "FleetErrors" => %{"shape" => "FleetErrors"}, "ImageName" => %{"shape" => "String"}, "InstanceType" => %{"shape" => "String"}, "MaxUserDurationInSeconds" => %{"shape" => "Integer"}, "Name" => %{"shape" => "String"}, "State" => %{"shape" => "FleetState"}, "VpcConfig" => %{"shape" => "VpcConfig"}}, "required" => ["Arn", "Name", "ImageName", "InstanceType", "ComputeCapacityStatus", "State"], "type" => "structure"}, "Image" => %{"members" => %{"Applications" => %{"shape" => "Applications"}, "Arn" => %{"shape" => "Arn"}, "BaseImageArn" => %{"shape" => "Arn"}, "CreatedTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}, "DisplayName" => %{"shape" => "String"}, "ImageBuilderSupported" => %{"shape" => "Boolean"}, "Name" => %{"shape" => "String"}, "Platform" => %{"shape" => "PlatformType"}, "PublicBaseImageReleasedDate" => %{"shape" => "Timestamp"}, "State" => %{"shape" => "ImageState"}, "StateChangeReason" => %{"shape" => "ImageStateChangeReason"}, "Visibility" => %{"shape" => "VisibilityType"}}, "required" => ["Name"], "type" => "structure"}, "DirectoryConfig" => %{"members" => %{"CreatedTime" => %{"shape" => "Timestamp"}, "DirectoryName" => %{"shape" => "DirectoryName"}, "OrganizationalUnitDistinguishedNames" => %{"shape" => "OrganizationalUnitDistinguishedNamesList"}, "ServiceAccountCredentials" => %{"shape" => "ServiceAccountCredentials"}}, "required" => ["DirectoryName"], "type" => "structure"}, "CreateDirectoryConfigResult" => %{"members" => %{"DirectoryConfig" => %{"shape" => "DirectoryConfig"}}, "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "StreamingUrlUserId" => %{"max" => 32, "min" => 2, "pattern" => "[\\w+=,.@-]*", "type" => "string"}, "DirectoryName" => %{"type" => "string"}, "Long" => %{"type" => "long"}, "SubnetIdList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "AssociateFleetRequest" => %{"members" => %{"FleetName" => %{"shape" => "String"}, "StackName" => %{"shape" => "String"}}, "required" => ["FleetName", "StackName"], "type" => "structure"}, "CreateDirectoryConfigRequest" => %{"members" => %{"DirectoryName" => %{"shape" => "DirectoryName"}, "OrganizationalUnitDistinguishedNames" => %{"shape" => "OrganizationalUnitDistinguishedNamesList"}, "ServiceAccountCredentials" => %{"shape" => "ServiceAccountCredentials"}}, "required" => ["DirectoryName", "OrganizationalUnitDistinguishedNames", "ServiceAccountCredentials"], "type" => "structure"}, "PlatformType" => %{"enum" => ["WINDOWS"], "type" => "string"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UpdateStackRequest" => %{"members" => %{"DeleteStorageConnectors" => %{"shape" => "Boolean"}, "Description" => %{"shape" => "Description"}, "DisplayName" => %{"shape" => "DisplayName"}, "Name" => %{"shape" => "String"}, "StorageConnectors" => %{"shape" => "StorageConnectorList"}}, "required" => ["Name"], "type" => "structure"}, "SecurityGroupIdList" => %{"max" => 5, "member" => %{"shape" => "String"}, "type" => "list"}, "OperationNotPermittedException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Applications" => %{"member" => %{"shape" => "Application"}, "type" => "list"}, "ListAssociatedFleetsRequest" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "StackName" => %{"shape" => "String"}}, "required" => ["StackName"], "type" => "structure"}, "AccountName" => %{"min" => 1, "sensitive" => true, "type" => "string"}, "DescribeStacksRequest" => %{"members" => %{"Names" => %{"shape" => "StringList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "CreateFleetResult" => %{"members" => %{"Fleet" => %{"shape" => "Fleet"}}, "type" => "structure"}, "UpdateDirectoryConfigResult" => %{"members" => %{"DirectoryConfig" => %{"shape" => "DirectoryConfig"}}, "type" => "structure"}, "StorageConnectorList" => %{"member" => %{"shape" => "StorageConnector"}, "type" => "list"}, "FleetList" => %{"member" => %{"shape" => "Fleet"}, "type" => "list"}, "InvalidRoleException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DisassociateFleetResult" => %{"members" => %{}, "type" => "structure"}, "InvalidParameterCombinationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UserId" => %{"max" => 32, "min" => 2, "type" => "string"}, "DescribeSessionsResult" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "Sessions" => %{"shape" => "SessionList"}}, "type" => "structure"}, "StopFleetRequest" => %{"members" => %{"Name" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "DescribeSessionsRequest" => %{"members" => %{"AuthenticationType" => %{"shape" => "AuthenticationType"}, "FleetName" => %{"shape" => "String"}, "Limit" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "StackName" => %{"shape" => "String"}, "UserId" => %{"shape" => "UserId"}}, "required" => ["StackName", "FleetName"], "type" => "structure"}, "CreateFleetRequest" => %{"members" => %{"ComputeCapacity" => %{"shape" => "ComputeCapacity"}, "Description" => %{"shape" => "Description"}, "DisconnectTimeoutInSeconds" => %{"shape" => "Integer"}, "DisplayName" => %{"shape" => "DisplayName"}, "DomainJoinInfo" => %{"shape" => "DomainJoinInfo"}, "EnableDefaultInternetAccess" => %{"shape" => "BooleanObject"}, "ImageName" => %{"shape" => "String"}, "InstanceType" => %{"shape" => "String"}, "MaxUserDurationInSeconds" => %{"shape" => "Integer"}, "Name" => %{"shape" => "Name"}, "VpcConfig" => %{"shape" => "VpcConfig"}}, "required" => ["Name", "ImageName", "InstanceType", "ComputeCapacity"], "type" => "structure"}, "UpdateStackResult" => %{"members" => %{"Stack" => %{"shape" => "Stack"}}, "type" => "structure"}, "ResourceAlreadyExistsException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DomainJoinInfo" => %{"members" => %{"DirectoryName" => %{"shape" => "DirectoryName"}, "OrganizationalUnitDistinguishedName" => %{"shape" => "OrganizationalUnitDistinguishedName"}}, "type" => "structure"}, "ListAssociatedStacksRequest" => %{"members" => %{"FleetName" => %{"shape" => "String"}, "NextToken" => %{"shape" => "String"}}, "required" => ["FleetName"], "type" => "structure"}, "AccountPassword" => %{"max" => 127, "min" => 1, "sensitive" => true, "type" => "string"}, "DeleteStackRequest" => %{"members" => %{"Name" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "StackError" => %{"members" => %{"ErrorCode" => %{"shape" => "StackErrorCode"}, "ErrorMessage" => %{"shape" => "String"}}, "type" => "structure"}, "CreateStackResult" => %{"members" => %{"Stack" => %{"shape" => "Stack"}}, "type" => "structure"}, "DeleteFleetRequest" => %{"members" => %{"Name" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "DescribeDirectoryConfigsRequest" => %{"members" => %{"DirectoryNames" => %{"shape" => "DirectoryNameList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "OrganizationalUnitDistinguishedName" => %{"max" => 2000, "type" => "string"}, "DescribeImagesResult" => %{"members" => %{"Images" => %{"shape" => "ImageList"}}, "type" => "structure"}, "Session" => %{"members" => %{"AuthenticationType" => %{"shape" => "AuthenticationType"}, "FleetName" => %{"shape" => "String"}, "Id" => %{"shape" => "String"}, "StackName" => %{"shape" => "String"}, "State" => %{"shape" => "SessionState"}, "UserId" => %{"shape" => "UserId"}}, "required" => ["Id", "UserId", "StackName", "FleetName", "State"], "type" => "structure"}, "DeleteDirectoryConfigRequest" => %{"members" => %{"DirectoryName" => %{"shape" => "DirectoryName"}}, "required" => ["DirectoryName"], "type" => "structure"}, "StopFleetResult" => %{"members" => %{}, "type" => "structure"}, "ServiceAccountCredentials" => %{"members" => %{"AccountName" => %{"shape" => "AccountName"}, "AccountPassword" => %{"shape" => "AccountPassword"}}, "required" => ["AccountName", "AccountPassword"], "type" => "structure"}, "ResourceIdentifier" => %{"min" => 1, "type" => "string"}, "ConcurrentModificationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "AssociateFleetResult" => %{"members" => %{}, "type" => "structure"}, "ImageStateChangeReason" => %{"members" => %{"Code" => %{"shape" => "ImageStateChangeReasonCode"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}}
  end
end