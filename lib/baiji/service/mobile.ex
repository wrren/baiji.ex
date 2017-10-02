defmodule Baiji.Mobile do
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
      service:        "MobileHub",
      endpoint:       "/projects",
      input:          input,
      options:        options,
      action:         "CreateProject",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :post
    }
  end
  
  @doc """
  Delets a project in AWS Mobile Hub.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "MobileHub",
      endpoint:       "/projects/{projectId}",
      input:          input,
      options:        options,
      action:         "DeleteProject",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :delete
    }
  end
  
  @doc """
  Get the bundle details for the requested bundle id.
  """
  def describe_bundle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "MobileHub",
      endpoint:       "/bundles/{bundleId}",
      input:          input,
      options:        options,
      action:         "DescribeBundle",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :get
    }
  end
  
  @doc """
  Gets details about a project in AWS Mobile Hub.
  """
  def describe_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "MobileHub",
      endpoint:       "/project",
      input:          input,
      options:        options,
      action:         "DescribeProject",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :get
    }
  end
  
  @doc """
  Generates customized software development kit (SDK) and or tool packages
  used to integrate mobile web or mobile app clients with backend AWS
  resources.
  """
  def export_bundle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "MobileHub",
      endpoint:       "/bundles/{bundleId}",
      input:          input,
      options:        options,
      action:         "ExportBundle",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :post
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
      service:        "MobileHub",
      endpoint:       "/exports/{projectId}",
      input:          input,
      options:        options,
      action:         "ExportProject",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :post
    }
  end
  
  @doc """
  List all available bundles.
  """
  def list_bundles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "MobileHub",
      endpoint:       "/bundles",
      input:          input,
      options:        options,
      action:         "ListBundles",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :get
    }
  end
  
  @doc """
  Lists projects in AWS Mobile Hub.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "MobileHub",
      endpoint:       "/projects",
      input:          input,
      options:        options,
      action:         "ListProjects",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :get
    }
  end
  
  @doc """
  Update an existing project.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "MobileHub",
      endpoint:       "/update",
      input:          input,
      options:        options,
      action:         "UpdateProject",
      
      type:           :json,
      version:        "2017-07-01",
      method:         :post
    }
  end
  
end