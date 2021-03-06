defmodule Baiji.CodeStar do
  @moduledoc """
  AWS CodeStar

  This is the API reference for AWS CodeStar. This reference provides
  descriptions of the operations and data types for the AWS CodeStar API
  along with usage examples.

  You can use the AWS CodeStar API to work with:

  Projects and their resources, by calling the following:

  <ul> <li> `DeleteProject`, which deletes a project.

  </li> <li> `DescribeProject`, which lists the attributes of a project.

  </li> <li> `ListProjects`, which lists all projects associated with your
  AWS account.

  </li> <li> `ListResources`, which lists the resources associated with a
  project.

  </li> <li> `ListTagsForProject`, which lists the tags associated with a
  project.

  </li> <li> `TagProject`, which adds tags to a project.

  </li> <li> `UntagProject`, which removes tags from a project.

  </li> <li> `UpdateProject`, which updates the attributes of a project.

  </li> </ul> Teams and team members, by calling the following:

  <ul> <li> `AssociateTeamMember`, which adds an IAM user to the team for a
  project.

  </li> <li> `DisassociateTeamMember`, which removes an IAM user from the
  team for a project.

  </li> <li> `ListTeamMembers`, which lists all the IAM users in the team for
  a project, including their roles and attributes.

  </li> <li> `UpdateTeamMember`, which updates a team member's attributes in
  a project.

  </li> </ul> Users, by calling the following:

  <ul> <li> `CreateUserProfile`, which creates a user profile that contains
  data associated with the user across all projects.

  </li> <li> `DeleteUserProfile`, which deletes all user profile information
  across all projects.

  </li> <li> `DescribeUserProfile`, which describes the profile of a user.

  </li> <li> `ListUserProfiles`, which lists all user profiles.

  </li> <li> `UpdateUserProfile`, which updates the profile for a user.

  </li> </ul>
  """

  @doc """
  Adds an IAM user to the team for an AWS CodeStar project.
  """
  def associate_team_member(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateTeamMember",
      method:           :post,
      input_shape:      "AssociateTeamMemberRequest",
      output_shape:     "AssociateTeamMemberResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Reserved for future use. To create a project, use the AWS CodeStar console.
  """
  def create_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
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
  Creates a profile for a user that includes user preferences, such as the
  display name and email address assocciated with the user, in AWS CodeStar.
  The user profile is not project-specific. Information in the user profile
  is displayed wherever the user's information appears to other users in AWS
  CodeStar.
  """
  def create_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUserProfile",
      method:           :post,
      input_shape:      "CreateUserProfileRequest",
      output_shape:     "CreateUserProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a project, including project resources. Does not delete users
  associated with the project, but does delete the IAM roles that allowed
  access to the project.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteProject",
      method:           :post,
      input_shape:      "DeleteProjectRequest",
      output_shape:     "DeleteProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a user profile in AWS CodeStar, including all personal preference
  data associated with that profile, such as display name and email address.
  It does not delete the history of that user, for example the history of
  commits made by that user.
  """
  def delete_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUserProfile",
      method:           :post,
      input_shape:      "DeleteUserProfileRequest",
      output_shape:     "DeleteUserProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes a project and its resources.
  """
  def describe_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeProject",
      method:           :post,
      input_shape:      "DescribeProjectRequest",
      output_shape:     "DescribeProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes a user in AWS CodeStar and the user attributes across all
  projects.
  """
  def describe_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeUserProfile",
      method:           :post,
      input_shape:      "DescribeUserProfileRequest",
      output_shape:     "DescribeUserProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a user from a project. Removing a user from a project also removes
  the IAM policies from that user that allowed access to the project and its
  resources. Disassociating a team member does not remove that user's profile
  from AWS CodeStar. It does not remove the user from IAM.
  """
  def disassociate_team_member(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisassociateTeamMember",
      method:           :post,
      input_shape:      "DisassociateTeamMemberRequest",
      output_shape:     "DisassociateTeamMemberResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all projects in AWS CodeStar associated with your AWS account.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListProjects",
      method:           :post,
      input_shape:      "ListProjectsRequest",
      output_shape:     "ListProjectsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists resources associated with a project in AWS CodeStar.
  """
  def list_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListResources",
      method:           :post,
      input_shape:      "ListResourcesRequest",
      output_shape:     "ListResourcesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the tags for a project.
  """
  def list_tags_for_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTagsForProject",
      method:           :post,
      input_shape:      "ListTagsForProjectRequest",
      output_shape:     "ListTagsForProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all team members associated with a project.
  """
  def list_team_members(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTeamMembers",
      method:           :post,
      input_shape:      "ListTeamMembersRequest",
      output_shape:     "ListTeamMembersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all the user profiles configured for your AWS account in AWS
  CodeStar.
  """
  def list_user_profiles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUserProfiles",
      method:           :post,
      input_shape:      "ListUserProfilesRequest",
      output_shape:     "ListUserProfilesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds tags to a project.
  """
  def tag_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "TagProject",
      method:           :post,
      input_shape:      "TagProjectRequest",
      output_shape:     "TagProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes tags from a project.
  """
  def untag_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UntagProject",
      method:           :post,
      input_shape:      "UntagProjectRequest",
      output_shape:     "UntagProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a project in AWS CodeStar.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
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
  Updates a team member's attributes in an AWS CodeStar project. For example,
  you can change a team member's role in the project, or change whether they
  have remote access to project resources.
  """
  def update_team_member(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateTeamMember",
      method:           :post,
      input_shape:      "UpdateTeamMemberRequest",
      output_shape:     "UpdateTeamMemberResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a user's profile in AWS CodeStar. The user profile is not
  project-specific. Information in the user profile is displayed wherever the
  user's information appears to other users in AWS CodeStar.
  """
  def update_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateUserProfile",
      method:           :post,
      input_shape:      "UpdateUserProfileRequest",
      output_shape:     "UpdateUserProfileResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "codestar",
      target_prefix:    "CodeStar_20170419",
      endpoint_prefix:  "codestar",
      type:             :json,
      version:          "2017-04-19",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"TagKeys" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "ProjectName" => %{"max" => 100, "min" => 1, "pattern" => "^\\S(.*\\S)?$", "sensitive" => true, "type" => "string"}, "CreateUserProfileRequest" => %{"members" => %{"displayName" => %{"shape" => "UserProfileDisplayName"}, "emailAddress" => %{"shape" => "Email"}, "sshPublicKey" => %{"shape" => "SshPublicKey"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn", "displayName", "emailAddress"], "type" => "structure"}, "ListProjectsRequest" => %{"members" => %{"maxResults" => %{"box" => true, "shape" => "MaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ListTagsForProjectResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "ProjectId" => %{"max" => 15, "min" => 2, "pattern" => "^[a-z][a-z0-9-]+$", "type" => "string"}, "TeamMemberNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ProjectNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CreateProjectResult" => %{"members" => %{"arn" => %{"shape" => "ProjectArn"}, "clientRequestToken" => %{"shape" => "ClientRequestToken"}, "id" => %{"shape" => "ProjectId"}, "projectTemplateId" => %{"shape" => "ProjectTemplateId"}}, "required" => ["id", "arn"], "type" => "structure"}, "Role" => %{"pattern" => "^(Owner|Viewer|Contributor)$", "type" => "string"}, "UpdateTeamMemberRequest" => %{"members" => %{"projectId" => %{"shape" => "ProjectId"}, "projectRole" => %{"shape" => "Role"}, "remoteAccessAllowed" => %{"box" => true, "shape" => "RemoteAccessAllowed"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["projectId", "userArn"], "type" => "structure"}, "CreateUserProfileResult" => %{"members" => %{"createdTimestamp" => %{"shape" => "CreatedTimestamp"}, "displayName" => %{"shape" => "UserProfileDisplayName"}, "emailAddress" => %{"shape" => "Email"}, "lastModifiedTimestamp" => %{"shape" => "LastModifiedTimestamp"}, "sshPublicKey" => %{"shape" => "SshPublicKey"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn"], "type" => "structure"}, "DeleteProjectResult" => %{"members" => %{"projectArn" => %{"shape" => "ProjectArn"}, "stackId" => %{"shape" => "StackId"}}, "type" => "structure"}, "ResourcesResult" => %{"member" => %{"shape" => "Resource"}, "type" => "list"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidServiceRoleException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TeamMember" => %{"members" => %{"projectRole" => %{"shape" => "Role"}, "remoteAccessAllowed" => %{"box" => true, "shape" => "RemoteAccessAllowed"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn", "projectRole"], "type" => "structure"}, "DescribeProjectResult" => %{"members" => %{"arn" => %{"shape" => "ProjectArn"}, "clientRequestToken" => %{"shape" => "ClientRequestToken"}, "createdTimeStamp" => %{"shape" => "CreatedTimestamp"}, "description" => %{"shape" => "ProjectDescription"}, "id" => %{"shape" => "ProjectId"}, "name" => %{"shape" => "ProjectName"}, "projectTemplateId" => %{"shape" => "ProjectTemplateId"}, "stackId" => %{"shape" => "StackId"}}, "type" => "structure"}, "ListUserProfilesRequest" => %{"members" => %{"maxResults" => %{"box" => true, "shape" => "MaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "DisassociateTeamMemberRequest" => %{"members" => %{"projectId" => %{"shape" => "ProjectId"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["projectId", "userArn"], "type" => "structure"}, "ListTeamMembersRequest" => %{"members" => %{"maxResults" => %{"box" => true, "shape" => "MaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}, "projectId" => %{"shape" => "ProjectId"}}, "required" => ["projectId"], "type" => "structure"}, "Resource" => %{"members" => %{"id" => %{"shape" => "ResourceId"}}, "required" => ["id"], "type" => "structure"}, "UserProfilesList" => %{"member" => %{"shape" => "UserProfileSummary"}, "type" => "list"}, "UpdateUserProfileResult" => %{"members" => %{"createdTimestamp" => %{"shape" => "CreatedTimestamp"}, "displayName" => %{"shape" => "UserProfileDisplayName"}, "emailAddress" => %{"shape" => "Email"}, "lastModifiedTimestamp" => %{"shape" => "LastModifiedTimestamp"}, "sshPublicKey" => %{"shape" => "SshPublicKey"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn"], "type" => "structure"}, "UpdateProjectRequest" => %{"members" => %{"description" => %{"shape" => "ProjectDescription"}, "id" => %{"shape" => "ProjectId"}, "name" => %{"shape" => "ProjectName"}}, "required" => ["id"], "type" => "structure"}, "StackId" => %{"pattern" => "^arn:aws[^:\\s]*:cloudformation:[^:\\s]+:[0-9]{12}:stack\\/[^:\\s]+\\/[^:\\s]+$", "type" => "string"}, "DeleteStack" => %{"type" => "boolean"}, "UserArn" => %{"max" => 95, "min" => 32, "pattern" => "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", "type" => "string"}, "DescribeUserProfileResult" => %{"members" => %{"createdTimestamp" => %{"shape" => "CreatedTimestamp"}, "displayName" => %{"shape" => "UserProfileDisplayName"}, "emailAddress" => %{"shape" => "Email"}, "lastModifiedTimestamp" => %{"shape" => "LastModifiedTimestamp"}, "sshPublicKey" => %{"shape" => "SshPublicKey"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn", "createdTimestamp", "lastModifiedTimestamp"], "type" => "structure"}, "Email" => %{"max" => 128, "min" => 3, "pattern" => "^[\\w-.+]+@[\\w-.+]+$", "sensitive" => true, "type" => "string"}, "Tags" => %{"key" => %{"shape" => "TagKey"}, "type" => "map", "value" => %{"shape" => "TagValue"}}, "UserProfileSummary" => %{"members" => %{"displayName" => %{"shape" => "UserProfileDisplayName"}, "emailAddress" => %{"shape" => "Email"}, "sshPublicKey" => %{"shape" => "SshPublicKey"}, "userArn" => %{"shape" => "UserArn"}}, "type" => "structure"}, "UntagProjectResult" => %{"members" => %{}, "type" => "structure"}, "RemoteAccessAllowed" => %{"type" => "boolean"}, "ListTeamMembersResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "teamMembers" => %{"shape" => "TeamMemberResult"}}, "required" => ["teamMembers"], "type" => "structure"}, "ListResourcesRequest" => %{"members" => %{"maxResults" => %{"box" => true, "shape" => "MaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}, "projectId" => %{"shape" => "ProjectId"}}, "required" => ["projectId"], "type" => "structure"}, "MaxResults" => %{"max" => 100, "min" => 1, "type" => "integer"}, "TagValue" => %{"max" => 256, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "ValidationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ProjectConfigurationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ResourceId" => %{"min" => 11, "pattern" => "^arn\\:aws\\:\\S.*\\:.*", "type" => "string"}, "LastModifiedTimestamp" => %{"type" => "timestamp"}, "TeamMemberAlreadyAssociatedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateUserProfileRequest" => %{"members" => %{"displayName" => %{"shape" => "UserProfileDisplayName"}, "emailAddress" => %{"shape" => "Email"}, "sshPublicKey" => %{"shape" => "SshPublicKey"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn"], "type" => "structure"}, "ListProjectsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "projects" => %{"shape" => "ProjectsList"}}, "required" => ["projects"], "type" => "structure"}, "ProjectSummary" => %{"members" => %{"projectArn" => %{"shape" => "ProjectArn"}, "projectId" => %{"shape" => "ProjectId"}}, "type" => "structure"}, "ListUserProfilesResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "userProfiles" => %{"shape" => "UserProfilesList"}}, "required" => ["userProfiles"], "type" => "structure"}, "ListResourcesResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "resources" => %{"shape" => "ResourcesResult"}}, "type" => "structure"}, "ProjectArn" => %{"pattern" => "^arn:aws[^:\\s]*:codestar:[^:\\s]+:[0-9]{12}:project\\/[a-z]([a-z0-9|-])+$", "type" => "string"}, "AssociateTeamMemberResult" => %{"members" => %{"clientRequestToken" => %{"shape" => "ClientRequestToken"}}, "type" => "structure"}, "PaginationToken" => %{"max" => 512, "min" => 1, "pattern" => "^[\\w/+=]+$", "type" => "string"}, "ClientRequestToken" => %{"max" => 256, "min" => 1, "pattern" => "^[\\w:/-]+$", "type" => "string"}, "ProjectsList" => %{"member" => %{"shape" => "ProjectSummary"}, "type" => "list"}, "ProjectDescription" => %{"max" => 1024, "pattern" => "^$|^\\S(.*\\S)?$", "sensitive" => true, "type" => "string"}, "DescribeProjectRequest" => %{"members" => %{"id" => %{"shape" => "ProjectId"}}, "required" => ["id"], "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "UserProfileNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UntagProjectRequest" => %{"members" => %{"id" => %{"shape" => "ProjectId"}, "tags" => %{"shape" => "TagKeys"}}, "required" => ["id", "tags"], "type" => "structure"}, "DeleteProjectRequest" => %{"members" => %{"clientRequestToken" => %{"shape" => "ClientRequestToken"}, "deleteStack" => %{"shape" => "DeleteStack"}, "id" => %{"shape" => "ProjectId"}}, "required" => ["id"], "type" => "structure"}, "UserProfileDisplayName" => %{"max" => 64, "min" => 1, "pattern" => "^\\S(.*\\S)?$", "type" => "string"}, "AssociateTeamMemberRequest" => %{"members" => %{"clientRequestToken" => %{"shape" => "ClientRequestToken"}, "projectId" => %{"shape" => "ProjectId"}, "projectRole" => %{"shape" => "Role"}, "remoteAccessAllowed" => %{"box" => true, "shape" => "RemoteAccessAllowed"}, "userArn" => %{"shape" => "UserArn"}}, "required" => ["projectId", "userArn", "projectRole"], "type" => "structure"}, "ListTagsForProjectRequest" => %{"members" => %{"id" => %{"shape" => "ProjectId"}, "maxResults" => %{"box" => true, "shape" => "MaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["id"], "type" => "structure"}, "DisassociateTeamMemberResult" => %{"members" => %{}, "type" => "structure"}, "TagProjectResult" => %{"members" => %{"tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "CreateProjectRequest" => %{"members" => %{"clientRequestToken" => %{"shape" => "ClientRequestToken"}, "description" => %{"shape" => "ProjectDescription"}, "id" => %{"shape" => "ProjectId"}, "name" => %{"shape" => "ProjectName"}}, "required" => ["name", "id"], "type" => "structure"}, "SshPublicKey" => %{"max" => 16384, "pattern" => "^[\\t\\r\\n\\u0020-\\u00FF]*$", "type" => "string"}, "UpdateTeamMemberResult" => %{"members" => %{"projectRole" => %{"shape" => "Role"}, "remoteAccessAllowed" => %{"box" => true, "shape" => "RemoteAccessAllowed"}, "userArn" => %{"shape" => "UserArn"}}, "type" => "structure"}, "CreatedTimestamp" => %{"type" => "timestamp"}, "TagProjectRequest" => %{"members" => %{"id" => %{"shape" => "ProjectId"}, "tags" => %{"shape" => "Tags"}}, "required" => ["id", "tags"], "type" => "structure"}, "ProjectAlreadyExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateProjectResult" => %{"members" => %{}, "type" => "structure"}, "TeamMemberResult" => %{"member" => %{"shape" => "TeamMember"}, "type" => "list"}, "DeleteUserProfileRequest" => %{"members" => %{"userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn"], "type" => "structure"}, "ProjectCreationFailedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UserProfileAlreadyExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeUserProfileRequest" => %{"members" => %{"userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn"], "type" => "structure"}, "ConcurrentModificationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteUserProfileResult" => %{"members" => %{"userArn" => %{"shape" => "UserArn"}}, "required" => ["userArn"], "type" => "structure"}, "ProjectTemplateId" => %{"min" => 1, "pattern" => "^arn:aws[^:\\s]{0,5}:codestar:[^:\\s]+::project-template\\/[a-z0-9-]+$", "type" => "string"}}
  end
end