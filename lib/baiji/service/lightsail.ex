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
      input:    input,
      options:  options,
      action:   "CreateInstancesFromSnapshot",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a specific Amazon Lightsail virtual private server, or *instance*.
  """
  def delete_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteInstance",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a specific static IP from your account.
  """
  def release_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ReleaseStaticIp",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "RebootInstance",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets operations for a specific resource (e.g., an instance or a static IP).
  """
  def get_operations_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetOperationsForResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a specific SSH key pair.
  """
  def delete_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteKeyPair",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a specific operation. Operations include events
  such as when you create an instance, allocate a static IP, attach a static
  IP, and so on.
  """
  def get_operation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetOperation",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a specific instance snapshot.
  """
  def get_instance_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetInstanceSnapshot",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Imports a public SSH key from a specific key pair.
  """
  def import_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ImportKeyPair",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Tries to peer the Lightsail VPC with the user's default VPC.
  """
  def peer_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PeerVpc",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified domain recordset and all of its domain records.
  """
  def delete_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteDomain",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a snapshot of a specific virtual private server, or *instance*. You
  can use a snapshot to create a new instance that is based on that snapshot.
  """
  def create_instance_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateInstanceSnapshot",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates one or more Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def create_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateInstances",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Detaches a static IP from the Amazon Lightsail instance to which it is
  attached.
  """
  def detach_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DetachStaticIp",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "GetOperations",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the names of all active (not deleted) resources.
  """
  def get_active_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetActiveNames",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a domain resource for the specified domain (e.g., example.com).
  """
  def create_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateDomain",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a specific domain entry.
  """
  def delete_domain_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteDomainEntry",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a specific static IP.
  """
  def get_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetStaticIp",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about all static IPs in the user's account.
  """
  def get_static_ips(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetStaticIps",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Allocates a static IP address.
  """
  def allocate_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AllocateStaticIp",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about all key pairs in the user's account.
  """
  def get_key_pairs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetKeyPairs",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a list of all domains in the user's account.
  """
  def get_domains(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetDomains",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a Boolean value indicating whether your Lightsail VPC is peered.
  """
  def is_vpc_peered(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "IsVpcPeered",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a list of all valid regions for Amazon Lightsail. Use the `include
  availability zones` parameter to also return the availability zones in a
  region.
  """
  def get_regions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetRegions",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Downloads the default SSH key pair from the user's account.
  """
  def download_default_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DownloadDefaultKeyPair",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Adds public ports to an Amazon Lightsail instance.
  """
  def open_instance_public_ports(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "OpenInstancePublicPorts",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the port states for a specific virtual private server, or
  *instance*.
  """
  def get_instance_port_states(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetInstancePortStates",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Attempts to unpeer the Lightsail VPC from the user's default VPC.
  """
  def unpeer_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UnpeerVpc",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Stops a specific Amazon Lightsail instance that is currently running.
  """
  def stop_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "StopInstance",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Sets the specified open ports for an Amazon Lightsail instance, and closes
  all ports for every protocol not included in the current request.
  """
  def put_instance_public_ports(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutInstancePublicPorts",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates one of the following entry records associated with the domain: A
  record, CNAME record, TXT record, or MX record.
  """
  def create_domain_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateDomainEntry",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the list of bundles that are available for purchase. A bundle
  describes the specs for your virtual private server (or *instance*).
  """
  def get_bundles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBundles",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns temporary SSH keys you can use to connect to a specific virtual
  private server, or *instance*.
  """
  def get_instance_access_details(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetInstanceAccessDetails",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Closes the public ports on a specific Amazon Lightsail instance.
  """
  def close_instance_public_ports(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CloseInstancePublicPorts",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the data points for the specified Amazon Lightsail instance metric,
  given an instance name.
  """
  def get_instance_metric_data(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetInstanceMetricData",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns all instance snapshots for the user's account.
  """
  def get_instance_snapshots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetInstanceSnapshots",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates a domain recordset after it is created.
  """
  def update_domain_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateDomainEntry",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a specific key pair.
  """
  def get_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetKeyPair",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a specific Amazon Lightsail instance, which is a
  virtual private server.
  """
  def get_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetInstance",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about all Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def get_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetInstances",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "GetBlueprints",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the state of a specific instance. Works on one instance at a time.
  """
  def get_instance_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetInstanceState",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about a specific domain recordset.
  """
  def get_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetDomain",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Starts a specific Amazon Lightsail instance from a stopped state. To
  restart an instance, use the reboot instance operation.
  """
  def start_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "StartInstance",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a specific snapshot of a virtual private server (or *instance*).
  """
  def delete_instance_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteInstanceSnapshot",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates sn SSH key pair.
  """
  def create_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateKeyPair",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Attaches a static IP address to a specific Amazon Lightsail instance.
  """
  def attach_static_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AttachStaticIp",
      type:     :json,
      method:   :post
    }
  end
  
end