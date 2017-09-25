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
      input:    input,
      options:  options,
      action:   "CreateReplicationJob",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteReplicationJob",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  The DeleteServerCatalog API clears all servers from your server catalog.
  This means that these servers will no longer be accessible to the Server
  Migration Service.
  """
  def delete_server_catalog(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteServerCatalog",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  The DisassociateConnector API will disassociate a connector from the Server
  Migration Service, rendering it unavailable to support replication jobs.
  """
  def disassociate_connector(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociateConnector",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  The GetConnectors API returns a list of connectors that are registered with
  the Server Migration Service.
  """
  def get_connectors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetConnectors",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  The GetReplicationJobs API will return all of your ReplicationJobs and
  their details. This API returns a paginated list, that may be consecutively
  called with nextToken to retrieve all ReplicationJobs.
  """
  def get_replication_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetReplicationJobs",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "GetReplicationRuns",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  The GetServers API returns a list of all servers in your server catalog.
  For this call to succeed, you must previously have called
  ImportServerCatalog.
  """
  def get_servers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetServers",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "ImportServerCatalog",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "StartOnDemandReplicationRun",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  The UpdateReplicationJob API is used to change the settings of your
  existing ReplicationJob created using CreateReplicationJob. Calling this
  API will affect the next scheduled ReplicationRun.
  """
  def update_replication_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateReplicationJob",
      type:     :json,
      method:   :post
    }
  end
  
end