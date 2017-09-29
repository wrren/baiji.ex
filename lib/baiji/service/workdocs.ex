defmodule Baiji.Workdocs do
  @moduledoc """
  The WorkDocs API is designed for the following use cases:

  <ul> <li> File Migration: File migration applications are supported for
  users who want to migrate their files from an on-premise or off-premise
  file system or service. Users can insert files into a user directory
  structure, as well as allow for basic metadata changes, such as
  modifications to the permissions of files.

  </li> <li> Security: Support security applications are supported for users
  who have additional security needs, such as anti-virus or data loss
  prevention. The APIs, in conjunction with Amazon CloudTrail, allow these
  applications to detect when changes occur in Amazon WorkDocs, so the
  application can take the necessary actions and replace the target file. The
  application can also choose to email the user if the target file violates
  the policy.

  </li> <li> eDiscovery/Analytics: General administrative applications are
  supported, such as eDiscovery and analytics. These applications can choose
  to mimic and/or record the actions in an Amazon WorkDocs site, in
  conjunction with Amazon CloudTrails, to replicate data for eDiscovery,
  backup, or analytical applications.

  </li> </ul> All Amazon WorkDocs APIs are Amazon authenticated,
  certificate-signed APIs. They not only require the use of the AWS SDK, but
  also allow for the exclusive use of IAM users and roles to help facilitate
  access, trust, and permission policies. By creating a role and allowing an
  IAM user to access the Amazon WorkDocs site, the IAM user gains full
  administrative visibility into the entire Amazon WorkDocs site (or as set
  in the IAM policy). This includes, but is not limited to, the ability to
  modify file permissions and upload any file to any user. This allows
  developers to perform the three use cases above, as well as give users the
  ability to grant access on a selective basis using the IAM model.
  """
  
  @doc """
  Removes all the permissions from the specified resource.
  """
  def remove_all_resource_permissions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/resources/{ResourceId}/permissions",
      input:          input,
      options:        options,
      action:         "RemoveAllResourcePermissions",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Creates a set of permissions for the specified folder or document. The
  resource permissions are overwritten if the principals already have
  different permissions.
  """
  def add_resource_permissions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/resources/{ResourceId}/permissions",
      input:          input,
      options:        options,
      action:         "AddResourcePermissions",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a folder with the specified name and parent folder.
  """
  def create_folder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/folders",
      input:          input,
      options:        options,
      action:         "CreateFolder",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Configure WorkDocs to use Amazon SNS notifications.

  The endpoint receives a confirmation message, and must confirm the
  subscription. For more information, see [Confirm the
  Subscription](http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.confirm)
  in the *Amazon Simple Notification Service Developer Guide*.
  """
  def create_notification_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/organizations/{OrganizationId}/subscriptions",
      input:          input,
      options:        options,
      action:         "CreateNotificationSubscription",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Activates the specified user. Only active users can access Amazon WorkDocs.
  """
  def activate_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/users/{UserId}/activation",
      input:          input,
      options:        options,
      action:         "ActivateUser",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified list of labels from a resource.
  """
  def delete_labels(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/resources/{ResourceId}/labels",
      input:          input,
      options:        options,
      action:         "DeleteLabels",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Retrieves details of a document.
  """
  def get_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}",
      input:          input,
      options:        options,
      action:         "GetDocument",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Deletes the contents of the specified folder.
  """
  def delete_folder_contents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/folders/{FolderId}/contents",
      input:          input,
      options:        options,
      action:         "DeleteFolderContents",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Adds a new comment to the specified document version.
  """
  def create_comment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment",
      input:          input,
      options:        options,
      action:         "CreateComment",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the current user's special folders; the `RootFolder` and the
  `RecyleBin`. `RootFolder` is the root of user's files and folders and
  `RecyleBin` is the root of recycled items. This is not a valid action for
  SigV4 (administrative API) clients.
  """
  def describe_root_folders(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/me/root",
      input:          input,
      options:        options,
      action:         "DescribeRootFolders",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Deletes the specified comment from the document version.
  """
  def delete_comment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}",
      input:          input,
      options:        options,
      action:         "DeleteComment",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Updates the specified attributes of the specified user, and grants or
  revokes administrative privileges to the Amazon WorkDocs site.
  """
  def update_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/users/{UserId}",
      input:          input,
      options:        options,
      action:         "UpdateUser",
      
      type:           :json,
      method:         :patch
    }
  end
  
  @doc """
  Describes the user activities in a specified time period.
  """
  def describe_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/activities",
      input:          input,
      options:        options,
      action:         "DescribeActivities",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Describes the specified users. You can describe all users or filter the
  results (for example, by status or organization).

  By default, Amazon WorkDocs returns the first 24 active or pending users.
  If there are more results, the response includes a marker that you can use
  to request the next set of results.
  """
  def describe_users(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/users",
      input:          input,
      options:        options,
      action:         "DescribeUsers",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Updates the specified attributes of a document. The user must have access
  to both the document and its parent folder, if applicable.
  """
  def update_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}",
      input:          input,
      options:        options,
      action:         "UpdateDocument",
      
      type:           :json,
      method:         :patch
    }
  end
  
  @doc """
  Retrieves version metadata for the specified document.
  """
  def get_document_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}/versions/{VersionId}",
      input:          input,
      options:        options,
      action:         "GetDocumentVersion",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Permanently deletes the specified document and its associated metadata.
  """
  def delete_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}",
      input:          input,
      options:        options,
      action:         "DeleteDocument",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Removes the permission for the specified principal from the specified
  resource.
  """
  def remove_resource_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}",
      input:          input,
      options:        options,
      action:         "RemoveResourcePermission",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Creates a user in a Simple AD or Microsoft AD directory. The status of a
  newly created user is "ACTIVE". New users can access Amazon WorkDocs.
  """
  def create_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/users",
      input:          input,
      options:        options,
      action:         "CreateUser",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the permissions of a specified resource.
  """
  def describe_resource_permissions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/resources/{ResourceId}/permissions",
      input:          input,
      options:        options,
      action:         "DescribeResourcePermissions",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Creates a new document object and version object.

  The client specifies the parent folder ID and name of the document to
  upload. The ID is optionally specified when creating a new version of an
  existing document. This is the first step to upload a document. Next,
  upload the document to the URL returned from the call, and then call
  `UpdateDocumentVersion`.

  To cancel the document upload, call `AbortDocumentVersionUpload`.
  """
  def initiate_document_version_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents",
      input:          input,
      options:        options,
      action:         "InitiateDocumentVersionUpload",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  List all the comments for the specified document version.
  """
  def describe_comments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments",
      input:          input,
      options:        options,
      action:         "DescribeComments",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Aborts the upload of the specified document version that was previously
  initiated by `InitiateDocumentVersionUpload`. The client should make this
  call only when it no longer intends to upload the document version, or
  fails to do so.
  """
  def abort_document_version_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}/versions/{VersionId}",
      input:          input,
      options:        options,
      action:         "AbortDocumentVersionUpload",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Describes the contents of the specified folder, including its documents and
  subfolders.

  By default, Amazon WorkDocs returns the first 100 active document and
  folder metadata items. If there are more results, the response includes a
  marker that you can use to request the next set of results. You can also
  request initialized documents.
  """
  def describe_folder_contents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/folders/{FolderId}/contents",
      input:          input,
      options:        options,
      action:         "DescribeFolderContents",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Deletes the specified subscription from the specified organization.
  """
  def delete_notification_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}",
      input:          input,
      options:        options,
      action:         "DeleteNotificationSubscription",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Retrieves the path information (the hierarchy from the root folder) for the
  specified folder.

  By default, Amazon WorkDocs returns a maximum of 100 levels upwards from
  the requested folder and only includes the IDs of the parent folders in the
  path. You can limit the maximum number of levels. You can also request the
  parent folder names.
  """
  def get_folder_path(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/folders/{FolderId}/path",
      input:          input,
      options:        options,
      action:         "GetFolderPath",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Deletes the specified user from a Simple AD or Microsoft AD directory.
  """
  def delete_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/users/{UserId}",
      input:          input,
      options:        options,
      action:         "DeleteUser",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Retrieves the document versions for the specified document.

  By default, only active versions are returned.
  """
  def describe_document_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}/versions",
      input:          input,
      options:        options,
      action:         "DescribeDocumentVersions",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Deletes custom metadata from the specified resource.
  """
  def delete_custom_metadata(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/resources/{ResourceId}/customMetadata",
      input:          input,
      options:        options,
      action:         "DeleteCustomMetadata",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Lists the specified notification subscriptions.
  """
  def describe_notification_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/organizations/{OrganizationId}/subscriptions",
      input:          input,
      options:        options,
      action:         "DescribeNotificationSubscriptions",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Changes the status of the document version to ACTIVE.

  Amazon WorkDocs also sets its document container to ACTIVE. This is the
  last step in a document upload, after the client uploads the document to an
  S3-presigned URL returned by `InitiateDocumentVersionUpload`.
  """
  def update_document_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}/versions/{VersionId}",
      input:          input,
      options:        options,
      action:         "UpdateDocumentVersion",
      
      type:           :json,
      method:         :patch
    }
  end
  
  @doc """
  Updates the specified attributes of the specified folder. The user must
  have access to both the folder and its parent folder, if applicable.
  """
  def update_folder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/folders/{FolderId}",
      input:          input,
      options:        options,
      action:         "UpdateFolder",
      
      type:           :json,
      method:         :patch
    }
  end
  
  @doc """
  Permanently deletes the specified folder and its contents.
  """
  def delete_folder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/folders/{FolderId}",
      input:          input,
      options:        options,
      action:         "DeleteFolder",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Deactivates the specified user, which revokes the user's access to Amazon
  WorkDocs.
  """
  def deactivate_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/users/{UserId}/activation",
      input:          input,
      options:        options,
      action:         "DeactivateUser",
      
      type:           :json,
      method:         :delete
    }
  end
  
  @doc """
  Adds the specified list of labels to the given resource (a document or
  folder)
  """
  def create_labels(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/resources/{ResourceId}/labels",
      input:          input,
      options:        options,
      action:         "CreateLabels",
      
      type:           :json,
      method:         :put
    }
  end
  
  @doc """
  Adds one or more custom properties to the specified resource (a folder,
  document, or version).
  """
  def create_custom_metadata(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/resources/{ResourceId}/customMetadata",
      input:          input,
      options:        options,
      action:         "CreateCustomMetadata",
      
      type:           :json,
      method:         :put
    }
  end
  
  @doc """
  Retrieves details of the current user for whom the authentication token was
  generated. This is not a valid action for SigV4 (administrative API)
  clients.
  """
  def get_current_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/me",
      input:          input,
      options:        options,
      action:         "GetCurrentUser",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Retrieves the path information (the hierarchy from the root folder) for the
  requested document.

  By default, Amazon WorkDocs returns a maximum of 100 levels upwards from
  the requested document and only includes the IDs of the parent folders in
  the path. You can limit the maximum number of levels. You can also request
  the names of the parent folders.
  """
  def get_document_path(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/documents/{DocumentId}/path",
      input:          input,
      options:        options,
      action:         "GetDocumentPath",
      
      type:           :json,
      method:         :get
    }
  end
  
  @doc """
  Retrieves the metadata of the specified folder.
  """
  def get_folder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "workdocs",
      endpoint:       "/api/v1/folders/{FolderId}",
      input:          input,
      options:        options,
      action:         "GetFolder",
      
      type:           :json,
      method:         :get
    }
  end
  
end