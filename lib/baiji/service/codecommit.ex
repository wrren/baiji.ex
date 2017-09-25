defmodule Baiji.Codecommit do
  @moduledoc """
  AWS CodeCommit

  This is the *AWS CodeCommit API Reference*. This reference provides
  descriptions of the operations and data types for AWS CodeCommit API along
  with usage examples.

  You can use the AWS CodeCommit API to work with the following objects:

  Repositories, by calling the following:

  <ul> <li> `BatchGetRepositories`, which returns information about one or
  more repositories associated with your AWS account

  </li> <li> `CreateRepository`, which creates an AWS CodeCommit repository

  </li> <li> `DeleteRepository`, which deletes an AWS CodeCommit repository

  </li> <li> `GetRepository`, which returns information about a specified
  repository

  </li> <li> `ListRepositories`, which lists all AWS CodeCommit repositories
  associated with your AWS account

  </li> <li> `UpdateRepositoryDescription`, which sets or updates the
  description of the repository

  </li> <li> `UpdateRepositoryName`, which changes the name of the
  repository. If you change the name of a repository, no other users of that
  repository will be able to access it until you send them the new HTTPS or
  SSH URL to use.

  </li> </ul> Branches, by calling the following:

  <ul> <li> `CreateBranch`, which creates a new branch in a specified
  repository

  </li> <li> `GetBranch`, which returns information about a specified branch

  </li> <li> `ListBranches`, which lists all branches for a specified
  repository

  </li> <li> `UpdateDefaultBranch`, which changes the default branch for a
  repository

  </li> </ul> Information about committed code in a repository, by calling
  the following:

  <ul> <li> `GetBlob`, which returns the base-64 encoded content of an
  individual Git blob object within a repository

  </li> <li> `GetCommit`, which returns information about a commit, including
  commit messages and author and committer information

  </li> <li> `GetDifferences`, which returns information about the
  differences in a valid commit specifier (such as a branch, tag, HEAD,
  commit ID or other fully qualified reference)

  </li> </ul> Triggers, by calling the following:

  <ul> <li> `GetRepositoryTriggers`, which returns information about triggers
  configured for a repository

  </li> <li> `PutRepositoryTriggers`, which replaces all triggers for a
  repository and can be used to create or delete triggers

  </li> <li> `TestRepositoryTriggers`, which tests the functionality of a
  repository trigger by sending data to the trigger target

  </li> </ul> For information about how to use AWS CodeCommit, see the [AWS
  CodeCommit User
  Guide](http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html).
  """
  
  @doc """
  Returns information about one or more repositories.

  <note> The description field for a repository accepts all HTML characters
  and all valid Unicode characters. Applications that do not HTML-encode the
  description and display it in a web page could expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  web page.

  </note>
  """
  def batch_get_repositories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "BatchGetRepositories",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new branch in a repository and points the branch to a commit.

  <note> Calling the create branch operation does not set a repository's
  default branch. To do this, call the update default branch operation.

  </note>
  """
  def create_branch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateBranch",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new, empty repository.
  """
  def create_repository(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateRepository",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a repository. If a specified repository was already deleted, a null
  repository ID will be returned.

  <important>Deleting a repository also deletes all associated objects and
  metadata. After a repository is deleted, all future push calls to the
  deleted repository will fail.

  </important>
  """
  def delete_repository(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteRepository",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the base-64 encoded content of an individual blob within a
  repository.
  """
  def get_blob(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBlob",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a repository branch, including its name and the
  last commit ID.
  """
  def get_branch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBranch",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a commit, including commit message and committer
  information.
  """
  def get_commit(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetCommit",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about the differences in a valid commit specifier (such
  as a branch, tag, HEAD, commit ID or other fully qualified reference).
  Results can be limited to a specified path.
  """
  def get_differences(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetDifferences",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a repository.

  <note> The description field for a repository accepts all HTML characters
  and all valid Unicode characters. Applications that do not HTML-encode the
  description and display it in a web page could expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  web page.

  </note>
  """
  def get_repository(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetRepository",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets information about triggers configured for a repository.
  """
  def get_repository_triggers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetRepositoryTriggers",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets information about one or more branches in a repository.
  """
  def list_branches(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListBranches",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets information about one or more repositories.
  """
  def list_repositories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListRepositories",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Replaces all triggers for a repository. This can be used to create or
  delete triggers.
  """
  def put_repository_triggers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutRepositoryTriggers",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Tests the functionality of repository triggers by sending information to
  the trigger target. If real data is available in the repository, the test
  will send data from the last commit. If no data is available, sample data
  will be generated.
  """
  def test_repository_triggers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "TestRepositoryTriggers",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Sets or changes the default branch name for the specified repository.

  <note> If you use this operation to change the default branch name to the
  current default branch name, a success message is returned even though the
  default branch did not change.

  </note>
  """
  def update_default_branch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateDefaultBranch",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Sets or changes the comment or description for a repository.

  <note> The description field for a repository accepts all HTML characters
  and all valid Unicode characters. Applications that do not HTML-encode the
  description and display it in a web page could expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  web page.

  </note>
  """
  def update_repository_description(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateRepositoryDescription",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Renames a repository. The repository name must be unique across the calling
  AWS account. In addition, repository names are limited to 100 alphanumeric,
  dash, and underscore characters, and cannot include certain characters. The
  suffix ".git" is prohibited. For a full description of the limits on
  repository names, see
  [Limits](http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html)
  in the AWS CodeCommit User Guide.
  """
  def update_repository_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateRepositoryName",
      type:     :json,
      method:   :post
    }
  end
  
end