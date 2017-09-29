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
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssociateConfigurationItemsToApplication",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates an application with the given name and description.
  """
  def create_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateApplication",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates one or more tags for configuration items. Tags are metadata that
  help you categorize IT assets. This API accepts a list of multiple
  configuration items.
  """
  def create_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateTags",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes a list of applications and their associations with configuration
  items.
  """
  def delete_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteApplications",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes the association between configuration items and one or more tags.
  This API accepts a list of multiple configuration items.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteTags",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists agents or the Connector by ID or lists all agents/Connectors
  associated with your user account if you did not specify an ID.
  """
  def describe_agents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAgents",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
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
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeConfigurations",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deprecated. Use `DescribeExportTasks` instead.

  Retrieves the status of a given export process. You can retrieve status
  from a maximum of 100 processes.
  """
  def describe_export_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeExportConfigurations",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Retrieve status of one or more export tasks. You can retrieve the status of
  up to 100 export tasks.
  """
  def describe_export_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeExportTasks",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Retrieves a list of configuration items that are tagged with a specific
  tag. Or retrieves a list of all tags assigned to a specific configuration
  item.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeTags",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Disassociates one or more configuration items from an application.
  """
  def disassociate_configuration_items_from_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisassociateConfigurationItemsFromApplication",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
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
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ExportConfigurations",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Retrieves a short summary of discovered assets.
  """
  def get_discovery_summary(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDiscoverySummary",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Retrieves a list of configuration items according to criteria that you
  specify in a filter. The filter criteria identifies the relationship
  requirements.
  """
  def list_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListConfigurations",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Retrieves a list of servers that are one network hop away from a specified
  server.
  """
  def list_server_neighbors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListServerNeighbors",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Instructs the specified agents or connectors to start collecting data.
  """
  def start_data_collection_by_agent_ids(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartDataCollectionByAgentIds",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
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
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartExportTask",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Instructs the specified agents or connectors to stop collecting data.
  """
  def stop_data_collection_by_agent_ids(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopDataCollectionByAgentIds",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Updates metadata about an application.
  """
  def update_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "discovery",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateApplication",
      
      target_prefix:  "AWSPoseidonService_V2015_11_01",
      
      type:           :json,
      method:         :post
    }
  end
  
end