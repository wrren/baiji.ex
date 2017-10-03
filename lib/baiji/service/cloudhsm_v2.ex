defmodule Baiji.CloudHSMV2 do
  @moduledoc """
  For more information about AWS CloudHSM, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/) and the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/).
  """

  @doc """
  Creates a new AWS CloudHSM cluster.
  """
  def create_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateCluster",
      method:           :post,
      input_shape:      "CreateClusterRequest",
      output_shape:     "CreateClusterResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new hardware security module (HSM) in the specified AWS CloudHSM
  cluster.
  """
  def create_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateHsm",
      method:           :post,
      input_shape:      "CreateHsmRequest",
      output_shape:     "CreateHsmResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified AWS CloudHSM cluster. Before you can delete a
  cluster, you must delete all HSMs in the cluster. To see if the cluster
  contains any HSMs, use `DescribeClusters`. To delete an HSM, use
  `DeleteHsm`.
  """
  def delete_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteCluster",
      method:           :post,
      input_shape:      "DeleteClusterRequest",
      output_shape:     "DeleteClusterResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified HSM. To specify an HSM, you can use its identifier
  (ID), the IP address of the HSM's elastic network interface (ENI), or the
  ID of the HSM's ENI. You need to specify only one of these values. To find
  these values, use `DescribeClusters`.
  """
  def delete_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteHsm",
      method:           :post,
      input_shape:      "DeleteHsmRequest",
      output_shape:     "DeleteHsmResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about backups of AWS CloudHSM clusters.

  This is a paginated operation, which means that each response might contain
  only a subset of all the backups. When the response contains only a subset
  of backups, it includes a `NextToken` value. Use this value in a subsequent
  `DescribeBackups` request to get more backups. When you receive a response
  with no `NextToken` (or an empty or null value), that means there are no
  more backups to get.
  """
  def describe_backups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeBackups",
      method:           :post,
      input_shape:      "DescribeBackupsRequest",
      output_shape:     "DescribeBackupsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about AWS CloudHSM clusters.

  This is a paginated operation, which means that each response might contain
  only a subset of all the clusters. When the response contains only a subset
  of clusters, it includes a `NextToken` value. Use this value in a
  subsequent `DescribeClusters` request to get more clusters. When you
  receive a response with no `NextToken` (or an empty or null value), that
  means there are no more clusters to get.
  """
  def describe_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeClusters",
      method:           :post,
      input_shape:      "DescribeClustersRequest",
      output_shape:     "DescribeClustersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Claims an AWS CloudHSM cluster by submitting the cluster certificate issued
  by your issuing certificate authority (CA) and the CA's root certificate.
  Before you can claim a cluster, you must sign the cluster's certificate
  signing request (CSR) with your issuing CA. To get the cluster's CSR, use
  `DescribeClusters`.
  """
  def initialize_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "InitializeCluster",
      method:           :post,
      input_shape:      "InitializeClusterRequest",
      output_shape:     "InitializeClusterResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a list of tags for the specified AWS CloudHSM cluster.

  This is a paginated operation, which means that each response might contain
  only a subset of all the tags. When the response contains only a subset of
  tags, it includes a `NextToken` value. Use this value in a subsequent
  `ListTags` request to get more tags. When you receive a response with no
  `NextToken` (or an empty or null value), that means there are no more tags
  to get.
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTags",
      method:           :post,
      input_shape:      "ListTagsRequest",
      output_shape:     "ListTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "TagResource",
      method:           :post,
      input_shape:      "TagResourceRequest",
      output_shape:     "TagResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified tag or tags from the specified AWS CloudHSM cluster.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UntagResource",
      method:           :post,
      input_shape:      "UntagResourceRequest",
      output_shape:     "UntagResourceResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "cloudhsmv2",
      target_prefix:    "BaldrApiService",
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"SubnetIds" => %{"max" => 10, "member" => %{"shape" => "SubnetId"}, "min" => 1, "type" => "list"}, "EniId" => %{"pattern" => "eni-[0-9a-fA-F]{8}", "type" => "string"}, "HsmState" => %{"enum" => ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"], "type" => "string"}, "TagKeyList" => %{"max" => 50, "member" => %{"shape" => "TagKey"}, "min" => 1, "type" => "list"}, "Field" => %{"pattern" => "[a-zA-Z0-9_-]+", "type" => "string"}, "Hsms" => %{"member" => %{"shape" => "Hsm"}, "type" => "list"}, "ClusterState" => %{"enum" => ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"], "type" => "string"}, "String" => %{"type" => "string"}, "DeleteClusterResponse" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ListTagsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "TagList" => %{"shape" => "TagList"}}, "required" => ["TagList"], "type" => "structure"}, "DescribeClustersRequest" => %{"members" => %{"Filters" => %{"shape" => "Filters"}, "MaxResults" => %{"shape" => "MaxSize"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "HsmType" => %{"pattern" => "(hsm1\\.medium)", "type" => "string"}, "DeleteClusterRequest" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}}, "required" => ["ClusterId"], "type" => "structure"}, "PreCoPassword" => %{"max" => 32, "min" => 7, "type" => "string"}, "SecurityGroup" => %{"pattern" => "sg-[0-9a-fA-F]", "type" => "string"}, "BackupState" => %{"enum" => ["CREATE_IN_PROGRESS", "READY", "DELETED"], "type" => "string"}, "CloudHsmServiceException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Strings" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "CloudHsmResourceNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "CloudHsmAccessDeniedException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeleteHsmResponse" => %{"members" => %{"HsmId" => %{"shape" => "HsmId"}}, "type" => "structure"}, "StateMessage" => %{"max" => 300, "pattern" => ".*", "type" => "string"}, "Certificates" => %{"members" => %{"AwsHardwareCertificate" => %{"shape" => "Cert"}, "ClusterCertificate" => %{"shape" => "Cert"}, "ClusterCsr" => %{"shape" => "Cert"}, "HsmCertificate" => %{"shape" => "Cert"}, "ManufacturerHardwareCertificate" => %{"shape" => "Cert"}}, "type" => "structure"}, "ListTagsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxSize"}, "NextToken" => %{"shape" => "NextToken"}, "ResourceId" => %{"shape" => "ClusterId"}}, "required" => ["ResourceId"], "type" => "structure"}, "BackupPolicy" => %{"enum" => ["DEFAULT"], "type" => "string"}, "CreateClusterRequest" => %{"members" => %{"HsmType" => %{"shape" => "HsmType"}, "SourceBackupId" => %{"shape" => "BackupId"}, "SubnetIds" => %{"shape" => "SubnetIds"}}, "required" => ["SubnetIds", "HsmType"], "type" => "structure"}, "Hsm" => %{"members" => %{"AvailabilityZone" => %{"shape" => "ExternalAz"}, "ClusterId" => %{"shape" => "ClusterId"}, "EniId" => %{"shape" => "EniId"}, "EniIp" => %{"shape" => "IpAddress"}, "HsmId" => %{"shape" => "HsmId"}, "State" => %{"shape" => "HsmState"}, "StateMessage" => %{"shape" => "String"}, "SubnetId" => %{"shape" => "SubnetId"}}, "required" => ["HsmId"], "type" => "structure"}, "VpcId" => %{"pattern" => "vpc-[0-9a-fA-F]", "type" => "string"}, "ClusterId" => %{"pattern" => "cluster-[2-7a-zA-Z]{11,16}", "type" => "string"}, "ExternalAz" => %{"pattern" => "[a-z]{2}(-(gov|isob|iso))?-(east|west|north|south|central){1,2}-\\d[a-z]", "type" => "string"}, "errorMessage" => %{"type" => "string"}, "MaxSize" => %{"max" => 100, "min" => 1, "type" => "integer"}, "UntagResourceRequest" => %{"members" => %{"ResourceId" => %{"shape" => "ClusterId"}, "TagKeyList" => %{"shape" => "TagKeyList"}}, "required" => ["ResourceId", "TagKeyList"], "type" => "structure"}, "CloudHsmInvalidRequestException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "BackupId" => %{"pattern" => "backup-[2-7a-zA-Z]{11,16}", "type" => "string"}, "DeleteHsmRequest" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "EniId" => %{"shape" => "EniId"}, "EniIp" => %{"shape" => "IpAddress"}, "HsmId" => %{"shape" => "HsmId"}}, "required" => ["ClusterId"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "ExternalSubnetMapping" => %{"key" => %{"shape" => "ExternalAz"}, "type" => "map", "value" => %{"shape" => "SubnetId"}}, "InitializeClusterRequest" => %{"members" => %{"ClusterId" => %{"shape" => "ClusterId"}, "SignedCert" => %{"shape" => "Cert"}, "TrustAnchor" => %{"shape" => "Cert"}}, "required" => ["ClusterId", "SignedCert", "TrustAnchor"], "type" => "structure"}, "TagList" => %{"max" => 50, "member" => %{"shape" => "Tag"}, "min" => 1, "type" => "list"}, "CreateClusterResponse" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "DescribeBackupsResponse" => %{"members" => %{"Backups" => %{"shape" => "Backups"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "TagValue" => %{"max" => 256, "min" => 0, "type" => "string"}, "Backups" => %{"member" => %{"shape" => "Backup"}, "type" => "list"}, "UntagResourceResponse" => %{"members" => %{}, "type" => "structure"}, "Filters" => %{"key" => %{"shape" => "Field"}, "type" => "map", "value" => %{"shape" => "Strings"}}, "TagResourceRequest" => %{"members" => %{"ResourceId" => %{"shape" => "ClusterId"}, "TagList" => %{"shape" => "TagList"}}, "required" => ["ResourceId", "TagList"], "type" => "structure"}, "HsmId" => %{"pattern" => "hsm-[2-7a-zA-Z]{11,16}", "type" => "string"}, "SubnetId" => %{"pattern" => "subnet-[0-9a-fA-F]{8}", "type" => "string"}, "CloudHsmInternalFailureException" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Backup" => %{"members" => %{"BackupId" => %{"shape" => "BackupId"}, "BackupState" => %{"shape" => "BackupState"}, "ClusterId" => %{"shape" => "ClusterId"}, "CreateTimestamp" => %{"shape" => "Timestamp"}}, "required" => ["BackupId"], "type" => "structure"}, "IpAddress" => %{"pattern" => "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}", "type" => "string"}, "CreateHsmResponse" => %{"members" => %{"Hsm" => %{"shape" => "Hsm"}}, "type" => "structure"}, "CreateHsmRequest" => %{"members" => %{"AvailabilityZone" => %{"shape" => "ExternalAz"}, "ClusterId" => %{"shape" => "ClusterId"}, "IpAddress" => %{"shape" => "IpAddress"}}, "required" => ["ClusterId", "AvailabilityZone"], "type" => "structure"}, "Cluster" => %{"members" => %{"BackupPolicy" => %{"shape" => "BackupPolicy"}, "Certificates" => %{"shape" => "Certificates"}, "ClusterId" => %{"shape" => "ClusterId"}, "CreateTimestamp" => %{"shape" => "Timestamp"}, "HsmType" => %{"shape" => "HsmType"}, "Hsms" => %{"shape" => "Hsms"}, "PreCoPassword" => %{"shape" => "PreCoPassword"}, "SecurityGroup" => %{"shape" => "SecurityGroup"}, "SourceBackupId" => %{"shape" => "BackupId"}, "State" => %{"shape" => "ClusterState"}, "StateMessage" => %{"shape" => "StateMessage"}, "SubnetMapping" => %{"shape" => "ExternalSubnetMapping"}, "VpcId" => %{"shape" => "VpcId"}}, "type" => "structure"}, "DescribeBackupsRequest" => %{"members" => %{"Filters" => %{"shape" => "Filters"}, "MaxResults" => %{"shape" => "MaxSize"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "InitializeClusterResponse" => %{"members" => %{"State" => %{"shape" => "ClusterState"}, "StateMessage" => %{"shape" => "StateMessage"}}, "type" => "structure"}, "TagResourceResponse" => %{"members" => %{}, "type" => "structure"}, "Clusters" => %{"member" => %{"shape" => "Cluster"}, "type" => "list"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "Cert" => %{"max" => 5000, "pattern" => "[a-zA-Z0-9+-/=\\s]*", "type" => "string"}, "NextToken" => %{"max" => 256, "pattern" => ".*", "type" => "string"}, "DescribeClustersResponse" => %{"members" => %{"Clusters" => %{"shape" => "Clusters"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}}
  end
end