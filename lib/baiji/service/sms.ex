defmodule Baiji.SMS do
  @moduledoc """
  Amazon Server Migration Service automates the process of migrating servers
  to EC2.
  """

  @doc """
  The CreateReplicationJob API is used to create a ReplicationJob to
  replicate a server on AWS. Call this API to first create a ReplicationJob,
  which will then schedule periodic ReplicationRuns to replicate your server
  to AWS. Each ReplicationRun will result in the creation of an AWS AMI.
  """
  def create_replication_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateReplicationJob",
      method:           :post,
      input_shape:      "CreateReplicationJobRequest",
      output_shape:     "CreateReplicationJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The DeleteReplicationJob API is used to delete a ReplicationJob, resulting
  in no further ReplicationRuns. This will delete the contents of the S3
  bucket used to store SMS artifacts, but will not delete any AMIs created by
  the SMS service.
  """
  def delete_replication_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteReplicationJob",
      method:           :post,
      input_shape:      "DeleteReplicationJobRequest",
      output_shape:     "DeleteReplicationJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The DeleteServerCatalog API clears all servers from your server catalog.
  This means that these servers will no longer be accessible to the Server
  Migration Service.
  """
  def delete_server_catalog(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteServerCatalog",
      method:           :post,
      input_shape:      "DeleteServerCatalogRequest",
      output_shape:     "DeleteServerCatalogResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The DisassociateConnector API will disassociate a connector from the Server
  Migration Service, rendering it unavailable to support replication jobs.
  """
  def disassociate_connector(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisassociateConnector",
      method:           :post,
      input_shape:      "DisassociateConnectorRequest",
      output_shape:     "DisassociateConnectorResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The GetConnectors API returns a list of connectors that are registered with
  the Server Migration Service.
  """
  def get_connectors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetConnectors",
      method:           :post,
      input_shape:      "GetConnectorsRequest",
      output_shape:     "GetConnectorsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The GetReplicationJobs API will return all of your ReplicationJobs and
  their details. This API returns a paginated list, that may be consecutively
  called with nextToken to retrieve all ReplicationJobs.
  """
  def get_replication_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetReplicationJobs",
      method:           :post,
      input_shape:      "GetReplicationJobsRequest",
      output_shape:     "GetReplicationJobsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The GetReplicationRuns API will return all ReplicationRuns for a given
  ReplicationJob. This API returns a paginated list, that may be
  consecutively called with nextToken to retrieve all ReplicationRuns for a
  ReplicationJob.
  """
  def get_replication_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetReplicationRuns",
      method:           :post,
      input_shape:      "GetReplicationRunsRequest",
      output_shape:     "GetReplicationRunsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The GetServers API returns a list of all servers in your server catalog.
  For this call to succeed, you must previously have called
  ImportServerCatalog.
  """
  def get_servers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetServers",
      method:           :post,
      input_shape:      "GetServersRequest",
      output_shape:     "GetServersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The ImportServerCatalog API is used to gather the complete list of
  on-premises servers on your premises. This API call requires connectors to
  be installed and monitoring all servers you would like imported. This API
  call returns immediately, but may take some time to retrieve all of the
  servers.
  """
  def import_server_catalog(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ImportServerCatalog",
      method:           :post,
      input_shape:      "ImportServerCatalogRequest",
      output_shape:     "ImportServerCatalogResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The StartOnDemandReplicationRun API is used to start a ReplicationRun on
  demand (in addition to those that are scheduled based on your frequency).
  This ReplicationRun will start immediately. StartOnDemandReplicationRun is
  subject to limits on how many on demand ReplicationRuns you may call per
  24-hour period.
  """
  def start_on_demand_replication_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartOnDemandReplicationRun",
      method:           :post,
      input_shape:      "StartOnDemandReplicationRunRequest",
      output_shape:     "StartOnDemandReplicationRunResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The UpdateReplicationJob API is used to change the settings of your
  existing ReplicationJob created using CreateReplicationJob. Calling this
  API will affect the next scheduled ReplicationRun.
  """
  def update_replication_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateReplicationJob",
      method:           :post,
      input_shape:      "UpdateReplicationJobRequest",
      output_shape:     "UpdateReplicationJobResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "sms",
      target_prefix:    "AWSServerMigrationService_V2016_10_24",
      endpoint_prefix:  "sms",
      type:             :json,
      version:          "2016-10-24",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"VmManagerType" => %{"enum" => ["VSPHERE"], "type" => "string"}, "UnauthorizedOperationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateReplicationJobRequest" => %{"members" => %{"description" => %{"shape" => "Description"}, "frequency" => %{"shape" => "Frequency"}, "licenseType" => %{"shape" => "LicenseType"}, "roleName" => %{"shape" => "RoleName"}, "seedReplicationTime" => %{"shape" => "Timestamp"}, "serverId" => %{"shape" => "ServerId"}}, "required" => ["serverId", "seedReplicationTime", "frequency"], "type" => "structure"}, "DeleteReplicationJobResponse" => %{"members" => %{}, "type" => "structure"}, "ReplicationRun" => %{"members" => %{"amiId" => %{"shape" => "AmiId"}, "completedTime" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "replicationRunId" => %{"shape" => "ReplicationRunId"}, "scheduledStartTime" => %{"shape" => "Timestamp"}, "state" => %{"shape" => "ReplicationRunState"}, "statusMessage" => %{"shape" => "ReplicationRunStatusMessage"}, "type" => %{"shape" => "ReplicationRunType"}}, "type" => "structure"}, "InvalidParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "VmServer" => %{"members" => %{"vmManagerName" => %{"shape" => "VmManagerName"}, "vmManagerType" => %{"shape" => "VmManagerType"}, "vmName" => %{"shape" => "VmName"}, "vmPath" => %{"shape" => "VmPath"}, "vmServerAddress" => %{"shape" => "VmServerAddress"}}, "type" => "structure"}, "ConnectorStatus" => %{"enum" => ["HEALTHY", "UNHEALTHY"], "type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "StartOnDemandReplicationRunRequest" => %{"members" => %{"description" => %{"shape" => "Description"}, "replicationJobId" => %{"shape" => "ReplicationJobId"}}, "required" => ["replicationJobId"], "type" => "structure"}, "ReplicationRunStatusMessage" => %{"type" => "string"}, "ReplicationJobList" => %{"member" => %{"locationName" => "item", "shape" => "ReplicationJob"}, "type" => "list"}, "DeleteServerCatalogRequest" => %{"members" => %{}, "type" => "structure"}, "ReplicationJobTerminated" => %{"type" => "boolean"}, "GetReplicationRunsRequest" => %{"members" => %{"maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}, "replicationJobId" => %{"shape" => "ReplicationJobId"}}, "required" => ["replicationJobId"], "type" => "structure"}, "DisassociateConnectorResponse" => %{"members" => %{}, "type" => "structure"}, "ServerCannotBeReplicatedException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "RoleName" => %{"type" => "string"}, "ServerList" => %{"member" => %{"locationName" => "item", "shape" => "Server"}, "type" => "list"}, "GetReplicationJobsResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "replicationJobList" => %{"shape" => "ReplicationJobList"}}, "type" => "structure"}, "DeleteReplicationJobRequest" => %{"members" => %{"replicationJobId" => %{"shape" => "ReplicationJobId"}}, "required" => ["replicationJobId"], "type" => "structure"}, "ImportServerCatalogResponse" => %{"members" => %{}, "type" => "structure"}, "VmManagerName" => %{"type" => "string"}, "AmiId" => %{"type" => "string"}, "GetServersRequest" => %{"members" => %{"maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "Description" => %{"type" => "string"}, "LicenseType" => %{"enum" => ["AWS", "BYOL"], "type" => "string"}, "ReplicationJobStatusMessage" => %{"type" => "string"}, "ReplicationJobAlreadyExistsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ImportServerCatalogRequest" => %{"members" => %{}, "type" => "structure"}, "ConnectorVersion" => %{"type" => "string"}, "VmServerAddress" => %{"members" => %{"vmId" => %{"shape" => "VmId"}, "vmManagerId" => %{"shape" => "VmManagerId"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "GetServersResponse" => %{"members" => %{"lastModifiedOn" => %{"shape" => "Timestamp"}, "nextToken" => %{"shape" => "NextToken"}, "serverCatalogStatus" => %{"shape" => "ServerCatalogStatus"}, "serverList" => %{"shape" => "ServerList"}}, "type" => "structure"}, "StartOnDemandReplicationRunResponse" => %{"members" => %{"replicationRunId" => %{"shape" => "ReplicationRunId"}}, "type" => "structure"}, "ConnectorId" => %{"type" => "string"}, "ReplicationJobId" => %{"type" => "string"}, "ReplicationRunState" => %{"enum" => ["PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"], "type" => "string"}, "DisassociateConnectorRequest" => %{"members" => %{"connectorId" => %{"shape" => "ConnectorId"}}, "required" => ["connectorId"], "type" => "structure"}, "MaxResults" => %{"type" => "integer"}, "CreateReplicationJobResponse" => %{"members" => %{"replicationJobId" => %{"shape" => "ReplicationJobId"}}, "type" => "structure"}, "Server" => %{"members" => %{"replicationJobId" => %{"shape" => "ReplicationJobId"}, "replicationJobTerminated" => %{"shape" => "ReplicationJobTerminated"}, "serverId" => %{"shape" => "ServerId"}, "serverType" => %{"shape" => "ServerType"}, "vmServer" => %{"shape" => "VmServer"}}, "type" => "structure"}, "NoConnectorsAvailableException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UpdateReplicationJobResponse" => %{"members" => %{}, "type" => "structure"}, "MacAddress" => %{"type" => "string"}, "MissingRequiredParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ReplicationRunId" => %{"type" => "string"}, "ReplicationJobState" => %{"enum" => ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"], "type" => "string"}, "Connector" => %{"members" => %{"associatedOn" => %{"shape" => "Timestamp"}, "capabilityList" => %{"shape" => "ConnectorCapabilityList"}, "connectorId" => %{"shape" => "ConnectorId"}, "ipAddress" => %{"shape" => "IpAddress"}, "macAddress" => %{"shape" => "MacAddress"}, "status" => %{"shape" => "ConnectorStatus"}, "version" => %{"shape" => "ConnectorVersion"}, "vmManagerId" => %{"shape" => "VmManagerId"}, "vmManagerName" => %{"shape" => "VmManagerName"}, "vmManagerType" => %{"shape" => "VmManagerType"}}, "type" => "structure"}, "IpAddress" => %{"type" => "string"}, "OperationNotPermittedException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetReplicationJobsRequest" => %{"members" => %{"maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}, "replicationJobId" => %{"shape" => "ReplicationJobId"}}, "type" => "structure"}, "ConnectorList" => %{"member" => %{"locationName" => "item", "shape" => "Connector"}, "type" => "list"}, "ReplicationRunList" => %{"member" => %{"locationName" => "item", "shape" => "ReplicationRun"}, "type" => "list"}, "Frequency" => %{"type" => "integer"}, "ServerId" => %{"type" => "string"}, "ConnectorCapability" => %{"enum" => ["VSPHERE"], "type" => "string"}, "GetReplicationRunsResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "replicationJob" => %{"shape" => "ReplicationJob"}, "replicationRunList" => %{"shape" => "ReplicationRunList"}}, "type" => "structure"}, "ReplicationRunType" => %{"enum" => ["ON_DEMAND", "AUTOMATIC"], "type" => "string"}, "GetConnectorsResponse" => %{"members" => %{"connectorList" => %{"shape" => "ConnectorList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ServerCatalogStatus" => %{"enum" => ["NOT_IMPORTED", "IMPORTING", "AVAILABLE", "DELETED", "EXPIRED"], "type" => "string"}, "VmManagerId" => %{"type" => "string"}, "VmId" => %{"type" => "string"}, "UpdateReplicationJobRequest" => %{"members" => %{"description" => %{"shape" => "Description"}, "frequency" => %{"shape" => "Frequency"}, "licenseType" => %{"shape" => "LicenseType"}, "nextReplicationRunStartTime" => %{"shape" => "Timestamp"}, "replicationJobId" => %{"shape" => "ReplicationJobId"}, "roleName" => %{"shape" => "RoleName"}}, "required" => ["replicationJobId"], "type" => "structure"}, "ReplicationJobNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ReplicationRunLimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ReplicationJob" => %{"members" => %{"description" => %{"shape" => "Description"}, "frequency" => %{"shape" => "Frequency"}, "latestAmiId" => %{"shape" => "AmiId"}, "licenseType" => %{"shape" => "LicenseType"}, "nextReplicationRunStartTime" => %{"shape" => "Timestamp"}, "replicationJobId" => %{"shape" => "ReplicationJobId"}, "replicationRunList" => %{"shape" => "ReplicationRunList"}, "roleName" => %{"shape" => "RoleName"}, "seedReplicationTime" => %{"shape" => "Timestamp"}, "serverId" => %{"shape" => "ServerId"}, "serverType" => %{"shape" => "ServerType"}, "state" => %{"shape" => "ReplicationJobState"}, "statusMessage" => %{"shape" => "ReplicationJobStatusMessage"}, "vmServer" => %{"shape" => "VmServer"}}, "type" => "structure"}, "VmName" => %{"type" => "string"}, "DeleteServerCatalogResponse" => %{"members" => %{}, "type" => "structure"}, "VmPath" => %{"type" => "string"}, "NextToken" => %{"type" => "string"}, "InternalError" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetConnectorsRequest" => %{"members" => %{"maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ServerType" => %{"enum" => ["VIRTUAL_MACHINE"], "type" => "string"}, "ConnectorCapabilityList" => %{"member" => %{"locationName" => "item", "shape" => "ConnectorCapability"}, "type" => "list"}}
  end
end