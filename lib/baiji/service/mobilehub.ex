defmodule Baiji.Mobilehub do
  @moduledoc """
  AWS Mobile Service provides mobile app and website developers with
  capabilities required to configure AWS resources and bootstrap their
  developer desktop projects with the necessary SDKs, constants, tools and
  samples to make use of those resources.
  """
  
  @doc """
  Creates an AWS Mobile Hub project.
  """
  def create_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateProject",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Delets a project in AWS Mobile Hub.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteProject",
      type:     :json,
      method:   :delete
    }
  end
  
  @doc """
  Get the bundle details for the requested bundle id.
  """
  def describe_bundle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeBundle",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Gets details about a project in AWS Mobile Hub.
  """
  def describe_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeProject",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Generates customized software development kit (SDK) and or tool packages
  used to integrate mobile web or mobile app clients with backend AWS
  resources.
  """
  def export_bundle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ExportBundle",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Exports project configuration to a snapshot which can be downloaded and
  shared. Note that mobile app push credentials are encrypted in exported
  projects, so they can only be shared successfully within the same AWS
  account.
  """
  def export_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ExportProject",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  List all available bundles.
  """
  def list_bundles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListBundles",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Lists projects in AWS Mobile Hub.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListProjects",
      type:     :json,
      method:   :get
    }
  end
  
  @doc """
  Update an existing project.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateProject",
      type:     :json,
      method:   :post
    }
  end
  
end