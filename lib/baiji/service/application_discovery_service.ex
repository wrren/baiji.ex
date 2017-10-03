defmodule Baiji.ApplicationDiscoveryService do
  @moduledoc """
  AWS Application Discovery Service

  AWS Application Discovery Service helps you plan application migration
  projects by automatically identifying servers, virtual machines (VMs),
  software, and software dependencies running in your on-premises data
  centers. Application Discovery Service also collects application
  performance data, which can help you assess the outcome of your migration.
  The data collected by Application Discovery Service is securely retained in
  an Amazon-hosted and managed database in the cloud. You can export the data
  as a CSV or XML file into your preferred visualization tool or
  cloud-migration solution to plan your migration. For more information, see
  the Application Discovery Service
  [FAQ](http://aws.amazon.com/application-discovery/faqs/).

  Application Discovery Service offers two modes of operation.

  <ul> <li> **Agentless discovery** mode is recommended for environments that
  use VMware vCenter Server. This mode doesn't require you to install an
  agent on each host. Agentless discovery gathers server information
  regardless of the operating systems, which minimizes the time required for
  initial on-premises infrastructure assessment. Agentless discovery doesn't
  collect information about software and software dependencies. It also
  doesn't work in non-VMware environments. We recommend that you use
  agent-based discovery for non-VMware environments and if you want to
  collect information about software and software dependencies. You can also
  run agent-based and agentless discovery simultaneously. Use agentless
  discovery to quickly complete the initial infrastructure assessment and
  then install agents on select hosts to gather information about software
  and software dependencies.

  </li> <li> **Agent-based discovery** mode collects a richer set of data
  than agentless discovery by using Amazon software, the AWS Application
  Discovery Agent, which you install on one or more hosts in your data
  center. The agent captures infrastructure and application information,
  including an inventory of installed software applications, system and
  process performance, resource utilization, and network dependencies between
  workloads. The information collected by agents is secured at rest and in
  transit to the Application Discovery Service database in the cloud.

  </li> </ul> Application Discovery Service integrates with application
  discovery solutions from AWS Partner Network (APN) partners. Third-party
  application discovery tools can query Application Discovery Service and
  write to the Application Discovery Service database using a public API. You
  can then import the data into either a visualization tool or
  cloud-migration solution.

  <important> Application Discovery Service doesn't gather sensitive
  information. All data is handled according to the [AWS Privacy
  Policy](http://aws.amazon.com/privacy/). You can operate Application
  Discovery Service using offline mode to inspect collected data before it is
  shared with the service.

  </important> Your AWS account must be granted access to Application
  Discovery Service, a process called *whitelisting*. This is true for AWS
  partners and customers alike. To request access, sign up for AWS
  Application Discovery Service
  [here](http://aws.amazon.com/application-discovery/preview/). We send you
  information about how to get started.

  This API reference provides descriptions, syntax, and usage examples for
  each of the actions and data types for Application Discovery Service. The
  topic for each action shows the API request parameters and the response.
  Alternatively, you can use one of the AWS SDKs to access an API that is
  tailored to the programming language or platform that you're using. For
  more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).

  This guide is intended for use with the [ *AWS Application Discovery
  Service User Guide*
  ](http://docs.aws.amazon.com/application-discovery/latest/userguide/).
  """

  @doc """
  Associates one or more configuration items with an application.
  """
  def associate_configuration_items_to_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateConfigurationItemsToApplication",
      method:           :post,
      input_shape:      "AssociateConfigurationItemsToApplicationRequest",
      output_shape:     "AssociateConfigurationItemsToApplicationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an application with the given name and description.
  """
  def create_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateApplication",
      method:           :post,
      input_shape:      "CreateApplicationRequest",
      output_shape:     "CreateApplicationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates one or more tags for configuration items. Tags are metadata that
  help you categorize IT assets. This API accepts a list of multiple
  configuration items.
  """
  def create_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateTags",
      method:           :post,
      input_shape:      "CreateTagsRequest",
      output_shape:     "CreateTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a list of applications and their associations with configuration
  items.
  """
  def delete_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteApplications",
      method:           :post,
      input_shape:      "DeleteApplicationsRequest",
      output_shape:     "DeleteApplicationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the association between configuration items and one or more tags.
  This API accepts a list of multiple configuration items.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTags",
      method:           :post,
      input_shape:      "DeleteTagsRequest",
      output_shape:     "DeleteTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists agents or the Connector by ID or lists all agents/Connectors
  associated with your user account if you did not specify an ID.
  """
  def describe_agents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAgents",
      method:           :post,
      input_shape:      "DescribeAgentsRequest",
      output_shape:     "DescribeAgentsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves attributes for a list of configuration item IDs. All of the
  supplied IDs must be for the same asset type (server, application, process,
  or connection). Output fields are specific to the asset type selected. For
  example, the output for a *server* configuration item includes a list of
  attributes about the server, such as host name, operating system, and
  number of network cards.

  For a complete list of outputs for each asset type, see [Using the
  DescribeConfigurations
  Action](http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations).
  """
  def describe_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConfigurations",
      method:           :post,
      input_shape:      "DescribeConfigurationsRequest",
      output_shape:     "DescribeConfigurationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated. Use `DescribeExportTasks` instead.

  Retrieves the status of a given export process. You can retrieve status
  from a maximum of 100 processes.
  """
  def describe_export_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeExportConfigurations",
      method:           :post,
      input_shape:      "DescribeExportConfigurationsRequest",
      output_shape:     "DescribeExportConfigurationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieve status of one or more export tasks. You can retrieve the status of
  up to 100 export tasks.
  """
  def describe_export_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeExportTasks",
      method:           :post,
      input_shape:      "DescribeExportTasksRequest",
      output_shape:     "DescribeExportTasksResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of configuration items that are tagged with a specific
  tag. Or retrieves a list of all tags assigned to a specific configuration
  item.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      method:           :post,
      input_shape:      "DescribeTagsRequest",
      output_shape:     "DescribeTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociates one or more configuration items from an application.
  """
  def disassociate_configuration_items_from_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisassociateConfigurationItemsFromApplication",
      method:           :post,
      input_shape:      "DisassociateConfigurationItemsFromApplicationRequest",
      output_shape:     "DisassociateConfigurationItemsFromApplicationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated. Use `StartExportTask` instead.

  Exports all discovered configuration data to an Amazon S3 bucket or an
  application that enables you to view and evaluate the data. Data includes
  tags and tag associations, processes, connections, servers, and system
  performance. This API returns an export ID that you can query using the
  *DescribeExportConfigurations* API. The system imposes a limit of two
  configuration exports in six hours.
  """
  def export_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ExportConfigurations",
      method:           :post,
      input_shape:      "",
      output_shape:     "ExportConfigurationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a short summary of discovered assets.
  """
  def get_discovery_summary(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDiscoverySummary",
      method:           :post,
      input_shape:      "GetDiscoverySummaryRequest",
      output_shape:     "GetDiscoverySummaryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of configuration items according to criteria that you
  specify in a filter. The filter criteria identifies the relationship
  requirements.
  """
  def list_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListConfigurations",
      method:           :post,
      input_shape:      "ListConfigurationsRequest",
      output_shape:     "ListConfigurationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of servers that are one network hop away from a specified
  server.
  """
  def list_server_neighbors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListServerNeighbors",
      method:           :post,
      input_shape:      "ListServerNeighborsRequest",
      output_shape:     "ListServerNeighborsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Instructs the specified agents or connectors to start collecting data.
  """
  def start_data_collection_by_agent_ids(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartDataCollectionByAgentIds",
      method:           :post,
      input_shape:      "StartDataCollectionByAgentIdsRequest",
      output_shape:     "StartDataCollectionByAgentIdsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Begins the export of discovered data to an S3 bucket.

  If you specify `agentId` in a filter, the task exports up to 72 hours of
  detailed data collected by the identified Application Discovery Agent,
  including network, process, and performance details. A time range for
  exported agent data may be set by using `startTime` and `endTime`. Export
  of detailed agent data is limited to five concurrently running exports.

  If you do not include an `agentId` filter, summary data is exported that
  includes both AWS Agentless Discovery Connector data and summary data from
  AWS Discovery Agents. Export of summary data is limited to two exports per
  day.
  """
  def start_export_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartExportTask",
      method:           :post,
      input_shape:      "StartExportTaskRequest",
      output_shape:     "StartExportTaskResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Instructs the specified agents or connectors to stop collecting data.
  """
  def stop_data_collection_by_agent_ids(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopDataCollectionByAgentIds",
      method:           :post,
      input_shape:      "StopDataCollectionByAgentIdsRequest",
      output_shape:     "StopDataCollectionByAgentIdsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates metadata about an application.
  """
  def update_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateApplication",
      method:           :post,
      input_shape:      "UpdateApplicationRequest",
      output_shape:     "UpdateApplicationResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "discovery",
      target_prefix:    "AWSPoseidonService_V2015_11_01",
      endpoint_prefix:  "discovery",
      type:             :json,
      version:          "2015-11-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"ExportFilters" => %{"member" => %{"shape" => "ExportFilter"}, "type" => "list"}, "ExportFilter" => %{"members" => %{"condition" => %{"shape" => "Condition"}, "name" => %{"shape" => "FilterName"}, "values" => %{"shape" => "FilterValues"}}, "required" => ["name", "values", "condition"], "type" => "structure"}, "ExportDataFormats" => %{"member" => %{"shape" => "ExportDataFormat"}, "type" => "list"}, "UpdateApplicationResponse" => %{"members" => %{}, "type" => "structure"}, "ConfigurationItemType" => %{"enum" => ["SERVER", "PROCESS", "CONNECTION", "APPLICATION"], "type" => "string"}, "AssociateConfigurationItemsToApplicationRequest" => %{"members" => %{"applicationConfigurationId" => %{"shape" => "ApplicationId"}, "configurationIds" => %{"shape" => "ConfigurationIdList"}}, "required" => ["applicationConfigurationId", "configurationIds"], "type" => "structure"}, "DescribeConfigurationsAttributes" => %{"member" => %{"shape" => "DescribeConfigurationsAttribute"}, "type" => "list"}, "DescribeConfigurationsAttribute" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "InvalidParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "AssociateConfigurationItemsToApplicationResponse" => %{"members" => %{}, "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "Configurations" => %{"member" => %{"shape" => "Configuration"}, "type" => "list"}, "CustomerAgentInfo" => %{"members" => %{"activeAgents" => %{"shape" => "Integer"}, "blackListedAgents" => %{"shape" => "Integer"}, "healthyAgents" => %{"shape" => "Integer"}, "shutdownAgents" => %{"shape" => "Integer"}, "totalAgents" => %{"shape" => "Integer"}, "unhealthyAgents" => %{"shape" => "Integer"}, "unknownAgents" => %{"shape" => "Integer"}}, "required" => ["activeAgents", "healthyAgents", "blackListedAgents", "shutdownAgents", "unhealthyAgents", "totalAgents", "unknownAgents"], "type" => "structure"}, "StartDataCollectionByAgentIdsResponse" => %{"members" => %{"agentsConfigurationStatus" => %{"shape" => "AgentConfigurationStatusList"}}, "type" => "structure"}, "FilterName" => %{"type" => "string"}, "CustomerConnectorInfo" => %{"members" => %{"activeConnectors" => %{"shape" => "Integer"}, "blackListedConnectors" => %{"shape" => "Integer"}, "healthyConnectors" => %{"shape" => "Integer"}, "shutdownConnectors" => %{"shape" => "Integer"}, "totalConnectors" => %{"shape" => "Integer"}, "unhealthyConnectors" => %{"shape" => "Integer"}, "unknownConnectors" => %{"shape" => "Integer"}}, "required" => ["activeConnectors", "healthyConnectors", "blackListedConnectors", "shutdownConnectors", "unhealthyConnectors", "totalConnectors", "unknownConnectors"], "type" => "structure"}, "ConfigurationTagSet" => %{"member" => %{"locationName" => "item", "shape" => "ConfigurationTag"}, "type" => "list"}, "TimeStamp" => %{"type" => "timestamp"}, "DeleteTagsResponse" => %{"members" => %{}, "type" => "structure"}, "InvalidParameterValueException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "StartDataCollectionByAgentIdsRequest" => %{"members" => %{"agentIds" => %{"shape" => "AgentIds"}}, "required" => ["agentIds"], "type" => "structure"}, "DescribeExportConfigurationsResponse" => %{"members" => %{"exportsInfo" => %{"shape" => "ExportsInfo"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeAgentsResponse" => %{"members" => %{"agentsInfo" => %{"shape" => "AgentsInfo"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "GetDiscoverySummaryRequest" => %{"members" => %{}, "type" => "structure"}, "Filter" => %{"members" => %{"condition" => %{"shape" => "Condition"}, "name" => %{"shape" => "String"}, "values" => %{"shape" => "FilterValues"}}, "required" => ["name", "values", "condition"], "type" => "structure"}, "DescribeExportTasksRequest" => %{"members" => %{"exportIds" => %{"shape" => "ExportIds"}, "filters" => %{"shape" => "ExportFilters"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ConfigurationsExportId" => %{"type" => "string"}, "Message" => %{"type" => "string"}, "StartExportTaskResponse" => %{"members" => %{"exportId" => %{"shape" => "ConfigurationsExportId"}}, "type" => "structure"}, "ExportStatus" => %{"enum" => ["FAILED", "SUCCEEDED", "IN_PROGRESS"], "type" => "string"}, "CreateApplicationRequest" => %{"members" => %{"description" => %{"shape" => "String"}, "name" => %{"shape" => "String"}}, "required" => ["name"], "type" => "structure"}, "ListServerNeighborsResponse" => %{"members" => %{"knownDependencyCount" => %{"shape" => "Long"}, "neighbors" => %{"shape" => "NeighborDetailsList"}, "nextToken" => %{"shape" => "String"}}, "required" => ["neighbors"], "type" => "structure"}, "CreateApplicationResponse" => %{"members" => %{"configurationId" => %{"shape" => "String"}}, "type" => "structure"}, "Tag" => %{"members" => %{"key" => %{"shape" => "TagKey"}, "value" => %{"shape" => "TagValue"}}, "required" => ["key", "value"], "type" => "structure"}, "CreateTagsResponse" => %{"members" => %{}, "type" => "structure"}, "GetDiscoverySummaryResponse" => %{"members" => %{"agentSummary" => %{"shape" => "CustomerAgentInfo"}, "applications" => %{"shape" => "Long"}, "connectorSummary" => %{"shape" => "CustomerConnectorInfo"}, "servers" => %{"shape" => "Long"}, "serversMappedToApplications" => %{"shape" => "Long"}, "serversMappedtoTags" => %{"shape" => "Long"}}, "type" => "structure"}, "DescribeExportConfigurationsRequest" => %{"members" => %{"exportIds" => %{"shape" => "ExportIds"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ExportRequestTime" => %{"type" => "timestamp"}, "Condition" => %{"type" => "string"}, "DisassociateConfigurationItemsFromApplicationRequest" => %{"members" => %{"applicationConfigurationId" => %{"shape" => "ApplicationId"}, "configurationIds" => %{"shape" => "ConfigurationIdList"}}, "required" => ["applicationConfigurationId", "configurationIds"], "type" => "structure"}, "ConfigurationTag" => %{"members" => %{"configurationId" => %{"shape" => "ConfigurationId"}, "configurationType" => %{"shape" => "ConfigurationItemType"}, "key" => %{"shape" => "TagKey"}, "timeOfCreation" => %{"shape" => "TimeStamp"}, "value" => %{"shape" => "TagValue"}}, "type" => "structure"}, "TagFilter" => %{"members" => %{"name" => %{"shape" => "FilterName"}, "values" => %{"shape" => "FilterValues"}}, "required" => ["name", "values"], "type" => "structure"}, "DeleteApplicationsRequest" => %{"members" => %{"configurationIds" => %{"shape" => "ApplicationIdsList"}}, "required" => ["configurationIds"], "type" => "structure"}, "NeighborDetailsList" => %{"member" => %{"shape" => "NeighborConnectionDetail"}, "type" => "list"}, "TagValue" => %{"type" => "string"}, "AgentsInfo" => %{"member" => %{"shape" => "AgentInfo"}, "type" => "list"}, "ConfigurationId" => %{"type" => "string"}, "StopDataCollectionByAgentIdsRequest" => %{"members" => %{"agentIds" => %{"shape" => "AgentIds"}}, "required" => ["agentIds"], "type" => "structure"}, "ConfigurationsDownloadUrl" => %{"type" => "string"}, "TagFilters" => %{"member" => %{"shape" => "TagFilter"}, "type" => "list"}, "DescribeTagsRequest" => %{"members" => %{"filters" => %{"shape" => "TagFilters"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "OrderByElement" => %{"members" => %{"fieldName" => %{"shape" => "String"}, "sortOrder" => %{"shape" => "orderString"}}, "required" => ["fieldName"], "type" => "structure"}, "Filters" => %{"member" => %{"shape" => "Filter"}, "type" => "list"}, "DescribeTagsResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "tags" => %{"shape" => "ConfigurationTagSet"}}, "type" => "structure"}, "Long" => %{"type" => "long"}, "ExportStatusMessage" => %{"type" => "string"}, "ListConfigurationsResponse" => %{"members" => %{"configurations" => %{"shape" => "Configurations"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "AgentIds" => %{"member" => %{"shape" => "AgentId"}, "type" => "list"}, "FilterValues" => %{"member" => %{"locationName" => "item", "shape" => "FilterValue"}, "type" => "list"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "OrderByList" => %{"member" => %{"shape" => "OrderByElement"}, "type" => "list"}, "AgentConfigurationStatusList" => %{"member" => %{"shape" => "AgentConfigurationStatus"}, "type" => "list"}, "OperationNotPermittedException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "ExportInfo" => %{"members" => %{"configurationsDownloadUrl" => %{"shape" => "ConfigurationsDownloadUrl"}, "exportId" => %{"shape" => "ConfigurationsExportId"}, "exportRequestTime" => %{"shape" => "ExportRequestTime"}, "exportStatus" => %{"shape" => "ExportStatus"}, "isTruncated" => %{"shape" => "Boolean"}, "requestedEndTime" => %{"shape" => "TimeStamp"}, "requestedStartTime" => %{"shape" => "TimeStamp"}, "statusMessage" => %{"shape" => "ExportStatusMessage"}}, "required" => ["exportId", "exportStatus", "statusMessage", "exportRequestTime"], "type" => "structure"}, "BoxedInteger" => %{"box" => true, "type" => "integer"}, "NeighborConnectionDetail" => %{"members" => %{"connectionsCount" => %{"shape" => "Long"}, "destinationPort" => %{"shape" => "BoxedInteger"}, "destinationServerId" => %{"shape" => "ConfigurationId"}, "sourceServerId" => %{"shape" => "ConfigurationId"}, "transportProtocol" => %{"shape" => "String"}}, "required" => ["sourceServerId", "destinationServerId", "connectionsCount"], "type" => "structure"}, "ServerInternalErrorException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "ExportConfigurationsResponse" => %{"members" => %{"exportId" => %{"shape" => "ConfigurationsExportId"}}, "type" => "structure"}, "StartExportTaskRequest" => %{"members" => %{"endTime" => %{"shape" => "TimeStamp"}, "exportDataFormat" => %{"shape" => "ExportDataFormats"}, "filters" => %{"shape" => "ExportFilters"}, "startTime" => %{"shape" => "TimeStamp"}}, "type" => "structure"}, "DeleteTagsRequest" => %{"members" => %{"configurationIds" => %{"shape" => "ConfigurationIdList"}, "tags" => %{"shape" => "TagSet"}}, "required" => ["configurationIds"], "type" => "structure"}, "CreateTagsRequest" => %{"members" => %{"configurationIds" => %{"shape" => "ConfigurationIdList"}, "tags" => %{"shape" => "TagSet"}}, "required" => ["configurationIds", "tags"], "type" => "structure"}, "AgentNetworkInfoList" => %{"member" => %{"shape" => "AgentNetworkInfo"}, "type" => "list"}, "DisassociateConfigurationItemsFromApplicationResponse" => %{"members" => %{}, "type" => "structure"}, "AgentStatus" => %{"enum" => ["HEALTHY", "UNHEALTHY", "RUNNING", "UNKNOWN", "BLACKLISTED", "SHUTDOWN"], "type" => "string"}, "TagSet" => %{"member" => %{"locationName" => "item", "shape" => "Tag"}, "type" => "list"}, "ApplicationIdsList" => %{"member" => %{"shape" => "ApplicationId"}, "type" => "list"}, "DescribeAgentsRequest" => %{"members" => %{"agentIds" => %{"shape" => "AgentIds"}, "filters" => %{"shape" => "Filters"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DeleteApplicationsResponse" => %{"members" => %{}, "type" => "structure"}, "ListConfigurationsRequest" => %{"members" => %{"configurationType" => %{"shape" => "ConfigurationItemType"}, "filters" => %{"shape" => "Filters"}, "maxResults" => %{"shape" => "Integer"}, "nextToken" => %{"shape" => "NextToken"}, "orderBy" => %{"shape" => "OrderByList"}}, "required" => ["configurationType"], "type" => "structure"}, "orderString" => %{"enum" => ["ASC", "DESC"], "type" => "string"}, "TagKey" => %{"type" => "string"}, "ConfigurationIdList" => %{"member" => %{"shape" => "ConfigurationId"}, "type" => "list"}, "DescribeConfigurationsResponse" => %{"members" => %{"configurations" => %{"shape" => "DescribeConfigurationsAttributes"}}, "type" => "structure"}, "FilterValue" => %{"type" => "string"}, "ApplicationId" => %{"type" => "string"}, "AgentConfigurationStatus" => %{"members" => %{"agentId" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "operationSucceeded" => %{"shape" => "Boolean"}}, "type" => "structure"}, "AgentId" => %{"type" => "string"}, "AgentInfo" => %{"members" => %{"agentId" => %{"shape" => "AgentId"}, "agentNetworkInfoList" => %{"shape" => "AgentNetworkInfoList"}, "agentType" => %{"shape" => "String"}, "collectionStatus" => %{"shape" => "String"}, "connectorId" => %{"shape" => "String"}, "health" => %{"shape" => "AgentStatus"}, "hostName" => %{"shape" => "String"}, "lastHealthPingTime" => %{"shape" => "String"}, "registeredTime" => %{"shape" => "String"}, "version" => %{"shape" => "String"}}, "type" => "structure"}, "ExportDataFormat" => %{"enum" => ["CSV", "GRAPHML"], "type" => "string"}, "Integer" => %{"type" => "integer"}, "Configuration" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "ListServerNeighborsRequest" => %{"members" => %{"configurationId" => %{"shape" => "ConfigurationId"}, "maxResults" => %{"shape" => "Integer"}, "neighborConfigurationIds" => %{"shape" => "ConfigurationIdList"}, "nextToken" => %{"shape" => "String"}, "portInformationNeeded" => %{"shape" => "Boolean"}}, "required" => ["configurationId"], "type" => "structure"}, "ExportIds" => %{"member" => %{"shape" => "ConfigurationsExportId"}, "type" => "list"}, "NextToken" => %{"type" => "string"}, "DescribeConfigurationsRequest" => %{"members" => %{"configurationIds" => %{"shape" => "ConfigurationIdList"}}, "required" => ["configurationIds"], "type" => "structure"}, "AgentNetworkInfo" => %{"members" => %{"ipAddress" => %{"shape" => "String"}, "macAddress" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeExportTasksResponse" => %{"members" => %{"exportsInfo" => %{"shape" => "ExportsInfo"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "StopDataCollectionByAgentIdsResponse" => %{"members" => %{"agentsConfigurationStatus" => %{"shape" => "AgentConfigurationStatusList"}}, "type" => "structure"}, "ExportsInfo" => %{"member" => %{"shape" => "ExportInfo"}, "type" => "list"}, "AuthorizationErrorException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "UpdateApplicationRequest" => %{"members" => %{"configurationId" => %{"shape" => "ApplicationId"}, "description" => %{"shape" => "String"}, "name" => %{"shape" => "String"}}, "required" => ["configurationId"], "type" => "structure"}}
  end
end