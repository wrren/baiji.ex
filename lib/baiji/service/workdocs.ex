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
      service:          "workdocs",
      endpoint:         "/api/v1/resources/{ResourceId}/permissions",
      input:            input,
      options:          options,
      action:           "RemoveAllResourcePermissions",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "RemoveAllResourcePermissionsRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a set of permissions for the specified folder or document. The
  resource permissions are overwritten if the principals already have
  different permissions.
  """
  def add_resource_permissions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/resources/{ResourceId}/permissions",
      input:            input,
      options:          options,
      action:           "AddResourcePermissions",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :post,
      input_shape:      "AddResourcePermissionsRequest",
      output_shape:     "AddResourcePermissionsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a folder with the specified name and parent folder.
  """
  def create_folder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/folders",
      input:            input,
      options:          options,
      action:           "CreateFolder",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :post,
      input_shape:      "CreateFolderRequest",
      output_shape:     "CreateFolderResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/organizations/{OrganizationId}/subscriptions",
      input:            input,
      options:          options,
      action:           "CreateNotificationSubscription",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :post,
      input_shape:      "CreateNotificationSubscriptionRequest",
      output_shape:     "CreateNotificationSubscriptionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Activates the specified user. Only active users can access Amazon WorkDocs.
  """
  def activate_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/users/{UserId}/activation",
      input:            input,
      options:          options,
      action:           "ActivateUser",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :post,
      input_shape:      "ActivateUserRequest",
      output_shape:     "ActivateUserResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified list of labels from a resource.
  """
  def delete_labels(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/resources/{ResourceId}/labels",
      input:            input,
      options:          options,
      action:           "DeleteLabels",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeleteLabelsRequest",
      output_shape:     "DeleteLabelsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves details of a document.
  """
  def get_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}",
      input:            input,
      options:          options,
      action:           "GetDocument",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "GetDocumentRequest",
      output_shape:     "GetDocumentResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the contents of the specified folder.
  """
  def delete_folder_contents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/folders/{FolderId}/contents",
      input:            input,
      options:          options,
      action:           "DeleteFolderContents",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeleteFolderContentsRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds a new comment to the specified document version.
  """
  def create_comment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment",
      input:            input,
      options:          options,
      action:           "CreateComment",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :post,
      input_shape:      "CreateCommentRequest",
      output_shape:     "CreateCommentResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/me/root",
      input:            input,
      options:          options,
      action:           "DescribeRootFolders",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "DescribeRootFoldersRequest",
      output_shape:     "DescribeRootFoldersResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified comment from the document version.
  """
  def delete_comment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}",
      input:            input,
      options:          options,
      action:           "DeleteComment",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeleteCommentRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the specified attributes of the specified user, and grants or
  revokes administrative privileges to the Amazon WorkDocs site.
  """
  def update_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/users/{UserId}",
      input:            input,
      options:          options,
      action:           "UpdateUser",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :patch,
      input_shape:      "UpdateUserRequest",
      output_shape:     "UpdateUserResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the user activities in a specified time period.
  """
  def describe_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/activities",
      input:            input,
      options:          options,
      action:           "DescribeActivities",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "DescribeActivitiesRequest",
      output_shape:     "DescribeActivitiesResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/users",
      input:            input,
      options:          options,
      action:           "DescribeUsers",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "DescribeUsersRequest",
      output_shape:     "DescribeUsersResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the specified attributes of a document. The user must have access
  to both the document and its parent folder, if applicable.
  """
  def update_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}",
      input:            input,
      options:          options,
      action:           "UpdateDocument",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :patch,
      input_shape:      "UpdateDocumentRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves version metadata for the specified document.
  """
  def get_document_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}/versions/{VersionId}",
      input:            input,
      options:          options,
      action:           "GetDocumentVersion",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "GetDocumentVersionRequest",
      output_shape:     "GetDocumentVersionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes the specified document and its associated metadata.
  """
  def delete_document(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}",
      input:            input,
      options:          options,
      action:           "DeleteDocument",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeleteDocumentRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes the permission for the specified principal from the specified
  resource.
  """
  def remove_resource_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}",
      input:            input,
      options:          options,
      action:           "RemoveResourcePermission",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "RemoveResourcePermissionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a user in a Simple AD or Microsoft AD directory. The status of a
  newly created user is "ACTIVE". New users can access Amazon WorkDocs.
  """
  def create_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/users",
      input:            input,
      options:          options,
      action:           "CreateUser",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :post,
      input_shape:      "CreateUserRequest",
      output_shape:     "CreateUserResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the permissions of a specified resource.
  """
  def describe_resource_permissions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/resources/{ResourceId}/permissions",
      input:            input,
      options:          options,
      action:           "DescribeResourcePermissions",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "DescribeResourcePermissionsRequest",
      output_shape:     "DescribeResourcePermissionsResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/documents",
      input:            input,
      options:          options,
      action:           "InitiateDocumentVersionUpload",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :post,
      input_shape:      "InitiateDocumentVersionUploadRequest",
      output_shape:     "InitiateDocumentVersionUploadResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  List all the comments for the specified document version.
  """
  def describe_comments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments",
      input:            input,
      options:          options,
      action:           "DescribeComments",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "DescribeCommentsRequest",
      output_shape:     "DescribeCommentsResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}/versions/{VersionId}",
      input:            input,
      options:          options,
      action:           "AbortDocumentVersionUpload",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "AbortDocumentVersionUploadRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/folders/{FolderId}/contents",
      input:            input,
      options:          options,
      action:           "DescribeFolderContents",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "DescribeFolderContentsRequest",
      output_shape:     "DescribeFolderContentsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified subscription from the specified organization.
  """
  def delete_notification_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}",
      input:            input,
      options:          options,
      action:           "DeleteNotificationSubscription",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeleteNotificationSubscriptionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/folders/{FolderId}/path",
      input:            input,
      options:          options,
      action:           "GetFolderPath",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "GetFolderPathRequest",
      output_shape:     "GetFolderPathResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified user from a Simple AD or Microsoft AD directory.
  """
  def delete_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/users/{UserId}",
      input:            input,
      options:          options,
      action:           "DeleteUser",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeleteUserRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves the document versions for the specified document.

  By default, only active versions are returned.
  """
  def describe_document_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}/versions",
      input:            input,
      options:          options,
      action:           "DescribeDocumentVersions",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "DescribeDocumentVersionsRequest",
      output_shape:     "DescribeDocumentVersionsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes custom metadata from the specified resource.
  """
  def delete_custom_metadata(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/resources/{ResourceId}/customMetadata",
      input:            input,
      options:          options,
      action:           "DeleteCustomMetadata",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeleteCustomMetadataRequest",
      output_shape:     "DeleteCustomMetadataResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the specified notification subscriptions.
  """
  def describe_notification_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/organizations/{OrganizationId}/subscriptions",
      input:            input,
      options:          options,
      action:           "DescribeNotificationSubscriptions",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "DescribeNotificationSubscriptionsRequest",
      output_shape:     "DescribeNotificationSubscriptionsResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}/versions/{VersionId}",
      input:            input,
      options:          options,
      action:           "UpdateDocumentVersion",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :patch,
      input_shape:      "UpdateDocumentVersionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the specified attributes of the specified folder. The user must
  have access to both the folder and its parent folder, if applicable.
  """
  def update_folder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/folders/{FolderId}",
      input:            input,
      options:          options,
      action:           "UpdateFolder",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :patch,
      input_shape:      "UpdateFolderRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes the specified folder and its contents.
  """
  def delete_folder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/folders/{FolderId}",
      input:            input,
      options:          options,
      action:           "DeleteFolder",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeleteFolderRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deactivates the specified user, which revokes the user's access to Amazon
  WorkDocs.
  """
  def deactivate_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/users/{UserId}/activation",
      input:            input,
      options:          options,
      action:           "DeactivateUser",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :delete,
      input_shape:      "DeactivateUserRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds the specified list of labels to the given resource (a document or
  folder)
  """
  def create_labels(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/resources/{ResourceId}/labels",
      input:            input,
      options:          options,
      action:           "CreateLabels",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :put,
      input_shape:      "CreateLabelsRequest",
      output_shape:     "CreateLabelsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds one or more custom properties to the specified resource (a folder,
  document, or version).
  """
  def create_custom_metadata(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/resources/{ResourceId}/customMetadata",
      input:            input,
      options:          options,
      action:           "CreateCustomMetadata",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :put,
      input_shape:      "CreateCustomMetadataRequest",
      output_shape:     "CreateCustomMetadataResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves details of the current user for whom the authentication token was
  generated. This is not a valid action for SigV4 (administrative API)
  clients.
  """
  def get_current_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/me",
      input:            input,
      options:          options,
      action:           "GetCurrentUser",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "GetCurrentUserRequest",
      output_shape:     "GetCurrentUserResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "workdocs",
      endpoint:         "/api/v1/documents/{DocumentId}/path",
      input:            input,
      options:          options,
      action:           "GetDocumentPath",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "GetDocumentPathRequest",
      output_shape:     "GetDocumentPathResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves the metadata of the specified folder.
  """
  def get_folder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "workdocs",
      endpoint:         "/api/v1/folders/{FolderId}",
      input:            input,
      options:          options,
      action:           "GetFolder",
      
      endpoint_prefix:  "workdocs",
      type:             :json,
      version:          "2016-05-01",
      method:           :get,
      input_shape:      "GetFolderRequest",
      output_shape:     "GetFolderResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"UnauthorizedOperationException" => %{"error" => %{"httpStatusCode" => 403}, "exception" => true, "members" => %{}, "type" => "structure"}, "ResourcePathComponent" => %{"members" => %{"Id" => %{"shape" => "IdType"}, "Name" => %{"shape" => "ResourceNameType"}}, "type" => "structure"}, "PrincipalList" => %{"member" => %{"shape" => "Principal"}, "type" => "list"}, "FolderMetadataList" => %{"member" => %{"shape" => "FolderMetadata"}, "type" => "list"}, "UsernameType" => %{"max" => 256, "min" => 1, "pattern" => "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?", "type" => "string"}, "UserMetadata" => %{"members" => %{"EmailAddress" => %{"shape" => "EmailAddressType"}, "GivenName" => %{"shape" => "UserAttributeValueType"}, "Id" => %{"shape" => "IdType"}, "Surname" => %{"shape" => "UserAttributeValueType"}, "Username" => %{"shape" => "UsernameType"}}, "type" => "structure"}, "CreateNotificationSubscriptionRequest" => %{"members" => %{"Endpoint" => %{"shape" => "SubscriptionEndPointType"}, "OrganizationId" => %{"location" => "uri", "locationName" => "OrganizationId", "shape" => "IdType"}, "Protocol" => %{"shape" => "SubscriptionProtocolType"}, "SubscriptionType" => %{"shape" => "SubscriptionType"}}, "required" => ["OrganizationId", "Endpoint", "Protocol", "SubscriptionType"], "type" => "structure"}, "DeleteCustomMetadataRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DeleteAll" => %{"location" => "querystring", "locationName" => "deleteAll", "shape" => "BooleanType"}, "Keys" => %{"location" => "querystring", "locationName" => "keys", "shape" => "CustomMetadataKeyList"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "ResourceIdType"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "DocumentVersionIdType"}}, "required" => ["ResourceId"], "type" => "structure"}, "TimestampType" => %{"type" => "timestamp"}, "CreateUserResponse" => %{"members" => %{"User" => %{"shape" => "User"}}, "type" => "structure"}, "DescribeCommentsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "MarkerType"}, "VersionId" => %{"location" => "uri", "locationName" => "VersionId", "shape" => "DocumentVersionIdType"}}, "required" => ["DocumentId", "VersionId"], "type" => "structure"}, "SharePrincipal" => %{"members" => %{"Id" => %{"shape" => "IdType"}, "Role" => %{"shape" => "RoleType"}, "Type" => %{"shape" => "PrincipalType"}}, "required" => ["Id", "Type", "Role"], "type" => "structure"}, "ResourceType" => %{"enum" => ["FOLDER", "DOCUMENT"], "type" => "string"}, "ResourceNameType" => %{"max" => 255, "min" => 1, "pattern" => "[\\u0020-\\u202D\\u202F-\\uFFFF]+", "type" => "string"}, "CommentStatusType" => %{"enum" => ["DRAFT", "PUBLISHED", "DELETED"], "type" => "string"}, "HashType" => %{"max" => 128, "min" => 0, "pattern" => "[&\\w+-.@]+", "type" => "string"}, "IdType" => %{"max" => 256, "min" => 1, "pattern" => "[&\\w+-.@]+", "type" => "string"}, "GroupMetadataList" => %{"member" => %{"shape" => "GroupMetadata"}, "type" => "list"}, "StorageLimitWillExceedException" => %{"error" => %{"httpStatusCode" => 413}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "ActivityType" => %{"enum" => ["DOCUMENT_CHECKED_IN", "DOCUMENT_CHECKED_OUT", "DOCUMENT_RENAMED", "DOCUMENT_VERSION_UPLOADED", "DOCUMENT_VERSION_DELETED", "DOCUMENT_RECYCLED", "DOCUMENT_RESTORED", "DOCUMENT_REVERTED", "DOCUMENT_SHARED", "DOCUMENT_UNSHARED", "DOCUMENT_SHARE_PERMISSION_CHANGED", "DOCUMENT_SHAREABLE_LINK_CREATED", "DOCUMENT_SHAREABLE_LINK_REMOVED", "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED", "DOCUMENT_MOVED", "DOCUMENT_COMMENT_ADDED", "DOCUMENT_COMMENT_DELETED", "DOCUMENT_ANNOTATION_ADDED", "DOCUMENT_ANNOTATION_DELETED", "FOLDER_CREATED", "FOLDER_DELETED", "FOLDER_RENAMED", "FOLDER_RECYCLED", "FOLDER_RESTORED", "FOLDER_SHARED", "FOLDER_UNSHARED", "FOLDER_SHARE_PERMISSION_CHANGED", "FOLDER_SHAREABLE_LINK_CREATED", "FOLDER_SHAREABLE_LINK_REMOVED", "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED", "FOLDER_MOVED"], "type" => "string"}, "ResourcePathComponentList" => %{"member" => %{"shape" => "ResourcePathComponent"}, "type" => "list"}, "DocumentVersionStatus" => %{"enum" => ["ACTIVE"], "type" => "string"}, "DocumentThumbnailType" => %{"enum" => ["SMALL", "SMALL_HQ", "LARGE"], "type" => "string"}, "Labels" => %{"max" => 20, "member" => %{"shape" => "Label"}, "type" => "list"}, "UpdateDocumentVersionRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "VersionId" => %{"location" => "uri", "locationName" => "VersionId", "shape" => "DocumentVersionIdType"}, "VersionStatus" => %{"shape" => "DocumentVersionStatus"}}, "required" => ["DocumentId", "VersionId"], "type" => "structure"}, "CommentTextType" => %{"max" => 2048, "min" => 1, "sensitive" => true, "type" => "string"}, "UnauthorizedResourceAccessException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "User" => %{"members" => %{"CreatedTimestamp" => %{"shape" => "TimestampType"}, "EmailAddress" => %{"shape" => "EmailAddressType"}, "GivenName" => %{"shape" => "UserAttributeValueType"}, "Id" => %{"shape" => "IdType"}, "Locale" => %{"shape" => "LocaleType"}, "ModifiedTimestamp" => %{"shape" => "TimestampType"}, "OrganizationId" => %{"shape" => "IdType"}, "RecycleBinFolderId" => %{"shape" => "ResourceIdType"}, "RootFolderId" => %{"shape" => "ResourceIdType"}, "Status" => %{"shape" => "UserStatusType"}, "Storage" => %{"shape" => "UserStorageMetadata"}, "Surname" => %{"shape" => "UserAttributeValueType"}, "TimeZoneId" => %{"shape" => "TimeZoneIdType"}, "Type" => %{"shape" => "UserType"}, "Username" => %{"shape" => "UsernameType"}}, "type" => "structure"}, "DescribeRootFoldersRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarkerType"}}, "required" => ["AuthenticationToken"], "type" => "structure"}, "PermissionInfo" => %{"members" => %{"Role" => %{"shape" => "RoleType"}, "Type" => %{"shape" => "RolePermissionType"}}, "type" => "structure"}, "CreateCustomMetadataResponse" => %{"members" => %{}, "type" => "structure"}, "EntityNotExistsException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"EntityIds" => %{"shape" => "EntityIdList"}, "Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "SearchQueryType" => %{"max" => 512, "min" => 1, "pattern" => "[\\u0020-\\uFFFF]+", "sensitive" => true, "type" => "string"}, "FolderMetadata" => %{"members" => %{"CreatedTimestamp" => %{"shape" => "TimestampType"}, "CreatorId" => %{"shape" => "IdType"}, "Id" => %{"shape" => "ResourceIdType"}, "Labels" => %{"shape" => "Labels"}, "LatestVersionSize" => %{"shape" => "SizeType"}, "ModifiedTimestamp" => %{"shape" => "TimestampType"}, "Name" => %{"shape" => "ResourceNameType"}, "ParentFolderId" => %{"shape" => "ResourceIdType"}, "ResourceState" => %{"shape" => "ResourceStateType"}, "Signature" => %{"shape" => "HashType"}, "Size" => %{"shape" => "SizeType"}}, "type" => "structure"}, "HeaderNameType" => %{"max" => 256, "min" => 1, "pattern" => "[\\w-]+", "type" => "string"}, "CreateFolderRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "Name" => %{"shape" => "ResourceNameType"}, "ParentFolderId" => %{"shape" => "ResourceIdType"}}, "required" => ["ParentFolderId"], "type" => "structure"}, "DocumentVersionMetadata" => %{"members" => %{"ContentCreatedTimestamp" => %{"shape" => "TimestampType"}, "ContentModifiedTimestamp" => %{"shape" => "TimestampType"}, "ContentType" => %{"shape" => "DocumentContentType"}, "CreatedTimestamp" => %{"shape" => "TimestampType"}, "CreatorId" => %{"shape" => "IdType"}, "Id" => %{"shape" => "DocumentVersionIdType"}, "ModifiedTimestamp" => %{"shape" => "TimestampType"}, "Name" => %{"shape" => "ResourceNameType"}, "Signature" => %{"shape" => "HashType"}, "Size" => %{"shape" => "SizeType"}, "Source" => %{"shape" => "DocumentSourceUrlMap"}, "Status" => %{"shape" => "DocumentStatusType"}, "Thumbnail" => %{"shape" => "DocumentThumbnailUrlMap"}}, "type" => "structure"}, "RemoveAllResourcePermissionsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "ResourceIdType"}}, "required" => ["ResourceId"], "type" => "structure"}, "DescribeCommentsResponse" => %{"members" => %{"Comments" => %{"shape" => "CommentList"}, "Marker" => %{"shape" => "MarkerType"}}, "type" => "structure"}, "DeleteLabelsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DeleteAll" => %{"location" => "querystring", "locationName" => "deleteAll", "shape" => "BooleanType"}, "Labels" => %{"location" => "querystring", "locationName" => "labels", "shape" => "Labels"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "ResourceIdType"}}, "required" => ["ResourceId"], "type" => "structure"}, "DescribeActivitiesRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "EndTime" => %{"location" => "querystring", "locationName" => "endTime", "shape" => "TimestampType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "MarkerType"}, "OrganizationId" => %{"location" => "querystring", "locationName" => "organizationId", "shape" => "IdType"}, "StartTime" => %{"location" => "querystring", "locationName" => "startTime", "shape" => "TimestampType"}, "UserId" => %{"location" => "querystring", "locationName" => "userId", "shape" => "IdType"}}, "type" => "structure"}, "CreateLabelsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "Labels" => %{"shape" => "Labels"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "ResourceIdType"}}, "required" => ["ResourceId", "Labels"], "type" => "structure"}, "UserMetadataList" => %{"member" => %{"shape" => "UserMetadata"}, "type" => "list"}, "CreateCommentRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "NotifyCollaborators" => %{"shape" => "BooleanType"}, "ParentId" => %{"shape" => "CommentIdType"}, "Text" => %{"shape" => "CommentTextType"}, "ThreadId" => %{"shape" => "CommentIdType"}, "VersionId" => %{"location" => "uri", "locationName" => "VersionId", "shape" => "DocumentVersionIdType"}, "Visibility" => %{"shape" => "CommentVisibilityType"}}, "required" => ["DocumentId", "VersionId", "Text"], "type" => "structure"}, "DeleteFolderRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "FolderId" => %{"location" => "uri", "locationName" => "FolderId", "shape" => "ResourceIdType"}}, "required" => ["FolderId"], "type" => "structure"}, "UserAttributeValueType" => %{"max" => 64, "min" => 1, "type" => "string"}, "InitiateDocumentVersionUploadRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "ContentCreatedTimestamp" => %{"shape" => "TimestampType"}, "ContentModifiedTimestamp" => %{"shape" => "TimestampType"}, "ContentType" => %{"shape" => "DocumentContentType"}, "DocumentSizeInBytes" => %{"shape" => "SizeType"}, "Id" => %{"shape" => "ResourceIdType"}, "Name" => %{"shape" => "ResourceNameType"}, "ParentFolderId" => %{"shape" => "ResourceIdType"}}, "required" => ["ParentFolderId"], "type" => "structure"}, "UserStorageMetadata" => %{"members" => %{"StorageRule" => %{"shape" => "StorageRuleType"}, "StorageUtilizedInBytes" => %{"shape" => "SizeType"}}, "type" => "structure"}, "CommentIdType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+-.@]+", "type" => "string"}, "ServiceUnavailableException" => %{"error" => %{"httpStatusCode" => 503}, "exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "SubscriptionType" => %{"enum" => ["ALL"], "type" => "string"}, "CreateCommentResponse" => %{"members" => %{"Comment" => %{"shape" => "Comment"}}, "type" => "structure"}, "GroupNameType" => %{"type" => "string"}, "ShareResultsList" => %{"member" => %{"shape" => "ShareResult"}, "type" => "list"}, "DeleteDocumentRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}}, "required" => ["DocumentId"], "type" => "structure"}, "PrincipalType" => %{"enum" => ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"], "type" => "string"}, "CommentMetadata" => %{"members" => %{"CommentId" => %{"shape" => "CommentIdType"}, "CommentStatus" => %{"shape" => "CommentStatusType"}, "Contributor" => %{"shape" => "User"}, "CreatedTimestamp" => %{"shape" => "TimestampType"}, "RecipientId" => %{"shape" => "IdType"}}, "type" => "structure"}, "DocumentContentType" => %{"max" => 128, "min" => 1, "type" => "string"}, "AuthenticationHeaderType" => %{"max" => 8199, "min" => 1, "sensitive" => true, "type" => "string"}, "ResourceSortType" => %{"enum" => ["DATE", "NAME"], "type" => "string"}, "DescribeUsersResponse" => %{"members" => %{"Marker" => %{"shape" => "PageMarkerType"}, "TotalNumberOfUsers" => %{"shape" => "SizeType"}, "Users" => %{"shape" => "OrganizationUserList"}}, "type" => "structure"}, "UpdateUserResponse" => %{"members" => %{"User" => %{"shape" => "User"}}, "type" => "structure"}, "CreateCustomMetadataRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "CustomMetadata" => %{"shape" => "CustomMetadataMap"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "ResourceIdType"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionid", "shape" => "DocumentVersionIdType"}}, "required" => ["ResourceId", "CustomMetadata"], "type" => "structure"}, "DeactivateUserRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "UserId" => %{"location" => "uri", "locationName" => "UserId", "shape" => "IdType"}}, "required" => ["UserId"], "type" => "structure"}, "DescribeFolderContentsResponse" => %{"members" => %{"Documents" => %{"shape" => "DocumentMetadataList"}, "Folders" => %{"shape" => "FolderMetadataList"}, "Marker" => %{"shape" => "PageMarkerType"}}, "type" => "structure"}, "LocaleType" => %{"enum" => ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"], "type" => "string"}, "DescribeUsersRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "Fields" => %{"location" => "querystring", "locationName" => "fields", "shape" => "FieldNamesType"}, "Include" => %{"location" => "querystring", "locationName" => "include", "shape" => "UserFilterType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarkerType"}, "Order" => %{"location" => "querystring", "locationName" => "order", "shape" => "OrderType"}, "OrganizationId" => %{"location" => "querystring", "locationName" => "organizationId", "shape" => "IdType"}, "Query" => %{"location" => "querystring", "locationName" => "query", "shape" => "SearchQueryType"}, "Sort" => %{"location" => "querystring", "locationName" => "sort", "shape" => "UserSortType"}, "UserIds" => %{"location" => "querystring", "locationName" => "userIds", "shape" => "UserIdsType"}}, "type" => "structure"}, "EmailAddressType" => %{"max" => 256, "min" => 1, "pattern" => "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}", "type" => "string"}, "StorageType" => %{"enum" => ["UNLIMITED", "QUOTA"], "type" => "string"}, "UserStatusType" => %{"enum" => ["ACTIVE", "INACTIVE", "PENDING"], "type" => "string"}, "DescribeNotificationSubscriptionsRequest" => %{"members" => %{"Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarkerType"}, "OrganizationId" => %{"location" => "uri", "locationName" => "OrganizationId", "shape" => "IdType"}}, "required" => ["OrganizationId"], "type" => "structure"}, "ResourceIdType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+-.@]+", "type" => "string"}, "DeleteLabelsResponse" => %{"members" => %{}, "type" => "structure"}, "FailedDependencyException" => %{"error" => %{"httpStatusCode" => 424}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "CustomMetadataKeyType" => %{"max" => 56, "min" => 1, "pattern" => "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*", "type" => "string"}, "CustomMetadataKeyList" => %{"max" => 8, "member" => %{"shape" => "CustomMetadataKeyType"}, "type" => "list"}, "DescribeNotificationSubscriptionsResponse" => %{"members" => %{"Marker" => %{"shape" => "PageMarkerType"}, "Subscriptions" => %{"shape" => "SubscriptionList"}}, "type" => "structure"}, "DescribeDocumentVersionsResponse" => %{"members" => %{"DocumentVersions" => %{"shape" => "DocumentVersionMetadataList"}, "Marker" => %{"shape" => "PageMarkerType"}}, "type" => "structure"}, "CreateFolderResponse" => %{"members" => %{"Metadata" => %{"shape" => "FolderMetadata"}}, "type" => "structure"}, "GetFolderResponse" => %{"members" => %{"CustomMetadata" => %{"shape" => "CustomMetadataMap"}, "Metadata" => %{"shape" => "FolderMetadata"}}, "type" => "structure"}, "UpdateFolderRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "FolderId" => %{"location" => "uri", "locationName" => "FolderId", "shape" => "ResourceIdType"}, "Name" => %{"shape" => "ResourceNameType"}, "ParentFolderId" => %{"shape" => "ResourceIdType"}, "ResourceState" => %{"shape" => "ResourceStateType"}}, "required" => ["FolderId"], "type" => "structure"}, "GroupMetadata" => %{"members" => %{"Id" => %{"shape" => "IdType"}, "Name" => %{"shape" => "GroupNameType"}}, "type" => "structure"}, "DocumentVersionMetadataList" => %{"member" => %{"shape" => "DocumentVersionMetadata"}, "type" => "list"}, "UserIdsType" => %{"max" => 2000, "min" => 1, "pattern" => "[&\\w+-.@, ]+", "type" => "string"}, "ResourcePath" => %{"members" => %{"Components" => %{"shape" => "ResourcePathComponentList"}}, "type" => "structure"}, "UserFilterType" => %{"enum" => ["ALL", "ACTIVE_PENDING"], "type" => "string"}, "UserActivities" => %{"member" => %{"shape" => "Activity"}, "type" => "list"}, "CustomMetadataMap" => %{"key" => %{"shape" => "CustomMetadataKeyType"}, "max" => 8, "min" => 1, "type" => "map", "value" => %{"shape" => "CustomMetadataValueType"}}, "PasswordType" => %{"max" => 32, "min" => 4, "pattern" => "[\\u0020-\\u00FF]+", "sensitive" => true, "type" => "string"}, "DocumentMetadata" => %{"members" => %{"CreatedTimestamp" => %{"shape" => "TimestampType"}, "CreatorId" => %{"shape" => "IdType"}, "Id" => %{"shape" => "ResourceIdType"}, "Labels" => %{"shape" => "Labels"}, "LatestVersionMetadata" => %{"shape" => "DocumentVersionMetadata"}, "ModifiedTimestamp" => %{"shape" => "TimestampType"}, "ParentFolderId" => %{"shape" => "ResourceIdType"}, "ResourceState" => %{"shape" => "ResourceStateType"}}, "type" => "structure"}, "DescribeRootFoldersResponse" => %{"members" => %{"Folders" => %{"shape" => "FolderMetadataList"}, "Marker" => %{"shape" => "PageMarkerType"}}, "type" => "structure"}, "GetDocumentPathRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "IdType"}, "Fields" => %{"location" => "querystring", "locationName" => "fields", "shape" => "FieldNamesType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarkerType"}}, "required" => ["DocumentId"], "type" => "structure"}, "DocumentThumbnailUrlMap" => %{"key" => %{"shape" => "DocumentThumbnailType"}, "type" => "map", "value" => %{"shape" => "UrlType"}}, "ResourceMetadata" => %{"members" => %{"Id" => %{"shape" => "ResourceIdType"}, "Name" => %{"shape" => "ResourceNameType"}, "OriginalName" => %{"shape" => "ResourceNameType"}, "Owner" => %{"shape" => "UserMetadata"}, "ParentId" => %{"shape" => "ResourceIdType"}, "Type" => %{"shape" => "ResourceType"}, "VersionId" => %{"shape" => "DocumentVersionIdType"}}, "type" => "structure"}, "DescribeFolderContentsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "FolderId" => %{"location" => "uri", "locationName" => "FolderId", "shape" => "ResourceIdType"}, "Include" => %{"location" => "querystring", "locationName" => "include", "shape" => "FieldNamesType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarkerType"}, "Order" => %{"location" => "querystring", "locationName" => "order", "shape" => "OrderType"}, "Sort" => %{"location" => "querystring", "locationName" => "sort", "shape" => "ResourceSortType"}, "Type" => %{"location" => "querystring", "locationName" => "type", "shape" => "FolderContentType"}}, "required" => ["FolderId"], "type" => "structure"}, "ResourceAlreadyCheckedOutException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "Subscription" => %{"members" => %{"EndPoint" => %{"shape" => "SubscriptionEndPointType"}, "Protocol" => %{"shape" => "SubscriptionProtocolType"}, "SubscriptionId" => %{"shape" => "IdType"}}, "type" => "structure"}, "OrganizationUserList" => %{"member" => %{"shape" => "User"}, "type" => "list"}, "GetCurrentUserResponse" => %{"members" => %{"User" => %{"shape" => "User"}}, "type" => "structure"}, "RoleType" => %{"enum" => ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"], "type" => "string"}, "ShareStatusType" => %{"enum" => ["SUCCESS", "FAILURE"], "type" => "string"}, "DeleteCommentRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "CommentId" => %{"location" => "uri", "locationName" => "CommentId", "shape" => "CommentIdType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "VersionId" => %{"location" => "uri", "locationName" => "VersionId", "shape" => "DocumentVersionIdType"}}, "required" => ["DocumentId", "VersionId", "CommentId"], "type" => "structure"}, "DeleteNotificationSubscriptionRequest" => %{"members" => %{"OrganizationId" => %{"location" => "uri", "locationName" => "OrganizationId", "shape" => "IdType"}, "SubscriptionId" => %{"location" => "uri", "locationName" => "SubscriptionId", "shape" => "IdType"}}, "required" => ["SubscriptionId", "OrganizationId"], "type" => "structure"}, "CommentList" => %{"member" => %{"shape" => "Comment"}, "type" => "list"}, "GetCurrentUserRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}}, "required" => ["AuthenticationToken"], "type" => "structure"}, "RolePermissionType" => %{"enum" => ["DIRECT", "INHERITED"], "type" => "string"}, "DeactivatingLastSystemUserException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{}, "type" => "structure"}, "InvalidArgumentException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "Participants" => %{"members" => %{"Groups" => %{"shape" => "GroupMetadataList"}, "Users" => %{"shape" => "UserMetadataList"}}, "type" => "structure"}, "DescribeResourcePermissionsResponse" => %{"members" => %{"Marker" => %{"shape" => "PageMarkerType"}, "Principals" => %{"shape" => "PrincipalList"}}, "type" => "structure"}, "SubscriptionList" => %{"max" => 256, "member" => %{"shape" => "Subscription"}, "type" => "list"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "DeleteUserRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "UserId" => %{"location" => "uri", "locationName" => "UserId", "shape" => "IdType"}}, "required" => ["UserId"], "type" => "structure"}, "UpdateDocumentRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "Name" => %{"shape" => "ResourceNameType"}, "ParentFolderId" => %{"shape" => "ResourceIdType"}, "ResourceState" => %{"shape" => "ResourceStateType"}}, "required" => ["DocumentId"], "type" => "structure"}, "HeaderValueType" => %{"max" => 1024, "min" => 1, "type" => "string"}, "GetDocumentVersionRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "Fields" => %{"location" => "querystring", "locationName" => "fields", "shape" => "FieldNamesType"}, "IncludeCustomMetadata" => %{"location" => "querystring", "locationName" => "includeCustomMetadata", "shape" => "BooleanType"}, "VersionId" => %{"location" => "uri", "locationName" => "VersionId", "shape" => "DocumentVersionIdType"}}, "required" => ["DocumentId", "VersionId"], "type" => "structure"}, "RemoveResourcePermissionRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "PrincipalId" => %{"location" => "uri", "locationName" => "PrincipalId", "shape" => "IdType"}, "PrincipalType" => %{"location" => "querystring", "locationName" => "type", "shape" => "PrincipalType"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "ResourceIdType"}}, "required" => ["ResourceId", "PrincipalId"], "type" => "structure"}, "LimitType" => %{"max" => 999, "min" => 1, "type" => "integer"}, "GetFolderPathRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "Fields" => %{"location" => "querystring", "locationName" => "fields", "shape" => "FieldNamesType"}, "FolderId" => %{"location" => "uri", "locationName" => "FolderId", "shape" => "IdType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarkerType"}}, "required" => ["FolderId"], "type" => "structure"}, "TooManySubscriptionsException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "DocumentVersionIdType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+-.@]+", "type" => "string"}, "DescribeActivitiesResponse" => %{"members" => %{"Marker" => %{"shape" => "MarkerType"}, "UserActivities" => %{"shape" => "UserActivities"}}, "type" => "structure"}, "CreateLabelsResponse" => %{"members" => %{}, "type" => "structure"}, "ShareResult" => %{"members" => %{"PrincipalId" => %{"shape" => "IdType"}, "Role" => %{"shape" => "RoleType"}, "ShareId" => %{"shape" => "ResourceIdType"}, "Status" => %{"shape" => "ShareStatusType"}, "StatusMessage" => %{"shape" => "MessageType"}}, "type" => "structure"}, "IllegalUserStateException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "StorageLimitExceededException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "CommentVisibilityType" => %{"enum" => ["PUBLIC", "PRIVATE"], "type" => "string"}, "SubscriptionProtocolType" => %{"enum" => ["HTTPS"], "type" => "string"}, "Activity" => %{"members" => %{"CommentMetadata" => %{"shape" => "CommentMetadata"}, "Initiator" => %{"shape" => "UserMetadata"}, "OrganizationId" => %{"shape" => "IdType"}, "OriginalParent" => %{"shape" => "ResourceMetadata"}, "Participants" => %{"shape" => "Participants"}, "ResourceMetadata" => %{"shape" => "ResourceMetadata"}, "TimeStamp" => %{"shape" => "TimestampType"}, "Type" => %{"shape" => "ActivityType"}}, "type" => "structure"}, "AddResourcePermissionsResponse" => %{"members" => %{"ShareResults" => %{"shape" => "ShareResultsList"}}, "type" => "structure"}, "UploadMetadata" => %{"members" => %{"SignedHeaders" => %{"shape" => "SignedHeaderMap"}, "UploadUrl" => %{"shape" => "UrlType"}}, "type" => "structure"}, "MessageType" => %{"max" => 2048, "min" => 0, "sensitive" => true, "type" => "string"}, "ActivateUserRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "UserId" => %{"location" => "uri", "locationName" => "UserId", "shape" => "IdType"}}, "required" => ["UserId"], "type" => "structure"}, "ResourceStateType" => %{"enum" => ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"], "type" => "string"}, "CustomMetadataValueType" => %{"max" => 256, "min" => 1, "pattern" => "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*", "type" => "string"}, "BooleanType" => %{"type" => "boolean"}, "Principal" => %{"members" => %{"Id" => %{"shape" => "IdType"}, "Roles" => %{"shape" => "PermissionInfoList"}, "Type" => %{"shape" => "PrincipalType"}}, "type" => "structure"}, "TooManyLabelsException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "StorageRuleType" => %{"members" => %{"StorageAllocatedInBytes" => %{"shape" => "PositiveSizeType"}, "StorageType" => %{"shape" => "StorageType"}}, "type" => "structure"}, "FieldNamesType" => %{"max" => 256, "min" => 1, "pattern" => "[\\w,]+", "type" => "string"}, "GetDocumentPathResponse" => %{"members" => %{"Path" => %{"shape" => "ResourcePath"}}, "type" => "structure"}, "InvalidOperationException" => %{"error" => %{"httpStatusCode" => 405}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "DeleteFolderContentsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "FolderId" => %{"location" => "uri", "locationName" => "FolderId", "shape" => "ResourceIdType"}}, "required" => ["FolderId"], "type" => "structure"}, "PositiveSizeType" => %{"min" => 0, "type" => "long"}, "SubscriptionEndPointType" => %{"max" => 256, "min" => 1, "type" => "string"}, "DraftUploadOutOfSyncException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "SharePrincipalList" => %{"member" => %{"shape" => "SharePrincipal"}, "type" => "list"}, "Comment" => %{"members" => %{"CommentId" => %{"shape" => "CommentIdType"}, "Contributor" => %{"shape" => "User"}, "CreatedTimestamp" => %{"shape" => "TimestampType"}, "ParentId" => %{"shape" => "CommentIdType"}, "RecipientId" => %{"shape" => "IdType"}, "Status" => %{"shape" => "CommentStatusType"}, "Text" => %{"shape" => "CommentTextType"}, "ThreadId" => %{"shape" => "CommentIdType"}, "Visibility" => %{"shape" => "CommentVisibilityType"}}, "required" => ["CommentId"], "type" => "structure"}, "UpdateUserRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "GivenName" => %{"shape" => "UserAttributeValueType"}, "Locale" => %{"shape" => "LocaleType"}, "StorageRule" => %{"shape" => "StorageRuleType"}, "Surname" => %{"shape" => "UserAttributeValueType"}, "TimeZoneId" => %{"shape" => "TimeZoneIdType"}, "Type" => %{"shape" => "UserType"}, "UserId" => %{"location" => "uri", "locationName" => "UserId", "shape" => "IdType"}}, "required" => ["UserId"], "type" => "structure"}, "DocumentSourceUrlMap" => %{"key" => %{"shape" => "DocumentSourceType"}, "type" => "map", "value" => %{"shape" => "UrlType"}}, "ErrorMessageType" => %{"type" => "string"}, "GetFolderPathResponse" => %{"members" => %{"Path" => %{"shape" => "ResourcePath"}}, "type" => "structure"}, "ActivateUserResponse" => %{"members" => %{"User" => %{"shape" => "User"}}, "type" => "structure"}, "GetDocumentVersionResponse" => %{"members" => %{"CustomMetadata" => %{"shape" => "CustomMetadataMap"}, "Metadata" => %{"shape" => "DocumentVersionMetadata"}}, "type" => "structure"}, "DescribeDocumentVersionsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "Fields" => %{"location" => "querystring", "locationName" => "fields", "shape" => "FieldNamesType"}, "Include" => %{"location" => "querystring", "locationName" => "include", "shape" => "FieldNamesType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarkerType"}}, "required" => ["DocumentId"], "type" => "structure"}, "SignedHeaderMap" => %{"key" => %{"shape" => "HeaderNameType"}, "type" => "map", "value" => %{"shape" => "HeaderValueType"}}, "GetFolderRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "FolderId" => %{"location" => "uri", "locationName" => "FolderId", "shape" => "ResourceIdType"}, "IncludeCustomMetadata" => %{"location" => "querystring", "locationName" => "includeCustomMetadata", "shape" => "BooleanType"}}, "required" => ["FolderId"], "type" => "structure"}, "UserType" => %{"enum" => ["USER", "ADMIN"], "type" => "string"}, "DocumentSourceType" => %{"enum" => ["ORIGINAL", "WITH_COMMENTS"], "type" => "string"}, "DescribeResourcePermissionsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "Limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "LimitType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "PageMarkerType"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "ResourceIdType"}}, "required" => ["ResourceId"], "type" => "structure"}, "UserSortType" => %{"enum" => ["USER_NAME", "FULL_NAME", "STORAGE_LIMIT", "USER_STATUS", "STORAGE_USED"], "type" => "string"}, "InitiateDocumentVersionUploadResponse" => %{"members" => %{"Metadata" => %{"shape" => "DocumentMetadata"}, "UploadMetadata" => %{"shape" => "UploadMetadata"}}, "type" => "structure"}, "CustomMetadataLimitExceededException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "CreateNotificationSubscriptionResponse" => %{"members" => %{"Subscription" => %{"shape" => "Subscription"}}, "type" => "structure"}, "AddResourcePermissionsRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "Principals" => %{"shape" => "SharePrincipalList"}, "ResourceId" => %{"location" => "uri", "locationName" => "ResourceId", "shape" => "ResourceIdType"}}, "required" => ["ResourceId", "Principals"], "type" => "structure"}, "SizeType" => %{"type" => "long"}, "CreateUserRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "EmailAddress" => %{"shape" => "EmailAddressType"}, "GivenName" => %{"shape" => "UserAttributeValueType"}, "OrganizationId" => %{"shape" => "IdType"}, "Password" => %{"shape" => "PasswordType"}, "StorageRule" => %{"shape" => "StorageRuleType"}, "Surname" => %{"shape" => "UserAttributeValueType"}, "TimeZoneId" => %{"shape" => "TimeZoneIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["Username", "GivenName", "Surname", "Password"], "type" => "structure"}, "Label" => %{"max" => 32, "min" => 1, "pattern" => "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*", "type" => "string"}, "DeleteCustomMetadataResponse" => %{"members" => %{}, "type" => "structure"}, "ProhibitedStateException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "EntityAlreadyExistsException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "OrderType" => %{"enum" => ["ASCENDING", "DESCENDING"], "type" => "string"}, "GetDocumentRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "IncludeCustomMetadata" => %{"location" => "querystring", "locationName" => "includeCustomMetadata", "shape" => "BooleanType"}}, "required" => ["DocumentId"], "type" => "structure"}, "UrlType" => %{"max" => 1024, "min" => 1, "sensitive" => true, "type" => "string"}, "EntityIdList" => %{"member" => %{"shape" => "IdType"}, "type" => "list"}, "MarkerType" => %{"max" => 2048, "min" => 1, "pattern" => "[\\u0000-\\u00FF]+", "type" => "string"}, "TimeZoneIdType" => %{"max" => 256, "min" => 1, "type" => "string"}, "PermissionInfoList" => %{"member" => %{"shape" => "PermissionInfo"}, "type" => "list"}, "DocumentStatusType" => %{"enum" => ["INITIALIZED", "ACTIVE"], "type" => "string"}, "ConcurrentModificationException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "FolderContentType" => %{"enum" => ["ALL", "DOCUMENT", "FOLDER"], "type" => "string"}, "DocumentLockedForCommentsException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessageType"}}, "type" => "structure"}, "DocumentMetadataList" => %{"member" => %{"shape" => "DocumentMetadata"}, "type" => "list"}, "PageMarkerType" => %{"max" => 2048, "min" => 1, "type" => "string"}, "AbortDocumentVersionUploadRequest" => %{"members" => %{"AuthenticationToken" => %{"location" => "header", "locationName" => "Authentication", "shape" => "AuthenticationHeaderType"}, "DocumentId" => %{"location" => "uri", "locationName" => "DocumentId", "shape" => "ResourceIdType"}, "VersionId" => %{"location" => "uri", "locationName" => "VersionId", "shape" => "DocumentVersionIdType"}}, "required" => ["DocumentId", "VersionId"], "type" => "structure"}, "GetDocumentResponse" => %{"members" => %{"CustomMetadata" => %{"shape" => "CustomMetadataMap"}, "Metadata" => %{"shape" => "DocumentMetadata"}}, "type" => "structure"}}
  end
end