defmodule Baiji.Workspaces do
  @moduledoc """
  Amazon WorkSpaces Service

  This reference provides detailed information about the Amazon WorkSpaces
  operations.
  """
  
  @doc """
  Creates tags for a WorkSpace.
  """
  def create_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateTags",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "CreateTagsRequest",
      output_shape:     "CreateTagsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates one or more WorkSpaces.

  <note> This operation is asynchronous and returns before the WorkSpaces are
  created.

  </note>
  """
  def create_workspaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateWorkspaces",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "CreateWorkspacesRequest",
      output_shape:     "CreateWorkspacesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes tags from a WorkSpace.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTags",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "DeleteTagsRequest",
      output_shape:     "DeleteTagsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes tags for a WorkSpace.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "DescribeTagsRequest",
      output_shape:     "DescribeTagsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Obtains information about the WorkSpace bundles that are available to your
  account in the specified region.

  You can filter the results with either the `BundleIds` parameter, or the
  `Owner` parameter, but not both.

  This operation supports pagination with the use of the `NextToken` request
  and response parameters. If more results are available, the `NextToken`
  response member contains a token that you pass in the next call to this
  operation to retrieve the next set of items.
  """
  def describe_workspace_bundles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeWorkspaceBundles",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "DescribeWorkspaceBundlesRequest",
      output_shape:     "DescribeWorkspaceBundlesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves information about the AWS Directory Service directories in the
  region that are registered with Amazon WorkSpaces and are available to your
  account.

  This operation supports pagination with the use of the `NextToken` request
  and response parameters. If more results are available, the `NextToken`
  response member contains a token that you pass in the next call to this
  operation to retrieve the next set of items.
  """
  def describe_workspace_directories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeWorkspaceDirectories",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "DescribeWorkspaceDirectoriesRequest",
      output_shape:     "DescribeWorkspaceDirectoriesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Obtains information about the specified WorkSpaces.

  Only one of the filter parameters, such as `BundleId`, `DirectoryId`, or
  `WorkspaceIds`, can be specified at a time.

  This operation supports pagination with the use of the `NextToken` request
  and response parameters. If more results are available, the `NextToken`
  response member contains a token that you pass in the next call to this
  operation to retrieve the next set of items.
  """
  def describe_workspaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeWorkspaces",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "DescribeWorkspacesRequest",
      output_shape:     "DescribeWorkspacesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the connection status of a specified WorkSpace.
  """
  def describe_workspaces_connection_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeWorkspacesConnectionStatus",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "DescribeWorkspacesConnectionStatusRequest",
      output_shape:     "DescribeWorkspacesConnectionStatusResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the WorkSpace properties, including the running mode and AutoStop
  time.
  """
  def modify_workspace_properties(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyWorkspaceProperties",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "ModifyWorkspacePropertiesRequest",
      output_shape:     "ModifyWorkspacePropertiesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Reboots the specified WorkSpaces.

  To be able to reboot a WorkSpace, the WorkSpace must have a **State** of
  `AVAILABLE`, `IMPAIRED`, or `INOPERABLE`.

  <note> This operation is asynchronous and returns before the WorkSpaces
  have rebooted.

  </note>
  """
  def reboot_workspaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RebootWorkspaces",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "RebootWorkspacesRequest",
      output_shape:     "RebootWorkspacesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Rebuilds the specified WorkSpaces.

  Rebuilding a WorkSpace is a potentially destructive action that can result
  in the loss of data. Rebuilding a WorkSpace causes the following to occur:

  <ul> <li> The system is restored to the image of the bundle that the
  WorkSpace is created from. Any applications that have been installed, or
  system settings that have been made since the WorkSpace was created will be
  lost.

  </li> <li> The data drive (D drive) is re-created from the last automatic
  snapshot taken of the data drive. The current contents of the data drive
  are overwritten. Automatic snapshots of the data drive are taken every 12
  hours, so the snapshot can be as much as 12 hours old.

  </li> </ul> To be able to rebuild a WorkSpace, the WorkSpace must have a
  **State** of `AVAILABLE` or `ERROR`.

  <note> This operation is asynchronous and returns before the WorkSpaces
  have been completely rebuilt.

  </note>
  """
  def rebuild_workspaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RebuildWorkspaces",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "RebuildWorkspacesRequest",
      output_shape:     "RebuildWorkspacesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts the specified WorkSpaces. The WorkSpaces must have a running mode of
  AutoStop and a state of STOPPED.
  """
  def start_workspaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartWorkspaces",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "StartWorkspacesRequest",
      output_shape:     "StartWorkspacesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Stops the specified WorkSpaces. The WorkSpaces must have a running mode of
  AutoStop and a state of AVAILABLE, IMPAIRED, UNHEALTHY, or ERROR.
  """
  def stop_workspaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopWorkspaces",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "StopWorkspacesRequest",
      output_shape:     "StopWorkspacesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Terminates the specified WorkSpaces.

  Terminating a WorkSpace is a permanent action and cannot be undone. The
  user's data is not maintained and will be destroyed. If you need to archive
  any user data, contact Amazon Web Services before terminating the
  WorkSpace.

  You can terminate a WorkSpace that is in any state except `SUSPENDED`.

  <note> This operation is asynchronous and returns before the WorkSpaces
  have been completely terminated.

  </note>
  """
  def terminate_workspaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workspaces",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TerminateWorkspaces",
      
      target_prefix:    "WorkspacesService",
      
      endpoint_prefix:  "workspaces",
      type:             :json,
      version:          "2015-04-08",
      method:           :post,
      input_shape:      "TerminateWorkspacesRequest",
      output_shape:     "TerminateWorkspacesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"DescribeWorkspacesConnectionStatusResult" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}, "WorkspacesConnectionStatus" => %{"shape" => "WorkspaceConnectionStatusList"}}, "type" => "structure"}, "SubnetIds" => %{"member" => %{"shape" => "SubnetId"}, "type" => "list"}, "StopWorkspaceRequests" => %{"max" => 25, "member" => %{"shape" => "StopRequest"}, "min" => 1, "type" => "list"}, "TagKeyList" => %{"member" => %{"shape" => "NonEmptyString"}, "type" => "list"}, "DirectoryId" => %{"pattern" => "^d-[0-9a-f]{8,63}$", "type" => "string"}, "CreateWorkspacesRequest" => %{"members" => %{"Workspaces" => %{"shape" => "WorkspaceRequestList"}}, "required" => ["Workspaces"], "type" => "structure"}, "Workspace" => %{"members" => %{"BundleId" => %{"shape" => "BundleId"}, "ComputerName" => %{"shape" => "ComputerName"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "ErrorCode" => %{"shape" => "WorkspaceErrorCode"}, "ErrorMessage" => %{"shape" => "Description"}, "IpAddress" => %{"shape" => "IpAddress"}, "RootVolumeEncryptionEnabled" => %{"shape" => "BooleanObject"}, "State" => %{"shape" => "WorkspaceState"}, "SubnetId" => %{"shape" => "SubnetId"}, "UserName" => %{"shape" => "UserName"}, "UserVolumeEncryptionEnabled" => %{"shape" => "BooleanObject"}, "VolumeEncryptionKey" => %{"shape" => "VolumeEncryptionKey"}, "WorkspaceId" => %{"shape" => "WorkspaceId"}, "WorkspaceProperties" => %{"shape" => "WorkspaceProperties"}}, "type" => "structure"}, "WorkspaceDirectoryState" => %{"enum" => ["REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"], "type" => "string"}, "RebuildWorkspacesResult" => %{"members" => %{"FailedRequests" => %{"shape" => "FailedRebuildWorkspaceRequests"}}, "type" => "structure"}, "ResourceLimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "RegistrationCode" => %{"max" => 20, "min" => 1, "type" => "string"}, "StopRequest" => %{"members" => %{"WorkspaceId" => %{"shape" => "WorkspaceId"}}, "type" => "structure"}, "FailedCreateWorkspaceRequest" => %{"members" => %{"ErrorCode" => %{"shape" => "ErrorType"}, "ErrorMessage" => %{"shape" => "Description"}, "WorkspaceRequest" => %{"shape" => "WorkspaceRequest"}}, "type" => "structure"}, "WorkspaceConnectionStatus" => %{"members" => %{"ConnectionState" => %{"shape" => "ConnectionState"}, "ConnectionStateCheckTimestamp" => %{"shape" => "Timestamp"}, "LastKnownUserConnectionTimestamp" => %{"shape" => "Timestamp"}, "WorkspaceId" => %{"shape" => "WorkspaceId"}}, "type" => "structure"}, "BundleList" => %{"member" => %{"shape" => "WorkspaceBundle"}, "type" => "list"}, "ConnectionState" => %{"enum" => ["CONNECTED", "DISCONNECTED", "UNKNOWN"], "type" => "string"}, "ModifyWorkspacePropertiesResult" => %{"members" => %{}, "type" => "structure"}, "AccessDeniedException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "StartRequest" => %{"members" => %{"WorkspaceId" => %{"shape" => "WorkspaceId"}}, "type" => "structure"}, "WorkspaceBundle" => %{"members" => %{"BundleId" => %{"shape" => "BundleId"}, "ComputeType" => %{"shape" => "ComputeType"}, "Description" => %{"shape" => "Description"}, "Name" => %{"shape" => "NonEmptyString"}, "Owner" => %{"shape" => "BundleOwner"}, "UserStorage" => %{"shape" => "UserStorage"}}, "type" => "structure"}, "StopWorkspacesRequest" => %{"members" => %{"StopWorkspaceRequests" => %{"shape" => "StopWorkspaceRequests"}}, "required" => ["StopWorkspaceRequests"], "type" => "structure"}, "RebootWorkspacesResult" => %{"members" => %{"FailedRequests" => %{"shape" => "FailedRebootWorkspaceRequests"}}, "type" => "structure"}, "ARN" => %{"pattern" => "^arn:aws:[A-Za-z0-9][A-za-z0-9_/.-]{0,62}:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-za-z0-9_/.-]{0,127}$", "type" => "string"}, "Compute" => %{"enum" => ["VALUE", "STANDARD", "PERFORMANCE"], "type" => "string"}, "DefaultWorkspaceCreationProperties" => %{"members" => %{"CustomSecurityGroupId" => %{"shape" => "SecurityGroupId"}, "DefaultOu" => %{"shape" => "DefaultOu"}, "EnableInternetAccess" => %{"shape" => "BooleanObject"}, "EnableWorkDocs" => %{"shape" => "BooleanObject"}, "UserEnabledAsLocalAdministrator" => %{"shape" => "BooleanObject"}}, "type" => "structure"}, "Limit" => %{"max" => 25, "min" => 1, "type" => "integer"}, "BooleanObject" => %{"type" => "boolean"}, "BundleId" => %{"pattern" => "^wsb-[0-9a-z]{8,63}$", "type" => "string"}, "DescribeWorkspacesRequest" => %{"members" => %{"BundleId" => %{"shape" => "BundleId"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "PaginationToken"}, "UserName" => %{"shape" => "UserName"}, "WorkspaceIds" => %{"shape" => "WorkspaceIdList"}}, "type" => "structure"}, "InvalidParameterValuesException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "TerminateWorkspacesResult" => %{"members" => %{"FailedRequests" => %{"shape" => "FailedTerminateWorkspaceRequests"}}, "type" => "structure"}, "Description" => %{"type" => "string"}, "CreateTagsResult" => %{"members" => %{}, "type" => "structure"}, "RebootRequest" => %{"members" => %{"WorkspaceId" => %{"shape" => "WorkspaceId"}}, "required" => ["WorkspaceId"], "type" => "structure"}, "FailedRebootWorkspaceRequests" => %{"member" => %{"shape" => "FailedWorkspaceChangeRequest"}, "type" => "list"}, "NonEmptyString" => %{"min" => 1, "type" => "string"}, "FailedRebuildWorkspaceRequests" => %{"member" => %{"shape" => "FailedWorkspaceChangeRequest"}, "type" => "list"}, "BundleIdList" => %{"max" => 25, "member" => %{"shape" => "BundleId"}, "min" => 1, "type" => "list"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key"], "type" => "structure"}, "RebuildWorkspacesRequest" => %{"members" => %{"RebuildWorkspaceRequests" => %{"shape" => "RebuildWorkspaceRequests"}}, "required" => ["RebuildWorkspaceRequests"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "DirectoryList" => %{"member" => %{"shape" => "WorkspaceDirectory"}, "type" => "list"}, "DirectoryIdList" => %{"max" => 25, "member" => %{"shape" => "DirectoryId"}, "min" => 1, "type" => "list"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "DescribeWorkspaceDirectoriesRequest" => %{"members" => %{"DirectoryIds" => %{"shape" => "DirectoryIdList"}, "NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "DefaultOu" => %{"type" => "string"}, "WorkspaceErrorCode" => %{"type" => "string"}, "TagValue" => %{"max" => 255, "type" => "string"}, "Alias" => %{"type" => "string"}, "DescribeWorkspaceDirectoriesResult" => %{"members" => %{"Directories" => %{"shape" => "DirectoryList"}, "NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "StartWorkspacesResult" => %{"members" => %{"FailedRequests" => %{"shape" => "FailedStartWorkspaceRequests"}}, "type" => "structure"}, "ComputerName" => %{"type" => "string"}, "SecurityGroupId" => %{"pattern" => "^(sg-[0-9a-f]{8})$", "type" => "string"}, "ComputeType" => %{"members" => %{"Name" => %{"shape" => "Compute"}}, "type" => "structure"}, "RebuildWorkspaceRequests" => %{"max" => 1, "member" => %{"shape" => "RebuildRequest"}, "min" => 1, "type" => "list"}, "DescribeTagsRequest" => %{"members" => %{"ResourceId" => %{"shape" => "NonEmptyString"}}, "required" => ["ResourceId"], "type" => "structure"}, "WorkspaceDirectory" => %{"members" => %{"Alias" => %{"shape" => "Alias"}, "CustomerUserName" => %{"shape" => "UserName"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "DirectoryName" => %{"shape" => "DirectoryName"}, "DirectoryType" => %{"shape" => "WorkspaceDirectoryType"}, "DnsIpAddresses" => %{"shape" => "DnsIpAddresses"}, "IamRoleId" => %{"shape" => "ARN"}, "RegistrationCode" => %{"shape" => "RegistrationCode"}, "State" => %{"shape" => "WorkspaceDirectoryState"}, "SubnetIds" => %{"shape" => "SubnetIds"}, "WorkspaceCreationProperties" => %{"shape" => "DefaultWorkspaceCreationProperties"}, "WorkspaceSecurityGroupId" => %{"shape" => "SecurityGroupId"}}, "type" => "structure"}, "WorkspaceRequest" => %{"members" => %{"BundleId" => %{"shape" => "BundleId"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "RootVolumeEncryptionEnabled" => %{"shape" => "BooleanObject"}, "Tags" => %{"shape" => "TagList"}, "UserName" => %{"shape" => "UserName"}, "UserVolumeEncryptionEnabled" => %{"shape" => "BooleanObject"}, "VolumeEncryptionKey" => %{"shape" => "VolumeEncryptionKey"}, "WorkspaceProperties" => %{"shape" => "WorkspaceProperties"}}, "required" => ["DirectoryId", "UserName", "BundleId"], "type" => "structure"}, "DirectoryName" => %{"type" => "string"}, "SubnetId" => %{"pattern" => "^(subnet-[0-9a-f]{8})$", "type" => "string"}, "RebuildRequest" => %{"members" => %{"WorkspaceId" => %{"shape" => "WorkspaceId"}}, "required" => ["WorkspaceId"], "type" => "structure"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"ResourceId" => %{"shape" => "NonEmptyString"}, "message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "StopWorkspacesResult" => %{"members" => %{"FailedRequests" => %{"shape" => "FailedStopWorkspaceRequests"}}, "type" => "structure"}, "DeleteTagsResult" => %{"members" => %{}, "type" => "structure"}, "WorkspaceDirectoryType" => %{"enum" => ["SIMPLE_AD", "AD_CONNECTOR"], "type" => "string"}, "VolumeEncryptionKey" => %{"type" => "string"}, "IpAddress" => %{"type" => "string"}, "ErrorType" => %{"type" => "string"}, "StartWorkspaceRequests" => %{"max" => 25, "member" => %{"shape" => "StartRequest"}, "min" => 1, "type" => "list"}, "UserName" => %{"max" => 63, "min" => 1, "type" => "string"}, "ModifyWorkspacePropertiesRequest" => %{"members" => %{"WorkspaceId" => %{"shape" => "WorkspaceId"}, "WorkspaceProperties" => %{"shape" => "WorkspaceProperties"}}, "required" => ["WorkspaceId", "WorkspaceProperties"], "type" => "structure"}, "BundleOwner" => %{"type" => "string"}, "RunningModeAutoStopTimeoutInMinutes" => %{"type" => "integer"}, "RunningMode" => %{"enum" => ["AUTO_STOP", "ALWAYS_ON"], "type" => "string"}, "DescribeWorkspacesResult" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}, "Workspaces" => %{"shape" => "WorkspaceList"}}, "type" => "structure"}, "WorkspaceList" => %{"member" => %{"shape" => "Workspace"}, "type" => "list"}, "PaginationToken" => %{"max" => 63, "min" => 1, "type" => "string"}, "CreateWorkspacesResult" => %{"members" => %{"FailedRequests" => %{"shape" => "FailedCreateWorkspaceRequests"}, "PendingRequests" => %{"shape" => "WorkspaceList"}}, "type" => "structure"}, "DeleteTagsRequest" => %{"members" => %{"ResourceId" => %{"shape" => "NonEmptyString"}, "TagKeys" => %{"shape" => "TagKeyList"}}, "required" => ["ResourceId", "TagKeys"], "type" => "structure"}, "CreateTagsRequest" => %{"members" => %{"ResourceId" => %{"shape" => "NonEmptyString"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceId", "Tags"], "type" => "structure"}, "ExceptionMessage" => %{"type" => "string"}, "DescribeTagsResult" => %{"members" => %{"TagList" => %{"shape" => "TagList"}}, "type" => "structure"}, "RebootWorkspacesRequest" => %{"members" => %{"RebootWorkspaceRequests" => %{"shape" => "RebootWorkspaceRequests"}}, "required" => ["RebootWorkspaceRequests"], "type" => "structure"}, "StartWorkspacesRequest" => %{"members" => %{"StartWorkspaceRequests" => %{"shape" => "StartWorkspaceRequests"}}, "required" => ["StartWorkspaceRequests"], "type" => "structure"}, "FailedStartWorkspaceRequests" => %{"member" => %{"shape" => "FailedWorkspaceChangeRequest"}, "type" => "list"}, "FailedCreateWorkspaceRequests" => %{"member" => %{"shape" => "FailedCreateWorkspaceRequest"}, "type" => "list"}, "DescribeWorkspaceBundlesRequest" => %{"members" => %{"BundleIds" => %{"shape" => "BundleIdList"}, "NextToken" => %{"shape" => "PaginationToken"}, "Owner" => %{"shape" => "BundleOwner"}}, "type" => "structure"}, "DescribeWorkspaceBundlesResult" => %{"members" => %{"Bundles" => %{"shape" => "BundleList"}, "NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "UnsupportedWorkspaceConfigurationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "WorkspaceConnectionStatusList" => %{"member" => %{"shape" => "WorkspaceConnectionStatus"}, "type" => "list"}, "TerminateRequest" => %{"members" => %{"WorkspaceId" => %{"shape" => "WorkspaceId"}}, "required" => ["WorkspaceId"], "type" => "structure"}, "TagKey" => %{"max" => 127, "min" => 1, "type" => "string"}, "TerminateWorkspaceRequests" => %{"max" => 25, "member" => %{"shape" => "TerminateRequest"}, "min" => 1, "type" => "list"}, "UserStorage" => %{"members" => %{"Capacity" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "FailedWorkspaceChangeRequest" => %{"members" => %{"ErrorCode" => %{"shape" => "ErrorType"}, "ErrorMessage" => %{"shape" => "Description"}, "WorkspaceId" => %{"shape" => "WorkspaceId"}}, "type" => "structure"}, "FailedStopWorkspaceRequests" => %{"member" => %{"shape" => "FailedWorkspaceChangeRequest"}, "type" => "list"}, "WorkspaceIdList" => %{"max" => 25, "member" => %{"shape" => "WorkspaceId"}, "min" => 1, "type" => "list"}, "InvalidResourceStateException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "FailedTerminateWorkspaceRequests" => %{"member" => %{"shape" => "FailedWorkspaceChangeRequest"}, "type" => "list"}, "WorkspaceId" => %{"pattern" => "^ws-[0-9a-z]{8,63}$", "type" => "string"}, "OperationInProgressException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "WorkspaceProperties" => %{"members" => %{"RunningMode" => %{"shape" => "RunningMode"}, "RunningModeAutoStopTimeoutInMinutes" => %{"shape" => "RunningModeAutoStopTimeoutInMinutes"}}, "type" => "structure"}, "ResourceUnavailableException" => %{"exception" => true, "members" => %{"ResourceId" => %{"shape" => "NonEmptyString"}, "message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "TerminateWorkspacesRequest" => %{"members" => %{"TerminateWorkspaceRequests" => %{"shape" => "TerminateWorkspaceRequests"}}, "required" => ["TerminateWorkspaceRequests"], "type" => "structure"}, "RebootWorkspaceRequests" => %{"max" => 25, "member" => %{"shape" => "RebootRequest"}, "min" => 1, "type" => "list"}, "DescribeWorkspacesConnectionStatusRequest" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}, "WorkspaceIds" => %{"shape" => "WorkspaceIdList"}}, "type" => "structure"}, "WorkspaceRequestList" => %{"max" => 25, "member" => %{"shape" => "WorkspaceRequest"}, "min" => 1, "type" => "list"}, "WorkspaceState" => %{"enum" => ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "STOPPING", "STOPPED", "ERROR"], "type" => "string"}, "DnsIpAddresses" => %{"member" => %{"shape" => "IpAddress"}, "type" => "list"}}
  end
end