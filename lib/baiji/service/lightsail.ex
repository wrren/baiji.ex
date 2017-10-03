defmodule Baiji.Lightsail do
  @moduledoc """
  Amazon Lightsail is the easiest way to get started with AWS for developers
  who just need virtual private servers. Lightsail includes everything you
  need to launch your project quickly - a virtual machine, SSD-based storage,
  data transfer, DNS management, and a static IP - for a low, predictable
  price. You manage those Lightsail servers through the Lightsail console or
  by using the API or command-line interface (CLI).

  For more information about Lightsail concepts and tasks, see the [Lightsail
  Dev Guide](https://lightsail.aws.amazon.com/ls/docs/all).

  To use the Lightsail API or the CLI, you will need to use AWS Identity and
  Access Management (IAM) to generate access keys. For details about how to
  set this up, see the [Lightsail Dev
  Guide](http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli).
  """

  @doc """
  Uses a specific snapshot as a blueprint for creating one or more new
  instances that are based on that identical configuration.
  """
  def create_instances_from_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateInstancesFromSnapshot",
      method:           :post,
      input_shape:      "CreateInstancesFromSnapshotRequest",
      output_shape:     "CreateInstancesFromSnapshotResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specific Amazon Lightsail virtual private server, or *instance*.
  """
  def delete_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteInstance",
      method:           :post,
      input_shape:      "DeleteInstanceRequest",
      output_shape:     "DeleteInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specific static IP from your account.
  """
  def release_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ReleaseStaticIp",
      method:           :post,
      input_shape:      "ReleaseStaticIpRequest",
      output_shape:     "ReleaseStaticIpResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Restarts a specific instance. When your Amazon Lightsail instance is
  finished rebooting, Lightsail assigns a new public IP address. To use the
  same IP address after restarting, create a static IP address and attach it
  to the instance.
  """
  def reboot_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RebootInstance",
      method:           :post,
      input_shape:      "RebootInstanceRequest",
      output_shape:     "RebootInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets operations for a specific resource (e.g., an instance or a static IP).
  """
  def get_operations_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetOperationsForResource",
      method:           :post,
      input_shape:      "GetOperationsForResourceRequest",
      output_shape:     "GetOperationsForResourceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specific SSH key pair.
  """
  def delete_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteKeyPair",
      method:           :post,
      input_shape:      "DeleteKeyPairRequest",
      output_shape:     "DeleteKeyPairResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a specific operation. Operations include events
  such as when you create an instance, allocate a static IP, attach a static
  IP, and so on.
  """
  def get_operation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetOperation",
      method:           :post,
      input_shape:      "GetOperationRequest",
      output_shape:     "GetOperationResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a specific instance snapshot.
  """
  def get_instance_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstanceSnapshot",
      method:           :post,
      input_shape:      "GetInstanceSnapshotRequest",
      output_shape:     "GetInstanceSnapshotResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Imports a public SSH key from a specific key pair.
  """
  def import_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ImportKeyPair",
      method:           :post,
      input_shape:      "ImportKeyPairRequest",
      output_shape:     "ImportKeyPairResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Tries to peer the Lightsail VPC with the user's default VPC.
  """
  def peer_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PeerVpc",
      method:           :post,
      input_shape:      "PeerVpcRequest",
      output_shape:     "PeerVpcResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified domain recordset and all of its domain records.
  """
  def delete_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDomain",
      method:           :post,
      input_shape:      "DeleteDomainRequest",
      output_shape:     "DeleteDomainResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a snapshot of a specific virtual private server, or *instance*. You
  can use a snapshot to create a new instance that is based on that snapshot.
  """
  def create_instance_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateInstanceSnapshot",
      method:           :post,
      input_shape:      "CreateInstanceSnapshotRequest",
      output_shape:     "CreateInstanceSnapshotResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates one or more Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def create_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateInstances",
      method:           :post,
      input_shape:      "CreateInstancesRequest",
      output_shape:     "CreateInstancesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Detaches a static IP from the Amazon Lightsail instance to which it is
  attached.
  """
  def detach_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DetachStaticIp",
      method:           :post,
      input_shape:      "DetachStaticIpRequest",
      output_shape:     "DetachStaticIpResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about all operations.

  Results are returned from oldest to newest, up to a maximum of 200. Results
  can be paged by making each subsequent call to `GetOperations` use the
  maximum (last) `statusChangedAt` value from the previous request.
  """
  def get_operations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetOperations",
      method:           :post,
      input_shape:      "GetOperationsRequest",
      output_shape:     "GetOperationsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the names of all active (not deleted) resources.
  """
  def get_active_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetActiveNames",
      method:           :post,
      input_shape:      "GetActiveNamesRequest",
      output_shape:     "GetActiveNamesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a domain resource for the specified domain (e.g., example.com).
  """
  def create_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDomain",
      method:           :post,
      input_shape:      "CreateDomainRequest",
      output_shape:     "CreateDomainResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specific domain entry.
  """
  def delete_domain_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDomainEntry",
      method:           :post,
      input_shape:      "DeleteDomainEntryRequest",
      output_shape:     "DeleteDomainEntryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a specific static IP.
  """
  def get_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetStaticIp",
      method:           :post,
      input_shape:      "GetStaticIpRequest",
      output_shape:     "GetStaticIpResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about all static IPs in the user's account.
  """
  def get_static_ips(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetStaticIps",
      method:           :post,
      input_shape:      "GetStaticIpsRequest",
      output_shape:     "GetStaticIpsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allocates a static IP address.
  """
  def allocate_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AllocateStaticIp",
      method:           :post,
      input_shape:      "AllocateStaticIpRequest",
      output_shape:     "AllocateStaticIpResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about all key pairs in the user's account.
  """
  def get_key_pairs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetKeyPairs",
      method:           :post,
      input_shape:      "GetKeyPairsRequest",
      output_shape:     "GetKeyPairsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of all domains in the user's account.
  """
  def get_domains(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDomains",
      method:           :post,
      input_shape:      "GetDomainsRequest",
      output_shape:     "GetDomainsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a Boolean value indicating whether your Lightsail VPC is peered.
  """
  def is_vpc_peered(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "IsVpcPeered",
      method:           :post,
      input_shape:      "IsVpcPeeredRequest",
      output_shape:     "IsVpcPeeredResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of all valid regions for Amazon Lightsail. Use the `include
  availability zones` parameter to also return the availability zones in a
  region.
  """
  def get_regions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetRegions",
      method:           :post,
      input_shape:      "GetRegionsRequest",
      output_shape:     "GetRegionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Downloads the default SSH key pair from the user's account.
  """
  def download_default_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DownloadDefaultKeyPair",
      method:           :post,
      input_shape:      "DownloadDefaultKeyPairRequest",
      output_shape:     "DownloadDefaultKeyPairResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds public ports to an Amazon Lightsail instance.
  """
  def open_instance_public_ports(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "OpenInstancePublicPorts",
      method:           :post,
      input_shape:      "OpenInstancePublicPortsRequest",
      output_shape:     "OpenInstancePublicPortsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the port states for a specific virtual private server, or
  *instance*.
  """
  def get_instance_port_states(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstancePortStates",
      method:           :post,
      input_shape:      "GetInstancePortStatesRequest",
      output_shape:     "GetInstancePortStatesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attempts to unpeer the Lightsail VPC from the user's default VPC.
  """
  def unpeer_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UnpeerVpc",
      method:           :post,
      input_shape:      "UnpeerVpcRequest",
      output_shape:     "UnpeerVpcResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops a specific Amazon Lightsail instance that is currently running.
  """
  def stop_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopInstance",
      method:           :post,
      input_shape:      "StopInstanceRequest",
      output_shape:     "StopInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the specified open ports for an Amazon Lightsail instance, and closes
  all ports for every protocol not included in the current request.
  """
  def put_instance_public_ports(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutInstancePublicPorts",
      method:           :post,
      input_shape:      "PutInstancePublicPortsRequest",
      output_shape:     "PutInstancePublicPortsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates one of the following entry records associated with the domain: A
  record, CNAME record, TXT record, or MX record.
  """
  def create_domain_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDomainEntry",
      method:           :post,
      input_shape:      "CreateDomainEntryRequest",
      output_shape:     "CreateDomainEntryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the list of bundles that are available for purchase. A bundle
  describes the specs for your virtual private server (or *instance*).
  """
  def get_bundles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetBundles",
      method:           :post,
      input_shape:      "GetBundlesRequest",
      output_shape:     "GetBundlesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns temporary SSH keys you can use to connect to a specific virtual
  private server, or *instance*.
  """
  def get_instance_access_details(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstanceAccessDetails",
      method:           :post,
      input_shape:      "GetInstanceAccessDetailsRequest",
      output_shape:     "GetInstanceAccessDetailsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Closes the public ports on a specific Amazon Lightsail instance.
  """
  def close_instance_public_ports(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CloseInstancePublicPorts",
      method:           :post,
      input_shape:      "CloseInstancePublicPortsRequest",
      output_shape:     "CloseInstancePublicPortsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the data points for the specified Amazon Lightsail instance metric,
  given an instance name.
  """
  def get_instance_metric_data(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstanceMetricData",
      method:           :post,
      input_shape:      "GetInstanceMetricDataRequest",
      output_shape:     "GetInstanceMetricDataResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns all instance snapshots for the user's account.
  """
  def get_instance_snapshots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstanceSnapshots",
      method:           :post,
      input_shape:      "GetInstanceSnapshotsRequest",
      output_shape:     "GetInstanceSnapshotsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a domain recordset after it is created.
  """
  def update_domain_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDomainEntry",
      method:           :post,
      input_shape:      "UpdateDomainEntryRequest",
      output_shape:     "UpdateDomainEntryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a specific key pair.
  """
  def get_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetKeyPair",
      method:           :post,
      input_shape:      "GetKeyPairRequest",
      output_shape:     "GetKeyPairResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a specific Amazon Lightsail instance, which is a
  virtual private server.
  """
  def get_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstance",
      method:           :post,
      input_shape:      "GetInstanceRequest",
      output_shape:     "GetInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about all Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def get_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstances",
      method:           :post,
      input_shape:      "GetInstancesRequest",
      output_shape:     "GetInstancesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the list of available instance images, or *blueprints*. You can use
  a blueprint to create a new virtual private server already running a
  specific operating system, as well as a preinstalled app or development
  stack. The software each instance is running depends on the blueprint image
  you choose.
  """
  def get_blueprints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetBlueprints",
      method:           :post,
      input_shape:      "GetBlueprintsRequest",
      output_shape:     "GetBlueprintsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the state of a specific instance. Works on one instance at a time.
  """
  def get_instance_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstanceState",
      method:           :post,
      input_shape:      "GetInstanceStateRequest",
      output_shape:     "GetInstanceStateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a specific domain recordset.
  """
  def get_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDomain",
      method:           :post,
      input_shape:      "GetDomainRequest",
      output_shape:     "GetDomainResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Starts a specific Amazon Lightsail instance from a stopped state. To
  restart an instance, use the reboot instance operation.
  """
  def start_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartInstance",
      method:           :post,
      input_shape:      "StartInstanceRequest",
      output_shape:     "StartInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specific snapshot of a virtual private server (or *instance*).
  """
  def delete_instance_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteInstanceSnapshot",
      method:           :post,
      input_shape:      "DeleteInstanceSnapshotRequest",
      output_shape:     "DeleteInstanceSnapshotResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates sn SSH key pair.
  """
  def create_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateKeyPair",
      method:           :post,
      input_shape:      "CreateKeyPairRequest",
      output_shape:     "CreateKeyPairResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches a static IP address to a specific Amazon Lightsail instance.
  """
  def attach_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AttachStaticIp",
      method:           :post,
      input_shape:      "AttachStaticIpRequest",
      output_shape:     "AttachStaticIpResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "lightsail",
      target_prefix:    "Lightsail_20161128",
      endpoint_prefix:  "lightsail",
      type:             :json,
      version:          "2016-11-28",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"KeyPair" => %{"members" => %{"arn" => %{"shape" => "NonEmptyString"}, "createdAt" => %{"shape" => "IsoDate"}, "fingerprint" => %{"shape" => "Base64"}, "location" => %{"shape" => "ResourceLocation"}, "name" => %{"shape" => "ResourceName"}, "resourceType" => %{"shape" => "ResourceType"}, "supportCode" => %{"shape" => "string"}}, "type" => "structure"}, "StartInstanceResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "AttachStaticIpResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "RegionList" => %{"member" => %{"shape" => "Region"}, "type" => "list"}, "CreateKeyPairRequest" => %{"members" => %{"keyPairName" => %{"shape" => "ResourceName"}}, "required" => ["keyPairName"], "type" => "structure"}, "GetDomainsResult" => %{"members" => %{"domains" => %{"shape" => "DomainList"}, "nextPageToken" => %{"shape" => "string"}}, "type" => "structure"}, "InstancePortState" => %{"members" => %{"fromPort" => %{"shape" => "Port"}, "protocol" => %{"shape" => "NetworkProtocol"}, "state" => %{"shape" => "PortState"}, "toPort" => %{"shape" => "Port"}}, "type" => "structure"}, "GetInstancesResult" => %{"members" => %{"instances" => %{"shape" => "InstanceList"}, "nextPageToken" => %{"shape" => "string"}}, "type" => "structure"}, "ResourceType" => %{"enum" => ["Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"], "type" => "string"}, "GetStaticIpsRequest" => %{"members" => %{"pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "BlueprintType" => %{"enum" => ["os", "app"], "type" => "string"}, "GetInstancePortStatesResult" => %{"members" => %{"portStates" => %{"shape" => "InstancePortStateList"}}, "type" => "structure"}, "AllocateStaticIpRequest" => %{"members" => %{"staticIpName" => %{"shape" => "ResourceName"}}, "required" => ["staticIpName"], "type" => "structure"}, "ResourceLocation" => %{"members" => %{"availabilityZone" => %{"shape" => "string"}, "regionName" => %{"shape" => "RegionName"}}, "type" => "structure"}, "Disk" => %{"members" => %{"arn" => %{"shape" => "NonEmptyString"}, "attachedTo" => %{"shape" => "string"}, "attachmentState" => %{"shape" => "string"}, "createdAt" => %{"shape" => "IsoDate"}, "gbInUse" => %{"shape" => "integer"}, "iops" => %{"shape" => "integer"}, "isAttached" => %{"shape" => "boolean"}, "isSystemDisk" => %{"shape" => "boolean"}, "location" => %{"shape" => "ResourceLocation"}, "name" => %{"shape" => "ResourceName"}, "path" => %{"shape" => "string"}, "resourceType" => %{"shape" => "ResourceType"}, "sizeInGb" => %{"shape" => "integer"}, "supportCode" => %{"shape" => "string"}}, "type" => "structure"}, "IsVpcPeeredRequest" => %{"members" => %{}, "type" => "structure"}, "DomainEntryOptionsKeys" => %{"type" => "string"}, "UpdateDomainEntryRequest" => %{"members" => %{"domainEntry" => %{"shape" => "DomainEntry"}, "domainName" => %{"shape" => "DomainName"}}, "required" => ["domainName", "domainEntry"], "type" => "structure"}, "GetOperationsForResourceRequest" => %{"members" => %{"pageToken" => %{"shape" => "string"}, "resourceName" => %{"shape" => "ResourceName"}}, "required" => ["resourceName"], "type" => "structure"}, "DeleteInstanceSnapshotRequest" => %{"members" => %{"instanceSnapshotName" => %{"shape" => "ResourceName"}}, "required" => ["instanceSnapshotName"], "type" => "structure"}, "GetInstancesRequest" => %{"members" => %{"pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "ServiceException" => %{"exception" => true, "fault" => true, "members" => %{"code" => %{"shape" => "string"}, "docs" => %{"shape" => "string"}, "message" => %{"shape" => "string"}, "tip" => %{"shape" => "string"}}, "type" => "structure"}, "GetInstanceSnapshotRequest" => %{"members" => %{"instanceSnapshotName" => %{"shape" => "ResourceName"}}, "required" => ["instanceSnapshotName"], "type" => "structure"}, "InstanceSnapshot" => %{"members" => %{"arn" => %{"shape" => "NonEmptyString"}, "createdAt" => %{"shape" => "IsoDate"}, "fromBlueprintId" => %{"shape" => "string"}, "fromBundleId" => %{"shape" => "string"}, "fromInstanceArn" => %{"shape" => "NonEmptyString"}, "fromInstanceName" => %{"shape" => "ResourceName"}, "location" => %{"shape" => "ResourceLocation"}, "name" => %{"shape" => "ResourceName"}, "progress" => %{"shape" => "string"}, "resourceType" => %{"shape" => "ResourceType"}, "sizeInGb" => %{"shape" => "integer"}, "state" => %{"shape" => "InstanceSnapshotState"}, "supportCode" => %{"shape" => "string"}}, "type" => "structure"}, "CreateDomainRequest" => %{"members" => %{"domainName" => %{"shape" => "DomainName"}}, "required" => ["domainName"], "type" => "structure"}, "GetBundlesResult" => %{"members" => %{"bundles" => %{"shape" => "BundleList"}, "nextPageToken" => %{"shape" => "string"}}, "type" => "structure"}, "KeyPairList" => %{"member" => %{"shape" => "KeyPair"}, "type" => "list"}, "BundleList" => %{"member" => %{"shape" => "Bundle"}, "type" => "list"}, "AccessDeniedException" => %{"exception" => true, "members" => %{"code" => %{"shape" => "string"}, "docs" => %{"shape" => "string"}, "message" => %{"shape" => "string"}, "tip" => %{"shape" => "string"}}, "type" => "structure"}, "GetInstanceRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}}, "required" => ["instanceName"], "type" => "structure"}, "DomainEntryType" => %{"type" => "string"}, "GetBlueprintsResult" => %{"members" => %{"blueprints" => %{"shape" => "BlueprintList"}, "nextPageToken" => %{"shape" => "string"}}, "type" => "structure"}, "DeleteDomainEntryResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "GetKeyPairsRequest" => %{"members" => %{"pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "PutInstancePublicPortsRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}, "portInfos" => %{"shape" => "PortInfoList"}}, "required" => ["portInfos", "instanceName"], "type" => "structure"}, "CreateDomainEntryRequest" => %{"members" => %{"domainEntry" => %{"shape" => "DomainEntry"}, "domainName" => %{"shape" => "DomainName"}}, "required" => ["domainName", "domainEntry"], "type" => "structure"}, "StopInstanceRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}}, "required" => ["instanceName"], "type" => "structure"}, "OpenInstancePublicPortsResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "CloseInstancePublicPortsRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}, "portInfo" => %{"shape" => "PortInfo"}}, "required" => ["portInfo", "instanceName"], "type" => "structure"}, "Port" => %{"max" => 65535, "min" => 0, "type" => "integer"}, "InstanceList" => %{"member" => %{"shape" => "Instance"}, "type" => "list"}, "InstanceSnapshotList" => %{"member" => %{"shape" => "InstanceSnapshot"}, "type" => "list"}, "boolean" => %{"type" => "boolean"}, "ImportKeyPairResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "InstanceHardware" => %{"members" => %{"cpuCount" => %{"shape" => "integer"}, "disks" => %{"shape" => "DiskList"}, "ramSizeInGb" => %{"shape" => "float"}}, "type" => "structure"}, "CreateInstancesRequest" => %{"members" => %{"availabilityZone" => %{"shape" => "string"}, "blueprintId" => %{"shape" => "NonEmptyString"}, "bundleId" => %{"shape" => "NonEmptyString"}, "customImageName" => %{"deprecated" => true, "shape" => "ResourceName"}, "instanceNames" => %{"shape" => "StringList"}, "keyPairName" => %{"shape" => "ResourceName"}, "userData" => %{"shape" => "string"}}, "required" => ["instanceNames", "availabilityZone", "blueprintId", "bundleId"], "type" => "structure"}, "StringList" => %{"member" => %{"shape" => "string"}, "type" => "list"}, "GetInstanceAccessDetailsRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}, "protocol" => %{"shape" => "InstanceAccessProtocol"}}, "required" => ["instanceName"], "type" => "structure"}, "GetStaticIpRequest" => %{"members" => %{"staticIpName" => %{"shape" => "ResourceName"}}, "required" => ["staticIpName"], "type" => "structure"}, "PortInfo" => %{"members" => %{"fromPort" => %{"shape" => "Port"}, "protocol" => %{"shape" => "NetworkProtocol"}, "toPort" => %{"shape" => "Port"}}, "type" => "structure"}, "GetActiveNamesResult" => %{"members" => %{"activeNames" => %{"shape" => "StringList"}, "nextPageToken" => %{"shape" => "string"}}, "type" => "structure"}, "CreateInstancesFromSnapshotRequest" => %{"members" => %{"availabilityZone" => %{"shape" => "string"}, "bundleId" => %{"shape" => "NonEmptyString"}, "instanceNames" => %{"shape" => "StringList"}, "instanceSnapshotName" => %{"shape" => "ResourceName"}, "keyPairName" => %{"shape" => "ResourceName"}, "userData" => %{"shape" => "string"}}, "required" => ["instanceNames", "availabilityZone", "instanceSnapshotName", "bundleId"], "type" => "structure"}, "GetInstanceMetricDataResult" => %{"members" => %{"metricData" => %{"shape" => "MetricDatapointList"}, "metricName" => %{"shape" => "InstanceMetricName"}}, "type" => "structure"}, "DeleteInstanceSnapshotResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "MetricPeriod" => %{"max" => 86400, "min" => 60, "type" => "integer"}, "CreateInstanceSnapshotRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}, "instanceSnapshotName" => %{"shape" => "ResourceName"}}, "required" => ["instanceSnapshotName", "instanceName"], "type" => "structure"}, "CreateInstancesFromSnapshotResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "AvailabilityZoneList" => %{"member" => %{"shape" => "AvailabilityZone"}, "type" => "list"}, "InstanceAccessDetails" => %{"members" => %{"certKey" => %{"shape" => "string"}, "expiresAt" => %{"shape" => "IsoDate"}, "instanceName" => %{"shape" => "ResourceName"}, "ipAddress" => %{"shape" => "IpAddress"}, "password" => %{"shape" => "string"}, "privateKey" => %{"shape" => "string"}, "protocol" => %{"shape" => "InstanceAccessProtocol"}, "username" => %{"shape" => "string"}}, "type" => "structure"}, "PutInstancePublicPortsResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "Region" => %{"members" => %{"availabilityZones" => %{"shape" => "AvailabilityZoneList"}, "continentCode" => %{"shape" => "string"}, "description" => %{"shape" => "string"}, "displayName" => %{"shape" => "string"}, "name" => %{"shape" => "RegionName"}}, "type" => "structure"}, "GetKeyPairResult" => %{"members" => %{"keyPair" => %{"shape" => "KeyPair"}}, "type" => "structure"}, "PeerVpcRequest" => %{"members" => %{}, "type" => "structure"}, "OperationStatus" => %{"enum" => ["NotStarted", "Started", "Failed", "Completed"], "type" => "string"}, "DomainEntryList" => %{"member" => %{"shape" => "DomainEntry"}, "type" => "list"}, "MonthlyTransfer" => %{"members" => %{"gbPerMonthAllocated" => %{"shape" => "integer"}}, "type" => "structure"}, "DetachStaticIpResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "Operation" => %{"members" => %{"createdAt" => %{"shape" => "IsoDate"}, "errorCode" => %{"shape" => "string"}, "errorDetails" => %{"shape" => "string"}, "id" => %{"shape" => "NonEmptyString"}, "isTerminal" => %{"shape" => "boolean"}, "location" => %{"shape" => "ResourceLocation"}, "operationDetails" => %{"shape" => "string"}, "operationType" => %{"shape" => "OperationType"}, "resourceName" => %{"shape" => "ResourceName"}, "resourceType" => %{"shape" => "ResourceType"}, "status" => %{"shape" => "OperationStatus"}, "statusChangedAt" => %{"shape" => "IsoDate"}}, "type" => "structure"}, "AccessDirection" => %{"enum" => ["inbound", "outbound"], "type" => "string"}, "GetKeyPairsResult" => %{"members" => %{"keyPairs" => %{"shape" => "KeyPairList"}, "nextPageToken" => %{"shape" => "string"}}, "type" => "structure"}, "DomainEntryOptions" => %{"key" => %{"shape" => "DomainEntryOptionsKeys"}, "type" => "map", "value" => %{"shape" => "string"}}, "Blueprint" => %{"members" => %{"blueprintId" => %{"shape" => "NonEmptyString"}, "description" => %{"shape" => "string"}, "group" => %{"shape" => "NonEmptyString"}, "isActive" => %{"shape" => "boolean"}, "licenseUrl" => %{"shape" => "string"}, "minPower" => %{"shape" => "integer"}, "name" => %{"shape" => "ResourceName"}, "productUrl" => %{"shape" => "string"}, "type" => %{"shape" => "BlueprintType"}, "version" => %{"shape" => "string"}, "versionCode" => %{"shape" => "string"}}, "type" => "structure"}, "InstanceAccessProtocol" => %{"enum" => ["ssh", "rdp"], "type" => "string"}, "GetOperationResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "StopInstanceResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "RebootInstanceResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "PeerVpcResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "NonEmptyString" => %{"pattern" => ".*\\S.*", "type" => "string"}, "double" => %{"type" => "double"}, "GetInstanceStateResult" => %{"members" => %{"state" => %{"shape" => "InstanceState"}}, "type" => "structure"}, "DomainName" => %{"type" => "string"}, "InstancePortInfoList" => %{"member" => %{"shape" => "InstancePortInfo"}, "type" => "list"}, "GetStaticIpsResult" => %{"members" => %{"nextPageToken" => %{"shape" => "string"}, "staticIps" => %{"shape" => "StaticIpList"}}, "type" => "structure"}, "GetInstanceSnapshotsResult" => %{"members" => %{"instanceSnapshots" => %{"shape" => "InstanceSnapshotList"}, "nextPageToken" => %{"shape" => "string"}}, "type" => "structure"}, "InstanceNetworking" => %{"members" => %{"monthlyTransfer" => %{"shape" => "MonthlyTransfer"}, "ports" => %{"shape" => "InstancePortInfoList"}}, "type" => "structure"}, "MetricUnit" => %{"enum" => ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"], "type" => "string"}, "MetricDatapointList" => %{"member" => %{"shape" => "MetricDatapoint"}, "type" => "list"}, "CreateInstanceSnapshotResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "GetBlueprintsRequest" => %{"members" => %{"includeInactive" => %{"shape" => "boolean"}, "pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "GetActiveNamesRequest" => %{"members" => %{"pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "DetachStaticIpRequest" => %{"members" => %{"staticIpName" => %{"shape" => "ResourceName"}}, "required" => ["staticIpName"], "type" => "structure"}, "NotFoundException" => %{"exception" => true, "members" => %{"code" => %{"shape" => "string"}, "docs" => %{"shape" => "string"}, "message" => %{"shape" => "string"}, "tip" => %{"shape" => "string"}}, "type" => "structure"}, "ImportKeyPairRequest" => %{"members" => %{"keyPairName" => %{"shape" => "ResourceName"}, "publicKeyBase64" => %{"shape" => "Base64"}}, "required" => ["keyPairName", "publicKeyBase64"], "type" => "structure"}, "string" => %{"type" => "string"}, "timestamp" => %{"type" => "timestamp"}, "DeleteInstanceRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}}, "required" => ["instanceName"], "type" => "structure"}, "float" => %{"type" => "float"}, "ReleaseStaticIpResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "GetInstanceStateRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}}, "required" => ["instanceName"], "type" => "structure"}, "NetworkProtocol" => %{"enum" => ["tcp", "all", "udp"], "type" => "string"}, "GetOperationsResult" => %{"members" => %{"nextPageToken" => %{"shape" => "string"}, "operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "DeleteInstanceResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "PortState" => %{"enum" => ["open", "closed"], "type" => "string"}, "PortAccessType" => %{"enum" => ["Public", "Private"], "type" => "string"}, "PortInfoList" => %{"member" => %{"shape" => "PortInfo"}, "type" => "list"}, "GetInstanceResult" => %{"members" => %{"instance" => %{"shape" => "Instance"}}, "type" => "structure"}, "StartInstanceRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}}, "required" => ["instanceName"], "type" => "structure"}, "AvailabilityZone" => %{"members" => %{"state" => %{"shape" => "NonEmptyString"}, "zoneName" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "MetricDatapoint" => %{"members" => %{"average" => %{"shape" => "double"}, "maximum" => %{"shape" => "double"}, "minimum" => %{"shape" => "double"}, "sampleCount" => %{"shape" => "double"}, "sum" => %{"shape" => "double"}, "timestamp" => %{"shape" => "timestamp"}, "unit" => %{"shape" => "MetricUnit"}}, "type" => "structure"}, "UpdateDomainEntryResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "GetInstanceSnapshotResult" => %{"members" => %{"instanceSnapshot" => %{"shape" => "InstanceSnapshot"}}, "type" => "structure"}, "GetKeyPairRequest" => %{"members" => %{"keyPairName" => %{"shape" => "ResourceName"}}, "required" => ["keyPairName"], "type" => "structure"}, "GetRegionsResult" => %{"members" => %{"regions" => %{"shape" => "RegionList"}}, "type" => "structure"}, "InstanceMetricName" => %{"enum" => ["CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance", "StatusCheckFailed_System"], "type" => "string"}, "GetInstancePortStatesRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}}, "required" => ["instanceName"], "type" => "structure"}, "CreateDomainResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "ReleaseStaticIpRequest" => %{"members" => %{"staticIpName" => %{"shape" => "ResourceName"}}, "required" => ["staticIpName"], "type" => "structure"}, "GetDomainResult" => %{"members" => %{"domain" => %{"shape" => "Domain"}}, "type" => "structure"}, "OperationFailureException" => %{"exception" => true, "members" => %{"code" => %{"shape" => "string"}, "docs" => %{"shape" => "string"}, "message" => %{"shape" => "string"}, "tip" => %{"shape" => "string"}}, "type" => "structure"}, "OperationType" => %{"enum" => ["DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"], "type" => "string"}, "GetInstanceMetricDataRequest" => %{"members" => %{"endTime" => %{"shape" => "timestamp"}, "instanceName" => %{"shape" => "ResourceName"}, "metricName" => %{"shape" => "InstanceMetricName"}, "period" => %{"shape" => "MetricPeriod"}, "startTime" => %{"shape" => "timestamp"}, "statistics" => %{"shape" => "MetricStatisticList"}, "unit" => %{"shape" => "MetricUnit"}}, "required" => ["instanceName", "metricName", "period", "startTime", "endTime", "unit", "statistics"], "type" => "structure"}, "DeleteDomainRequest" => %{"members" => %{"domainName" => %{"shape" => "DomainName"}}, "required" => ["domainName"], "type" => "structure"}, "InstanceState" => %{"members" => %{"code" => %{"shape" => "integer"}, "name" => %{"shape" => "string"}}, "type" => "structure"}, "CreateInstancesResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "InstanceSnapshotState" => %{"enum" => ["pending", "error", "available"], "type" => "string"}, "AttachStaticIpRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}, "staticIpName" => %{"shape" => "ResourceName"}}, "required" => ["staticIpName", "instanceName"], "type" => "structure"}, "IpAddress" => %{"pattern" => "([0-9]{1,3}\\.){3}[0-9]{1,3}", "type" => "string"}, "UnauthenticatedException" => %{"exception" => true, "members" => %{"code" => %{"shape" => "string"}, "docs" => %{"shape" => "string"}, "message" => %{"shape" => "string"}, "tip" => %{"shape" => "string"}}, "type" => "structure"}, "MetricStatisticList" => %{"member" => %{"shape" => "MetricStatistic"}, "type" => "list"}, "GetInstanceSnapshotsRequest" => %{"members" => %{"pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "InstancePortInfo" => %{"members" => %{"accessDirection" => %{"shape" => "AccessDirection"}, "accessFrom" => %{"shape" => "string"}, "accessType" => %{"shape" => "PortAccessType"}, "commonName" => %{"shape" => "string"}, "fromPort" => %{"shape" => "Port"}, "protocol" => %{"shape" => "NetworkProtocol"}, "toPort" => %{"shape" => "Port"}}, "type" => "structure"}, "StaticIp" => %{"members" => %{"arn" => %{"shape" => "NonEmptyString"}, "attachedTo" => %{"shape" => "ResourceName"}, "createdAt" => %{"shape" => "IsoDate"}, "ipAddress" => %{"shape" => "IpAddress"}, "isAttached" => %{"shape" => "boolean"}, "location" => %{"shape" => "ResourceLocation"}, "name" => %{"shape" => "ResourceName"}, "resourceType" => %{"shape" => "ResourceType"}, "supportCode" => %{"shape" => "string"}}, "type" => "structure"}, "OpenInstancePublicPortsRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}, "portInfo" => %{"shape" => "PortInfo"}}, "required" => ["portInfo", "instanceName"], "type" => "structure"}, "DiskList" => %{"member" => %{"shape" => "Disk"}, "type" => "list"}, "IpV6Address" => %{"pattern" => "([A-F0-9]{1,4}:){7}[A-F0-9]{1,4}", "type" => "string"}, "OperationList" => %{"member" => %{"shape" => "Operation"}, "type" => "list"}, "IsoDate" => %{"type" => "timestamp"}, "GetOperationsRequest" => %{"members" => %{"pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "Bundle" => %{"members" => %{"bundleId" => %{"shape" => "NonEmptyString"}, "cpuCount" => %{"shape" => "integer"}, "diskSizeInGb" => %{"shape" => "integer"}, "instanceType" => %{"shape" => "string"}, "isActive" => %{"shape" => "boolean"}, "name" => %{"shape" => "string"}, "power" => %{"shape" => "integer"}, "price" => %{"shape" => "float"}, "ramSizeInGb" => %{"shape" => "float"}, "transferPerMonthInGb" => %{"shape" => "integer"}}, "type" => "structure"}, "DeleteKeyPairResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "DeleteDomainResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "BlueprintList" => %{"member" => %{"shape" => "Blueprint"}, "type" => "list"}, "GetBundlesRequest" => %{"members" => %{"includeInactive" => %{"shape" => "boolean"}, "pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "StaticIpList" => %{"member" => %{"shape" => "StaticIp"}, "type" => "list"}, "Base64" => %{"type" => "string"}, "GetInstanceAccessDetailsResult" => %{"members" => %{"accessDetails" => %{"shape" => "InstanceAccessDetails"}}, "type" => "structure"}, "GetDomainsRequest" => %{"members" => %{"pageToken" => %{"shape" => "string"}}, "type" => "structure"}, "GetStaticIpResult" => %{"members" => %{"staticIp" => %{"shape" => "StaticIp"}}, "type" => "structure"}, "DeleteDomainEntryRequest" => %{"members" => %{"domainEntry" => %{"shape" => "DomainEntry"}, "domainName" => %{"shape" => "DomainName"}}, "required" => ["domainName", "domainEntry"], "type" => "structure"}, "DownloadDefaultKeyPairRequest" => %{"members" => %{}, "type" => "structure"}, "CreateDomainEntryResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "GetOperationRequest" => %{"members" => %{"operationId" => %{"shape" => "NonEmptyString"}}, "required" => ["operationId"], "type" => "structure"}, "RebootInstanceRequest" => %{"members" => %{"instanceName" => %{"shape" => "ResourceName"}}, "required" => ["instanceName"], "type" => "structure"}, "IsVpcPeeredResult" => %{"members" => %{"isPeered" => %{"shape" => "boolean"}}, "type" => "structure"}, "RegionName" => %{"enum" => ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"], "type" => "string"}, "ResourceName" => %{"pattern" => "\\w[\\w\\-]*\\w", "type" => "string"}, "DomainEntry" => %{"members" => %{"id" => %{"shape" => "NonEmptyString"}, "name" => %{"shape" => "DomainName"}, "options" => %{"shape" => "DomainEntryOptions"}, "target" => %{"shape" => "string"}, "type" => %{"shape" => "DomainEntryType"}}, "type" => "structure"}, "InstancePortStateList" => %{"member" => %{"shape" => "InstancePortState"}, "type" => "list"}, "UnpeerVpcRequest" => %{"members" => %{}, "type" => "structure"}, "CloseInstancePublicPortsResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "GetRegionsRequest" => %{"members" => %{"includeAvailabilityZones" => %{"shape" => "boolean"}}, "type" => "structure"}, "GetOperationsForResourceResult" => %{"members" => %{"nextPageCount" => %{"deprecated" => true, "shape" => "string"}, "nextPageToken" => %{"shape" => "string"}, "operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "DeleteKeyPairRequest" => %{"members" => %{"keyPairName" => %{"shape" => "ResourceName"}}, "required" => ["keyPairName"], "type" => "structure"}, "integer" => %{"type" => "integer"}, "CreateKeyPairResult" => %{"members" => %{"keyPair" => %{"shape" => "KeyPair"}, "operation" => %{"shape" => "Operation"}, "privateKeyBase64" => %{"shape" => "Base64"}, "publicKeyBase64" => %{"shape" => "Base64"}}, "type" => "structure"}, "DomainList" => %{"member" => %{"shape" => "Domain"}, "type" => "list"}, "AllocateStaticIpResult" => %{"members" => %{"operations" => %{"shape" => "OperationList"}}, "type" => "structure"}, "GetDomainRequest" => %{"members" => %{"domainName" => %{"shape" => "DomainName"}}, "required" => ["domainName"], "type" => "structure"}, "AccountSetupInProgressException" => %{"exception" => true, "members" => %{"code" => %{"shape" => "string"}, "docs" => %{"shape" => "string"}, "message" => %{"shape" => "string"}, "tip" => %{"shape" => "string"}}, "type" => "structure"}, "UnpeerVpcResult" => %{"members" => %{"operation" => %{"shape" => "Operation"}}, "type" => "structure"}, "InvalidInputException" => %{"exception" => true, "members" => %{"code" => %{"shape" => "string"}, "docs" => %{"shape" => "string"}, "message" => %{"shape" => "string"}, "tip" => %{"shape" => "string"}}, "type" => "structure"}, "MetricStatistic" => %{"enum" => ["Minimum", "Maximum", "Sum", "Average", "SampleCount"], "type" => "string"}, "DownloadDefaultKeyPairResult" => %{"members" => %{"privateKeyBase64" => %{"shape" => "Base64"}, "publicKeyBase64" => %{"shape" => "Base64"}}, "type" => "structure"}, "Instance" => %{"members" => %{"arn" => %{"shape" => "NonEmptyString"}, "blueprintId" => %{"shape" => "NonEmptyString"}, "blueprintName" => %{"shape" => "NonEmptyString"}, "bundleId" => %{"shape" => "NonEmptyString"}, "createdAt" => %{"shape" => "IsoDate"}, "hardware" => %{"shape" => "InstanceHardware"}, "ipv6Address" => %{"shape" => "IpV6Address"}, "isStaticIp" => %{"shape" => "boolean"}, "location" => %{"shape" => "ResourceLocation"}, "name" => %{"shape" => "ResourceName"}, "networking" => %{"shape" => "InstanceNetworking"}, "privateIpAddress" => %{"shape" => "IpAddress"}, "publicIpAddress" => %{"shape" => "IpAddress"}, "resourceType" => %{"shape" => "ResourceType"}, "sshKeyName" => %{"shape" => "ResourceName"}, "state" => %{"shape" => "InstanceState"}, "supportCode" => %{"shape" => "string"}, "username" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "Domain" => %{"members" => %{"arn" => %{"shape" => "NonEmptyString"}, "createdAt" => %{"shape" => "IsoDate"}, "domainEntries" => %{"shape" => "DomainEntryList"}, "location" => %{"shape" => "ResourceLocation"}, "name" => %{"shape" => "ResourceName"}, "resourceType" => %{"shape" => "ResourceType"}, "supportCode" => %{"shape" => "string"}}, "type" => "structure"}}
  end
end