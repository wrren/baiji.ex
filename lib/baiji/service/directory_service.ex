defmodule Baiji.DirectoryService do
  @moduledoc """
  AWS Directory Service

  AWS Directory Service is a web service that makes it easy for you to setup
  and run directories in the AWS cloud, or connect your AWS resources with an
  existing on-premises Microsoft Active Directory. This guide provides
  detailed information about AWS Directory Service operations, data types,
  parameters, and errors. For information about AWS Directory Services
  features, see [AWS Directory
  Service](https://aws.amazon.com/directoryservice/) and the [AWS Directory
  Service Administration
  Guide](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).

  <note> AWS provides SDKs that consist of libraries and sample code for
  various programming languages and platforms (Java, Ruby, .Net, iOS,
  Android, etc.). The SDKs provide a convenient way to create programmatic
  access to AWS Directory Service and other AWS services. For more
  information about the AWS SDKs, including how to download and install them,
  see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).

  </note>
  """
  
  @doc """
  Updates a conditional forwarder that has been set up for your AWS
  directory.
  """
  def update_conditional_forwarder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateConditionalForwarder",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  If the DNS server for your on-premises domain uses a publicly addressable
  IP address, you must add a CIDR address block to correctly route traffic to
  and from your Microsoft AD on Amazon Web Services. *AddIpRoutes* adds this
  address block. You can also use *AddIpRoutes* to facilitate routing traffic
  that uses public IP ranges from your Microsoft AD on AWS to a peer VPC.

  Before you call *AddIpRoutes*, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required to run the *AddIpRoutes* operation, see [AWS
  Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def add_ip_routes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddIpRoutes",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Associates a directory with an SNS topic. This establishes the directory as
  a publisher to the specified SNS topic. You can then receive email or text
  (SMS) messages when the status of your directory changes. You get notified
  if your directory goes from an Active status to an Impaired or Inoperable
  status. You also receive a notification when the directory returns to an
  Active status.
  """
  def register_event_topic(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RegisterEventTopic",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Provides information about any domain controllers in your directory.
  """
  def describe_domain_controllers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeDomainControllers",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Updates the Remote Authentication Dial In User Service (RADIUS) server
  information for an AD Connector directory.
  """
  def update_radius(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateRadius",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Removes tags from a directory.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemoveTagsFromResource",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the address blocks that you have added to a directory.
  """
  def list_ip_routes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListIpRoutes",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists all tags on a directory.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListTagsForResource",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a Simple AD directory.

  Before you call *CreateDirectory*, ensure that all of the required
  permissions have been explicitly granted through a policy. For details
  about what permissions are required to run the *CreateDirectory* operation,
  see [AWS Directory Service API Permissions: Actions, Resources, and
  Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def create_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateDirectory",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a Microsoft AD in the AWS cloud.

  Before you call *CreateMicrosoftAD*, ensure that all of the required
  permissions have been explicitly granted through a policy. For details
  about what permissions are required to run the *CreateMicrosoftAD*
  operation, see [AWS Directory Service API Permissions: Actions, Resources,
  and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def create_microsoft_a_d(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateMicrosoftAD",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Removes the specified directory as a publisher to the specified SNS topic.
  """
  def deregister_event_topic(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeregisterEventTopic",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Cancels an in-progress schema extension to a Microsoft AD directory. Once a
  schema extension has started replicating to all domain controllers, the
  task can no longer be canceled. A schema extension can be canceled during
  any of the following states; `Initializing`, `CreatingSnapshot`, and
  `UpdatingSchema`.
  """
  def cancel_schema_extension(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelSchemaExtension",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates an alias for a directory and assigns the alias to the directory.
  The alias is used to construct the access URL for the directory, such as
  `http://&lt;alias&gt;.awsapps.com`.

  <important> After an alias has been created, it cannot be deleted or
  reused, so this operation should only be used when absolutely necessary.

  </important>
  """
  def create_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateAlias",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  AWS Directory Service for Microsoft Active Directory allows you to
  configure trust relationships. For example, you can establish a trust
  between your Microsoft AD in the AWS cloud, and your existing on-premises
  Microsoft Active Directory. This would allow you to provide users and
  groups access to resources in either domain, with a single set of
  credentials.

  This action initiates the creation of the AWS side of a trust relationship
  between a Microsoft AD in the AWS cloud and an external domain.
  """
  def create_trust(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateTrust",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Obtains the manual snapshot limits for a directory.
  """
  def get_snapshot_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetSnapshotLimits",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes a conditional forwarder that has been set up for your AWS
  directory.
  """
  def delete_conditional_forwarder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteConditionalForwarder",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Enables single sign-on for a directory.
  """
  def enable_sso(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableSso",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Disables single-sign on for a directory.
  """
  def disable_sso(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisableSso",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS
  cloud.

  <note> You cannot take snapshots of AD Connector directories.

  </note>
  """
  def create_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateSnapshot",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes an AWS Directory Service directory.

  Before you call *DeleteDirectory*, ensure that all of the required
  permissions have been explicitly granted through a policy. For details
  about what permissions are required to run the *DeleteDirectory* operation,
  see [AWS Directory Service API Permissions: Actions, Resources, and
  Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def delete_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteDirectory",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Obtains information about which SNS topics receive status messages from the
  specified directory.

  If no input parameters are provided, such as DirectoryId or TopicName, this
  request describes all of the associations in the account.
  """
  def describe_event_topics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEventTopics",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Adds or removes domain controllers to or from the directory. Based on the
  difference between current value and new value (provided through this API
  call), domain controllers will be added or removed. It may take up to 45
  minutes for any new domain controllers to become fully active once the
  requested number of domain controllers is updated. During this time, you
  cannot make another update request.
  """
  def update_number_of_domain_controllers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateNumberOfDomainControllers",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Enables multi-factor authentication (MFA) with the Remote Authentication
  Dial In User Service (RADIUS) server for an AD Connector directory.
  """
  def enable_radius(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableRadius",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Obtains information about the directories that belong to this account.

  You can retrieve information about specific directories by passing the
  directory identifiers in the *DirectoryIds* parameter. Otherwise, all
  directories that belong to the current account are returned.

  This operation supports pagination with the use of the *NextToken* request
  and response parameters. If more results are available, the
  *DescribeDirectoriesResult.NextToken* member contains a token that you pass
  in the next call to `DescribeDirectories` to retrieve the next set of
  items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  def describe_directories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeDirectories",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  AWS Directory Service for Microsoft Active Directory allows you to
  configure and verify trust relationships.

  This action verifies a trust relationship between your Microsoft AD in the
  AWS cloud and an external domain.
  """
  def verify_trust(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "VerifyTrust",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Obtains directory limit information for the current region.
  """
  def get_directory_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDirectoryLimits",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a computer account in the specified directory, and joins the
  computer to the directory.
  """
  def create_computer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateComputer",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists all schema extensions applied to a Microsoft AD Directory.
  """
  def list_schema_extensions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListSchemaExtensions",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Obtains information about the conditional forwarders for this account.

  If no input parameters are provided for RemoteDomainNames, this request
  describes all conditional forwarders for the specified directory ID.
  """
  def describe_conditional_forwarders(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeConditionalForwarders",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Removes IP address blocks from a directory.
  """
  def remove_ip_routes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemoveIpRoutes",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Adds or overwrites one or more tags for the specified directory. Each
  directory can have a maximum of 50 tags. Each tag consists of a key and
  optional value. Tag keys must be unique to each resource.
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddTagsToResource",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Obtains information about the trust relationships for this account.

  If no input parameters are provided, such as DirectoryId or TrustIds, this
  request describes all the trust relationships belonging to the account.
  """
  def describe_trusts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeTrusts",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates a conditional forwarder associated with your AWS directory.
  Conditional forwarders are required in order to set up a trust relationship
  with another domain. The conditional forwarder points to the trusted
  domain.
  """
  def create_conditional_forwarder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateConditionalForwarder",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes an existing trust relationship between your Microsoft AD in the AWS
  cloud and an external domain.
  """
  def delete_trust(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteTrust",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes a directory snapshot.
  """
  def delete_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSnapshot",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Obtains information about the directory snapshots that belong to this
  account.

  This operation supports pagination with the use of the *NextToken* request
  and response parameters. If more results are available, the
  *DescribeSnapshots.NextToken* member contains a token that you pass in the
  next call to `DescribeSnapshots` to retrieve the next set of items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  def describe_snapshots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSnapshots",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Restores a directory using an existing directory snapshot.

  When you restore a directory from a snapshot, any changes made to the
  directory after the snapshot date are overwritten.

  This action returns as soon as the restore operation is initiated. You can
  monitor the progress of the restore operation by calling the
  `DescribeDirectories` operation with the directory identifier. When the
  **DirectoryDescription.Stage** value changes to `Active`, the restore
  operation is complete.
  """
  def restore_from_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RestoreFromSnapshot",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Disables multi-factor authentication (MFA) with the Remote Authentication
  Dial In User Service (RADIUS) server for an AD Connector directory.
  """
  def disable_radius(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisableRadius",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates an AD Connector to connect to an on-premises directory.

  Before you call *ConnectDirectory*, ensure that all of the required
  permissions have been explicitly granted through a policy. For details
  about what permissions are required to run the *ConnectDirectory*
  operation, see [AWS Directory Service API Permissions: Actions, Resources,
  and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def connect_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ConnectDirectory",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Applies a schema extension to a Microsoft AD directory.
  """
  def start_schema_extension(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ds",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartSchemaExtension",
      
      target_prefix:  "DirectoryService_20150416",
      
      type:           :json,
      method:         :post
    }
  end
  
end