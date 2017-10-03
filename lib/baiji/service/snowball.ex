defmodule Baiji.Snowball do
  @moduledoc """
  AWS Snowball is a petabyte-scale data transport solution that uses secure
  appliances to transfer large amounts of data between your on-premises data
  centers and Amazon Simple Storage Service (Amazon S3). The Snowball
  commands described here provide access to the same functionality that is
  available in the AWS Snowball Management Console, which enables you to
  create and manage jobs for Snowball. To transfer data locally with a
  Snowball appliance, you'll need to use the Snowball client or the Amazon S3
  API adapter for Snowball. For more information, see the [User
  Guide](http://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html).
  """
  
  @doc """
  Cancels a cluster job. You can only cancel a cluster job while it's in the
  `AwaitingQuorum` status. You'll have at least an hour after creating a
  cluster job to cancel it.
  """
  def cancel_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelCluster",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "CancelClusterRequest",
      output_shape:     "CancelClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Cancels the specified job. You can only cancel a job before its `JobState`
  value changes to `PreparingAppliance`. Requesting the `ListJobs` or
  `DescribeJob` action will return a job's `JobState` as part of the response
  element data returned.
  """
  def cancel_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelJob",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "CancelJobRequest",
      output_shape:     "CancelJobResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an address for a Snowball to be shipped to. In most regions,
  addresses are validated at the time of creation. The address you provide
  must be located within the serviceable area of your region. If the address
  is invalid or unsupported, then an exception is thrown.
  """
  def create_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateAddress",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "CreateAddressRequest",
      output_shape:     "CreateAddressResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an empty cluster. Each cluster supports five nodes. You use the
  `CreateJob` action separately to create the jobs for each of these nodes.
  The cluster does not ship until these five node jobs have been created.
  """
  def create_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCluster",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "CreateClusterRequest",
      output_shape:     "CreateClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a job to import or export data between Amazon S3 and your
  on-premises data center. Your AWS account must have the right trust
  policies and permissions in place to create a job for Snowball. If you're
  creating a job for a node in a cluster, you only need to provide the
  `clusterId` value; the other job attributes are inherited from the cluster.
  """
  def create_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateJob",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "CreateJobRequest",
      output_shape:     "CreateJobResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Takes an `AddressId` and returns specific details about that address in the
  form of an `Address` object.
  """
  def describe_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAddress",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "DescribeAddressRequest",
      output_shape:     "DescribeAddressResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a specified number of `ADDRESS` objects. Calling this API in one of
  the US regions will return addresses from the list of all addresses
  associated with this account in all US regions.
  """
  def describe_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAddresses",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "DescribeAddressesRequest",
      output_shape:     "DescribeAddressesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about a specific cluster including shipping
  information, cluster status, and other important metadata.
  """
  def describe_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCluster",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "DescribeClusterRequest",
      output_shape:     "DescribeClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about a specific job including shipping information,
  job status, and other important metadata.
  """
  def describe_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeJob",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "DescribeJobRequest",
      output_shape:     "DescribeJobResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a link to an Amazon S3 presigned URL for the manifest file
  associated with the specified `JobId` value. You can access the manifest
  file for up to 60 minutes after this request has been made. To access the
  manifest file after 60 minutes have passed, you'll have to make another
  call to the `GetJobManifest` action.

  The manifest is an encrypted file that you can download after your job
  enters the `WithCustomer` status. The manifest is decrypted by using the
  `UnlockCode` code value, when you pass both values to the Snowball through
  the Snowball client when the client is started for the first time.

  As a best practice, we recommend that you don't save a copy of an
  `UnlockCode` value in the same location as the manifest file for that job.
  Saving these separately helps prevent unauthorized parties from gaining
  access to the Snowball associated with that job.

  The credentials of a given job, including its manifest file and unlock
  code, expire 90 days after the job is created.
  """
  def get_job_manifest(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetJobManifest",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "GetJobManifestRequest",
      output_shape:     "GetJobManifestResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `UnlockCode` code value for the specified job. A particular
  `UnlockCode` value can be accessed for up to 90 days after the associated
  job has been created.

  The `UnlockCode` value is a 29-character code with 25 alphanumeric
  characters and 4 hyphens. This code is used to decrypt the manifest file
  when it is passed along with the manifest to the Snowball through the
  Snowball client when the client is started for the first time.

  As a best practice, we recommend that you don't save a copy of the
  `UnlockCode` in the same location as the manifest file for that job. Saving
  these separately helps prevent unauthorized parties from gaining access to
  the Snowball associated with that job.
  """
  def get_job_unlock_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetJobUnlockCode",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "GetJobUnlockCodeRequest",
      output_shape:     "GetJobUnlockCodeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about the Snowball service limit for your account, and
  also the number of Snowballs your account has in use.

  The default service limit for the number of Snowballs that you can have at
  one time is 1. If you want to increase your service limit, contact AWS
  Support.
  """
  def get_snowball_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetSnowballUsage",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "GetSnowballUsageRequest",
      output_shape:     "GetSnowballUsageResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `JobListEntry` objects of the specified length. Each
  `JobListEntry` object is for a job in the specified cluster and contains a
  job's state, a job's ID, and other information.
  """
  def list_cluster_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListClusterJobs",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "ListClusterJobsRequest",
      output_shape:     "ListClusterJobsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `ClusterListEntry` objects of the specified length.
  Each `ClusterListEntry` object contains a cluster's state, a cluster's ID,
  and other important status information.
  """
  def list_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListClusters",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "ListClustersRequest",
      output_shape:     "ListClustersResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `JobListEntry` objects of the specified length. Each
  `JobListEntry` object contains a job's state, a job's ID, and a value that
  indicates whether the job is a job part, in the case of export jobs.
  Calling this API action in one of the US regions will return jobs from the
  list of all jobs associated with this account in all US regions.
  """
  def list_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListJobs",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "ListJobsRequest",
      output_shape:     "ListJobsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  While a cluster's `ClusterState` value is in the `AwaitingQuorum` state,
  you can update some of the information associated with a cluster. Once the
  cluster changes to a different job state, usually 60 minutes after the
  cluster being created, this action is no longer available.
  """
  def update_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateCluster",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "UpdateClusterRequest",
      output_shape:     "UpdateClusterResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  While a job's `JobState` value is `New`, you can update some of the
  information associated with a job. Once the job changes to a different job
  state, usually within 60 minutes of the job being created, this action is
  no longer available.
  """
  def update_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "snowball",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateJob",
      
      target_prefix:    "AWSIESnowballJobManagementService",
      
      endpoint_prefix:  "snowball",
      type:             :json,
      version:          "2016-06-30",
      method:           :post,
      input_shape:      "UpdateJobRequest",
      output_shape:     "UpdateJobResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"UpdateJobResult" => %{"members" => %{}, "type" => "structure"}, "JobMetadata" => %{"members" => %{"AddressId" => %{"shape" => "AddressId"}, "ClusterId" => %{"shape" => "String"}, "CreationDate" => %{"shape" => "Timestamp"}, "DataTransferProgress" => %{"shape" => "DataTransfer"}, "Description" => %{"shape" => "String"}, "ForwardingAddressId" => %{"shape" => "AddressId"}, "JobId" => %{"shape" => "String"}, "JobLogInfo" => %{"shape" => "JobLogs"}, "JobState" => %{"shape" => "JobState"}, "JobType" => %{"shape" => "JobType"}, "KmsKeyARN" => %{"shape" => "KmsKeyARN"}, "Notification" => %{"shape" => "Notification"}, "Resources" => %{"shape" => "JobResource"}, "RoleARN" => %{"shape" => "RoleARN"}, "ShippingDetails" => %{"shape" => "ShippingDetails"}, "SnowballCapacityPreference" => %{"shape" => "SnowballCapacity"}, "SnowballType" => %{"shape" => "SnowballType"}}, "type" => "structure"}, "JobState" => %{"enum" => ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"], "type" => "string"}, "AddressId" => %{"max" => 40, "min" => 40, "pattern" => "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "type" => "string"}, "SnsTopicARN" => %{"max" => 255, "pattern" => "arn:aws.*:sns:.*:[0-9]{12}:.*", "type" => "string"}, "ClusterListEntryList" => %{"member" => %{"shape" => "ClusterListEntry"}, "type" => "list"}, "ClusterListEntry" => %{"members" => %{"ClusterId" => %{"shape" => "String"}, "ClusterState" => %{"shape" => "ClusterState"}, "CreationDate" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}}, "type" => "structure"}, "SnowballCapacity" => %{"enum" => ["T50", "T80", "T100", "NoPreference"], "type" => "string"}, "ClusterState" => %{"enum" => ["AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"], "type" => "string"}, "GetJobUnlockCodeRequest" => %{"members" => %{"JobId" => %{"shape" => "JobId"}}, "required" => ["JobId"], "type" => "structure"}, "String" => %{"min" => 1, "type" => "string"}, "Boolean" => %{"type" => "boolean"}, "InvalidInputCombinationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "Shipment" => %{"members" => %{"Status" => %{"shape" => "String"}, "TrackingNumber" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeAddressesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ListLimit"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeAddressesResult" => %{"members" => %{"Addresses" => %{"shape" => "AddressList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidAddressException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "GetJobUnlockCodeResult" => %{"members" => %{"UnlockCode" => %{"shape" => "String"}}, "type" => "structure"}, "CancelJobRequest" => %{"members" => %{"JobId" => %{"shape" => "JobId"}}, "required" => ["JobId"], "type" => "structure"}, "DescribeJobRequest" => %{"members" => %{"JobId" => %{"shape" => "JobId"}}, "required" => ["JobId"], "type" => "structure"}, "ListClusterJobsRequest" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "MaxResults" => %{"shape" => "ListLimit"}, "NextToken" => %{"shape" => "String"}}, "required" => ["ClusterId"], "type" => "structure"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "ListClusterJobsResult" => %{"members" => %{"JobListEntries" => %{"shape" => "JobListEntryList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ClusterLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "EventTriggerDefinitionList" => %{"member" => %{"shape" => "EventTriggerDefinition"}, "type" => "list"}, "GetJobManifestRequest" => %{"members" => %{"JobId" => %{"shape" => "JobId"}}, "required" => ["JobId"], "type" => "structure"}, "ShippingOption" => %{"enum" => ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"], "type" => "string"}, "S3ResourceList" => %{"member" => %{"shape" => "S3Resource"}, "type" => "list"}, "ListClustersResult" => %{"members" => %{"ClusterListEntries" => %{"shape" => "ClusterListEntryList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DataTransfer" => %{"members" => %{"BytesTransferred" => %{"shape" => "Long"}, "ObjectsTransferred" => %{"shape" => "Long"}, "TotalBytes" => %{"shape" => "Long"}, "TotalObjects" => %{"shape" => "Long"}}, "type" => "structure"}, "RoleARN" => %{"max" => 255, "pattern" => "arn:aws.*:iam::[0-9]{12}:role/.*", "type" => "string"}, "GetSnowballUsageResult" => %{"members" => %{"SnowballLimit" => %{"shape" => "Integer"}, "SnowballsInUse" => %{"shape" => "Integer"}}, "type" => "structure"}, "CreateClusterRequest" => %{"members" => %{"AddressId" => %{"shape" => "AddressId"}, "Description" => %{"shape" => "String"}, "ForwardingAddressId" => %{"shape" => "AddressId"}, "JobType" => %{"shape" => "JobType"}, "KmsKeyARN" => %{"shape" => "KmsKeyARN"}, "Notification" => %{"shape" => "Notification"}, "Resources" => %{"shape" => "JobResource"}, "RoleARN" => %{"shape" => "RoleARN"}, "ShippingOption" => %{"shape" => "ShippingOption"}, "SnowballType" => %{"shape" => "SnowballType"}}, "required" => ["JobType", "Resources", "AddressId", "RoleARN", "ShippingOption"], "type" => "structure"}, "S3Resource" => %{"members" => %{"BucketArn" => %{"shape" => "ResourceARN"}, "KeyRange" => %{"shape" => "KeyRange"}}, "type" => "structure"}, "JobListEntryList" => %{"member" => %{"shape" => "JobListEntry"}, "type" => "list"}, "ClusterId" => %{"max" => 39, "min" => 39, "pattern" => "CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "type" => "string"}, "Address" => %{"members" => %{"AddressId" => %{"shape" => "AddressId"}, "City" => %{"shape" => "String"}, "Company" => %{"shape" => "String"}, "Country" => %{"shape" => "String"}, "IsRestricted" => %{"shape" => "Boolean"}, "Landmark" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "PhoneNumber" => %{"shape" => "String"}, "PostalCode" => %{"shape" => "String"}, "PrefectureOrDistrict" => %{"shape" => "String"}, "StateOrProvince" => %{"shape" => "String"}, "Street1" => %{"shape" => "String"}, "Street2" => %{"shape" => "String"}, "Street3" => %{"shape" => "String"}}, "type" => "structure"}, "ResourceARN" => %{"max" => 255, "type" => "string"}, "UpdateJobRequest" => %{"members" => %{"AddressId" => %{"shape" => "AddressId"}, "Description" => %{"shape" => "String"}, "ForwardingAddressId" => %{"shape" => "AddressId"}, "JobId" => %{"shape" => "JobId"}, "Notification" => %{"shape" => "Notification"}, "Resources" => %{"shape" => "JobResource"}, "RoleARN" => %{"shape" => "RoleARN"}, "ShippingOption" => %{"shape" => "ShippingOption"}, "SnowballCapacityPreference" => %{"shape" => "SnowballCapacity"}}, "required" => ["JobId"], "type" => "structure"}, "JobType" => %{"enum" => ["IMPORT", "EXPORT", "LOCAL_USE"], "type" => "string"}, "GetSnowballUsageRequest" => %{"members" => %{}, "type" => "structure"}, "UpdateClusterResult" => %{"members" => %{}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "CreateJobRequest" => %{"members" => %{"AddressId" => %{"shape" => "AddressId"}, "ClusterId" => %{"shape" => "ClusterId"}, "Description" => %{"shape" => "String"}, "ForwardingAddressId" => %{"shape" => "AddressId"}, "JobType" => %{"shape" => "JobType"}, "KmsKeyARN" => %{"shape" => "KmsKeyARN"}, "Notification" => %{"shape" => "Notification"}, "Resources" => %{"shape" => "JobResource"}, "RoleARN" => %{"shape" => "RoleARN"}, "ShippingOption" => %{"shape" => "ShippingOption"}, "SnowballCapacityPreference" => %{"shape" => "SnowballCapacity"}, "SnowballType" => %{"shape" => "SnowballType"}}, "type" => "structure"}, "KMSRequestFailedException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "EventTriggerDefinition" => %{"members" => %{"EventResourceARN" => %{"shape" => "ResourceARN"}}, "type" => "structure"}, "DescribeClusterResult" => %{"members" => %{"ClusterMetadata" => %{"shape" => "ClusterMetadata"}}, "type" => "structure"}, "JobListEntry" => %{"members" => %{"CreationDate" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}, "IsMaster" => %{"shape" => "Boolean"}, "JobId" => %{"shape" => "String"}, "JobState" => %{"shape" => "JobState"}, "JobType" => %{"shape" => "JobType"}, "SnowballType" => %{"shape" => "SnowballType"}}, "type" => "structure"}, "Notification" => %{"members" => %{"JobStatesToNotify" => %{"shape" => "JobStateList"}, "NotifyAll" => %{"shape" => "Boolean"}, "SnsTopicARN" => %{"shape" => "SnsTopicARN"}}, "type" => "structure"}, "ListClustersRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ListLimit"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "KeyRange" => %{"members" => %{"BeginMarker" => %{"shape" => "String"}, "EndMarker" => %{"shape" => "String"}}, "type" => "structure"}, "CancelClusterRequest" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}}, "required" => ["ClusterId"], "type" => "structure"}, "Long" => %{"type" => "long"}, "JobStateList" => %{"member" => %{"shape" => "JobState"}, "type" => "list"}, "DescribeJobResult" => %{"members" => %{"JobMetadata" => %{"shape" => "JobMetadata"}, "SubJobMetadata" => %{"shape" => "JobMetadataList"}}, "type" => "structure"}, "AddressList" => %{"member" => %{"shape" => "Address"}, "type" => "list"}, "JobResource" => %{"members" => %{"LambdaResources" => %{"shape" => "LambdaResourceList"}, "S3Resources" => %{"shape" => "S3ResourceList"}}, "type" => "structure"}, "DescribeClusterRequest" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}}, "required" => ["ClusterId"], "type" => "structure"}, "CreateAddressRequest" => %{"members" => %{"Address" => %{"shape" => "Address"}}, "required" => ["Address"], "type" => "structure"}, "InvalidResourceException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeAddressResult" => %{"members" => %{"Address" => %{"shape" => "Address"}}, "type" => "structure"}, "CreateClusterResult" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}}, "type" => "structure"}, "JobMetadataList" => %{"member" => %{"shape" => "JobMetadata"}, "type" => "list"}, "ListJobsResult" => %{"members" => %{"JobListEntries" => %{"shape" => "JobListEntryList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ListLimit" => %{"max" => 100, "min" => 0, "type" => "integer"}, "JobLogs" => %{"members" => %{"JobCompletionReportURI" => %{"shape" => "String"}, "JobFailureLogURI" => %{"shape" => "String"}, "JobSuccessLogURI" => %{"shape" => "String"}}, "type" => "structure"}, "GetJobManifestResult" => %{"members" => %{"ManifestURI" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidJobStateException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "CancelClusterResult" => %{"members" => %{}, "type" => "structure"}, "CreateAddressResult" => %{"members" => %{"AddressId" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeAddressRequest" => %{"members" => %{"AddressId" => %{"shape" => "AddressId"}}, "required" => ["AddressId"], "type" => "structure"}, "ListJobsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ListLimit"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ShippingDetails" => %{"members" => %{"InboundShipment" => %{"shape" => "Shipment"}, "OutboundShipment" => %{"shape" => "Shipment"}, "ShippingOption" => %{"shape" => "ShippingOption"}}, "type" => "structure"}, "LambdaResource" => %{"members" => %{"EventTriggers" => %{"shape" => "EventTriggerDefinitionList"}, "LambdaArn" => %{"shape" => "ResourceARN"}}, "type" => "structure"}, "UnsupportedAddressException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "LambdaResourceList" => %{"member" => %{"shape" => "LambdaResource"}, "type" => "list"}, "SnowballType" => %{"enum" => ["STANDARD", "EDGE"], "type" => "string"}, "ClusterMetadata" => %{"members" => %{"AddressId" => %{"shape" => "AddressId"}, "ClusterId" => %{"shape" => "String"}, "ClusterState" => %{"shape" => "ClusterState"}, "CreationDate" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}, "ForwardingAddressId" => %{"shape" => "AddressId"}, "JobType" => %{"shape" => "JobType"}, "KmsKeyARN" => %{"shape" => "KmsKeyARN"}, "Notification" => %{"shape" => "Notification"}, "Resources" => %{"shape" => "JobResource"}, "RoleARN" => %{"shape" => "RoleARN"}, "ShippingOption" => %{"shape" => "ShippingOption"}, "SnowballType" => %{"shape" => "SnowballType"}}, "type" => "structure"}, "CancelJobResult" => %{"members" => %{}, "type" => "structure"}, "JobId" => %{"max" => 39, "min" => 39, "pattern" => "(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "type" => "string"}, "Integer" => %{"type" => "integer"}, "KmsKeyARN" => %{"max" => 255, "pattern" => "arn:aws.*:kms:.*:[0-9]{12}:key/.*", "type" => "string"}, "CreateJobResult" => %{"members" => %{"JobId" => %{"shape" => "JobId"}}, "type" => "structure"}, "UpdateClusterRequest" => %{"members" => %{"AddressId" => %{"shape" => "AddressId"}, "ClusterId" => %{"shape" => "ClusterId"}, "Description" => %{"shape" => "String"}, "ForwardingAddressId" => %{"shape" => "AddressId"}, "Notification" => %{"shape" => "Notification"}, "Resources" => %{"shape" => "JobResource"}, "RoleARN" => %{"shape" => "RoleARN"}, "ShippingOption" => %{"shape" => "ShippingOption"}}, "required" => ["ClusterId"], "type" => "structure"}}
  end
end