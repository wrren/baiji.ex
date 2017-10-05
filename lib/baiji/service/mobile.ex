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
      path:             "/projects",
      input:            input,
      options:          options,
      action:           "CreateProject",
      method:           :post,
      input_shape:      "CreateProjectRequest",
      output_shape:     "CreateProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Delets a project in AWS Mobile Hub.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/projects/{projectId}",
      input:            input,
      options:          options,
      action:           "DeleteProject",
      method:           :delete,
      input_shape:      "DeleteProjectRequest",
      output_shape:     "DeleteProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Get the bundle details for the requested bundle id.
  """
  def describe_bundle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bundles/{bundleId}",
      input:            input,
      options:          options,
      action:           "DescribeBundle",
      method:           :get,
      input_shape:      "DescribeBundleRequest",
      output_shape:     "DescribeBundleResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets details about a project in AWS Mobile Hub.
  """
  def describe_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/project",
      input:            input,
      options:          options,
      action:           "DescribeProject",
      method:           :get,
      input_shape:      "DescribeProjectRequest",
      output_shape:     "DescribeProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates customized software development kit (SDK) and or tool packages
  used to integrate mobile web or mobile app clients with backend AWS
  resources.
  """
  def export_bundle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bundles/{bundleId}",
      input:            input,
      options:          options,
      action:           "ExportBundle",
      method:           :post,
      input_shape:      "ExportBundleRequest",
      output_shape:     "ExportBundleResult",
      endpoint:         __spec__()
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
      path:             "/exports/{projectId}",
      input:            input,
      options:          options,
      action:           "ExportProject",
      method:           :post,
      input_shape:      "ExportProjectRequest",
      output_shape:     "ExportProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  List all available bundles.
  """
  def list_bundles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bundles",
      input:            input,
      options:          options,
      action:           "ListBundles",
      method:           :get,
      input_shape:      "ListBundlesRequest",
      output_shape:     "ListBundlesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists projects in AWS Mobile Hub.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/projects",
      input:            input,
      options:          options,
      action:           "ListProjects",
      method:           :get,
      input_shape:      "ListProjectsRequest",
      output_shape:     "ListProjectsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Update an existing project.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/update",
      input:            input,
      options:          options,
      action:           "UpdateProject",
      method:           :post,
      input_shape:      "UpdateProjectRequest",
      output_shape:     "UpdateProjectResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "MobileHub",
      endpoint_prefix:  "mobile",
      type:             :json,
      version:          "2017-07-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"InternalFailureException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ProjectName" => %{"type" => "string"}, "Feature" => %{"type" => "string"}, "ListProjectsRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "type" => "structure"}, "ResourceType" => %{"type" => "string"}, "ProjectId" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "ErrorMessage" => %{"type" => "string"}, "BundleDetails" => %{"members" => %{"availablePlatforms" => %{"shape" => "Platforms"}, "bundleId" => %{"shape" => "BundleId"}, "description" => %{"shape" => "BundleDescription"}, "iconUrl" => %{"shape" => "IconUrl"}, "title" => %{"shape" => "BundleTitle"}, "version" => %{"shape" => "BundleVersion"}}, "type" => "structure"}, "CreateProjectResult" => %{"members" => %{"details" => %{"shape" => "ProjectDetails"}}, "type" => "structure"}, "BundleList" => %{"member" => %{"shape" => "BundleDetails"}, "type" => "list"}, "ExportProjectRequest" => %{"members" => %{"projectId" => %{"location" => "uri", "locationName" => "projectId", "shape" => "ProjectId"}}, "required" => ["projectId"], "type" => "structure"}, "DeleteProjectResult" => %{"members" => %{"deletedResources" => %{"shape" => "Resources"}, "orphanedResources" => %{"shape" => "Resources"}}, "type" => "structure"}, "UnauthorizedException" => %{"error" => %{"httpStatusCode" => 401}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Platforms" => %{"member" => %{"shape" => "Platform"}, "type" => "list"}, "DescribeProjectResult" => %{"members" => %{"details" => %{"shape" => "ProjectDetails"}}, "type" => "structure"}, "IconUrl" => %{"type" => "string"}, "ExportProjectResult" => %{"members" => %{"downloadUrl" => %{"shape" => "DownloadUrl"}, "shareUrl" => %{"shape" => "ShareUrl"}, "snapshotId" => %{"shape" => "SnapshotId"}}, "type" => "structure"}, "Contents" => %{"type" => "blob"}, "ServiceUnavailableException" => %{"error" => %{"httpStatusCode" => 503}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "ErrorMessage"}}, "type" => "structure"}, "DescribeBundleRequest" => %{"members" => %{"bundleId" => %{"location" => "uri", "locationName" => "bundleId", "shape" => "BundleId"}}, "required" => ["bundleId"], "type" => "structure"}, "Resource" => %{"members" => %{"arn" => %{"shape" => "ResourceArn"}, "attributes" => %{"shape" => "Attributes"}, "feature" => %{"shape" => "Feature"}, "name" => %{"shape" => "ResourceName"}, "type" => %{"shape" => "ResourceType"}}, "type" => "structure"}, "BundleId" => %{"type" => "string"}, "UpdateProjectRequest" => %{"members" => %{"contents" => %{"shape" => "Contents"}, "projectId" => %{"location" => "querystring", "locationName" => "projectId", "shape" => "ProjectId"}}, "payload" => "contents", "required" => ["projectId"], "type" => "structure"}, "TooManyRequestsException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "ErrorMessage"}}, "type" => "structure"}, "ExportBundleResult" => %{"members" => %{"downloadUrl" => %{"shape" => "DownloadUrl"}}, "type" => "structure"}, "ListBundlesRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "type" => "structure"}, "Date" => %{"type" => "timestamp"}, "SnapshotId" => %{"type" => "string"}, "ProjectDetails" => %{"members" => %{"consoleUrl" => %{"shape" => "ConsoleUrl"}, "createdDate" => %{"shape" => "Date"}, "lastUpdatedDate" => %{"shape" => "Date"}, "name" => %{"shape" => "ProjectName"}, "projectId" => %{"shape" => "ProjectId"}, "region" => %{"shape" => "ProjectRegion"}, "resources" => %{"shape" => "Resources"}, "state" => %{"shape" => "ProjectState"}}, "type" => "structure"}, "NotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "BundleDescription" => %{"type" => "string"}, "MaxResults" => %{"type" => "integer"}, "Platform" => %{"enum" => ["OSX", "WINDOWS", "LINUX", "OBJC", "SWIFT", "ANDROID", "JAVASCRIPT"], "type" => "string"}, "BadRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "AttributeKey" => %{"type" => "string"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "ErrorMessage"}}, "type" => "structure"}, "ResourceArn" => %{"type" => "string"}, "BundleTitle" => %{"type" => "string"}, "ListBundlesResult" => %{"members" => %{"bundleList" => %{"shape" => "BundleList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeBundleResult" => %{"members" => %{"details" => %{"shape" => "BundleDetails"}}, "type" => "structure"}, "ProjectSummaries" => %{"member" => %{"shape" => "ProjectSummary"}, "type" => "list"}, "DownloadUrl" => %{"type" => "string"}, "ListProjectsResult" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "projects" => %{"shape" => "ProjectSummaries"}}, "type" => "structure"}, "ProjectSummary" => %{"members" => %{"name" => %{"shape" => "ProjectName"}, "projectId" => %{"shape" => "ProjectId"}}, "type" => "structure"}, "Resources" => %{"member" => %{"shape" => "Resource"}, "type" => "list"}, "AccountActionRequiredException" => %{"error" => %{"httpStatusCode" => 403}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ExportBundleRequest" => %{"members" => %{"bundleId" => %{"location" => "uri", "locationName" => "bundleId", "shape" => "BundleId"}, "platform" => %{"location" => "querystring", "locationName" => "platform", "shape" => "Platform"}, "projectId" => %{"location" => "querystring", "locationName" => "projectId", "shape" => "ProjectId"}}, "required" => ["bundleId"], "type" => "structure"}, "Attributes" => %{"key" => %{"shape" => "AttributeKey"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "AttributeValue" => %{"type" => "string"}, "DescribeProjectRequest" => %{"members" => %{"projectId" => %{"location" => "querystring", "locationName" => "projectId", "shape" => "ProjectId"}, "syncFromResources" => %{"location" => "querystring", "locationName" => "syncFromResources", "shape" => "Boolean"}}, "required" => ["projectId"], "type" => "structure"}, "BundleVersion" => %{"type" => "string"}, "ProjectState" => %{"enum" => ["NORMAL", "SYNCING", "IMPORTING"], "type" => "string"}, "DeleteProjectRequest" => %{"members" => %{"projectId" => %{"location" => "uri", "locationName" => "projectId", "shape" => "ProjectId"}}, "required" => ["projectId"], "type" => "structure"}, "ProjectRegion" => %{"type" => "string"}, "ResourceName" => %{"type" => "string"}, "CreateProjectRequest" => %{"members" => %{"contents" => %{"shape" => "Contents"}, "name" => %{"location" => "querystring", "locationName" => "name", "shape" => "ProjectName"}, "region" => %{"location" => "querystring", "locationName" => "region", "shape" => "ProjectRegion"}, "snapshotId" => %{"location" => "querystring", "locationName" => "snapshotId", "shape" => "SnapshotId"}}, "payload" => "contents", "type" => "structure"}, "ShareUrl" => %{"type" => "string"}, "ConsoleUrl" => %{"type" => "string"}, "NextToken" => %{"type" => "string"}, "UpdateProjectResult" => %{"members" => %{"details" => %{"shape" => "ProjectDetails"}}, "type" => "structure"}}
  end
end