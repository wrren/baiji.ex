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
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssociateTeamMember",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Reserved for future use. To create a project, use the AWS CodeStar console.
  """
  def create_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateProject",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
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
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateUserProfile",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes a project, including project resources. Does not delete users
  associated with the project, but does delete the IAM roles that allowed
  access to the project.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteProject",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
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
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteUserProfile",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes a project and its resources.
  """
  def describe_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeProject",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes a user in AWS CodeStar and the user attributes across all
  projects.
  """
  def describe_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeUserProfile",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
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
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisassociateTeamMember",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists all projects in AWS CodeStar associated with your AWS account.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListProjects",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists resources associated with a project in AWS CodeStar.
  """
  def list_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListResources",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Gets the tags for a project.
  """
  def list_tags_for_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListTagsForProject",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists all team members associated with a project.
  """
  def list_team_members(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListTeamMembers",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists all the user profiles configured for your AWS account in AWS
  CodeStar.
  """
  def list_user_profiles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListUserProfiles",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Adds tags to a project.
  """
  def tag_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "TagProject",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Removes tags from a project.
  """
  def untag_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UntagProject",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Updates a project in AWS CodeStar.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateProject",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Updates a team member's attributes in an AWS CodeStar project. For example,
  you can change a team member's role in the project, or change whether they
  have remote access to project resources.
  """
  def update_team_member(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateTeamMember",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Updates a user's profile in AWS CodeStar. The user profile is not
  project-specific. Information in the user profile is displayed wherever the
  user's information appears to other users in AWS CodeStar.
  """
  def update_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "codestar",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateUserProfile",
      
      target_prefix:  "CodeStar_20170419",
      
      type:           :json,
      method:         :post
    }
  end
  
end