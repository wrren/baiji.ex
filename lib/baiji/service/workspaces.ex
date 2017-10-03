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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
    }
  end
  
end