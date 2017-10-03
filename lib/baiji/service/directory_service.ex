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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateConditionalForwarder",
      method:           :post,
      input_shape:      "UpdateConditionalForwarderRequest",
      output_shape:     "UpdateConditionalForwarderResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddIpRoutes",
      method:           :post,
      input_shape:      "AddIpRoutesRequest",
      output_shape:     "AddIpRoutesResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterEventTopic",
      method:           :post,
      input_shape:      "RegisterEventTopicRequest",
      output_shape:     "RegisterEventTopicResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provides information about any domain controllers in your directory.
  """
  def describe_domain_controllers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDomainControllers",
      method:           :post,
      input_shape:      "DescribeDomainControllersRequest",
      output_shape:     "DescribeDomainControllersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the Remote Authentication Dial In User Service (RADIUS) server
  information for an AD Connector directory.
  """
  def update_radius(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateRadius",
      method:           :post,
      input_shape:      "UpdateRadiusRequest",
      output_shape:     "UpdateRadiusResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes tags from a directory.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      method:           :post,
      input_shape:      "RemoveTagsFromResourceRequest",
      output_shape:     "RemoveTagsFromResourceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the address blocks that you have added to a directory.
  """
  def list_ip_routes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListIpRoutes",
      method:           :post,
      input_shape:      "ListIpRoutesRequest",
      output_shape:     "ListIpRoutesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all tags on a directory.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      method:           :post,
      input_shape:      "ListTagsForResourceRequest",
      output_shape:     "ListTagsForResourceResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDirectory",
      method:           :post,
      input_shape:      "CreateDirectoryRequest",
      output_shape:     "CreateDirectoryResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateMicrosoftAD",
      method:           :post,
      input_shape:      "CreateMicrosoftADRequest",
      output_shape:     "CreateMicrosoftADResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified directory as a publisher to the specified SNS topic.
  """
  def deregister_event_topic(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterEventTopic",
      method:           :post,
      input_shape:      "DeregisterEventTopicRequest",
      output_shape:     "DeregisterEventTopicResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CancelSchemaExtension",
      method:           :post,
      input_shape:      "CancelSchemaExtensionRequest",
      output_shape:     "CancelSchemaExtensionResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateAlias",
      method:           :post,
      input_shape:      "CreateAliasRequest",
      output_shape:     "CreateAliasResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateTrust",
      method:           :post,
      input_shape:      "CreateTrustRequest",
      output_shape:     "CreateTrustResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Obtains the manual snapshot limits for a directory.
  """
  def get_snapshot_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetSnapshotLimits",
      method:           :post,
      input_shape:      "GetSnapshotLimitsRequest",
      output_shape:     "GetSnapshotLimitsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a conditional forwarder that has been set up for your AWS
  directory.
  """
  def delete_conditional_forwarder(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteConditionalForwarder",
      method:           :post,
      input_shape:      "DeleteConditionalForwarderRequest",
      output_shape:     "DeleteConditionalForwarderResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Enables single sign-on for a directory.
  """
  def enable_sso(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "EnableSso",
      method:           :post,
      input_shape:      "EnableSsoRequest",
      output_shape:     "EnableSsoResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disables single-sign on for a directory.
  """
  def disable_sso(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisableSso",
      method:           :post,
      input_shape:      "DisableSsoRequest",
      output_shape:     "DisableSsoResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateSnapshot",
      method:           :post,
      input_shape:      "CreateSnapshotRequest",
      output_shape:     "CreateSnapshotResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDirectory",
      method:           :post,
      input_shape:      "DeleteDirectoryRequest",
      output_shape:     "DeleteDirectoryResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEventTopics",
      method:           :post,
      input_shape:      "DescribeEventTopicsRequest",
      output_shape:     "DescribeEventTopicsResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateNumberOfDomainControllers",
      method:           :post,
      input_shape:      "UpdateNumberOfDomainControllersRequest",
      output_shape:     "UpdateNumberOfDomainControllersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Enables multi-factor authentication (MFA) with the Remote Authentication
  Dial In User Service (RADIUS) server for an AD Connector directory.
  """
  def enable_radius(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "EnableRadius",
      method:           :post,
      input_shape:      "EnableRadiusRequest",
      output_shape:     "EnableRadiusResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDirectories",
      method:           :post,
      input_shape:      "DescribeDirectoriesRequest",
      output_shape:     "DescribeDirectoriesResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "VerifyTrust",
      method:           :post,
      input_shape:      "VerifyTrustRequest",
      output_shape:     "VerifyTrustResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Obtains directory limit information for the current region.
  """
  def get_directory_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDirectoryLimits",
      method:           :post,
      input_shape:      "GetDirectoryLimitsRequest",
      output_shape:     "GetDirectoryLimitsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a computer account in the specified directory, and joins the
  computer to the directory.
  """
  def create_computer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateComputer",
      method:           :post,
      input_shape:      "CreateComputerRequest",
      output_shape:     "CreateComputerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all schema extensions applied to a Microsoft AD Directory.
  """
  def list_schema_extensions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListSchemaExtensions",
      method:           :post,
      input_shape:      "ListSchemaExtensionsRequest",
      output_shape:     "ListSchemaExtensionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Obtains information about the conditional forwarders for this account.

  If no input parameters are provided for RemoteDomainNames, this request
  describes all conditional forwarders for the specified directory ID.
  """
  def describe_conditional_forwarders(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConditionalForwarders",
      method:           :post,
      input_shape:      "DescribeConditionalForwardersRequest",
      output_shape:     "DescribeConditionalForwardersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes IP address blocks from a directory.
  """
  def remove_ip_routes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveIpRoutes",
      method:           :post,
      input_shape:      "RemoveIpRoutesRequest",
      output_shape:     "RemoveIpRoutesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds or overwrites one or more tags for the specified directory. Each
  directory can have a maximum of 50 tags. Each tag consists of a key and
  optional value. Tag keys must be unique to each resource.
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      method:           :post,
      input_shape:      "AddTagsToResourceRequest",
      output_shape:     "AddTagsToResourceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Obtains information about the trust relationships for this account.

  If no input parameters are provided, such as DirectoryId or TrustIds, this
  request describes all the trust relationships belonging to the account.
  """
  def describe_trusts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTrusts",
      method:           :post,
      input_shape:      "DescribeTrustsRequest",
      output_shape:     "DescribeTrustsResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateConditionalForwarder",
      method:           :post,
      input_shape:      "CreateConditionalForwarderRequest",
      output_shape:     "CreateConditionalForwarderResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an existing trust relationship between your Microsoft AD in the AWS
  cloud and an external domain.
  """
  def delete_trust(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTrust",
      method:           :post,
      input_shape:      "DeleteTrustRequest",
      output_shape:     "DeleteTrustResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a directory snapshot.
  """
  def delete_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteSnapshot",
      method:           :post,
      input_shape:      "DeleteSnapshotRequest",
      output_shape:     "DeleteSnapshotResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeSnapshots",
      method:           :post,
      input_shape:      "DescribeSnapshotsRequest",
      output_shape:     "DescribeSnapshotsResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "RestoreFromSnapshot",
      method:           :post,
      input_shape:      "RestoreFromSnapshotRequest",
      output_shape:     "RestoreFromSnapshotResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disables multi-factor authentication (MFA) with the Remote Authentication
  Dial In User Service (RADIUS) server for an AD Connector directory.
  """
  def disable_radius(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisableRadius",
      method:           :post,
      input_shape:      "DisableRadiusRequest",
      output_shape:     "DisableRadiusResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConnectDirectory",
      method:           :post,
      input_shape:      "ConnectDirectoryRequest",
      output_shape:     "ConnectDirectoryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Applies a schema extension to a Microsoft AD directory.
  """
  def start_schema_extension(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartSchemaExtension",
      method:           :post,
      input_shape:      "StartSchemaExtensionRequest",
      output_shape:     "StartSchemaExtensionResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "ds",
      target_prefix:    "DirectoryService_20150416",
      endpoint_prefix:  "ds",
      type:             :json,
      version:          "2015-04-16",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"CreateDirectoryRequest" => %{"members" => %{"Description" => %{"shape" => "Description"}, "Name" => %{"shape" => "DirectoryName"}, "Password" => %{"shape" => "Password"}, "ShortName" => %{"shape" => "DirectoryShortName"}, "Size" => %{"shape" => "DirectorySize"}, "VpcSettings" => %{"shape" => "DirectoryVpcSettings"}}, "required" => ["Name", "Password", "Size"], "type" => "structure"}, "SubnetIds" => %{"member" => %{"shape" => "SubnetId"}, "type" => "list"}, "SnapshotLimits" => %{"members" => %{"ManualSnapshotsCurrentCount" => %{"shape" => "Limit"}, "ManualSnapshotsLimit" => %{"shape" => "Limit"}, "ManualSnapshotsLimitReached" => %{"shape" => "ManualSnapshotsLimitReached"}}, "type" => "structure"}, "IpRouteLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "TagKeys" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "DescribeSnapshotsResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Snapshots" => %{"shape" => "Snapshots"}}, "type" => "structure"}, "UpdateSecurityGroupForDirectoryControllers" => %{"type" => "boolean"}, "ConnectedDirectoriesLimitReached" => %{"type" => "boolean"}, "DirectoryConnectSettingsDescription" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "ConnectIps" => %{"shape" => "IpAddrs"}, "CustomerUserName" => %{"shape" => "UserName"}, "SecurityGroupId" => %{"shape" => "SecurityGroupId"}, "SubnetIds" => %{"shape" => "SubnetIds"}, "VpcId" => %{"shape" => "VpcId"}}, "type" => "structure"}, "DirectoryDescriptions" => %{"member" => %{"shape" => "DirectoryDescription"}, "type" => "list"}, "CancelSchemaExtensionRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "SchemaExtensionId" => %{"shape" => "SchemaExtensionId"}}, "required" => ["DirectoryId", "SchemaExtensionId"], "type" => "structure"}, "DirectoryStage" => %{"enum" => ["Requested", "Creating", "Created", "Active", "Inoperable", "Impaired", "Restoring", "RestoreFailed", "Deleting", "Deleted", "Failed"], "type" => "string"}, "DirectoryId" => %{"pattern" => "^d-[0-9a-f]{10}$", "type" => "string"}, "AliasName" => %{"max" => 62, "min" => 1, "pattern" => "^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*", "type" => "string"}, "DeregisterEventTopicResult" => %{"members" => %{}, "type" => "structure"}, "IpRouteStatusMsg" => %{"enum" => ["Adding", "Added", "Removing", "Removed", "AddFailed", "RemoveFailed"], "type" => "string"}, "RadiusStatus" => %{"enum" => ["Creating", "Completed", "Failed"], "type" => "string"}, "EnableSsoResult" => %{"members" => %{}, "type" => "structure"}, "ConditionalForwarders" => %{"member" => %{"shape" => "ConditionalForwarder"}, "type" => "list"}, "StartDateTime" => %{"type" => "timestamp"}, "ClientException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "InvalidParameterException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "DeleteTrustResult" => %{"members" => %{"TrustId" => %{"shape" => "TrustId"}}, "type" => "structure"}, "VerifyTrustResult" => %{"members" => %{"TrustId" => %{"shape" => "TrustId"}}, "type" => "structure"}, "SnapshotName" => %{"max" => 128, "min" => 0, "pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$", "type" => "string"}, "ManualSnapshotsLimitReached" => %{"type" => "boolean"}, "AddIpRoutesResult" => %{"members" => %{}, "type" => "structure"}, "RadiusSharedSecret" => %{"max" => 512, "min" => 8, "sensitive" => true, "type" => "string"}, "ServiceException" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "DirectoryVpcSettings" => %{"members" => %{"SubnetIds" => %{"shape" => "SubnetIds"}, "VpcId" => %{"shape" => "VpcId"}}, "required" => ["VpcId", "SubnetIds"], "type" => "structure"}, "TopicStatus" => %{"enum" => ["Registered", "Topic not found", "Failed", "Deleted"], "type" => "string"}, "DnsIpAddrs" => %{"member" => %{"shape" => "IpAddr"}, "type" => "list"}, "InsufficientPermissionsException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "SnapshotType" => %{"enum" => ["Auto", "Manual"], "type" => "string"}, "DirectoryShortName" => %{"pattern" => "^[^\\\\/:*?\\\"\\<\\>|.]+[^\\\\/:*?\\\"<>|]*$", "type" => "string"}, "CreateComputerResult" => %{"members" => %{"Computer" => %{"shape" => "Computer"}}, "type" => "structure"}, "StartTime" => %{"type" => "timestamp"}, "DirectorySize" => %{"enum" => ["Small", "Large"], "type" => "string"}, "AttributeName" => %{"min" => 1, "type" => "string"}, "SnapshotLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "DescribeEventTopicsRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "TopicNames" => %{"shape" => "TopicNames"}}, "type" => "structure"}, "GetSnapshotLimitsResult" => %{"members" => %{"SnapshotLimits" => %{"shape" => "SnapshotLimits"}}, "type" => "structure"}, "Attribute" => %{"members" => %{"Name" => %{"shape" => "AttributeName"}, "Value" => %{"shape" => "AttributeValue"}}, "type" => "structure"}, "DomainController" => %{"members" => %{"AvailabilityZone" => %{"shape" => "AvailabilityZone"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "DnsIpAddr" => %{"shape" => "IpAddr"}, "DomainControllerId" => %{"shape" => "DomainControllerId"}, "LaunchTime" => %{"shape" => "LaunchTime"}, "Status" => %{"shape" => "DomainControllerStatus"}, "StatusLastUpdatedDateTime" => %{"shape" => "LastUpdatedDateTime"}, "StatusReason" => %{"shape" => "DomainControllerStatusReason"}, "SubnetId" => %{"shape" => "SubnetId"}, "VpcId" => %{"shape" => "VpcId"}}, "type" => "structure"}, "ConnectDirectoryRequest" => %{"members" => %{"ConnectSettings" => %{"shape" => "DirectoryConnectSettings"}, "Description" => %{"shape" => "Description"}, "Name" => %{"shape" => "DirectoryName"}, "Password" => %{"shape" => "ConnectPassword"}, "ShortName" => %{"shape" => "DirectoryShortName"}, "Size" => %{"shape" => "DirectorySize"}}, "required" => ["Name", "Password", "Size", "ConnectSettings"], "type" => "structure"}, "ConnectDirectoryResult" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}}, "type" => "structure"}, "EndDateTime" => %{"type" => "timestamp"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "IpRoutes" => %{"member" => %{"shape" => "IpRoute"}, "type" => "list"}, "ListTagsForResourceResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "UpdateConditionalForwarderResult" => %{"members" => %{}, "type" => "structure"}, "DisableRadiusResult" => %{"members" => %{}, "type" => "structure"}, "SchemaExtensionsInfo" => %{"member" => %{"shape" => "SchemaExtensionInfo"}, "type" => "list"}, "CreateSnapshotResult" => %{"members" => %{"SnapshotId" => %{"shape" => "SnapshotId"}}, "type" => "structure"}, "RegisterEventTopicRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "TopicName" => %{"shape" => "TopicName"}}, "required" => ["DirectoryId", "TopicName"], "type" => "structure"}, "SchemaExtensionStatusReason" => %{"type" => "string"}, "DirectoryIds" => %{"member" => %{"shape" => "DirectoryId"}, "type" => "list"}, "CreateSnapshotBeforeSchemaExtension" => %{"type" => "boolean"}, "ListSchemaExtensionsRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["DirectoryId"], "type" => "structure"}, "GetDirectoryLimitsResult" => %{"members" => %{"DirectoryLimits" => %{"shape" => "DirectoryLimits"}}, "type" => "structure"}, "RadiusTimeout" => %{"max" => 20, "min" => 1, "type" => "integer"}, "ListIpRoutesResult" => %{"members" => %{"IpRoutesInfo" => %{"shape" => "IpRoutesInfo"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ConditionalForwarder" => %{"members" => %{"DnsIpAddrs" => %{"shape" => "DnsIpAddrs"}, "RemoteDomainName" => %{"shape" => "RemoteDomainName"}, "ReplicationScope" => %{"shape" => "ReplicationScope"}}, "type" => "structure"}, "DirectoryUnavailableException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "TagLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "ListTagsForResourceRequest" => %{"members" => %{"Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}, "ResourceId" => %{"shape" => "ResourceId"}}, "required" => ["ResourceId"], "type" => "structure"}, "CreateDirectoryResult" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}}, "type" => "structure"}, "Limit" => %{"min" => 0, "type" => "integer"}, "DisableSsoResult" => %{"members" => %{}, "type" => "structure"}, "CidrIps" => %{"member" => %{"shape" => "CidrIp"}, "type" => "list"}, "UpdateRadiusRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "RadiusSettings" => %{"shape" => "RadiusSettings"}}, "required" => ["DirectoryId", "RadiusSettings"], "type" => "structure"}, "DescribeDirectoriesRequest" => %{"members" => %{"DirectoryIds" => %{"shape" => "DirectoryIds"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DirectoryLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "DirectoryLimits" => %{"members" => %{"CloudOnlyDirectoriesCurrentCount" => %{"shape" => "Limit"}, "CloudOnlyDirectoriesLimit" => %{"shape" => "Limit"}, "CloudOnlyDirectoriesLimitReached" => %{"shape" => "CloudOnlyDirectoriesLimitReached"}, "CloudOnlyMicrosoftADCurrentCount" => %{"shape" => "Limit"}, "CloudOnlyMicrosoftADLimit" => %{"shape" => "Limit"}, "CloudOnlyMicrosoftADLimitReached" => %{"shape" => "CloudOnlyDirectoriesLimitReached"}, "ConnectedDirectoriesCurrentCount" => %{"shape" => "Limit"}, "ConnectedDirectoriesLimit" => %{"shape" => "Limit"}, "ConnectedDirectoriesLimitReached" => %{"shape" => "ConnectedDirectoriesLimitReached"}}, "type" => "structure"}, "IpAddr" => %{"pattern" => "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", "type" => "string"}, "DomainControllerStatusReason" => %{"type" => "string"}, "DomainControllers" => %{"member" => %{"shape" => "DomainController"}, "type" => "list"}, "TrustIds" => %{"member" => %{"shape" => "TrustId"}, "type" => "list"}, "IpRoute" => %{"members" => %{"CidrIp" => %{"shape" => "CidrIp"}, "Description" => %{"shape" => "Description"}}, "type" => "structure"}, "StageReason" => %{"type" => "string"}, "Description" => %{"max" => 128, "min" => 0, "pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$", "type" => "string"}, "DeleteTrustRequest" => %{"members" => %{"DeleteAssociatedConditionalForwarder" => %{"shape" => "DeleteAssociatedConditionalForwarder"}, "TrustId" => %{"shape" => "TrustId"}}, "required" => ["TrustId"], "type" => "structure"}, "DeleteSnapshotResult" => %{"members" => %{"SnapshotId" => %{"shape" => "SnapshotId"}}, "type" => "structure"}, "UpdateConditionalForwarderRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "DnsIpAddrs" => %{"shape" => "DnsIpAddrs"}, "RemoteDomainName" => %{"shape" => "RemoteDomainName"}}, "required" => ["DirectoryId", "RemoteDomainName", "DnsIpAddrs"], "type" => "structure"}, "DeleteAssociatedConditionalForwarder" => %{"type" => "boolean"}, "SnapshotIds" => %{"member" => %{"shape" => "SnapshotId"}, "type" => "list"}, "VpcId" => %{"pattern" => "^(vpc-[0-9a-f]{8})$", "type" => "string"}, "StartSchemaExtensionRequest" => %{"members" => %{"CreateSnapshotBeforeSchemaExtension" => %{"shape" => "CreateSnapshotBeforeSchemaExtension"}, "Description" => %{"shape" => "Description"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "LdifContent" => %{"shape" => "LdifContent"}}, "required" => ["DirectoryId", "CreateSnapshotBeforeSchemaExtension", "LdifContent", "Description"], "type" => "structure"}, "DescribeConditionalForwardersRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "RemoteDomainNames" => %{"shape" => "RemoteDomainNames"}}, "required" => ["DirectoryId"], "type" => "structure"}, "DescribeEventTopicsResult" => %{"members" => %{"EventTopics" => %{"shape" => "EventTopics"}}, "type" => "structure"}, "DirectoryType" => %{"enum" => ["SimpleAD", "ADConnector", "MicrosoftAD"], "type" => "string"}, "DeleteConditionalForwarderRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "RemoteDomainName" => %{"shape" => "RemoteDomainName"}}, "required" => ["DirectoryId", "RemoteDomainName"], "type" => "structure"}, "LdifContent" => %{"max" => 500000, "min" => 1, "type" => "string"}, "SnapshotId" => %{"pattern" => "^s-[0-9a-f]{10}$", "type" => "string"}, "Tags" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "TrustStateReason" => %{"type" => "string"}, "ConnectPassword" => %{"max" => 128, "min" => 1, "sensitive" => true, "type" => "string"}, "RemoteDomainName" => %{"pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$", "type" => "string"}, "TrustPassword" => %{"max" => 128, "min" => 1, "sensitive" => true, "type" => "string"}, "RemoteDomainNames" => %{"member" => %{"shape" => "RemoteDomainName"}, "type" => "list"}, "TopicName" => %{"max" => 256, "min" => 1, "pattern" => "[a-zA-Z0-9_-]+", "type" => "string"}, "RemoveTagsFromResourceRequest" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "TagKeys" => %{"shape" => "TagKeys"}}, "required" => ["ResourceId", "TagKeys"], "type" => "structure"}, "DesiredNumberOfDomainControllers" => %{"min" => 2, "type" => "integer"}, "AddTagsToResourceResult" => %{"members" => %{}, "type" => "structure"}, "Servers" => %{"member" => %{"shape" => "Server"}, "type" => "list"}, "UnsupportedOperationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "CreatedDateTime" => %{"type" => "timestamp"}, "EnableSsoRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "Password" => %{"shape" => "ConnectPassword"}, "UserName" => %{"shape" => "UserName"}}, "required" => ["DirectoryId"], "type" => "structure"}, "UpdateRadiusResult" => %{"members" => %{}, "type" => "structure"}, "DirectoryConnectSettings" => %{"members" => %{"CustomerDnsIps" => %{"shape" => "DnsIpAddrs"}, "CustomerUserName" => %{"shape" => "UserName"}, "SubnetIds" => %{"shape" => "SubnetIds"}, "VpcId" => %{"shape" => "VpcId"}}, "required" => ["VpcId", "SubnetIds", "CustomerDnsIps", "CustomerUserName"], "type" => "structure"}, "TopicNames" => %{"member" => %{"shape" => "TopicName"}, "type" => "list"}, "TagValue" => %{"max" => 256, "min" => 0, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "IpRoutesInfo" => %{"member" => %{"shape" => "IpRouteInfo"}, "type" => "list"}, "SchemaExtensionId" => %{"pattern" => "^e-[0-9a-f]{10}$", "type" => "string"}, "RadiusDisplayLabel" => %{"max" => 64, "min" => 1, "type" => "string"}, "IpRouteInfo" => %{"members" => %{"AddedDateTime" => %{"shape" => "AddedDateTime"}, "CidrIp" => %{"shape" => "CidrIp"}, "Description" => %{"shape" => "Description"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "IpRouteStatusMsg" => %{"shape" => "IpRouteStatusMsg"}, "IpRouteStatusReason" => %{"shape" => "IpRouteStatusReason"}}, "type" => "structure"}, "StateLastUpdatedDateTime" => %{"type" => "timestamp"}, "Trust" => %{"members" => %{"CreatedDateTime" => %{"shape" => "CreatedDateTime"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "LastUpdatedDateTime" => %{"shape" => "LastUpdatedDateTime"}, "RemoteDomainName" => %{"shape" => "RemoteDomainName"}, "StateLastUpdatedDateTime" => %{"shape" => "StateLastUpdatedDateTime"}, "TrustDirection" => %{"shape" => "TrustDirection"}, "TrustId" => %{"shape" => "TrustId"}, "TrustState" => %{"shape" => "TrustState"}, "TrustStateReason" => %{"shape" => "TrustStateReason"}, "TrustType" => %{"shape" => "TrustType"}}, "type" => "structure"}, "ComputerName" => %{"max" => 15, "min" => 1, "type" => "string"}, "CreateAliasResult" => %{"members" => %{"Alias" => %{"shape" => "AliasName"}, "DirectoryId" => %{"shape" => "DirectoryId"}}, "type" => "structure"}, "SecurityGroupId" => %{"pattern" => "^(sg-[0-9a-f]{8})$", "type" => "string"}, "Server" => %{"max" => 256, "min" => 1, "type" => "string"}, "DomainControllerStatus" => %{"enum" => ["Creating", "Active", "Impaired", "Restoring", "Deleting", "Deleted", "Failed"], "type" => "string"}, "ListIpRoutesRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["DirectoryId"], "type" => "structure"}, "AvailabilityZone" => %{"type" => "string"}, "DeleteConditionalForwarderResult" => %{"members" => %{}, "type" => "structure"}, "CreateMicrosoftADResult" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}}, "type" => "structure"}, "RadiusRetries" => %{"max" => 10, "min" => 0, "type" => "integer"}, "DeleteDirectoryResult" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}}, "type" => "structure"}, "AddIpRoutesRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "IpRoutes" => %{"shape" => "IpRoutes"}, "UpdateSecurityGroupForDirectoryControllers" => %{"shape" => "UpdateSecurityGroupForDirectoryControllers"}}, "required" => ["DirectoryId", "IpRoutes"], "type" => "structure"}, "DirectoryVpcSettingsDescription" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZones"}, "SecurityGroupId" => %{"shape" => "SecurityGroupId"}, "SubnetIds" => %{"shape" => "SubnetIds"}, "VpcId" => %{"shape" => "VpcId"}}, "type" => "structure"}, "DescribeTrustsResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Trusts" => %{"shape" => "Trusts"}}, "type" => "structure"}, "ResourceId" => %{"pattern" => "^[d]-[0-9a-f]{10}$", "type" => "string"}, "DescribeDirectoriesResult" => %{"members" => %{"DirectoryDescriptions" => %{"shape" => "DirectoryDescriptions"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DirectoryName" => %{"pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$", "type" => "string"}, "CidrIp" => %{"pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([1-9]|[1-2][0-9]|3[0-2]))$", "type" => "string"}, "SubnetId" => %{"pattern" => "^(subnet-[0-9a-f]{8})$", "type" => "string"}, "EnableRadiusRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "RadiusSettings" => %{"shape" => "RadiusSettings"}}, "required" => ["DirectoryId", "RadiusSettings"], "type" => "structure"}, "TrustState" => %{"enum" => ["Creating", "Created", "Verifying", "VerifyFailed", "Verified", "Deleting", "Deleted", "Failed"], "type" => "string"}, "LaunchTime" => %{"type" => "timestamp"}, "EventTopics" => %{"member" => %{"shape" => "EventTopic"}, "type" => "list"}, "Password" => %{"pattern" => "(?=^.{8,64}$)((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[^A-Za-z0-9\\s])(?=.*[a-z])|(?=.*[^A-Za-z0-9\\s])(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s]))^.*", "sensitive" => true, "type" => "string"}, "DomainControllerId" => %{"pattern" => "^dc-[0-9a-f]{10}$", "type" => "string"}, "RadiusAuthenticationProtocol" => %{"enum" => ["PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"], "type" => "string"}, "DeleteSnapshotRequest" => %{"members" => %{"SnapshotId" => %{"shape" => "SnapshotId"}}, "required" => ["SnapshotId"], "type" => "structure"}, "DomainControllerLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "UserName" => %{"min" => 1, "pattern" => "[a-zA-Z0-9._-]+", "type" => "string"}, "SID" => %{"max" => 256, "min" => 1, "pattern" => "[&\\w+-.@]+", "type" => "string"}, "AvailabilityZones" => %{"member" => %{"shape" => "AvailabilityZone"}, "type" => "list"}, "AddTagsToResourceRequest" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["ResourceId", "Tags"], "type" => "structure"}, "AddedDateTime" => %{"type" => "timestamp"}, "CloudOnlyDirectoriesLimitReached" => %{"type" => "boolean"}, "SsoEnabled" => %{"type" => "boolean"}, "SchemaExtensionStatus" => %{"enum" => ["Initializing", "CreatingSnapshot", "UpdatingSchema", "Replicating", "CancelInProgress", "RollbackInProgress", "Cancelled", "Failed", "Completed"], "type" => "string"}, "EntityDoesNotExistException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "Computer" => %{"members" => %{"ComputerAttributes" => %{"shape" => "Attributes"}, "ComputerId" => %{"shape" => "SID"}, "ComputerName" => %{"shape" => "ComputerName"}}, "type" => "structure"}, "ReplicationScope" => %{"enum" => ["Domain"], "type" => "string"}, "TrustType" => %{"enum" => ["Forest"], "type" => "string"}, "SchemaExtensionInfo" => %{"members" => %{"Description" => %{"shape" => "Description"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "EndDateTime" => %{"shape" => "EndDateTime"}, "SchemaExtensionId" => %{"shape" => "SchemaExtensionId"}, "SchemaExtensionStatus" => %{"shape" => "SchemaExtensionStatus"}, "SchemaExtensionStatusReason" => %{"shape" => "SchemaExtensionStatusReason"}, "StartDateTime" => %{"shape" => "StartDateTime"}}, "type" => "structure"}, "CreateComputerRequest" => %{"members" => %{"ComputerAttributes" => %{"shape" => "Attributes"}, "ComputerName" => %{"shape" => "ComputerName"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "OrganizationalUnitDistinguishedName" => %{"shape" => "OrganizationalUnitDN"}, "Password" => %{"shape" => "ComputerPassword"}}, "required" => ["DirectoryId", "ComputerName", "Password"], "type" => "structure"}, "RegisterEventTopicResult" => %{"members" => %{}, "type" => "structure"}, "RestoreFromSnapshotResult" => %{"members" => %{}, "type" => "structure"}, "IpAddrs" => %{"member" => %{"shape" => "IpAddr"}, "type" => "list"}, "CreateConditionalForwarderResult" => %{"members" => %{}, "type" => "structure"}, "OrganizationalUnitDN" => %{"max" => 2000, "min" => 1, "type" => "string"}, "ExceptionMessage" => %{"type" => "string"}, "RestoreFromSnapshotRequest" => %{"members" => %{"SnapshotId" => %{"shape" => "SnapshotId"}}, "required" => ["SnapshotId"], "type" => "structure"}, "RemoveIpRoutesRequest" => %{"members" => %{"CidrIps" => %{"shape" => "CidrIps"}, "DirectoryId" => %{"shape" => "DirectoryId"}}, "required" => ["DirectoryId", "CidrIps"], "type" => "structure"}, "Attributes" => %{"member" => %{"shape" => "Attribute"}, "type" => "list"}, "TrustId" => %{"pattern" => "^t-[0-9a-f]{10}$", "type" => "string"}, "DisableSsoRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "Password" => %{"shape" => "ConnectPassword"}, "UserName" => %{"shape" => "UserName"}}, "required" => ["DirectoryId"], "type" => "structure"}, "CreateAliasRequest" => %{"members" => %{"Alias" => %{"shape" => "AliasName"}, "DirectoryId" => %{"shape" => "DirectoryId"}}, "required" => ["DirectoryId", "Alias"], "type" => "structure"}, "DisableRadiusRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}}, "required" => ["DirectoryId"], "type" => "structure"}, "CreateTrustRequest" => %{"members" => %{"ConditionalForwarderIpAddrs" => %{"shape" => "DnsIpAddrs"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "RemoteDomainName" => %{"shape" => "RemoteDomainName"}, "TrustDirection" => %{"shape" => "TrustDirection"}, "TrustPassword" => %{"shape" => "TrustPassword"}, "TrustType" => %{"shape" => "TrustType"}}, "required" => ["DirectoryId", "RemoteDomainName", "TrustPassword", "TrustDirection"], "type" => "structure"}, "ComputerPassword" => %{"max" => 64, "min" => 8, "pattern" => "[\\u0020-\\u00FF]+", "sensitive" => true, "type" => "string"}, "RemoveIpRoutesResult" => %{"members" => %{}, "type" => "structure"}, "RequestId" => %{"pattern" => "^([A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12})$", "type" => "string"}, "EnableRadiusResult" => %{"members" => %{}, "type" => "structure"}, "AttributeValue" => %{"type" => "string"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "AccessUrl" => %{"max" => 128, "min" => 1, "type" => "string"}, "ListSchemaExtensionsResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "SchemaExtensionsInfo" => %{"shape" => "SchemaExtensionsInfo"}}, "type" => "structure"}, "Snapshots" => %{"member" => %{"shape" => "Snapshot"}, "type" => "list"}, "DeleteDirectoryRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}}, "required" => ["DirectoryId"], "type" => "structure"}, "RadiusSettings" => %{"members" => %{"AuthenticationProtocol" => %{"shape" => "RadiusAuthenticationProtocol"}, "DisplayLabel" => %{"shape" => "RadiusDisplayLabel"}, "RadiusPort" => %{"shape" => "PortNumber"}, "RadiusRetries" => %{"shape" => "RadiusRetries"}, "RadiusServers" => %{"shape" => "Servers"}, "RadiusTimeout" => %{"shape" => "RadiusTimeout"}, "SharedSecret" => %{"shape" => "RadiusSharedSecret"}, "UseSameUsername" => %{"shape" => "UseSameUsername"}}, "type" => "structure"}, "DescribeSnapshotsRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}, "SnapshotIds" => %{"shape" => "SnapshotIds"}}, "type" => "structure"}, "UseSameUsername" => %{"type" => "boolean"}, "IpRouteStatusReason" => %{"type" => "string"}, "VerifyTrustRequest" => %{"members" => %{"TrustId" => %{"shape" => "TrustId"}}, "required" => ["TrustId"], "type" => "structure"}, "Trusts" => %{"member" => %{"shape" => "Trust"}, "type" => "list"}, "DirectoryDescription" => %{"members" => %{"AccessUrl" => %{"shape" => "AccessUrl"}, "Alias" => %{"shape" => "AliasName"}, "ConnectSettings" => %{"shape" => "DirectoryConnectSettingsDescription"}, "Description" => %{"shape" => "Description"}, "DesiredNumberOfDomainControllers" => %{"shape" => "DesiredNumberOfDomainControllers"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "DnsIpAddrs" => %{"shape" => "DnsIpAddrs"}, "LaunchTime" => %{"shape" => "LaunchTime"}, "Name" => %{"shape" => "DirectoryName"}, "RadiusSettings" => %{"shape" => "RadiusSettings"}, "RadiusStatus" => %{"shape" => "RadiusStatus"}, "ShortName" => %{"shape" => "DirectoryShortName"}, "Size" => %{"shape" => "DirectorySize"}, "SsoEnabled" => %{"shape" => "SsoEnabled"}, "Stage" => %{"shape" => "DirectoryStage"}, "StageLastUpdatedDateTime" => %{"shape" => "LastUpdatedDateTime"}, "StageReason" => %{"shape" => "StageReason"}, "Type" => %{"shape" => "DirectoryType"}, "VpcSettings" => %{"shape" => "DirectoryVpcSettingsDescription"}}, "type" => "structure"}, "UpdateNumberOfDomainControllersResult" => %{"members" => %{}, "type" => "structure"}, "Snapshot" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "Name" => %{"shape" => "SnapshotName"}, "SnapshotId" => %{"shape" => "SnapshotId"}, "StartTime" => %{"shape" => "StartTime"}, "Status" => %{"shape" => "SnapshotStatus"}, "Type" => %{"shape" => "SnapshotType"}}, "type" => "structure"}, "StartSchemaExtensionResult" => %{"members" => %{"SchemaExtensionId" => %{"shape" => "SchemaExtensionId"}}, "type" => "structure"}, "AuthenticationFailedException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "EventTopic" => %{"members" => %{"CreatedDateTime" => %{"shape" => "CreatedDateTime"}, "DirectoryId" => %{"shape" => "DirectoryId"}, "Status" => %{"shape" => "TopicStatus"}, "TopicArn" => %{"shape" => "TopicArn"}, "TopicName" => %{"shape" => "TopicName"}}, "type" => "structure"}, "DescribeDomainControllersRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "DomainControllerIds" => %{"shape" => "DomainControllerIds"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["DirectoryId"], "type" => "structure"}, "CreateConditionalForwarderRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "DnsIpAddrs" => %{"shape" => "DnsIpAddrs"}, "RemoteDomainName" => %{"shape" => "RemoteDomainName"}}, "required" => ["DirectoryId", "RemoteDomainName", "DnsIpAddrs"], "type" => "structure"}, "TrustDirection" => %{"enum" => ["One-Way: Outgoing", "One-Way: Incoming", "Two-Way"], "type" => "string"}, "EntityAlreadyExistsException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "RequestId" => %{"shape" => "RequestId"}}, "type" => "structure"}, "DescribeTrustsRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "Limit" => %{"shape" => "Limit"}, "NextToken" => %{"shape" => "NextToken"}, "TrustIds" => %{"shape" => "TrustIds"}}, "type" => "structure"}, "DomainControllerIds" => %{"member" => %{"shape" => "DomainControllerId"}, "type" => "list"}, "TopicArn" => %{"type" => "string"}, "CreateMicrosoftADRequest" => %{"members" => %{"Description" => %{"shape" => "Description"}, "Name" => %{"shape" => "DirectoryName"}, "Password" => %{"shape" => "Password"}, "ShortName" => %{"shape" => "DirectoryShortName"}, "VpcSettings" => %{"shape" => "DirectoryVpcSettings"}}, "required" => ["Name", "Password", "VpcSettings"], "type" => "structure"}, "RemoveTagsFromResourceResult" => %{"members" => %{}, "type" => "structure"}, "GetDirectoryLimitsRequest" => %{"members" => %{}, "type" => "structure"}, "NextToken" => %{"type" => "string"}, "CreateTrustResult" => %{"members" => %{"TrustId" => %{"shape" => "TrustId"}}, "type" => "structure"}, "PortNumber" => %{"max" => 65535, "min" => 1025, "type" => "integer"}, "DescribeDomainControllersResult" => %{"members" => %{"DomainControllers" => %{"shape" => "DomainControllers"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeConditionalForwardersResult" => %{"members" => %{"ConditionalForwarders" => %{"shape" => "ConditionalForwarders"}}, "type" => "structure"}, "LastUpdatedDateTime" => %{"type" => "timestamp"}, "DeregisterEventTopicRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "TopicName" => %{"shape" => "TopicName"}}, "required" => ["DirectoryId", "TopicName"], "type" => "structure"}, "UpdateNumberOfDomainControllersRequest" => %{"members" => %{"DesiredNumber" => %{"shape" => "DesiredNumberOfDomainControllers"}, "DirectoryId" => %{"shape" => "DirectoryId"}}, "required" => ["DirectoryId", "DesiredNumber"], "type" => "structure"}, "CancelSchemaExtensionResult" => %{"members" => %{}, "type" => "structure"}, "CreateSnapshotRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}, "Name" => %{"shape" => "SnapshotName"}}, "required" => ["DirectoryId"], "type" => "structure"}, "SnapshotStatus" => %{"enum" => ["Creating", "Completed", "Failed"], "type" => "string"}, "GetSnapshotLimitsRequest" => %{"members" => %{"DirectoryId" => %{"shape" => "DirectoryId"}}, "required" => ["DirectoryId"], "type" => "structure"}}
  end
end