defmodule Baiji.CodeCommit do
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
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BatchGetRepositories",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "BatchGetRepositoriesInput",
      output_shape:     "BatchGetRepositoriesOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateBranch",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "CreateBranchInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new, empty repository.
  """
  def create_repository(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateRepository",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "CreateRepositoryInput",
      output_shape:     "CreateRepositoryOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRepository",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "DeleteRepositoryInput",
      output_shape:     "DeleteRepositoryOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the base-64 encoded content of an individual blob within a
  repository.
  """
  def get_blob(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetBlob",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "GetBlobInput",
      output_shape:     "GetBlobOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about a repository branch, including its name and the
  last commit ID.
  """
  def get_branch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetBranch",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "GetBranchInput",
      output_shape:     "GetBranchOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about a commit, including commit message and committer
  information.
  """
  def get_commit(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetCommit",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "GetCommitInput",
      output_shape:     "GetCommitOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about the differences in a valid commit specifier (such
  as a branch, tag, HEAD, commit ID or other fully qualified reference).
  Results can be limited to a specified path.
  """
  def get_differences(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDifferences",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "GetDifferencesInput",
      output_shape:     "GetDifferencesOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetRepository",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "GetRepositoryInput",
      output_shape:     "GetRepositoryOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about triggers configured for a repository.
  """
  def get_repository_triggers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetRepositoryTriggers",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "GetRepositoryTriggersInput",
      output_shape:     "GetRepositoryTriggersOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about one or more branches in a repository.
  """
  def list_branches(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListBranches",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "ListBranchesInput",
      output_shape:     "ListBranchesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about one or more repositories.
  """
  def list_repositories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRepositories",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "ListRepositoriesInput",
      output_shape:     "ListRepositoriesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Replaces all triggers for a repository. This can be used to create or
  delete triggers.
  """
  def put_repository_triggers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutRepositoryTriggers",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "PutRepositoryTriggersInput",
      output_shape:     "PutRepositoryTriggersOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TestRepositoryTriggers",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "TestRepositoryTriggersInput",
      output_shape:     "TestRepositoryTriggersOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDefaultBranch",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "UpdateDefaultBranchInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateRepositoryDescription",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "UpdateRepositoryDescriptionInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "codecommit",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateRepositoryName",
      
      target_prefix:    "CodeCommit_20150413",
      
      endpoint_prefix:  "codecommit",
      type:             :json,
      version:          "2015-04-13",
      method:           :post,
      input_shape:      "UpdateRepositoryNameInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"RepositoryTriggerExecutionFailureList" => %{"member" => %{"shape" => "RepositoryTriggerExecutionFailure"}, "type" => "list"}, "RepositoryTriggerEventEnum" => %{"enum" => ["all", "updateReference", "createReference", "deleteReference"], "type" => "string"}, "InvalidRepositoryTriggerDestinationArnException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AdditionalData" => %{"type" => "string"}, "BranchName" => %{"max" => 100, "min" => 1, "type" => "string"}, "EncryptionKeyDisabledException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteRepositoryOutput" => %{"members" => %{"repositoryId" => %{"shape" => "RepositoryId"}}, "type" => "structure"}, "DifferenceList" => %{"member" => %{"shape" => "Difference"}, "type" => "list"}, "UpdateRepositoryDescriptionInput" => %{"members" => %{"repositoryDescription" => %{"shape" => "RepositoryDescription"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "RepositoryNameIdPairList" => %{"member" => %{"shape" => "RepositoryNameIdPair"}, "type" => "list"}, "RepositoryTriggerNameRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UserInfo" => %{"members" => %{"date" => %{"shape" => "Date"}, "email" => %{"shape" => "Email"}, "name" => %{"shape" => "Name"}}, "type" => "structure"}, "GetBlobInput" => %{"members" => %{"blobId" => %{"shape" => "ObjectId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "blobId"], "type" => "structure"}, "UpdateDefaultBranchInput" => %{"members" => %{"defaultBranchName" => %{"shape" => "BranchName"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "defaultBranchName"], "type" => "structure"}, "RepositoryNotFoundList" => %{"member" => %{"shape" => "RepositoryName"}, "type" => "list"}, "InvalidRepositoryNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BatchGetRepositoriesInput" => %{"members" => %{"repositoryNames" => %{"shape" => "RepositoryNameList"}}, "required" => ["repositoryNames"], "type" => "structure"}, "ListRepositoriesInput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "order" => %{"shape" => "OrderEnum"}, "sortBy" => %{"shape" => "SortByEnum"}}, "type" => "structure"}, "CreationDate" => %{"type" => "timestamp"}, "CloneUrlHttp" => %{"type" => "string"}, "MaximumRepositoryNamesExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RepositoryTriggerCustomData" => %{"type" => "string"}, "InvalidSortByException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidRepositoryTriggerNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Mode" => %{"type" => "string"}, "RepositoryTrigger" => %{"members" => %{"branches" => %{"shape" => "BranchNameList"}, "customData" => %{"shape" => "RepositoryTriggerCustomData"}, "destinationArn" => %{"shape" => "Arn"}, "events" => %{"shape" => "RepositoryTriggerEventList"}, "name" => %{"shape" => "RepositoryTriggerName"}}, "required" => ["name", "destinationArn", "events"], "type" => "structure"}, "OrderEnum" => %{"enum" => ["ascending", "descending"], "type" => "string"}, "RepositoryDescription" => %{"max" => 1000, "type" => "string"}, "InvalidBlobIdException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RepositoryNameExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TestRepositoryTriggersOutput" => %{"members" => %{"failedExecutions" => %{"shape" => "RepositoryTriggerExecutionFailureList"}, "successfulExecutions" => %{"shape" => "RepositoryTriggerNameList"}}, "type" => "structure"}, "GetBranchInput" => %{"members" => %{"branchName" => %{"shape" => "BranchName"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "type" => "structure"}, "RepositoryNameIdPair" => %{"members" => %{"repositoryId" => %{"shape" => "RepositoryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "type" => "structure"}, "RepositoryNameRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidRepositoryTriggerBranchNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AccountId" => %{"type" => "string"}, "CommitRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Name" => %{"type" => "string"}, "BlobIdRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Limit" => %{"box" => true, "type" => "integer"}, "ParentList" => %{"member" => %{"shape" => "ObjectId"}, "type" => "list"}, "RepositoryTriggerEventList" => %{"member" => %{"shape" => "RepositoryTriggerEventEnum"}, "type" => "list"}, "MaximumRepositoryTriggersExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RepositoryLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "blob" => %{"type" => "blob"}, "InvalidRepositoryDescriptionException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CommitIdRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RepositoryDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidRepositoryTriggerEventsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CreateRepositoryOutput" => %{"members" => %{"repositoryMetadata" => %{"shape" => "RepositoryMetadata"}}, "type" => "structure"}, "Path" => %{"type" => "string"}, "RepositoryTriggerBranchNameListRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Message" => %{"type" => "string"}, "Date" => %{"type" => "string"}, "Email" => %{"type" => "string"}, "GetCommitInput" => %{"members" => %{"commitId" => %{"shape" => "ObjectId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "commitId"], "type" => "structure"}, "RepositoryTriggersConfigurationId" => %{"type" => "string"}, "BranchNameList" => %{"member" => %{"shape" => "BranchName"}, "type" => "list"}, "InvalidRepositoryTriggerRegionException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidCommitException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GetRepositoryTriggersInput" => %{"members" => %{"repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "RepositoryMetadata" => %{"members" => %{"Arn" => %{"shape" => "Arn"}, "accountId" => %{"shape" => "AccountId"}, "cloneUrlHttp" => %{"shape" => "CloneUrlHttp"}, "cloneUrlSsh" => %{"shape" => "CloneUrlSsh"}, "creationDate" => %{"shape" => "CreationDate"}, "defaultBranch" => %{"shape" => "BranchName"}, "lastModifiedDate" => %{"shape" => "LastModifiedDate"}, "repositoryDescription" => %{"shape" => "RepositoryDescription"}, "repositoryId" => %{"shape" => "RepositoryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "type" => "structure"}, "RepositoryTriggerExecutionFailureMessage" => %{"type" => "string"}, "CommitDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GetBranchOutput" => %{"members" => %{"branch" => %{"shape" => "BranchInfo"}}, "type" => "structure"}, "InvalidOrderException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CreateRepositoryInput" => %{"members" => %{"repositoryDescription" => %{"shape" => "RepositoryDescription"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "BranchDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BlobMetadata" => %{"members" => %{"blobId" => %{"shape" => "ObjectId"}, "mode" => %{"shape" => "Mode"}, "path" => %{"shape" => "Path"}}, "type" => "structure"}, "InvalidCommitIdException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RepositoryTriggerDestinationArnRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CommitName" => %{"type" => "string"}, "EncryptionIntegrityChecksFailedException" => %{"exception" => true, "fault" => true, "members" => %{}, "type" => "structure"}, "Arn" => %{"type" => "string"}, "InvalidMaxResultsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ChangeTypeEnum" => %{"enum" => ["A", "M", "D"], "type" => "string"}, "GetDifferencesOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "differences" => %{"shape" => "DifferenceList"}}, "type" => "structure"}, "EncryptionKeyUnavailableException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BlobIdDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Difference" => %{"members" => %{"afterBlob" => %{"shape" => "BlobMetadata"}, "beforeBlob" => %{"shape" => "BlobMetadata"}, "changeType" => %{"shape" => "ChangeTypeEnum"}}, "type" => "structure"}, "RepositoryName" => %{"max" => 100, "min" => 1, "pattern" => "[\\w\\.-]+", "type" => "string"}, "InvalidBranchNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RepositoryNamesRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GetCommitOutput" => %{"members" => %{"commit" => %{"shape" => "Commit"}}, "required" => ["commit"], "type" => "structure"}, "RepositoryTriggerExecutionFailure" => %{"members" => %{"failureMessage" => %{"shape" => "RepositoryTriggerExecutionFailureMessage"}, "trigger" => %{"shape" => "RepositoryTriggerName"}}, "type" => "structure"}, "EncryptionKeyAccessDeniedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GetDifferencesInput" => %{"members" => %{"MaxResults" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}, "afterCommitSpecifier" => %{"shape" => "CommitName"}, "afterPath" => %{"shape" => "Path"}, "beforeCommitSpecifier" => %{"shape" => "CommitName"}, "beforePath" => %{"shape" => "Path"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "afterCommitSpecifier"], "type" => "structure"}, "GetRepositoryTriggersOutput" => %{"members" => %{"configurationId" => %{"shape" => "RepositoryTriggersConfigurationId"}, "triggers" => %{"shape" => "RepositoryTriggersList"}}, "type" => "structure"}, "CloneUrlSsh" => %{"type" => "string"}, "BranchInfo" => %{"members" => %{"branchName" => %{"shape" => "BranchName"}, "commitId" => %{"shape" => "CommitId"}}, "type" => "structure"}, "RepositoryTriggerName" => %{"type" => "string"}, "ListRepositoriesOutput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "repositories" => %{"shape" => "RepositoryNameIdPairList"}}, "type" => "structure"}, "CreateBranchInput" => %{"members" => %{"branchName" => %{"shape" => "BranchName"}, "commitId" => %{"shape" => "CommitId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "branchName", "commitId"], "type" => "structure"}, "InvalidContinuationTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RepositoryId" => %{"type" => "string"}, "BranchNameExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ObjectId" => %{"type" => "string"}, "PathDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GetRepositoryInput" => %{"members" => %{"repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "SortByEnum" => %{"enum" => ["repositoryName", "lastModifiedDate"], "type" => "string"}, "RepositoryTriggersListRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidPathException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PutRepositoryTriggersInput" => %{"members" => %{"repositoryName" => %{"shape" => "RepositoryName"}, "triggers" => %{"shape" => "RepositoryTriggersList"}}, "required" => ["repositoryName", "triggers"], "type" => "structure"}, "CommitId" => %{"type" => "string"}, "GetRepositoryOutput" => %{"members" => %{"repositoryMetadata" => %{"shape" => "RepositoryMetadata"}}, "type" => "structure"}, "InvalidRepositoryTriggerCustomDataException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PutRepositoryTriggersOutput" => %{"members" => %{"configurationId" => %{"shape" => "RepositoryTriggersConfigurationId"}}, "type" => "structure"}, "RepositoryTriggerNameList" => %{"member" => %{"shape" => "RepositoryTriggerName"}, "type" => "list"}, "BatchGetRepositoriesOutput" => %{"members" => %{"repositories" => %{"shape" => "RepositoryMetadataList"}, "repositoriesNotFound" => %{"shape" => "RepositoryNotFoundList"}}, "type" => "structure"}, "RepositoryMetadataList" => %{"member" => %{"shape" => "RepositoryMetadata"}, "type" => "list"}, "BranchNameRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateRepositoryNameInput" => %{"members" => %{"newName" => %{"shape" => "RepositoryName"}, "oldName" => %{"shape" => "RepositoryName"}}, "required" => ["oldName", "newName"], "type" => "structure"}, "CommitIdDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListBranchesInput" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "RepositoryNameList" => %{"member" => %{"shape" => "RepositoryName"}, "type" => "list"}, "RepositoryTriggerEventsListRequiredException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "EncryptionKeyNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RepositoryTriggersList" => %{"member" => %{"shape" => "RepositoryTrigger"}, "type" => "list"}, "GetBlobOutput" => %{"members" => %{"content" => %{"shape" => "blob"}}, "required" => ["content"], "type" => "structure"}, "MaximumBranchesExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteRepositoryInput" => %{"members" => %{"repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "FileTooLargeException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "NextToken" => %{"type" => "string"}, "ListBranchesOutput" => %{"members" => %{"branches" => %{"shape" => "BranchNameList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "LastModifiedDate" => %{"type" => "timestamp"}, "TestRepositoryTriggersInput" => %{"members" => %{"repositoryName" => %{"shape" => "RepositoryName"}, "triggers" => %{"shape" => "RepositoryTriggersList"}}, "required" => ["repositoryName", "triggers"], "type" => "structure"}, "Commit" => %{"members" => %{"additionalData" => %{"shape" => "AdditionalData"}, "author" => %{"shape" => "UserInfo"}, "committer" => %{"shape" => "UserInfo"}, "message" => %{"shape" => "Message"}, "parents" => %{"shape" => "ParentList"}, "treeId" => %{"shape" => "ObjectId"}}, "type" => "structure"}}
  end
end