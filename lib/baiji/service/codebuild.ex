defmodule Baiji.Codebuild do
  @moduledoc """
  AWS CodeBuild

  AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild
  compiles your source code, runs unit tests, and produces artifacts that are
  ready to deploy. AWS CodeBuild eliminates the need to provision, manage,
  and scale your own build servers. It provides prepackaged build
  environments for the most popular programming languages and build tools,
  such as Apach Maven, Gradle, and more. You can also fully customize build
  environments in AWS CodeBuild to use your own build tools. AWS CodeBuild
  scales automatically to meet peak build requests, and you pay only for the
  build time you consume. For more information about AWS CodeBuild, see the
  *AWS CodeBuild User Guide*.

  AWS CodeBuild supports these operations:

  <ul> <li> `BatchDeleteBuilds`: Deletes one or more builds.

  </li> <li> `BatchGetProjects`: Gets information about one or more build
  projects. A *build project* defines how AWS CodeBuild will run a build.
  This includes information such as where to get the source code to build,
  the build environment to use, the build commands to run, and where to store
  the build output. A *build environment* represents a combination of
  operating system, programming language runtime, and tools that AWS
  CodeBuild will use to run a build. Also, you can add tags to build projects
  to help manage your resources and costs.

  </li> <li> `CreateProject`: Creates a build project.

  </li> <li> `DeleteProject`: Deletes a build project.

  </li> <li> `ListProjects`: Gets a list of build project names, with each
  build project name representing a single build project.

  </li> <li> `UpdateProject`: Changes the settings of an existing build
  project.

  </li> <li> `BatchGetBuilds`: Gets information about one or more builds.

  </li> <li> `ListBuilds`: Gets a list of build IDs, with each build ID
  representing a single build.

  </li> <li> `ListBuildsForProject`: Gets a list of build IDs for the
  specified build project, with each build ID representing a single build.

  </li> <li> `StartBuild`: Starts running a build.

  </li> <li> `StopBuild`: Attempts to stop running a build.

  </li> <li> `ListCuratedEnvironmentImages`: Gets information about Docker
  images that are managed by AWS CodeBuild.

  </li> </ul>
  """
  
  @doc """
  Deletes one or more builds.
  """
  def batch_delete_builds(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchDeleteBuilds",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "BatchDeleteBuildsInput",
      output_shape:     "BatchDeleteBuildsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about builds.
  """
  def batch_get_builds(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetBuilds",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "BatchGetBuildsInput",
      output_shape:     "BatchGetBuildsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about build projects.
  """
  def batch_get_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetProjects",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "BatchGetProjectsInput",
      output_shape:     "BatchGetProjectsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a build project.
  """
  def create_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateProject",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "CreateProjectInput",
      output_shape:     "CreateProjectOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a build project.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteProject",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "DeleteProjectInput",
      output_shape:     "DeleteProjectOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets a list of build IDs, with each build ID representing a single build.
  """
  def list_builds(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListBuilds",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "ListBuildsInput",
      output_shape:     "ListBuildsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets a list of build IDs for the specified build project, with each build
  ID representing a single build.
  """
  def list_builds_for_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListBuildsForProject",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "ListBuildsForProjectInput",
      output_shape:     "ListBuildsForProjectOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about Docker images that are managed by AWS CodeBuild.
  """
  def list_curated_environment_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListCuratedEnvironmentImages",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "ListCuratedEnvironmentImagesInput",
      output_shape:     "ListCuratedEnvironmentImagesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets a list of build project names, with each build project name
  representing a single build project.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListProjects",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "ListProjectsInput",
      output_shape:     "ListProjectsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts running a build.
  """
  def start_build(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartBuild",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "StartBuildInput",
      output_shape:     "StartBuildOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Attempts to stop running a build.
  """
  def stop_build(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopBuild",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "StopBuildInput",
      output_shape:     "StopBuildOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Changes the settings of a build project.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codebuild",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateProject",
      
      target_prefix:    "CodeBuild_20161006",
      
      endpoint_prefix:  "codebuild",
      type:             :json,
      version:          "2016-10-06",
      method:           :post,
      input_shape:      "UpdateProjectInput",
      output_shape:     "UpdateProjectOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"SourceType" => %{"enum" => ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET"], "type" => "string"}, "ProjectName" => %{"max" => 255, "min" => 2, "pattern" => "[A-Za-z0-9][A-Za-z0-9\\-_]{1,254}", "type" => "string"}, "ListBuildsForProjectInput" => %{"members" => %{"nextToken" => %{"shape" => "String"}, "projectName" => %{"shape" => "NonEmptyString"}, "sortOrder" => %{"shape" => "SortOrderType"}}, "required" => ["projectName"], "type" => "structure"}, "ArtifactsType" => %{"enum" => ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], "type" => "string"}, "String" => %{"type" => "string"}, "BuildNotDeleted" => %{"members" => %{"id" => %{"shape" => "NonEmptyString"}, "statusCode" => %{"shape" => "String"}}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "ProjectNames" => %{"max" => 100, "member" => %{"shape" => "NonEmptyString"}, "min" => 1, "type" => "list"}, "SourceAuth" => %{"members" => %{"resource" => %{"shape" => "String"}, "type" => %{"shape" => "SourceAuthType"}}, "required" => ["type"], "type" => "structure"}, "ValueInput" => %{"max" => 255, "min" => 1, "pattern" => "^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=@+\\\\-]*)$", "type" => "string"}, "DeleteProjectInput" => %{"members" => %{"name" => %{"shape" => "NonEmptyString"}}, "required" => ["name"], "type" => "structure"}, "StatusType" => %{"enum" => ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"], "type" => "string"}, "ArtifactPackaging" => %{"enum" => ["NONE", "ZIP"], "type" => "string"}, "LanguageType" => %{"enum" => ["JAVA", "PYTHON", "NODE_JS", "RUBY", "GOLANG", "DOCKER", "ANDROID", "DOTNET", "BASE"], "type" => "string"}, "KeyInput" => %{"max" => 127, "min" => 1, "pattern" => "^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=@+\\\\-]*)$", "type" => "string"}, "WrapperInt" => %{"type" => "integer"}, "AccountLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BatchGetProjectsInput" => %{"members" => %{"names" => %{"shape" => "ProjectNames"}}, "required" => ["names"], "type" => "structure"}, "ListBuildsForProjectOutput" => %{"members" => %{"ids" => %{"shape" => "BuildIds"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "StopBuildOutput" => %{"members" => %{"build" => %{"shape" => "Build"}}, "type" => "structure"}, "ListCuratedEnvironmentImagesInput" => %{"members" => %{}, "type" => "structure"}, "StartBuildOutput" => %{"members" => %{"build" => %{"shape" => "Build"}}, "type" => "structure"}, "Project" => %{"members" => %{"arn" => %{"shape" => "String"}, "artifacts" => %{"shape" => "ProjectArtifacts"}, "created" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "ProjectDescription"}, "encryptionKey" => %{"shape" => "NonEmptyString"}, "environment" => %{"shape" => "ProjectEnvironment"}, "lastModified" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "ProjectName"}, "serviceRole" => %{"shape" => "NonEmptyString"}, "source" => %{"shape" => "ProjectSource"}, "tags" => %{"shape" => "TagList"}, "timeoutInMinutes" => %{"shape" => "TimeOut"}}, "type" => "structure"}, "PhaseContext" => %{"members" => %{"message" => %{"shape" => "String"}, "statusCode" => %{"shape" => "String"}}, "type" => "structure"}, "BuildPhase" => %{"members" => %{"contexts" => %{"shape" => "PhaseContexts"}, "durationInSeconds" => %{"shape" => "WrapperLong"}, "endTime" => %{"shape" => "Timestamp"}, "phaseStatus" => %{"shape" => "StatusType"}, "phaseType" => %{"shape" => "BuildPhaseType"}, "startTime" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "WrapperBoolean" => %{"type" => "boolean"}, "CreateProjectInput" => %{"members" => %{"artifacts" => %{"shape" => "ProjectArtifacts"}, "description" => %{"shape" => "ProjectDescription"}, "encryptionKey" => %{"shape" => "NonEmptyString"}, "environment" => %{"shape" => "ProjectEnvironment"}, "name" => %{"shape" => "ProjectName"}, "serviceRole" => %{"shape" => "NonEmptyString"}, "source" => %{"shape" => "ProjectSource"}, "tags" => %{"shape" => "TagList"}, "timeoutInMinutes" => %{"shape" => "TimeOut"}}, "required" => ["name", "source", "artifacts", "environment"], "type" => "structure"}, "ProjectEnvironment" => %{"members" => %{"computeType" => %{"shape" => "ComputeType"}, "environmentVariables" => %{"shape" => "EnvironmentVariables"}, "image" => %{"shape" => "NonEmptyString"}, "privilegedMode" => %{"shape" => "WrapperBoolean"}, "type" => %{"shape" => "EnvironmentType"}}, "required" => ["type", "image", "computeType"], "type" => "structure"}, "ListBuildsInput" => %{"members" => %{"nextToken" => %{"shape" => "String"}, "sortOrder" => %{"shape" => "SortOrderType"}}, "type" => "structure"}, "NonEmptyString" => %{"min" => 1, "type" => "string"}, "StopBuildInput" => %{"members" => %{"id" => %{"shape" => "NonEmptyString"}}, "required" => ["id"], "type" => "structure"}, "EnvironmentVariables" => %{"member" => %{"shape" => "EnvironmentVariable"}, "type" => "list"}, "Tag" => %{"members" => %{"key" => %{"shape" => "KeyInput"}, "value" => %{"shape" => "ValueInput"}}, "type" => "structure"}, "ArtifactNamespace" => %{"enum" => ["NONE", "BUILD_ID"], "type" => "string"}, "Timestamp" => %{"type" => "timestamp"}, "LogsLocation" => %{"members" => %{"deepLink" => %{"shape" => "String"}, "groupName" => %{"shape" => "String"}, "streamName" => %{"shape" => "String"}}, "type" => "structure"}, "ListProjectsOutput" => %{"members" => %{"nextToken" => %{"shape" => "String"}, "projects" => %{"shape" => "ProjectNames"}}, "type" => "structure"}, "PhaseContexts" => %{"member" => %{"shape" => "PhaseContext"}, "type" => "list"}, "TagList" => %{"max" => 50, "member" => %{"shape" => "Tag"}, "min" => 0, "type" => "list"}, "EnvironmentPlatforms" => %{"member" => %{"shape" => "EnvironmentPlatform"}, "type" => "list"}, "BuildIds" => %{"max" => 100, "member" => %{"shape" => "NonEmptyString"}, "min" => 1, "type" => "list"}, "ListCuratedEnvironmentImagesOutput" => %{"members" => %{"platforms" => %{"shape" => "EnvironmentPlatforms"}}, "type" => "structure"}, "Builds" => %{"member" => %{"shape" => "Build"}, "type" => "list"}, "Build" => %{"members" => %{"arn" => %{"shape" => "NonEmptyString"}, "artifacts" => %{"shape" => "BuildArtifacts"}, "buildComplete" => %{"shape" => "Boolean"}, "buildStatus" => %{"shape" => "StatusType"}, "currentPhase" => %{"shape" => "String"}, "endTime" => %{"shape" => "Timestamp"}, "environment" => %{"shape" => "ProjectEnvironment"}, "id" => %{"shape" => "NonEmptyString"}, "initiator" => %{"shape" => "String"}, "logs" => %{"shape" => "LogsLocation"}, "phases" => %{"shape" => "BuildPhases"}, "projectName" => %{"shape" => "NonEmptyString"}, "source" => %{"shape" => "ProjectSource"}, "sourceVersion" => %{"shape" => "NonEmptyString"}, "startTime" => %{"shape" => "Timestamp"}, "timeoutInMinutes" => %{"shape" => "WrapperInt"}}, "type" => "structure"}, "ComputeType" => %{"enum" => ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"], "type" => "string"}, "BuildPhases" => %{"member" => %{"shape" => "BuildPhase"}, "type" => "list"}, "EnvironmentVariable" => %{"members" => %{"name" => %{"shape" => "NonEmptyString"}, "type" => %{"shape" => "EnvironmentVariableType"}, "value" => %{"shape" => "String"}}, "required" => ["name", "value"], "type" => "structure"}, "BatchDeleteBuildsInput" => %{"members" => %{"ids" => %{"shape" => "BuildIds"}}, "required" => ["ids"], "type" => "structure"}, "EnvironmentImages" => %{"member" => %{"shape" => "EnvironmentImage"}, "type" => "list"}, "PlatformType" => %{"enum" => ["DEBIAN", "AMAZON_LINUX", "UBUNTU"], "type" => "string"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BatchGetProjectsOutput" => %{"members" => %{"projects" => %{"shape" => "Projects"}, "projectsNotFound" => %{"shape" => "ProjectNames"}}, "type" => "structure"}, "SourceAuthType" => %{"enum" => ["OAUTH"], "type" => "string"}, "BatchDeleteBuildsOutput" => %{"members" => %{"buildsDeleted" => %{"shape" => "BuildIds"}, "buildsNotDeleted" => %{"shape" => "BuildsNotDeleted"}}, "type" => "structure"}, "BatchGetBuildsOutput" => %{"members" => %{"builds" => %{"shape" => "Builds"}, "buildsNotFound" => %{"shape" => "BuildIds"}}, "type" => "structure"}, "ProjectArtifacts" => %{"members" => %{"location" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "namespaceType" => %{"shape" => "ArtifactNamespace"}, "packaging" => %{"shape" => "ArtifactPackaging"}, "path" => %{"shape" => "String"}, "type" => %{"shape" => "ArtifactsType"}}, "required" => ["type"], "type" => "structure"}, "WrapperLong" => %{"type" => "long"}, "ProjectSortByType" => %{"enum" => ["NAME", "CREATED_TIME", "LAST_MODIFIED_TIME"], "type" => "string"}, "EnvironmentPlatform" => %{"members" => %{"languages" => %{"shape" => "EnvironmentLanguages"}, "platform" => %{"shape" => "PlatformType"}}, "type" => "structure"}, "UpdateProjectInput" => %{"members" => %{"artifacts" => %{"shape" => "ProjectArtifacts"}, "description" => %{"shape" => "ProjectDescription"}, "encryptionKey" => %{"shape" => "NonEmptyString"}, "environment" => %{"shape" => "ProjectEnvironment"}, "name" => %{"shape" => "NonEmptyString"}, "serviceRole" => %{"shape" => "NonEmptyString"}, "source" => %{"shape" => "ProjectSource"}, "tags" => %{"shape" => "TagList"}, "timeoutInMinutes" => %{"shape" => "TimeOut"}}, "required" => ["name"], "type" => "structure"}, "EnvironmentImage" => %{"members" => %{"description" => %{"shape" => "String"}, "name" => %{"shape" => "String"}}, "type" => "structure"}, "BuildArtifacts" => %{"members" => %{"location" => %{"shape" => "String"}, "md5sum" => %{"shape" => "String"}, "sha256sum" => %{"shape" => "String"}}, "type" => "structure"}, "TimeOut" => %{"max" => 480, "min" => 5, "type" => "integer"}, "EnvironmentLanguage" => %{"members" => %{"images" => %{"shape" => "EnvironmentImages"}, "language" => %{"shape" => "LanguageType"}}, "type" => "structure"}, "ProjectDescription" => %{"max" => 255, "min" => 0, "type" => "string"}, "BuildPhaseType" => %{"enum" => ["SUBMITTED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"], "type" => "string"}, "StartBuildInput" => %{"members" => %{"artifactsOverride" => %{"shape" => "ProjectArtifacts"}, "buildspecOverride" => %{"shape" => "String"}, "environmentVariablesOverride" => %{"shape" => "EnvironmentVariables"}, "projectName" => %{"shape" => "NonEmptyString"}, "sourceVersion" => %{"shape" => "String"}, "timeoutInMinutesOverride" => %{"shape" => "TimeOut"}}, "required" => ["projectName"], "type" => "structure"}, "ResourceAlreadyExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListProjectsInput" => %{"members" => %{"nextToken" => %{"shape" => "NonEmptyString"}, "sortBy" => %{"shape" => "ProjectSortByType"}, "sortOrder" => %{"shape" => "SortOrderType"}}, "type" => "structure"}, "BuildsNotDeleted" => %{"member" => %{"shape" => "BuildNotDeleted"}, "type" => "list"}, "Projects" => %{"member" => %{"shape" => "Project"}, "type" => "list"}, "ProjectSource" => %{"members" => %{"auth" => %{"shape" => "SourceAuth"}, "buildspec" => %{"shape" => "String"}, "location" => %{"shape" => "String"}, "type" => %{"shape" => "SourceType"}}, "required" => ["type"], "type" => "structure"}, "DeleteProjectOutput" => %{"members" => %{}, "type" => "structure"}, "ListBuildsOutput" => %{"members" => %{"ids" => %{"shape" => "BuildIds"}, "nextToken" => %{"shape" => "String"}}, "type" => "structure"}, "EnvironmentLanguages" => %{"member" => %{"shape" => "EnvironmentLanguage"}, "type" => "list"}, "BatchGetBuildsInput" => %{"members" => %{"ids" => %{"shape" => "BuildIds"}}, "required" => ["ids"], "type" => "structure"}, "EnvironmentVariableType" => %{"enum" => ["PLAINTEXT", "PARAMETER_STORE"], "type" => "string"}, "UpdateProjectOutput" => %{"members" => %{"project" => %{"shape" => "Project"}}, "type" => "structure"}, "CreateProjectOutput" => %{"members" => %{"project" => %{"shape" => "Project"}}, "type" => "structure"}, "InvalidInputException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "EnvironmentType" => %{"enum" => ["LINUX_CONTAINER"], "type" => "string"}, "SortOrderType" => %{"enum" => ["ASCENDING", "DESCENDING"], "type" => "string"}}
  end
end