defmodule Baiji.CloudHSM do
  @moduledoc """
  AWS CloudHSM Service
  """
  
  @doc """
  Adds or overwrites one or more tags for the specified AWS CloudHSM
  resource.

  Each tag consists of a key and a value. Tag keys must be unique to each
  resource.
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "AddTagsToResourceRequest",
      output_shape:     "AddTagsToResourceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a high-availability partition group. A high-availability partition
  group is a group of partitions that spans multiple physical HSMs.
  """
  def create_hapg(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateHapg",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "CreateHapgRequest",
      output_shape:     "CreateHapgResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an uninitialized HSM instance.

  There is an upfront fee charged for each HSM instance that you create with
  the `CreateHsm` operation. If you accidentally provision an HSM and want to
  request a refund, delete the instance using the `DeleteHsm` operation, go
  to the [AWS Support Center](https://console.aws.amazon.com/support/home#/),
  create a new case, and select **Account and Billing Support**.

  <important> It can take up to 20 minutes to create and provision an HSM.
  You can monitor the status of the HSM with the `DescribeHsm` operation. The
  HSM is ready to be initialized when the status changes to `RUNNING`.

  </important>
  """
  def create_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateHsm",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "CreateHsmRequest",
      output_shape:     "CreateHsmResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an HSM client.
  """
  def create_luna_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateLunaClient",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "CreateLunaClientRequest",
      output_shape:     "CreateLunaClientResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a high-availability partition group.
  """
  def delete_hapg(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteHapg",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "DeleteHapgRequest",
      output_shape:     "DeleteHapgResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes an HSM. After completion, this operation cannot be undone and your
  key material cannot be recovered.
  """
  def delete_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteHsm",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "DeleteHsmRequest",
      output_shape:     "DeleteHsmResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a client.
  """
  def delete_luna_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteLunaClient",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "DeleteLunaClientRequest",
      output_shape:     "DeleteLunaClientResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves information about a high-availability partition group.
  """
  def describe_hapg(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeHapg",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "DescribeHapgRequest",
      output_shape:     "DescribeHapgResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves information about an HSM. You can identify the HSM by its ARN or
  its serial number.
  """
  def describe_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeHsm",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "DescribeHsmRequest",
      output_shape:     "DescribeHsmResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves information about an HSM client.
  """
  def describe_luna_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeLunaClient",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "DescribeLunaClientRequest",
      output_shape:     "DescribeLunaClientResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets the configuration files necessary to connect to all high availability
  partition groups the client is associated with.
  """
  def get_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetConfig",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "GetConfigRequest",
      output_shape:     "GetConfigResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the Availability Zones that have available AWS CloudHSM capacity.
  """
  def list_available_zones(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAvailableZones",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "ListAvailableZonesRequest",
      output_shape:     "ListAvailableZonesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the high-availability partition groups for the account.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListHapgs` to retrieve
  the next set of items.
  """
  def list_hapgs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListHapgs",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "ListHapgsRequest",
      output_shape:     "ListHapgsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves the identifiers of all of the HSMs provisioned for the current
  customer.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListHsms` to retrieve
  the next set of items.
  """
  def list_hsms(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListHsms",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "ListHsmsRequest",
      output_shape:     "ListHsmsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all of the clients.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListLunaClients` to
  retrieve the next set of items.
  """
  def list_luna_clients(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListLunaClients",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "ListLunaClientsRequest",
      output_shape:     "ListLunaClientsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of all tags for the specified AWS CloudHSM resource.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "ListTagsForResourceRequest",
      output_shape:     "ListTagsForResourceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies an existing high-availability partition group.
  """
  def modify_hapg(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyHapg",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "ModifyHapgRequest",
      output_shape:     "ModifyHapgResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies an HSM.

  <important> This operation can result in the HSM being offline for up to 15
  minutes while the AWS CloudHSM service is reconfigured. If you are
  modifying a production HSM, you should ensure that your AWS CloudHSM
  service is configured for high availability, and consider executing this
  operation during a maintenance window.

  </important>
  """
  def modify_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyHsm",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "ModifyHsmRequest",
      output_shape:     "ModifyHsmResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the certificate used by the client.

  This action can potentially start a workflow to install the new certificate
  on the client's HSMs.
  """
  def modify_luna_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyLunaClient",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "ModifyLunaClientRequest",
      output_shape:     "ModifyLunaClientResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes one or more tags from the specified AWS CloudHSM resource.

  To remove a tag, specify only the tag key to remove (not the value). To
  overwrite the value for an existing tag, use `AddTagsToResource`.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      
      target_prefix:    "CloudHsmFrontendService",
      
      endpoint_prefix:  "cloudhsm",
      type:             :json,
      version:          "2014-05-30",
      method:           :post,
      input_shape:      "RemoveTagsFromResourceRequest",
      output_shape:     "RemoveTagsFromResourceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"ListTagsForResourceResponse" => %{"members" => %{"TagList" => %{"shape" => "TagList"}}, "required" => ["TagList"], "type" => "structure"}, "EniId" => %{"pattern" => "eni-[0-9a-f]{8}", "type" => "string"}, "DescribeHsmResponse" => %{"members" => %{"AvailabilityZone" => %{"shape" => "AZ"}, "EniId" => %{"shape" => "EniId"}, "EniIp" => %{"shape" => "IpAddress"}, "HsmArn" => %{"shape" => "HsmArn"}, "HsmType" => %{"shape" => "String"}, "IamRoleArn" => %{"shape" => "IamRoleArn"}, "Partitions" => %{"shape" => "PartitionList"}, "SerialNumber" => %{"shape" => "HsmSerialNumber"}, "ServerCertLastUpdated" => %{"shape" => "Timestamp"}, "ServerCertUri" => %{"shape" => "String"}, "SoftwareVersion" => %{"shape" => "String"}, "SshKeyLastUpdated" => %{"shape" => "Timestamp"}, "SshPublicKey" => %{"shape" => "SshKey"}, "Status" => %{"shape" => "HsmStatus"}, "StatusDetails" => %{"shape" => "String"}, "SubnetId" => %{"shape" => "SubnetId"}, "SubscriptionEndDate" => %{"shape" => "Timestamp"}, "SubscriptionStartDate" => %{"shape" => "Timestamp"}, "SubscriptionType" => %{"shape" => "SubscriptionType"}, "VendorName" => %{"shape" => "String"}, "VpcId" => %{"shape" => "VpcId"}}, "type" => "structure"}, "TagKeyList" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "CloudHsmInternalException" => %{"exception" => true, "fault" => true, "members" => %{}, "type" => "structure"}, "DescribeLunaClientRequest" => %{"members" => %{"CertificateFingerprint" => %{"shape" => "CertificateFingerprint"}, "ClientArn" => %{"shape" => "ClientArn"}}, "type" => "structure"}, "String" => %{"pattern" => "[\\w :+=./\\\\-]*", "type" => "string"}, "Boolean" => %{"type" => "boolean"}, "AZList" => %{"member" => %{"shape" => "AZ"}, "type" => "list"}, "ListHsmsRequest" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "AZ" => %{"pattern" => "[a-zA-Z0-9\\-]*", "type" => "string"}, "ModifyLunaClientResponse" => %{"members" => %{"ClientArn" => %{"shape" => "ClientArn"}}, "type" => "structure"}, "DescribeHsmRequest" => %{"members" => %{"HsmArn" => %{"shape" => "HsmArn"}, "HsmSerialNumber" => %{"shape" => "HsmSerialNumber"}}, "type" => "structure"}, "CloudHsmServiceException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}, "retryable" => %{"shape" => "Boolean"}}, "type" => "structure"}, "ModifyHapgRequest" => %{"members" => %{"HapgArn" => %{"shape" => "HapgArn"}, "Label" => %{"shape" => "Label"}, "PartitionSerialList" => %{"shape" => "PartitionSerialList"}}, "required" => ["HapgArn"], "type" => "structure"}, "ModifyHsmRequest" => %{"locationName" => "ModifyHsmRequest", "members" => %{"EniIp" => %{"locationName" => "EniIp", "shape" => "IpAddress"}, "ExternalId" => %{"locationName" => "ExternalId", "shape" => "ExternalId"}, "HsmArn" => %{"locationName" => "HsmArn", "shape" => "HsmArn"}, "IamRoleArn" => %{"locationName" => "IamRoleArn", "shape" => "IamRoleArn"}, "SubnetId" => %{"locationName" => "SubnetId", "shape" => "SubnetId"}, "SyslogIp" => %{"locationName" => "SyslogIp", "shape" => "IpAddress"}}, "required" => ["HsmArn"], "type" => "structure"}, "ClientToken" => %{"pattern" => "[a-zA-Z0-9]{1,64}", "type" => "string"}, "ModifyHapgResponse" => %{"members" => %{"HapgArn" => %{"shape" => "HapgArn"}}, "type" => "structure"}, "SubscriptionType" => %{"enum" => ["PRODUCTION"], "type" => "string"}, "DeleteHapgResponse" => %{"members" => %{"Status" => %{"shape" => "String"}}, "required" => ["Status"], "type" => "structure"}, "ListTagsForResourceRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "String"}}, "required" => ["ResourceArn"], "type" => "structure"}, "CreateLunaClientRequest" => %{"members" => %{"Certificate" => %{"shape" => "Certificate"}, "Label" => %{"shape" => "ClientLabel"}}, "required" => ["Certificate"], "type" => "structure"}, "DeleteHsmResponse" => %{"members" => %{"Status" => %{"shape" => "String"}}, "required" => ["Status"], "type" => "structure"}, "SshKey" => %{"pattern" => "[a-zA-Z0-9+/= ._:\\\\@-]*", "type" => "string"}, "CertificateFingerprint" => %{"pattern" => "([0-9a-fA-F][0-9a-fA-F]:){15}[0-9a-fA-F][0-9a-fA-F]", "type" => "string"}, "ListHapgsResponse" => %{"members" => %{"HapgList" => %{"shape" => "HapgList"}, "NextToken" => %{"shape" => "PaginationToken"}}, "required" => ["HapgList"], "type" => "structure"}, "ListAvailableZonesRequest" => %{"members" => %{}, "type" => "structure"}, "ListLunaClientsRequest" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "HsmStatus" => %{"enum" => ["PENDING", "RUNNING", "UPDATING", "SUSPENDED", "TERMINATING", "TERMINATED", "DEGRADED"], "type" => "string"}, "ListHapgsRequest" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "IamRoleArn" => %{"pattern" => "arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_\\+=,\\.\\-@]{1,64}", "type" => "string"}, "CloudHsmObjectState" => %{"enum" => ["READY", "UPDATING", "DEGRADED"], "type" => "string"}, "DeleteLunaClientRequest" => %{"members" => %{"ClientArn" => %{"shape" => "ClientArn"}}, "required" => ["ClientArn"], "type" => "structure"}, "VpcId" => %{"pattern" => "vpc-[0-9a-f]{8}", "type" => "string"}, "DescribeHapgRequest" => %{"members" => %{"HapgArn" => %{"shape" => "HapgArn"}}, "required" => ["HapgArn"], "type" => "structure"}, "CreateLunaClientResponse" => %{"members" => %{"ClientArn" => %{"shape" => "ClientArn"}}, "type" => "structure"}, "ModifyHsmResponse" => %{"members" => %{"HsmArn" => %{"shape" => "HsmArn"}}, "type" => "structure"}, "HsmSerialNumber" => %{"pattern" => "\\d{1,16}", "type" => "string"}, "PartitionArn" => %{"pattern" => "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}/partition-[0-9]{6,12}", "type" => "string"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "DeleteHsmRequest" => %{"locationName" => "DeleteHsmRequest", "members" => %{"HsmArn" => %{"locationName" => "HsmArn", "shape" => "HsmArn"}}, "required" => ["HsmArn"], "type" => "structure"}, "Timestamp" => %{"pattern" => "\\d*", "type" => "string"}, "DeleteLunaClientResponse" => %{"members" => %{"Status" => %{"shape" => "String"}}, "required" => ["Status"], "type" => "structure"}, "HapgList" => %{"member" => %{"shape" => "HapgArn"}, "type" => "list"}, "GetConfigRequest" => %{"members" => %{"ClientArn" => %{"shape" => "ClientArn"}, "ClientVersion" => %{"shape" => "ClientVersion"}, "HapgList" => %{"shape" => "HapgList"}}, "required" => ["ClientArn", "ClientVersion", "HapgList"], "type" => "structure"}, "RemoveTagsFromResourceRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "String"}, "TagKeyList" => %{"shape" => "TagKeyList"}}, "required" => ["ResourceArn", "TagKeyList"], "type" => "structure"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "RemoveTagsFromResourceResponse" => %{"members" => %{"Status" => %{"shape" => "String"}}, "required" => ["Status"], "type" => "structure"}, "TagValue" => %{"max" => 256, "min" => 0, "type" => "string"}, "ExternalId" => %{"pattern" => "[\\w :+=./-]*", "type" => "string"}, "ListHsmsResponse" => %{"members" => %{"HsmList" => %{"shape" => "HsmList"}, "NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "SubnetId" => %{"pattern" => "subnet-[0-9a-f]{8}", "type" => "string"}, "InvalidRequestException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeHapgResponse" => %{"members" => %{"HapgArn" => %{"shape" => "HapgArn"}, "HapgSerial" => %{"shape" => "String"}, "HsmsLastActionFailed" => %{"shape" => "HsmList"}, "HsmsPendingDeletion" => %{"shape" => "HsmList"}, "HsmsPendingRegistration" => %{"shape" => "HsmList"}, "Label" => %{"shape" => "Label"}, "LastModifiedTimestamp" => %{"shape" => "Timestamp"}, "PartitionSerialList" => %{"shape" => "PartitionSerialList"}, "State" => %{"shape" => "CloudHsmObjectState"}}, "type" => "structure"}, "DescribeLunaClientResponse" => %{"members" => %{"Certificate" => %{"shape" => "Certificate"}, "CertificateFingerprint" => %{"shape" => "CertificateFingerprint"}, "ClientArn" => %{"shape" => "ClientArn"}, "Label" => %{"shape" => "Label"}, "LastModifiedTimestamp" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "DeleteHapgRequest" => %{"members" => %{"HapgArn" => %{"shape" => "HapgArn"}}, "required" => ["HapgArn"], "type" => "structure"}, "IpAddress" => %{"pattern" => "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}", "type" => "string"}, "PartitionSerialList" => %{"member" => %{"shape" => "PartitionSerial"}, "type" => "list"}, "ClientList" => %{"member" => %{"shape" => "ClientArn"}, "type" => "list"}, "CreateHsmResponse" => %{"members" => %{"HsmArn" => %{"shape" => "HsmArn"}}, "type" => "structure"}, "AddTagsToResourceRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "String"}, "TagList" => %{"shape" => "TagList"}}, "required" => ["ResourceArn", "TagList"], "type" => "structure"}, "ClientLabel" => %{"pattern" => "[a-zA-Z0-9_.-]{2,64}", "type" => "string"}, "HsmArn" => %{"pattern" => "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}", "type" => "string"}, "PaginationToken" => %{"pattern" => "[a-zA-Z0-9+/]*", "type" => "string"}, "GetConfigResponse" => %{"members" => %{"ConfigCred" => %{"shape" => "String"}, "ConfigFile" => %{"shape" => "String"}, "ConfigType" => %{"shape" => "String"}}, "type" => "structure"}, "CreateHsmRequest" => %{"locationName" => "CreateHsmRequest", "members" => %{"ClientToken" => %{"locationName" => "ClientToken", "shape" => "ClientToken"}, "EniIp" => %{"locationName" => "EniIp", "shape" => "IpAddress"}, "ExternalId" => %{"locationName" => "ExternalId", "shape" => "ExternalId"}, "IamRoleArn" => %{"locationName" => "IamRoleArn", "shape" => "IamRoleArn"}, "SshKey" => %{"locationName" => "SshKey", "shape" => "SshKey"}, "SubnetId" => %{"locationName" => "SubnetId", "shape" => "SubnetId"}, "SubscriptionType" => %{"locationName" => "SubscriptionType", "shape" => "SubscriptionType"}, "SyslogIp" => %{"locationName" => "SyslogIp", "shape" => "IpAddress"}}, "required" => ["SubnetId", "SshKey", "IamRoleArn", "SubscriptionType"], "type" => "structure"}, "ModifyLunaClientRequest" => %{"members" => %{"Certificate" => %{"shape" => "Certificate"}, "ClientArn" => %{"shape" => "ClientArn"}}, "required" => ["ClientArn", "Certificate"], "type" => "structure"}, "PartitionSerial" => %{"pattern" => "\\d{6,12}", "type" => "string"}, "TagKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "ListLunaClientsResponse" => %{"members" => %{"ClientList" => %{"shape" => "ClientList"}, "NextToken" => %{"shape" => "PaginationToken"}}, "required" => ["ClientList"], "type" => "structure"}, "CreateHapgRequest" => %{"members" => %{"Label" => %{"shape" => "Label"}}, "required" => ["Label"], "type" => "structure"}, "Label" => %{"pattern" => "[a-zA-Z0-9_.-]{1,64}", "type" => "string"}, "PartitionList" => %{"member" => %{"shape" => "PartitionArn"}, "type" => "list"}, "ClientArn" => %{"pattern" => "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}", "type" => "string"}, "CreateHapgResponse" => %{"members" => %{"HapgArn" => %{"shape" => "HapgArn"}}, "type" => "structure"}, "ClientVersion" => %{"enum" => ["5.1", "5.3"], "type" => "string"}, "AddTagsToResourceResponse" => %{"members" => %{"Status" => %{"shape" => "String"}}, "required" => ["Status"], "type" => "structure"}, "ListAvailableZonesResponse" => %{"members" => %{"AZList" => %{"shape" => "AZList"}}, "type" => "structure"}, "Certificate" => %{"max" => 2400, "min" => 600, "pattern" => "[\\w :+=./\\n-]*", "type" => "string"}, "HapgArn" => %{"pattern" => "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}", "type" => "string"}, "HsmList" => %{"member" => %{"shape" => "HsmArn"}, "type" => "list"}}
  end
end