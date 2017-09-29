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
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchDeleteBuilds",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about builds.
  """
  def batch_get_builds(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetBuilds",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about build projects.
  """
  def batch_get_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetProjects",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a build project.
  """
  def create_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateProject",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes a build project.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteProject",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets a list of build IDs, with each build ID representing a single build.
  """
  def list_builds(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListBuilds",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets a list of build IDs for the specified build project, with each build
  ID representing a single build.
  """
  def list_builds_for_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListBuildsForProject",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets information about Docker images that are managed by AWS CodeBuild.
  """
  def list_curated_environment_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListCuratedEnvironmentImages",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets a list of build project names, with each build project name
  representing a single build project.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListProjects",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Starts running a build.
  """
  def start_build(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartBuild",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Attempts to stop running a build.
  """
  def stop_build(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopBuild",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Changes the settings of a build project.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codebuild",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateProject",
      
      target_prefix:  "CodeBuild_20161006",
      
      type:           :json,
      method:         :post
    }
  end
  
end