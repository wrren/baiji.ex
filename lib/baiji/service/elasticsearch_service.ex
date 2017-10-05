defmodule Baiji.ElasticsearchService do
  @moduledoc """
  Amazon Elasticsearch Configuration Service

  Use the Amazon Elasticsearch configuration API to create, configure, and
  manage Elasticsearch domains.

  The endpoint for configuration service requests is region-specific:
  es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
  current list of supported regions and endpoints, see [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions"
  target="_blank).
  """

  @doc """
  Attaches tags to an existing Elasticsearch domain. Tags are a set of
  case-sensitive key value pairs. An Elasticsearch domain may have up to 10
  tags. See [ Tagging Amazon Elasticsearch Service Domains for more
  information.](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging"
  target="_blank)
  """
  def add_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/tags",
      input:            input,
      options:          options,
      action:           "AddTags",
      method:           :post,
      input_shape:      "AddTagsRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new Elasticsearch domain. For more information, see [Creating
  Elasticsearch
  Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains"
  target="_blank) in the *Amazon Elasticsearch Service Developer Guide*.
  """
  def create_elasticsearch_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/domain",
      input:            input,
      options:          options,
      action:           "CreateElasticsearchDomain",
      method:           :post,
      input_shape:      "CreateElasticsearchDomainRequest",
      output_shape:     "CreateElasticsearchDomainResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Permanently deletes the specified Elasticsearch domain and all of its data.
  Once a domain is deleted, it cannot be recovered.
  """
  def delete_elasticsearch_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/domain/{DomainName}",
      input:            input,
      options:          options,
      action:           "DeleteElasticsearchDomain",
      method:           :delete,
      input_shape:      "DeleteElasticsearchDomainRequest",
      output_shape:     "DeleteElasticsearchDomainResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns domain configuration information about the specified Elasticsearch
  domain, including the domain ID, domain endpoint, and domain ARN.
  """
  def describe_elasticsearch_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/domain/{DomainName}",
      input:            input,
      options:          options,
      action:           "DescribeElasticsearchDomain",
      method:           :get,
      input_shape:      "DescribeElasticsearchDomainRequest",
      output_shape:     "DescribeElasticsearchDomainResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provides cluster configuration information about the specified
  Elasticsearch domain, such as the state, creation date, update version, and
  update date for cluster options.
  """
  def describe_elasticsearch_domain_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/domain/{DomainName}/config",
      input:            input,
      options:          options,
      action:           "DescribeElasticsearchDomainConfig",
      method:           :get,
      input_shape:      "DescribeElasticsearchDomainConfigRequest",
      output_shape:     "DescribeElasticsearchDomainConfigResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns domain configuration information about the specified Elasticsearch
  domains, including the domain ID, domain endpoint, and domain ARN.
  """
  def describe_elasticsearch_domains(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/domain-info",
      input:            input,
      options:          options,
      action:           "DescribeElasticsearchDomains",
      method:           :post,
      input_shape:      "DescribeElasticsearchDomainsRequest",
      output_shape:     "DescribeElasticsearchDomainsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describe Elasticsearch Limits for a given InstanceType and
  ElasticsearchVersion. When modifying existing Domain, specify the `
  `DomainName` ` to know what Limits are supported for modifying.
  """
  def describe_elasticsearch_instance_type_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}",
      input:            input,
      options:          options,
      action:           "DescribeElasticsearchInstanceTypeLimits",
      method:           :get,
      input_shape:      "DescribeElasticsearchInstanceTypeLimitsRequest",
      output_shape:     "DescribeElasticsearchInstanceTypeLimitsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the name of all Elasticsearch domains owned by the current user's
  account.
  """
  def list_domain_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/domain",
      input:            input,
      options:          options,
      action:           "ListDomainNames",
      method:           :get,
      input_shape:      "",
      output_shape:     "ListDomainNamesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  List all Elasticsearch instance types that are supported for given
  ElasticsearchVersion
  """
  def list_elasticsearch_instance_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}",
      input:            input,
      options:          options,
      action:           "ListElasticsearchInstanceTypes",
      method:           :get,
      input_shape:      "ListElasticsearchInstanceTypesRequest",
      output_shape:     "ListElasticsearchInstanceTypesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  List all supported Elasticsearch versions
  """
  def list_elasticsearch_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/versions",
      input:            input,
      options:          options,
      action:           "ListElasticsearchVersions",
      method:           :get,
      input_shape:      "ListElasticsearchVersionsRequest",
      output_shape:     "ListElasticsearchVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns all tags for the given Elasticsearch domain.
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/tags/",
      input:            input,
      options:          options,
      action:           "ListTags",
      method:           :get,
      input_shape:      "ListTagsRequest",
      output_shape:     "ListTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified set of tags from the specified Elasticsearch domain.
  """
  def remove_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/tags-removal",
      input:            input,
      options:          options,
      action:           "RemoveTags",
      method:           :post,
      input_shape:      "RemoveTagsRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the cluster configuration of the specified Elasticsearch domain,
  setting as setting the instance type and the number of instances.
  """
  def update_elasticsearch_domain_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-01-01/es/domain/{DomainName}/config",
      input:            input,
      options:          options,
      action:           "UpdateElasticsearchDomainConfig",
      method:           :post,
      input_shape:      "UpdateElasticsearchDomainConfigRequest",
      output_shape:     "UpdateElasticsearchDomainConfigResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "es",
      endpoint_prefix:  "es",
      type:             :rest_json,
      version:          "2015-01-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"ListElasticsearchVersionsRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "NextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "type" => "structure"}, "ListElasticsearchVersionsResponse" => %{"members" => %{"ElasticsearchVersions" => %{"shape" => "ElasticsearchVersionList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "AccessPoliciesStatus" => %{"members" => %{"Options" => %{"shape" => "PolicyDocument"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "UpdateElasticsearchDomainConfigResponse" => %{"members" => %{"DomainConfig" => %{"shape" => "ElasticsearchDomainConfig"}}, "required" => ["DomainConfig"], "type" => "structure"}, "InvalidTypeException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateElasticsearchDomainResponse" => %{"members" => %{"DomainStatus" => %{"shape" => "ElasticsearchDomainStatus"}}, "type" => "structure"}, "ElasticsearchVersionString" => %{"type" => "string"}, "DomainNameList" => %{"member" => %{"shape" => "DomainName"}, "type" => "list"}, "DescribeElasticsearchDomainsRequest" => %{"members" => %{"DomainNames" => %{"shape" => "DomainNameList"}}, "required" => ["DomainNames"], "type" => "structure"}, "ElasticsearchVersionStatus" => %{"members" => %{"Options" => %{"shape" => "ElasticsearchVersionString"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "DescribeElasticsearchDomainRequest" => %{"members" => %{"DomainName" => %{"location" => "uri", "locationName" => "DomainName", "shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "String" => %{"type" => "string"}, "LimitValue" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "ErrorMessage" => %{"type" => "string"}, "EBSOptions" => %{"members" => %{"EBSEnabled" => %{"shape" => "Boolean"}, "Iops" => %{"shape" => "IntegerClass"}, "VolumeSize" => %{"shape" => "IntegerClass"}, "VolumeType" => %{"shape" => "VolumeType"}}, "type" => "structure"}, "UpdateTimestamp" => %{"type" => "timestamp"}, "ListTagsResponse" => %{"members" => %{"TagList" => %{"shape" => "TagList"}}, "type" => "structure"}, "DomainInfoList" => %{"member" => %{"shape" => "DomainInfo"}, "type" => "list"}, "InternalException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "members" => %{}, "type" => "structure"}, "StorageTypeList" => %{"member" => %{"shape" => "StorageType"}, "type" => "list"}, "RemoveTagsRequest" => %{"members" => %{"ARN" => %{"shape" => "ARN"}, "TagKeys" => %{"shape" => "StringList"}}, "required" => ["ARN", "TagKeys"], "type" => "structure"}, "ARN" => %{"type" => "string"}, "StringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "StorageTypeLimitList" => %{"member" => %{"shape" => "StorageTypeLimit"}, "type" => "list"}, "DomainId" => %{"max" => 64, "min" => 1, "type" => "string"}, "DescribeElasticsearchInstanceTypeLimitsRequest" => %{"members" => %{"DomainName" => %{"location" => "querystring", "locationName" => "domainName", "shape" => "DomainName"}, "ElasticsearchVersion" => %{"location" => "uri", "locationName" => "ElasticsearchVersion", "shape" => "ElasticsearchVersionString"}, "InstanceType" => %{"location" => "uri", "locationName" => "InstanceType", "shape" => "ESPartitionInstanceType"}}, "required" => ["InstanceType", "ElasticsearchVersion"], "type" => "structure"}, "ElasticsearchClusterConfig" => %{"members" => %{"DedicatedMasterCount" => %{"shape" => "IntegerClass"}, "DedicatedMasterEnabled" => %{"shape" => "Boolean"}, "DedicatedMasterType" => %{"shape" => "ESPartitionInstanceType"}, "InstanceCount" => %{"shape" => "IntegerClass"}, "InstanceType" => %{"shape" => "ESPartitionInstanceType"}, "ZoneAwarenessEnabled" => %{"shape" => "Boolean"}}, "type" => "structure"}, "StorageTypeLimit" => %{"members" => %{"LimitName" => %{"shape" => "LimitName"}, "LimitValues" => %{"shape" => "LimitValueList"}}, "type" => "structure"}, "CreateElasticsearchDomainRequest" => %{"members" => %{"AccessPolicies" => %{"shape" => "PolicyDocument"}, "AdvancedOptions" => %{"shape" => "AdvancedOptions"}, "DomainName" => %{"shape" => "DomainName"}, "EBSOptions" => %{"shape" => "EBSOptions"}, "ElasticsearchClusterConfig" => %{"shape" => "ElasticsearchClusterConfig"}, "ElasticsearchVersion" => %{"shape" => "ElasticsearchVersionString"}, "SnapshotOptions" => %{"shape" => "SnapshotOptions"}}, "required" => ["DomainName"], "type" => "structure"}, "AdditionalLimit" => %{"members" => %{"LimitName" => %{"shape" => "LimitName"}, "LimitValues" => %{"shape" => "LimitValueList"}}, "type" => "structure"}, "ListTagsRequest" => %{"members" => %{"ARN" => %{"location" => "querystring", "locationName" => "arn", "shape" => "ARN"}}, "required" => ["ARN"], "type" => "structure"}, "ElasticsearchVersionList" => %{"member" => %{"shape" => "ElasticsearchVersionString"}, "type" => "list"}, "AdditionalLimitList" => %{"member" => %{"shape" => "AdditionalLimit"}, "type" => "list"}, "LimitsByRole" => %{"key" => %{"shape" => "InstanceRole"}, "type" => "map", "value" => %{"shape" => "Limits"}}, "Limits" => %{"members" => %{"AdditionalLimits" => %{"shape" => "AdditionalLimitList"}, "InstanceLimits" => %{"shape" => "InstanceLimits"}, "StorageTypes" => %{"shape" => "StorageTypeList"}}, "type" => "structure"}, "StorageType" => %{"members" => %{"StorageSubTypeName" => %{"shape" => "StorageSubTypeName"}, "StorageTypeLimits" => %{"shape" => "StorageTypeLimitList"}, "StorageTypeName" => %{"shape" => "StorageTypeName"}}, "type" => "structure"}, "LimitValueList" => %{"member" => %{"shape" => "LimitValue"}, "type" => "list"}, "DomainName" => %{"max" => 28, "min" => 3, "pattern" => "[a-z][a-z0-9\\-]+", "type" => "string"}, "StorageSubTypeName" => %{"type" => "string"}, "ElasticsearchDomainStatusList" => %{"member" => %{"shape" => "ElasticsearchDomainStatus"}, "type" => "list"}, "MaximumInstanceCount" => %{"type" => "integer"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "DescribeElasticsearchDomainsResponse" => %{"members" => %{"DomainStatusList" => %{"shape" => "ElasticsearchDomainStatusList"}}, "required" => ["DomainStatusList"], "type" => "structure"}, "EBSOptionsStatus" => %{"members" => %{"Options" => %{"shape" => "EBSOptions"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "AdvancedOptions" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "DescribeElasticsearchDomainResponse" => %{"members" => %{"DomainStatus" => %{"shape" => "ElasticsearchDomainStatus"}}, "required" => ["DomainStatus"], "type" => "structure"}, "InstanceCountLimits" => %{"members" => %{"MaximumInstanceCount" => %{"shape" => "MaximumInstanceCount"}, "MinimumInstanceCount" => %{"shape" => "MinimumInstanceCount"}}, "type" => "structure"}, "ElasticsearchDomainConfig" => %{"members" => %{"AccessPolicies" => %{"shape" => "AccessPoliciesStatus"}, "AdvancedOptions" => %{"shape" => "AdvancedOptionsStatus"}, "EBSOptions" => %{"shape" => "EBSOptionsStatus"}, "ElasticsearchClusterConfig" => %{"shape" => "ElasticsearchClusterConfigStatus"}, "ElasticsearchVersion" => %{"shape" => "ElasticsearchVersionStatus"}, "SnapshotOptions" => %{"shape" => "SnapshotOptionsStatus"}}, "type" => "structure"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "DisabledOperationException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{}, "type" => "structure"}, "MaxResults" => %{"max" => 100, "type" => "integer"}, "UpdateElasticsearchDomainConfigRequest" => %{"members" => %{"AccessPolicies" => %{"shape" => "PolicyDocument"}, "AdvancedOptions" => %{"shape" => "AdvancedOptions"}, "DomainName" => %{"location" => "uri", "locationName" => "DomainName", "shape" => "DomainName"}, "EBSOptions" => %{"shape" => "EBSOptions"}, "ElasticsearchClusterConfig" => %{"shape" => "ElasticsearchClusterConfig"}, "SnapshotOptions" => %{"shape" => "SnapshotOptions"}}, "required" => ["DomainName"], "type" => "structure"}, "TagValue" => %{"max" => 256, "min" => 0, "type" => "string"}, "StorageTypeName" => %{"type" => "string"}, "ServiceUrl" => %{"type" => "string"}, "ValidationException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeElasticsearchInstanceTypeLimitsResponse" => %{"members" => %{"LimitsByRole" => %{"shape" => "LimitsByRole"}}, "type" => "structure"}, "ElasticsearchInstanceTypeList" => %{"member" => %{"shape" => "ESPartitionInstanceType"}, "type" => "list"}, "ListElasticsearchInstanceTypesResponse" => %{"members" => %{"ElasticsearchInstanceTypes" => %{"shape" => "ElasticsearchInstanceTypeList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "OptionState" => %{"enum" => ["RequiresIndexDocuments", "Processing", "Active"], "type" => "string"}, "UIntValue" => %{"min" => 0, "type" => "integer"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{}, "type" => "structure"}, "SnapshotOptions" => %{"members" => %{"AutomatedSnapshotStartHour" => %{"shape" => "IntegerClass"}}, "type" => "structure"}, "ElasticsearchClusterConfigStatus" => %{"members" => %{"Options" => %{"shape" => "ElasticsearchClusterConfig"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "ResourceNotFoundException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{}, "type" => "structure"}, "LimitName" => %{"type" => "string"}, "ESPartitionInstanceType" => %{"enum" => ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch"], "type" => "string"}, "DeleteElasticsearchDomainResponse" => %{"members" => %{"DomainStatus" => %{"shape" => "ElasticsearchDomainStatus"}}, "type" => "structure"}, "PolicyDocument" => %{"type" => "string"}, "InstanceLimits" => %{"members" => %{"InstanceCountLimits" => %{"shape" => "InstanceCountLimits"}}, "type" => "structure"}, "DomainInfo" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "type" => "structure"}, "AdvancedOptionsStatus" => %{"members" => %{"Options" => %{"shape" => "AdvancedOptions"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "ElasticsearchDomainStatus" => %{"members" => %{"ARN" => %{"shape" => "ARN"}, "AccessPolicies" => %{"shape" => "PolicyDocument"}, "AdvancedOptions" => %{"shape" => "AdvancedOptions"}, "Created" => %{"shape" => "Boolean"}, "Deleted" => %{"shape" => "Boolean"}, "DomainId" => %{"shape" => "DomainId"}, "DomainName" => %{"shape" => "DomainName"}, "EBSOptions" => %{"shape" => "EBSOptions"}, "ElasticsearchClusterConfig" => %{"shape" => "ElasticsearchClusterConfig"}, "ElasticsearchVersion" => %{"shape" => "ElasticsearchVersionString"}, "Endpoint" => %{"shape" => "ServiceUrl"}, "Processing" => %{"shape" => "Boolean"}, "SnapshotOptions" => %{"shape" => "SnapshotOptions"}}, "required" => ["DomainId", "DomainName", "ARN", "ElasticsearchClusterConfig"], "type" => "structure"}, "ListDomainNamesResponse" => %{"members" => %{"DomainNames" => %{"shape" => "DomainInfoList"}}, "type" => "structure"}, "BaseException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "SnapshotOptionsStatus" => %{"members" => %{"Options" => %{"shape" => "SnapshotOptions"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "InstanceRole" => %{"type" => "string"}, "DeleteElasticsearchDomainRequest" => %{"members" => %{"DomainName" => %{"location" => "uri", "locationName" => "DomainName", "shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "AddTagsRequest" => %{"members" => %{"ARN" => %{"shape" => "ARN"}, "TagList" => %{"shape" => "TagList"}}, "required" => ["ARN", "TagList"], "type" => "structure"}, "IntegerClass" => %{"type" => "integer"}, "VolumeType" => %{"enum" => ["standard", "gp2", "io1"], "type" => "string"}, "TagKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "DescribeElasticsearchDomainConfigRequest" => %{"members" => %{"DomainName" => %{"location" => "uri", "locationName" => "DomainName", "shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "MinimumInstanceCount" => %{"type" => "integer"}, "ResourceAlreadyExistsException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{}, "type" => "structure"}, "ListElasticsearchInstanceTypesRequest" => %{"members" => %{"DomainName" => %{"location" => "querystring", "locationName" => "domainName", "shape" => "DomainName"}, "ElasticsearchVersion" => %{"location" => "uri", "locationName" => "ElasticsearchVersion", "shape" => "ElasticsearchVersionString"}, "MaxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "NextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "required" => ["ElasticsearchVersion"], "type" => "structure"}, "DescribeElasticsearchDomainConfigResponse" => %{"members" => %{"DomainConfig" => %{"shape" => "ElasticsearchDomainConfig"}}, "required" => ["DomainConfig"], "type" => "structure"}, "OptionStatus" => %{"members" => %{"CreationDate" => %{"shape" => "UpdateTimestamp"}, "PendingDeletion" => %{"shape" => "Boolean"}, "State" => %{"shape" => "OptionState"}, "UpdateDate" => %{"shape" => "UpdateTimestamp"}, "UpdateVersion" => %{"shape" => "UIntValue"}}, "required" => ["CreationDate", "UpdateDate", "State"], "type" => "structure"}, "NextToken" => %{"type" => "string"}}
  end
end