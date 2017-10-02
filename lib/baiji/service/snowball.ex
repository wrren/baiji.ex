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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelCluster",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelJob",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateAddress",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
    }
  end
  
  @doc """
  Creates an empty cluster. Each cluster supports five nodes. You use the
  `CreateJob` action separately to create the jobs for each of these nodes.
  The cluster does not ship until these five node jobs have been created.
  """
  def create_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateCluster",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateJob",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
    }
  end
  
  @doc """
  Takes an `AddressId` and returns specific details about that address in the
  form of an `Address` object.
  """
  def describe_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAddress",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
    }
  end
  
  @doc """
  Returns a specified number of `ADDRESS` objects. Calling this API in one of
  the US regions will return addresses from the list of all addresses
  associated with this account in all US regions.
  """
  def describe_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAddresses",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
    }
  end
  
  @doc """
  Returns information about a specific cluster including shipping
  information, cluster status, and other important metadata.
  """
  def describe_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCluster",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
    }
  end
  
  @doc """
  Returns information about a specific job including shipping information,
  job status, and other important metadata.
  """
  def describe_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeJob",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetJobManifest",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetJobUnlockCode",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetSnowballUsage",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
    }
  end
  
  @doc """
  Returns an array of `JobListEntry` objects of the specified length. Each
  `JobListEntry` object is for a job in the specified cluster and contains a
  job's state, a job's ID, and other information.
  """
  def list_cluster_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListClusterJobs",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
    }
  end
  
  @doc """
  Returns an array of `ClusterListEntry` objects of the specified length.
  Each `ClusterListEntry` object contains a cluster's state, a cluster's ID,
  and other important status information.
  """
  def list_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListClusters",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListJobs",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateCluster",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
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
      service:        "snowball",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateJob",
      
      target_prefix:  "AWSIESnowballJobManagementService",
      
      type:           :json,
      version:        "2016-06-30",
      method:         :post
    }
  end
  
end