defmodule Baiji.EC2 do
  @moduledoc """
  Amazon Elastic Compute Cloud

  Amazon Elastic Compute Cloud (Amazon EC2) provides resizable computing
  capacity in the Amazon Web Services (AWS) cloud. Using Amazon EC2
  eliminates your need to invest in hardware up front, so you can develop and
  deploy applications faster.
  """
  
  @doc """
  Import single or multi-volume disk images or EBS snapshots into an Amazon
  Machine Image (AMI). For more information, see [Importing a VM as an Image
  Using VM
  Import/Export](http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html)
  in the *VM Import/Export User Guide*.
  """
  def import_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ImportImage",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your network ACLs.

  For more information about network ACLs, see [Network
  ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def describe_network_acls(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeNetworkAcls",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Initiates the copy of an AMI from the specified source region to the
  current region. You specify the destination region by using its endpoint
  when making the request.

  For more information about the prerequisites and limits when copying an
  AMI, see [Copying an
  AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def copy_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CopyImage",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your VPN connections.

  For more information about VPN connections, see [Adding a Hardware Virtual
  Private Gateway to Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in
  the *Amazon Virtual Private Cloud User Guide*.
  """
  def describe_vpn_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpnConnections",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates an import instance task using metadata from the specified disk
  image. `ImportInstance` only supports single-volume VMs. To import
  multi-volume VMs, use `ImportImage`. For more information, see [Importing a
  Virtual Machine Using the Amazon EC2
  CLI](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).

  For information about the import manifest referenced by this API action,
  see [VM Import
  Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  """
  def import_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ImportInstance",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the data feed for Spot instances. For more information, see [Spot
  Instance Data
  Feed](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_spot_datafeed_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSpotDatafeedSubscription",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Stops an Amazon EBS-backed instance.

  We don't charge hourly usage for a stopped instance, or data transfer fees;
  however, your root partition Amazon EBS volume remains, continues to
  persist your data, and you are charged for Amazon EBS volume usage. Each
  time you transition an instance from stopped to started, Amazon EC2 charges
  a full instance hour, even if transitions happen multiple times within a
  single hour.

  You can't start or stop Spot instances, and you can't stop instance
  store-backed instances.

  When you stop an instance, we shut it down. You can restart your instance
  at any time. Before stopping an instance, make sure it is in a state from
  which it can be restarted. Stopping an instance does not preserve data
  stored in RAM.

  Stopping an instance is different to rebooting or terminating it. For
  example, when you stop an instance, the root device and any other devices
  attached to the instance persist. When you terminate an instance, the root
  device and any other devices attached during the instance launch are
  automatically deleted. For more information about the differences between
  rebooting, stopping, and terminating instances, see [Instance
  Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  When you stop an instance, we attempt to shut it down forcibly after a
  short while. If your instance appears stuck in the stopping state after a
  period of time, there may be an issue with the underlying host computer.
  For more information, see [Troubleshooting Stopping Your
  Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def stop_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Allocates a Dedicated Host to your account. At minimum you need to specify
  the instance size type, Availability Zone, and quantity of hosts you want
  to allocate.
  """
  def allocate_hosts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AllocateHosts",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the data feed for Spot instances.
  """
  def delete_spot_datafeed_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSpotDatafeedSubscription",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Preview a reservation purchase with configurations that match those of your
  Dedicated Host. You must have active Dedicated Hosts in your account before
  you purchase a reservation.

  This is a preview of the `PurchaseHostReservation` action and does not
  result in the offering being purchased.
  """
  def get_host_reservation_purchase_preview(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetHostReservationPurchasePreview",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the status of the specified volumes. Volume status provides the
  result of the checks performed on your volumes to determine events that can
  impair the performance of your volumes. The performance of a volume can be
  affected if an issue occurs on the volume's underlying host. If the
  volume's underlying host experiences a power outage or system issue, after
  the system is restored, there could be data inconsistencies on the volume.
  Volume events notify you if this occurs. Volume actions notify you if any
  action needs to be taken in response to the event.

  The `DescribeVolumeStatus` operation provides the following information
  about the specified volumes:

  *Status*: Reflects the current status of the volume. The possible values
  are `ok`, `impaired` , `warning`, or `insufficient-data`. If all checks
  pass, the overall status of the volume is `ok`. If the check fails, the
  overall status is `impaired`. If the status is `insufficient-data`, then
  the checks may still be taking place on your volume at the time. We
  recommend that you retry the request. For more information on volume
  status, see [Monitoring the Status of Your
  Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html).

  *Events*: Reflect the cause of a volume status and may require you to take
  action. For example, if your volume returns an `impaired` status, then the
  volume event might be `potential-data-inconsistency`. This means that your
  volume has been affected by an issue with the underlying host, has all I/O
  operations disabled, and may have inconsistent data.

  *Actions*: Reflect the actions you may have to take in response to an
  event. For example, if the status of the volume is `impaired` and the
  volume event shows `potential-data-inconsistency`, then the action shows
  `enable-volume-io`. This means that you may want to enable the I/O
  operations for the volume by calling the `EnableVolumeIO` action and then
  check the volume for data consistency.

  <note> Volume status is based on the volume status checks, and does not
  reflect the volume state. Therefore, volume status does not indicate
  volumes in the `error` state (for example, when a volume is incapable of
  accepting I/O.)

  </note>
  """
  def describe_volume_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVolumeStatus",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Cancels an active export task. The request removes all artifacts of the
  export, including any partially-created Amazon S3 objects. If the export
  task is complete or is in the process of transferring the final disk image,
  the command fails and returns an error.
  """
  def cancel_export_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelExportTask",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified key pair, by removing the public key from Amazon EC2.
  """
  def delete_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteKeyPair",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Determines whether a product code is associated with an instance. This
  action can only be used by the owner of the product code. It is useful when
  a product code owner needs to verify whether another user's instance is
  eligible for support.
  """
  def confirm_product_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ConfirmProductInstance",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC
  platform. The Elastic IP address must be allocated to your account for more
  than 24 hours, and it must not be associated with an instance. After the
  Elastic IP address is moved, it is no longer available for use in the
  EC2-Classic platform, unless you move it back using the
  `RestoreAddressToClassic` request. You cannot move an Elastic IP address
  that was originally allocated for use in the EC2-VPC platform to the
  EC2-Classic platform.
  """
  def move_address_to_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "MoveAddressToVpc",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the ID format settings for your resources on a per-region basis,
  for example, to view which resource types are enabled for longer IDs. This
  request only returns information about resource types whose ID formats can
  be modified; it does not return information about other resource types.

  The following resource types support longer IDs: `instance` | `reservation`
  | `snapshot` | `volume`.

  These settings apply to the IAM user who makes the request; they do not
  apply to the entire AWS account. By default, an IAM user defaults to the
  same settings as the root user, unless they explicitly override the
  settings by running the `ModifyIdFormat` command. Resources created with
  longer IDs are visible to all IAM users, regardless of these settings and
  provided that they have permission to use the relevant `Describe` command
  for the resource type.
  """
  def describe_id_format(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeIdFormat",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a NAT gateway in the specified subnet. A NAT gateway can be used to
  enable instances in a private subnet to connect to the Internet. This
  action creates a network interface in the specified subnet with a private
  IP address from the IP address range of the subnet. For more information,
  see [NAT
  Gateways](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_nat_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateNatGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates an import volume task using metadata from the specified disk
  image.For more information, see [Importing Disks to Amazon
  EBS](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/importing-your-volumes-into-amazon-ebs.html).

  For information about the import manifest referenced by this API action,
  see [VM Import
  Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  """
  def import_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ImportVolume",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes Dedicated Host Reservations which are associated with Dedicated
  Hosts in your account.
  """
  def describe_host_reservations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeHostReservations",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Reports the current modification status of EBS volumes.

  Current-generation EBS volumes support modification of attributes including
  type, size, and (for `io1` volumes) IOPS provisioning while either attached
  to or detached from an instance. Following an action from the API or the
  console to modify a volume, the status of the modification may be
  `modifying`, `optimizing`, `completed`, or `failed`. If a volume has never
  been modified, then certain elements of the returned `VolumeModification`
  objects are null.

  You can also use CloudWatch Events to check the status of a modification to
  an EBS volume. For information about CloudWatch Events, see the [Amazon
  CloudWatch Events User
  Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). For
  more information, see [Monitoring Volume
  Modifications"](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods).
  """
  def describe_volumes_modifications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVolumesModifications",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Cancels an active conversion task. The task can be the import of an
  instance or volume. The action removes all artifacts of the conversion,
  including a partially uploaded volume or instance. If the conversion is
  complete or is in the process of transferring the final disk image, the
  command fails and returns an exception.

  For more information, see [Importing a Virtual Machine Using the Amazon EC2
  CLI](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).
  """
  def cancel_conversion_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelConversionTask",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Finds available schedules that meet the specified criteria.

  You can search for an available schedule no more than 3 months in advance.
  You must meet the minimum required duration of 1,200 hours per year. For
  example, the minimum daily schedule is 4 hours, the minimum weekly schedule
  is 24 hours, and the minimum monthly schedule is 100 hours.

  After you find a schedule that meets your needs, call
  `PurchaseScheduledInstances` to purchase Scheduled Instances with that
  schedule.
  """
  def describe_scheduled_instance_availability(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeScheduledInstanceAvailability",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Imports the public key from an RSA key pair that you created with a
  third-party tool. Compare this with `CreateKeyPair`, in which AWS creates
  the key pair and gives the keys to you (AWS keeps a copy of the public
  key). With ImportKeyPair, you create the key pair and give AWS just the
  public key. The private key is never transferred between you and AWS.

  For more information about key pairs, see [Key
  Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def import_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ImportKeyPair",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your Elastic IP addresses.

  An Elastic IP address is for use in either the EC2-Classic platform or in a
  VPC. For more information, see [Elastic IP
  Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAddresses",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a route in a route table within a VPC.

  You must specify one of the following targets: Internet gateway or virtual
  private gateway, NAT instance, NAT gateway, VPC peering connection, network
  interface, or egress-only Internet gateway.

  When determining how to route traffic, we use the route with the most
  specific match. For example, traffic is destined for the IPv4 address
  `192.0.2.3`, and the route table includes the following two IPv4 routes:

  <ul> <li> `192.0.2.0/24` (goes to some target A)

  </li> <li> `192.0.2.0/28` (goes to some target B)

  </li> </ul> Both routes apply to the traffic destined for `192.0.2.3`.
  However, the second route in the list covers a smaller number of IP
  addresses and is therefore more specific, so we use that route to determine
  where to target the traffic.

  For more information about route tables, see [Route
  Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_route(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateRoute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disassociates a CIDR block from a VPC. To disassociate the CIDR block, you
  must specify its association ID. You can get the association ID by using
  `DescribeVpcs`. You must detach or delete all gateways and resources that
  are associated with the CIDR block before you can disassociate it.

  You cannot disassociate the CIDR block with which you originally created
  the VPC (the primary CIDR block).
  """
  def disassociate_vpc_cidr_block(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisassociateVpcCidrBlock",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies a volume attribute.

  By default, all I/O operations for the volume are suspended when the data
  on the volume is determined to be potentially inconsistent, to prevent
  undetectable, latent data corruption. The I/O access to the volume can be
  resumed by first enabling I/O access and then checking the data consistency
  on your volume.

  You can change the default behavior to resume I/O operations. We recommend
  that you change this only for boot volumes or for volumes that are
  stateless or disposable.
  """
  def modify_volume_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyVolumeAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a network interface in the specified subnet.

  For more information about network interfaces, see [Elastic Network
  Interfaces](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_network_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateNetworkInterface",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your conversion tasks. For more information, see
  the [VM Import/Export User
  Guide](http://docs.aws.amazon.com/vm-import/latest/userguide/).

  For information about the import manifest referenced by this API action,
  see [VM Import
  Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  """
  def describe_conversion_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeConversionTasks",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the specified network interface attribute. You can specify only
  one attribute at a time.
  """
  def modify_network_interface_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyNetworkInterfaceAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the specified EBS volumes.

  If you are describing a long list of volumes, you can paginate the output
  to make the list more manageable. The `MaxResults` parameter sets the
  maximum number of results returned in a single page. If the list of results
  exceeds your `MaxResults` value, then that number of results is returned
  along with a `NextToken` value that can be passed to a subsequent
  `DescribeVolumes` request to retrieve the remaining results.

  For more information about EBS volumes, see [Amazon EBS
  Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_volumes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVolumes",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the Spot instance requests that belong to your account. Spot
  instances are instances that Amazon EC2 launches when the bid price that
  you specify exceeds the current Spot price. Amazon EC2 periodically sets
  the Spot price based on available Spot instance capacity and current Spot
  instance requests. For more information, see [Spot Instance
  Requests](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  You can use `DescribeSpotInstanceRequests` to find a running Spot instance
  by examining the response. If the status of the Spot instance is
  `fulfilled`, the instance ID appears in the response and contains the
  identifier of the instance. Alternatively, you can use `DescribeInstances`
  with a filter to look for instances where the instance lifecycle is `spot`.

  Spot instance requests are deleted 4 hours after they are canceled and
  their instances are terminated.
  """
  def describe_spot_instance_requests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSpotInstanceRequests",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your subnets.

  For more information about subnets, see [Your VPC and
  Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def describe_subnets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSubnets",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Returns details about the values and term of your specified Convertible
  Reserved Instances. When a target configuration is specified, it returns
  information about whether the exchange is valid and can be performed.
  """
  def get_reserved_instances_exchange_quote(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetReservedInstancesExchangeQuote",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified static route associated with a VPN connection between
  an existing virtual private gateway and a VPN customer gateway. The static
  route allows traffic to be routed from the virtual private gateway to the
  VPN customer gateway.
  """
  def delete_vpn_connection_route(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVpnConnectionRoute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified placement group. You must terminate all instances in
  the placement group before you can delete the placement group. For more
  information about placement groups and cluster instances, see [Cluster
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def delete_placement_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeletePlacementGroup",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  [EC2-VPC only] Describes the stale security group rules for security groups
  in a specified VPC. Rules are stale when they reference a deleted security
  group in a peer VPC, or a security group in a peer VPC for which the VPC
  peering connection has been deleted.
  """
  def describe_stale_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeStaleSecurityGroups",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a VPN connection between an existing virtual private gateway and a
  VPN customer gateway. The only supported connection type is `ipsec.1`.

  The response includes information that you need to give to your network
  administrator to configure your customer gateway.

  <important> We strongly recommend that you use HTTPS when calling this
  operation because the response contains sensitive cryptographic information
  for configuring your customer gateway.

  </important> If you decide to shut down your VPN connection for any reason
  and later create a new VPN connection, you must reconfigure your customer
  gateway with the new information returned from this call.

  This is an idempotent operation. If you perform the operation more than
  once, Amazon EC2 doesn't return an error.

  For more information about VPN connections, see [Adding a Hardware Virtual
  Private Gateway to Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in
  the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_vpn_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateVpnConnection",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the specified Spot fleet request.

  While the Spot fleet request is being modified, it is in the `modifying`
  state.

  To scale up your Spot fleet, increase its target capacity. The Spot fleet
  launches the additional Spot instances according to the allocation strategy
  for the Spot fleet request. If the allocation strategy is `lowestPrice`,
  the Spot fleet launches instances using the Spot pool with the lowest
  price. If the allocation strategy is `diversified`, the Spot fleet
  distributes the instances across the Spot pools.

  To scale down your Spot fleet, decrease its target capacity. First, the
  Spot fleet cancels any open bids that exceed the new target capacity. You
  can request that the Spot fleet terminate Spot instances until the size of
  the fleet no longer exceeds the new target capacity. If the allocation
  strategy is `lowestPrice`, the Spot fleet terminates the instances with the
  highest price per unit. If the allocation strategy is `diversified`, the
  Spot fleet terminates instances across the Spot pools. Alternatively, you
  can request that the Spot fleet keep the fleet at its current size, but not
  replace any Spot instances that are interrupted or that you terminate
  manually.
  """
  def modify_spot_fleet_request(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifySpotFleetRequest",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Resets a network interface attribute. You can specify only one attribute at
  a time.
  """
  def reset_network_interface_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResetNetworkInterfaceAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes a VPC peering connection. Either the owner of the requester VPC or
  the owner of the peer VPC can delete the VPC peering connection if it's in
  the `active` state. The owner of the requester VPC can delete a VPC peering
  connection in the `pending-acceptance` state.
  """
  def delete_vpc_peering_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVpcPeeringConnection",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Associates a subnet with a route table. The subnet and route table must be
  in the same VPC. This association causes traffic originating from the
  subnet to be routed according to the routes in the route table. The action
  returns an association ID, which you need in order to disassociate the
  route table from the subnet later. A route table can be associated with
  multiple subnets.

  For more information about route tables, see [Route
  Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def associate_route_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssociateRouteTable",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Requests a VPC peering connection between two VPCs: a requester VPC that
  you own and a peer VPC with which to create the connection. The peer VPC
  can belong to another AWS account. The requester VPC and peer VPC cannot
  have overlapping CIDR blocks.

  The owner of the peer VPC must accept the peering request to activate the
  peering connection. The VPC peering connection request expires after 7
  days, after which it cannot be accepted or rejected.

  If you try to create a VPC peering connection between VPCs that have
  overlapping CIDR blocks, the VPC peering connection status goes to
  `failed`.
  """
  def create_vpc_peering_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateVpcPeeringConnection",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a Spot fleet request.

  You can submit a single request that includes multiple launch
  specifications that vary by instance type, AMI, Availability Zone, or
  subnet.

  By default, the Spot fleet requests Spot instances in the Spot pool where
  the price per unit is the lowest. Each launch specification can include its
  own instance weighting that reflects the value of the instance type to your
  application workload.

  Alternatively, you can specify that the Spot fleet distribute the target
  capacity across the Spot pools included in its launch specifications. By
  ensuring that the Spot instances in your Spot fleet are in different Spot
  pools, you can improve the availability of your fleet.

  For more information, see [Spot Fleet
  Requests](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def request_spot_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RequestSpotFleet",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the status of one or more instances. By default, only running
  instances are described, unless you specifically indicate to return the
  status of all instances.

  Instance status includes the following components:

  <ul> <li> **Status checks** - Amazon EC2 performs status checks on running
  EC2 instances to identify hardware and software issues. For more
  information, see [Status Checks for Your
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html)
  and [Troubleshooting Instances with Failed Status
  Checks](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  </li> <li> **Scheduled events** - Amazon EC2 can schedule events (such as
  reboot, stop, or terminate) for your instances related to hardware issues,
  software updates, or system maintenance. For more information, see
  [Scheduled Events for Your
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  </li> <li> **Instance state** - You can manage your instances from the
  moment you launch them through their termination. For more information, see
  [Instance
  Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  </li> </ul>
  """
  def describe_instance_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeInstanceStatus",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  [EC2-VPC only] Describes the VPCs on the other side of a VPC peering
  connection that are referencing the security groups you've specified in
  this request.
  """
  def describe_security_group_references(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSecurityGroupReferences",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your VPN customer gateways.

  For more information about VPN customer gateways, see [Adding a Hardware
  Virtual Private Gateway to Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in
  the *Amazon Virtual Private Cloud User Guide*.
  """
  def describe_customer_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCustomerGateways",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disassociates an Elastic IP address from the instance or network interface
  it's associated with.

  An Elastic IP address is for use in either the EC2-Classic platform or in a
  VPC. For more information, see [Elastic IP
  Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  This is an idempotent operation. If you perform the operation more than
  once, Amazon EC2 doesn't return an error.
  """
  def disassociate_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisassociateAddress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Cancels a bundling operation for an instance store-backed Windows instance.
  """
  def cancel_bundle_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelBundleTask",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified ingress or egress entry (rule) from the specified
  network ACL.
  """
  def delete_network_acl_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteNetworkAclEntry",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified route table. You must disassociate the route table
  from any subnets before you can delete it. You can't delete the main route
  table.
  """
  def delete_route_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteRouteTable",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of the images (AMIs, AKIs, and ARIs) available to
  you. Images available to you include public images, private images that you
  own, and private images owned by other AWS accounts but for which you have
  explicit launch permissions.

  <note> Deregistered images are included in the returned results for an
  unspecified interval after deregistration.

  </note>
  """
  def describe_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeImages",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Displays details about an import virtual machine or import snapshot tasks
  that are already created.
  """
  def describe_import_image_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeImportImageTasks",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your egress-only Internet gateways.
  """
  def describe_egress_only_internet_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeEgressOnlyInternetGateways",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified VPC. You must detach or delete all gateways and
  resources that are associated with the VPC before you can delete it. For
  example, you must terminate all instances running in the VPC, delete all
  security groups associated with the VPC (except the default one), delete
  all route tables associated with the VPC (except the default one), and so
  on.
  """
  def delete_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVpc",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the Spot price history. For more information, see [Spot Instance
  Pricing
  History](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  When you specify a start and end time, this operation returns the prices of
  the instance types within the time range that you specified and the time
  when the price changed. The price is valid within the time period that you
  specified; the response merely indicates the last time that the price
  changed.
  """
  def describe_spot_price_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSpotPriceHistory",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disables detailed monitoring for a running instance. For more information,
  see [Monitoring Your Instances and
  Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def unmonitor_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UnmonitorInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your route tables.

  Each subnet in your VPC must be associated with a route table. If a subnet
  is not explicitly associated with any route table, it is implicitly
  associated with the main route table. This command does not return the
  subnet ID for implicit associations.

  For more information about route tables, see [Route
  Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def describe_route_tables(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeRouteTables",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Associates a CIDR block with your VPC. You can associate a secondary IPv4
  CIDR block, or you can associate an Amazon-provided IPv6 CIDR block. The
  IPv6 CIDR block size is fixed at /56.

  For more information about associating CIDR blocks with your VPC and
  applicable restrictions, see [VPC and Subnet
  Sizing](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPC_Sizing)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def associate_vpc_cidr_block(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssociateVpcCidrBlock",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the ID format for the specified resource on a per-region basis.
  You can specify that resources should receive longer IDs (17-character IDs)
  when they are created. The following resource types support longer IDs:
  `instance` | `reservation` | `snapshot` | `volume`.

  This setting applies to the IAM user who makes the request; it does not
  apply to the entire AWS account. By default, an IAM user defaults to the
  same settings as the root user. If you're using this action as the root
  user, then these settings apply to the entire account, unless an IAM user
  explicitly overrides these settings for themselves. For more information,
  see [Resource
  IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  Resources created with longer IDs are visible to all IAM roles and users,
  regardless of these settings and provided that they have permission to use
  the relevant `Describe` command for the resource type.
  """
  def modify_id_format(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyIdFormat",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified network ACL. You can't delete the ACL if it's
  associated with any subnets. You can't delete the default network ACL.
  """
  def delete_network_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteNetworkAcl",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Set the instance affinity value for a specific stopped instance and modify
  the instance tenancy setting.

  Instance affinity is disabled by default. When instance affinity is `host`
  and it is not associated with a specific Dedicated Host, the next time it
  is launched it will automatically be associated with the host it lands on.
  This relationship will persist if the instance is stopped/started, or
  rebooted.

  You can modify the host ID associated with a stopped instance. If a stopped
  instance has a new host ID association, the instance will target that host
  when restarted.

  You can modify the tenancy of a stopped instance with a tenancy of `host`
  or `dedicated`.

  Affinity, hostID, and tenancy are not required parameters, but at least one
  of them must be specified in the request. Affinity and tenancy can be
  modified in the same request, but tenancy can only be modified on instances
  that are stopped.
  """
  def modify_instance_placement(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyInstancePlacement",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a Spot instance request. Spot instances are instances that Amazon
  EC2 launches when the bid price that you specify exceeds the current Spot
  price. Amazon EC2 periodically sets the Spot price based on available Spot
  Instance capacity and current Spot instance requests. For more information,
  see [Spot Instance
  Requests](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def request_spot_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RequestSpotInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Imports a disk into an EBS snapshot.
  """
  def import_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ImportSnapshot",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Launches the specified number of instances using an AMI for which you have
  permissions.

  You can specify a number of options, or leave the default options. The
  following rules apply:

  <ul> <li> [EC2-VPC] If you don't specify a subnet ID, we choose a default
  subnet from your default VPC for you. If you don't have a default VPC, you
  must specify a subnet ID in the request.

  </li> <li> [EC2-Classic] If don't specify an Availability Zone, we choose
  one for you.

  </li> <li> Some instance types must be launched into a VPC. If you do not
  have a default VPC, or if you do not specify a subnet ID, the request
  fails. For more information, see [Instance Types Available Only in a
  VPC](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types).

  </li> <li> [EC2-VPC] All instances have a network interface with a primary
  private IPv4 address. If you don't specify this address, we choose one from
  the IPv4 range of your subnet.

  </li> <li> Not all instance types support IPv6 addresses. For more
  information, see [Instance
  Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

  </li> <li> If you don't specify a security group ID, we use the default
  security group. For more information, see [Security
  Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).

  </li> <li> If any of the AMIs have a product code attached for which the
  user has not subscribed, the request fails.

  </li> </ul> To ensure faster instance launches, break up large requests
  into smaller batches. For example, create 5 separate launch requests for
  100 instances each instead of 1 launch request for 500 instances.

  An instance is ready for you to use when it's in the `running` state. You
  can check the state of your instance using `DescribeInstances`. You can tag
  instances and EBS volumes during launch, after launch, or both. For more
  information, see `CreateTags` and [Tagging Your Amazon EC2
  Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).

  Linux instances have access to the public key of the key pair at boot. You
  can use this key to provide secure access to the instance. Amazon EC2
  public images use this feature to provide secure access without passwords.
  For more information, see [Key
  Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  For troubleshooting, see [What To Do If An Instance Immediately
  Terminates](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html),
  and [Troubleshooting Connecting to Your
  Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def run_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RunInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Attaches an Internet gateway to a VPC, enabling connectivity between the
  Internet and the VPC. For more information about your VPC and Internet
  gateway, see the [Amazon Virtual Private Cloud User
  Guide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/).
  """
  def attach_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AttachInternetGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your linked EC2-Classic instances. This request
  only returns information about EC2-Classic instances linked to a VPC
  through ClassicLink; you cannot use this request to return information
  about other instances.
  """
  def describe_classic_link_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeClassicLinkInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a placement group that you launch cluster instances into. You must
  give the group a name that's unique within the scope of your account.

  For more information about placement groups and cluster instances, see
  [Cluster
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_placement_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreatePlacementGroup",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes your account's Reserved Instance listings in the Reserved
  Instance Marketplace.

  The Reserved Instance Marketplace matches sellers who want to resell
  Reserved Instance capacity that they no longer need with buyers who want to
  purchase additional capacity. Reserved Instances bought and sold through
  the Reserved Instance Marketplace work like any other Reserved Instances.

  As a seller, you choose to list some or all of your Reserved Instances, and
  you specify the upfront price to receive for them. Your Reserved Instances
  are then listed in the Reserved Instance Marketplace and are available for
  purchase.

  As a buyer, you specify the configuration of the Reserved Instance to
  purchase, and the Marketplace matches what you're searching for with what's
  available. The Marketplace first sells the lowest priced Reserved Instances
  to you, and continues to sell available Reserved Instance listings to you
  until your demand is met. You are charged based on the total price of all
  of the listings that you purchase.

  For more information, see [Reserved Instance
  Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_reserved_instances_listings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReservedInstancesListings",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the events for the specified Spot fleet request during the
  specified time.

  Spot fleet events are delayed by up to 30 seconds before they can be
  described. This ensures that you can query by the last evaluated time and
  not miss a recorded event.
  """
  def describe_spot_fleet_request_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSpotFleetRequestHistory",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your Scheduled Instances.
  """
  def describe_scheduled_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeScheduledInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Detaches an Internet gateway from a VPC, disabling connectivity between the
  Internet and the VPC. The VPC must not contain any running instances with
  Elastic IP addresses or public IPv4 addresses.
  """
  def detach_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DetachInternetGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Bundles an Amazon instance store-backed Windows instance.

  During bundling, only the root device volume (C:\) is bundled. Data on
  other instance store volumes is not preserved.

  <note> This action is not applicable for Linux/Unix instances or Windows
  instances that are backed by Amazon EBS.

  </note> For more information, see [Creating an Instance Store-Backed
  Windows
  AMI](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/Creating_InstanceStoreBacked_WinAMI.html).
  """
  def bundle_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BundleInstance",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a route table for the specified VPC. After you create a route
  table, you can add routes and associate the table with a subnet.

  For more information about route tables, see [Route
  Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_route_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateRouteTable",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames
  resolve to public IP addresses when addressed between a linked EC2-Classic
  instance and instances in the VPC to which it's linked. For more
  information about ClassicLink, see
  [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def disable_vpc_classic_link_dns_support(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisableVpcClassicLinkDnsSupport",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the specified attribute of the specified instance. You can specify
  only one attribute at a time.

  To modify some attributes, the instance must be stopped. For more
  information, see [Modifying Attributes of a Stopped
  Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def modify_instance_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyInstanceAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Gets the console output for the specified instance.

  Instances do not have a physical monitor through which you can view their
  console output. They also lack physical controls that allow you to power
  up, reboot, or shut them down. To allow these actions, we provide them
  through the Amazon EC2 API and command line interface.

  Instance console output is buffered and posted shortly after instance boot,
  reboot, and termination. Amazon EC2 preserves the most recent 64 KB output
  which is available for at least one hour after the most recent post.

  For Linux instances, the instance console output displays the exact console
  output that would normally be displayed on a physical monitor attached to a
  computer. This output is buffered because the instance produces it and then
  posts it to a store where the instance's owner can retrieve it.

  For Windows instances, the instance console output includes output from the
  EC2Config service.
  """
  def get_console_output(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetConsoleOutput",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your export tasks.
  """
  def describe_export_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeExportTasks",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your VPC endpoints.
  """
  def describe_vpc_endpoints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpcEndpoints",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a security group.

  A security group is for use with instances either in the EC2-Classic
  platform or in a specific VPC. For more information, see [Amazon EC2
  Security
  Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
  in the *Amazon Elastic Compute Cloud User Guide* and [Security Groups for
  Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
  in the *Amazon Virtual Private Cloud User Guide*.

  <important> EC2-Classic: You can have up to 500 security groups.

  EC2-VPC: You can create up to 500 security groups per VPC.

  </important> When you create a security group, you specify a friendly name
  of your choice. You can have a security group for use in EC2-Classic with
  the same name as a security group for use in a VPC. However, you can't have
  two security groups for use in EC2-Classic with the same name or two
  security groups for use in a VPC with the same name.

  You have a default security group for use in EC2-Classic and a default
  security group for use in your VPC. If you don't specify a security group
  when you launch an instance, the instance is launched into the appropriate
  default security group. A default security group includes a default rule
  that grants instances unrestricted network access to each other.

  You can add or remove rules from your security groups using
  `AuthorizeSecurityGroupIngress`, `AuthorizeSecurityGroupEgress`,
  `RevokeSecurityGroupIngress`, and `RevokeSecurityGroupEgress`.
  """
  def create_security_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateSecurityGroup",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the specified attribute of the specified VPC. You can specify
  only one attribute at a time.
  """
  def describe_vpc_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpcAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Accept a VPC peering connection request. To accept a request, the VPC
  peering connection must be in the `pending-acceptance` state, and you must
  be the owner of the peer VPC. Use `DescribeVpcPeeringConnections` to view
  your outstanding VPC peering connection requests.
  """
  def accept_vpc_peering_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AcceptVpcPeeringConnection",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more regions that are currently available to you.

  For a list of the regions supported by Amazon EC2, see [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region).
  """
  def describe_regions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeRegions",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Cancels the specified Spot fleet requests.

  After you cancel a Spot fleet request, the Spot fleet launches no new Spot
  instances. You must specify whether the Spot fleet should also terminate
  its Spot instances. If you terminate the instances, the Spot fleet request
  enters the `cancelled_terminating` state. Otherwise, the Spot fleet request
  enters the `cancelled_running` state and the instances continue to run
  until they are interrupted or you terminate them manually.
  """
  def cancel_spot_fleet_requests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelSpotFleetRequests",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified NAT gateway. Deleting a NAT gateway disassociates its
  Elastic IP address, but does not release the address from your account.
  Deleting a NAT gateway does not delete any NAT gateway routes in your route
  tables.
  """
  def delete_nat_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteNatGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your Dedicated Hosts.

  The results describe only the Dedicated Hosts in the region you're
  currently using. All listed instances consume capacity on your Dedicated
  Host. Dedicated Hosts that have recently been released will be listed with
  the state `released`.
  """
  def describe_hosts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeHosts",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Retrieves the encrypted administrator password for an instance running
  Windows.

  The Windows password is generated at boot if the `EC2Config` service
  plugin, `Ec2SetPassword`, is enabled. This usually only happens the first
  time an AMI is launched, and then `Ec2SetPassword` is automatically
  disabled. The password is not generated for rebundled AMIs unless
  `Ec2SetPassword` is enabled before bundling.

  The password is encrypted using the key pair that you specified when you
  launched the instance. You must provide the corresponding key pair file.

  Password generation and encryption takes a few moments. We recommend that
  you wait up to 15 minutes after launching an instance before trying to
  retrieve the generated password.
  """
  def get_password_data(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetPasswordData",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Cancels the specified Reserved Instance listing in the Reserved Instance
  Marketplace.

  For more information, see [Reserved Instance
  Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def cancel_reserved_instances_listing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelReservedInstancesListing",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Unassigns one or more secondary private IP addresses from a network
  interface.
  """
  def unassign_private_ip_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UnassignPrivateIpAddresses",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies attributes of a specified VPC endpoint. You can modify the policy
  associated with the endpoint, and you can add and remove route tables
  associated with the endpoint.
  """
  def modify_vpc_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyVpcEndpoint",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use
  snapshots for backups, to make copies of EBS volumes, and to save data
  before shutting down an instance.

  When a snapshot is created, any AWS Marketplace product codes that are
  associated with the source volume are propagated to the snapshot.

  You can take a snapshot of an attached volume that is in use. However,
  snapshots only capture data that has been written to your EBS volume at the
  time the snapshot command is issued; this may exclude any data that has
  been cached by any applications or the operating system. If you can pause
  any file systems on the volume long enough to take a snapshot, your
  snapshot should be complete. However, if you cannot pause all file writes
  to the volume, you should unmount the volume from within the instance,
  issue the snapshot command, and then remount the volume to ensure a
  consistent and complete snapshot. You may remount and use your volume while
  the snapshot status is `pending`.

  To create a snapshot for EBS volumes that serve as root devices, you should
  stop the instance before taking the snapshot.

  Snapshots that are taken from encrypted volumes are automatically
  encrypted. Volumes that are created from encrypted snapshots are also
  automatically encrypted. Your encrypted volumes and any associated
  snapshots always remain protected.

  For more information, see [Amazon Elastic Block
  Store](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)
  and [Amazon EBS
  Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateSnapshot",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified Internet gateway. You must detach the Internet
  gateway from the VPC before you can delete it.
  """
  def delete_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteInternetGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  You can modify several parameters of an existing EBS volume, including
  volume size, volume type, and IOPS capacity. If your EBS volume is attached
  to a current-generation EC2 instance type, you may be able to apply these
  changes without stopping the instance or detaching the volume from it. For
  more information about modifying an EBS volume running Linux, see
  [Modifying the Size, IOPS, or Type of an EBS Volume on
  Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html).
  For more information about modifying an EBS volume running Windows, see
  [Modifying the Size, IOPS, or Type of an EBS Volume on
  Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html).

  When you complete a resize operation on your volume, you need to extend the
  volume's file-system size to take advantage of the new storage capacity.
  For information about extending a Linux file system, see [Extending a Linux
  File
  System](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux).
  For information about extending a Windows file system, see [Extending a
  Windows File
  System](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows).

  You can use CloudWatch Events to check the status of a modification to an
  EBS volume. For information about CloudWatch Events, see the [Amazon
  CloudWatch Events User
  Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You can
  also track the status of a modification using the
  `DescribeVolumesModifications` API. For information about tracking status
  changes using either method, see [Monitoring Volume
  Modifications](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods).

  <note> With previous-generation instance types, resizing an EBS volume may
  require detaching and reattaching the volume or stopping and restarting the
  instance. For more information about modifying an EBS volume running Linux,
  see [Modifying the Size, IOPS, or Type of an EBS Volume on
  Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html).
  For more information about modifying an EBS volume running Windows, see
  [Modifying the Size, IOPS, or Type of an EBS Volume on
  Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html).

  </note> <note> If you reach the maximum volume modification rate per volume
  limit, you will need to wait at least six hours before applying further
  modifications to the affected EBS volume.

  </note>
  """
  def modify_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyVolume",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies a subnet attribute. You can only modify one attribute at a time.
  """
  def modify_subnet_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifySubnetAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your security groups.

  A security group is for use with instances either in the EC2-Classic
  platform or in a specific VPC. For more information, see [Amazon EC2
  Security
  Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
  in the *Amazon Elastic Compute Cloud User Guide* and [Security Groups for
  Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def describe_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSecurityGroups",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  [EC2-VPC only] Updates the description of an egress (outbound) security
  group rule. You can replace an existing description, or add a description
  to a rule that did not have one previously.

  You specify the description as part of the IP permissions structure. You
  can remove a description for a security group rule by omitting the
  description parameter in the request.
  """
  def update_security_group_rule_descriptions_egress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateSecurityGroupRuleDescriptionsEgress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your DHCP options sets.

  For more information about DHCP options sets, see [DHCP Options
  Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def describe_dhcp_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeDhcpOptions",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Adds one or more ingress rules to a security group.

  Rule changes are propagated to instances within the security group as
  quickly as possible. However, a small delay might occur.

  [EC2-Classic] This action gives one or more IPv4 CIDR address ranges
  permission to access a security group in your account, or gives one or more
  security groups (called the *source groups*) permission to access a
  security group for your account. A source group can be for your own AWS
  account, or another. You can have up to 100 rules per group.

  [EC2-VPC] This action gives one or more IPv4 or IPv6 CIDR address ranges
  permission to access a security group in your VPC, or gives one or more
  other security groups (called the *source groups*) permission to access a
  security group for your VPC. The security groups must all be for the same
  VPC or a peer VPC in a VPC peering connection. For more information about
  VPC security group limits, see [Amazon VPC
  Limits](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html).

  You can optionally specify a description for the security group rule.
  """
  def authorize_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AuthorizeSecurityGroupIngress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  [IPv6 only] Creates an egress-only Internet gateway for your VPC. An
  egress-only Internet gateway is used to enable outbound communication over
  IPv6 from instances in your VPC to the Internet, and prevents hosts outside
  of your VPC from initiating an IPv6 connection with your instance.
  """
  def create_egress_only_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateEgressOnlyInternetGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Enables I/O operations for a volume that had I/O operations disabled
  because the data on the volume was potentially inconsistent.
  """
  def enable_volume_i_o(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableVolumeIO",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a network ACL in a VPC. Network ACLs provide an optional layer of
  security (in addition to security groups) for the instances in your VPC.

  For more information about network ACLs, see [Network
  ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_network_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateNetworkAcl",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes available AWS services in a prefix list format, which includes
  the prefix list name and prefix list ID of the service and the IP address
  range for the service. A prefix list ID is required for creating an
  outbound security group rule that allows traffic from a VPC to access an
  AWS service through a VPC endpoint.
  """
  def describe_prefix_lists(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribePrefixLists",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the permissions for your network interfaces.
  """
  def describe_network_interface_permissions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeNetworkInterfacePermissions",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Changes which network ACL a subnet is associated with. By default when you
  create a subnet, it's automatically associated with the default network
  ACL. For more information about network ACLs, see [Network
  ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def replace_network_acl_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReplaceNetworkAclAssociation",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Associates an Elastic IP address with an instance or a network interface.

  An Elastic IP address is for use in either the EC2-Classic platform or in a
  VPC. For more information, see [Elastic IP
  Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  [EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address is
  already associated with a different instance, it is disassociated from that
  instance and associated with the specified instance. If you associate an
  Elastic IP address with an instance that has an existing Elastic IP
  address, the existing address is disassociated from the instance, but
  remains allocated to your account.

  [VPC in an EC2-Classic account] If you don't specify a private IP address,
  the Elastic IP address is associated with the primary IP address. If the
  Elastic IP address is already associated with a different instance or a
  network interface, you get an error unless you allow reassociation. You
  cannot associate an Elastic IP address with an instance or network
  interface that has an existing Elastic IP address.

  <important> This is an idempotent operation. If you perform the operation
  more than once, Amazon EC2 doesn't return an error, and you may be charged
  for each time the Elastic IP address is remapped to the same instance. For
  more information, see the *Elastic IP Addresses* section of [Amazon EC2
  Pricing](http://aws.amazon.com/ec2/pricing/).

  </important>
  """
  def associate_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssociateAddress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Rejects a VPC peering connection request. The VPC peering connection must
  be in the `pending-acceptance` state. Use the
  `DescribeVpcPeeringConnections` request to view your outstanding VPC
  peering connection requests. To delete an active VPC peering connection, or
  to delete a VPC peering connection request that you initiated, use
  `DeleteVpcPeeringConnection`.
  """
  def reject_vpc_peering_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RejectVpcPeeringConnection",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Attaches a network interface to an instance.
  """
  def attach_network_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AttachNetworkInterface",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Launches the specified Scheduled Instances.

  Before you can launch a Scheduled Instance, you must purchase it and obtain
  an identifier using `PurchaseScheduledInstances`.

  You must launch a Scheduled Instance during its scheduled time period. You
  can't stop or reboot a Scheduled Instance, but you can terminate it as
  needed. If you terminate a Scheduled Instance before the current scheduled
  time period ends, you can launch it again after a few minutes. For more
  information, see [Scheduled
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def run_scheduled_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RunScheduledInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Detaches an EBS volume from an instance. Make sure to unmount any file
  systems on the device within your operating system before detaching the
  volume. Failure to do so can result in the volume becoming stuck in the
  `busy` state while detaching. If this happens, detachment can be delayed
  indefinitely until you unmount the volume, force detachment, reboot the
  instance, or all three. If an EBS volume is the root device of an instance,
  it can't be detached while the instance is running. To detach the root
  volume, stop the instance first.

  When a volume with an AWS Marketplace product code is detached from an
  instance, the product code is no longer associated with the instance.

  For more information, see [Detaching an Amazon EBS
  Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def detach_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DetachVolume",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your VPC peering connections.
  """
  def describe_vpc_peering_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpcPeeringConnections",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Detaches a virtual private gateway from a VPC. You do this if you're
  planning to turn off the VPC and not use it anymore. You can confirm a
  virtual private gateway has been completely detached from a VPC by
  describing the virtual private gateway (any attachments to the virtual
  private gateway are also described).

  You must wait for the attachment's state to switch to `detached` before you
  can delete the VPC or attach a different VPC to the virtual private
  gateway.
  """
  def detach_vpn_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DetachVpnGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a default VPC with a size `/16` IPv4 CIDR block and a default
  subnet in each Availability Zone. For more information about the components
  of a default VPC, see [Default VPC and Default
  Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html)
  in the *Amazon Virtual Private Cloud User Guide*. You cannot specify the
  components of the default VPC yourself.

  You can create a default VPC if you deleted your previous default VPC. You
  cannot have more than one default VPC per region.

  If your account supports EC2-Classic, you cannot use this action to create
  a default VPC in a region that supports EC2-Classic. If you want a default
  VPC in a region that supports EC2-Classic, see "I really want a default VPC
  for my existing EC2 account. Is that possible?" in the [Default VPCs
  FAQ](http://aws.amazon.com/vpc/faqs/#Default_VPCs).
  """
  def create_default_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateDefaultVpc",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a VPC endpoint for a specified AWS service. An endpoint enables you
  to create a private connection between your VPC and another AWS service in
  your account. You can specify an endpoint policy to attach to the endpoint
  that will control access to the service from your VPC. You can also specify
  the VPC route tables that use the endpoint.

  Use `DescribeVpcEndpointServices` to get a list of supported AWS services.
  """
  def create_vpc_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateVpcEndpoint",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the
  instance has been unlinked, the VPC security groups are no longer
  associated with it. An instance is automatically unlinked from a VPC when
  it's stopped.
  """
  def detach_classic_link_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DetachClassicLinkVpc",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Shuts down one or more instances. This operation is idempotent; if you
  terminate an instance more than once, each call succeeds.

  If you specify multiple instances and the request fails (for example,
  because of a single incorrect instance ID), none of the instances are
  terminated.

  Terminated instances remain visible after termination (for approximately
  one hour).

  By default, Amazon EC2 deletes all EBS volumes that were attached when the
  instance launched. Volumes attached after instance launch continue running.

  You can stop, start, and terminate EBS-backed instances. You can only
  terminate instance store-backed instances. What happens to an instance
  differs if you stop it or terminate it. For example, when you stop an
  instance, the root device and any other devices attached to the instance
  persist. When you terminate an instance, any attached EBS volumes with the
  `DeleteOnTermination` block device mapping parameter set to `true` are
  automatically deleted. For more information about the differences between
  stopping and terminating instances, see [Instance
  Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  For more information about troubleshooting, see [Troubleshooting
  Terminating Your
  Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def terminate_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "TerminateInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes your Spot fleet requests.

  Spot fleet requests are deleted 48 hours after they are canceled and their
  instances are terminated.
  """
  def describe_spot_fleet_requests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSpotFleetRequests",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is
  either running or stopped.

  If you customized your instance with instance store volumes or EBS volumes
  in addition to the root device volume, the new AMI contains block device
  mapping information for those volumes. When you launch an instance from
  this new AMI, the instance automatically launches with those additional
  volumes.

  For more information, see [Creating Amazon EBS-Backed Linux
  AMIs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateImage",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates one or more flow logs to capture IP traffic for a specific network
  interface, subnet, or VPC. Flow logs are delivered to a specified log group
  in Amazon CloudWatch Logs. If you specify a VPC or subnet in the request, a
  log stream is created in CloudWatch Logs for each network interface in the
  subnet or VPC. Log streams can include information about accepted and
  rejected traffic to a network interface. You can view the data in your log
  streams using Amazon CloudWatch Logs.

  In your request, you must also specify an IAM role that has permission to
  publish logs to CloudWatch Logs.
  """
  def create_flow_logs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateFlowLogs",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Enables a VPC to support DNS hostname resolution for ClassicLink. If
  enabled, the DNS hostname of a linked EC2-Classic instance resolves to its
  private IP address when addressed from an instance in the VPC to which it's
  linked. Similarly, the DNS hostname of an instance in a VPC resolves to its
  private IP address when addressed from a linked EC2-Classic instance. For
  more information about ClassicLink, see
  [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def enable_vpc_classic_link_dns_support(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableVpcClassicLinkDnsSupport",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified EBS volume. The volume must be in the `available`
  state (not attached to an instance).

  <note> The volume may remain in the `deleting` state for several minutes.

  </note> For more information, see [Deleting an Amazon EBS
  Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def delete_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVolume",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the specified attribute of the specified snapshot. You can
  specify only one attribute at a time.

  For more information about EBS snapshots, see [Amazon EBS
  Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_snapshot_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSnapshotAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disassociates an IAM instance profile from a running or stopped instance.

  Use `DescribeIamInstanceProfileAssociations` to get the association ID.
  """
  def disassociate_iam_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisassociateIamInstanceProfile",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Restores an Elastic IP address that was previously moved to the EC2-VPC
  platform back to the EC2-Classic platform. You cannot move an Elastic IP
  address that was originally allocated for use in EC2-VPC. The Elastic IP
  address must not be associated with an instance or network interface.
  """
  def restore_address_to_classic(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RestoreAddressToClassic",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your key pairs.

  For more information about key pairs, see [Key
  Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_key_pairs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeKeyPairs",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Replaces an IAM instance profile for the specified running instance. You
  can use this action to change the IAM instance profile that's associated
  with an instance without having to disassociate the existing IAM instance
  profile first.

  Use `DescribeIamInstanceProfileAssociations` to get the association ID.
  """
  def replace_iam_instance_profile_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReplaceIamInstanceProfileAssociation",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Cancels one or more Spot instance requests. Spot instances are instances
  that Amazon EC2 starts on your behalf when the bid price that you specify
  exceeds the current Spot price. Amazon EC2 periodically sets the Spot price
  based on available Spot instance capacity and current Spot instance
  requests. For more information, see [Spot Instance
  Requests](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  <important> Canceling a Spot instance request does not terminate running
  Spot instances associated with the request.

  </important>
  """
  def cancel_spot_instance_requests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelSpotInstanceRequests",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you can
  create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16
  netmask (65,536 IPv4 addresses). To help you decide how big to make your
  VPC, see [Your VPC and
  Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html)
  in the *Amazon Virtual Private Cloud User Guide*.

  You can optionally request an Amazon-provided IPv6 CIDR block for the VPC.
  The IPv6 CIDR block uses a /56 prefix length, and is allocated from
  Amazon's pool of IPv6 addresses. You cannot choose the IPv6 range for your
  VPC.

  By default, each instance you launch in the VPC has the default DHCP
  options, which includes only a default DNS server that we provide
  (AmazonProvidedDNS). For more information about DHCP options, see [DHCP
  Options
  Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html)
  in the *Amazon Virtual Private Cloud User Guide*.

  You can specify the instance tenancy value for the VPC when you create it.
  You can't change this value for the VPC after you create it. For more
  information, see [Dedicated
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateVpc",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Adds or removes permission settings for the specified snapshot. You may add
  or remove specified AWS account IDs from a snapshot's list of create volume
  permissions, but you cannot do both in a single API call. If you need to
  both add and remove account IDs for a snapshot, you must use multiple API
  calls.

  <note> Encrypted snapshots and snapshots with AWS Marketplace product codes
  cannot be made public. Snapshots encrypted with your default CMK cannot be
  shared with other accounts.

  </note> For more information on modifying snapshot permissions, see
  [Sharing
  Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def modify_snapshot_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifySnapshotAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your VPCs.
  """
  def describe_vpcs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpcs",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Replaces an existing route within a route table in a VPC. You must provide
  only one of the following: Internet gateway or virtual private gateway, NAT
  instance, NAT gateway, VPC peering connection, network interface, or
  egress-only Internet gateway.

  For more information about route tables, see [Route
  Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def replace_route(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReplaceRoute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of the your NAT gateways.
  """
  def describe_nat_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeNatGateways",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Copies a point-in-time snapshot of an EBS volume and stores it in Amazon
  S3. You can copy the snapshot within the same region or from one region to
  another. You can use the snapshot to create EBS volumes or Amazon Machine
  Images (AMIs). The snapshot is copied to the regional endpoint that you
  send the HTTP request to.

  Copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted
  snapshots remain unencrypted, unless the `Encrypted` flag is specified
  during the snapshot copy operation. By default, encrypted snapshot copies
  use the default AWS Key Management Service (AWS KMS) customer master key
  (CMK); however, you can specify a non-default CMK with the `KmsKeyId`
  parameter.

  <note> To copy an encrypted snapshot that has been shared from another
  account, you must have permissions for the CMK used to encrypt the
  snapshot.

  </note> <note> Snapshots created by the CopySnapshot action have an
  arbitrary volume ID that should not be used for any purpose.

  </note> For more information, see [Copying an Amazon EBS
  Snapshot](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def copy_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CopySnapshot",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Enables a VPC for ClassicLink. You can then link EC2-Classic instances to
  your ClassicLink-enabled VPC to allow communication over private IP
  addresses. You cannot enable your VPC for ClassicLink if any of your VPC's
  route tables have existing routes for address ranges within the
  `10.0.0.0/8` IP address range, excluding local routes for VPCs in the
  `10.0.0.0/16` and `10.1.0.0/16` IP address ranges. For more information,
  see
  [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def enable_vpc_classic_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableVpcClassicLink",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your Internet gateways.
  """
  def describe_internet_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeInternetGateways",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes your import snapshot tasks.
  """
  def describe_import_snapshot_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeImportSnapshotTasks",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes one or more specified VPC endpoints. Deleting the endpoint also
  deletes the endpoint routes in the route tables that were associated with
  the endpoint.
  """
  def delete_vpc_endpoints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVpcEndpoints",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or
  more of the VPC's security groups. You cannot link an EC2-Classic instance
  to more than one VPC at a time. You can only link an instance that's in the
  `running` state. An instance is automatically unlinked from a VPC when it's
  stopped - you can link it to the VPC again when you restart it.

  After you've linked an instance, you cannot change the VPC security groups
  that are associated with it. To change the security groups, you must first
  unlink the instance, and then link it again.

  Linking your instance to a VPC is sometimes referred to as *attaching* your
  instance.
  """
  def attach_classic_link_vpc(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AttachClassicLinkVpc",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Purchases a Reserved Instance for use with your account. With Reserved
  Instances, you pay a lower hourly rate compared to On-Demand instance
  pricing.

  Use `DescribeReservedInstancesOfferings` to get a list of Reserved Instance
  offerings that match your specifications. After you've purchased a Reserved
  Instance, you can check for your new Reserved Instance with
  `DescribeReservedInstances`.

  For more information, see [Reserved
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html)
  and [Reserved Instance
  Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def purchase_reserved_instances_offering(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PurchaseReservedInstancesOffering",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Replaces an entry (rule) in a network ACL. For more information about
  network ACLs, see [Network
  ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def replace_network_acl_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReplaceNetworkAclEntry",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes your IAM instance profile associations.
  """
  def describe_iam_instance_profile_associations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeIamInstanceProfileAssociations",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Requests a reboot of one or more instances. This operation is asynchronous;
  it only queues a request to reboot the specified instances. The operation
  succeeds if the instances are valid and belong to you. Requests to reboot
  terminated instances are ignored.

  If an instance does not cleanly shut down within four minutes, Amazon EC2
  performs a hard reboot.

  For more information about troubleshooting, see [Getting Console Output and
  Rebooting
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def reboot_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RebootInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Associates an IAM instance profile with a running or stopped instance. You
  cannot associate more than one IAM instance profile with an instance.
  """
  def associate_iam_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssociateIamInstanceProfile",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes a permission for a network interface. By default, you cannot delete
  the permission if the account for which you're removing the permission has
  attached the network interface to an instance. However, you can force
  delete the permission, regardless of any attachment.
  """
  def delete_network_interface_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteNetworkInterfacePermission",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Attaches a virtual private gateway to a VPC. You can attach one virtual
  private gateway to one VPC at a time.

  For more information, see [Adding a Hardware Virtual Private Gateway to
  Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in
  the *Amazon Virtual Private Cloud User Guide*.
  """
  def attach_vpn_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AttachVpnGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified subnet. You must terminate all running instances in
  the subnet before you can delete the subnet.
  """
  def delete_subnet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSubnet",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified set of tags from the specified set of resources.

  To list the current tags, use `DescribeTags`. For more information about
  tags, see [Tagging Your
  Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteTags",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the ID format settings for resources for the specified IAM user,
  IAM role, or root user. For example, you can view the resource types that
  are enabled for longer IDs. This request only returns information about
  resource types whose ID formats can be modified; it does not return
  information about other resource types. For more information, see [Resource
  IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  The following resource types support longer IDs: `instance` | `reservation`
  | `snapshot` | `volume`.

  These settings apply to the principal specified in the request. They do not
  apply to the principal that makes the request.
  """
  def describe_identity_id_format(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeIdentityIdFormat",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC
  that has EC2-Classic instances linked to it.
  """
  def disable_vpc_classic_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisableVpcClassicLink",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of the Reserved Instances that you purchased.

  For more information about Reserved Instances, see [Reserved
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_reserved_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReservedInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified customer gateway. You must delete the VPN connection
  before you can delete the customer gateway.
  """
  def delete_customer_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteCustomerGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  [EC2-VPC only] Adds one or more egress rules to a security group for use
  with a VPC. Specifically, this action permits instances to send traffic to
  one or more destination IPv4 or IPv6 CIDR address ranges, or to one or more
  destination security groups for the same VPC. This action doesn't apply to
  security groups for use in EC2-Classic. For more information, see [Security
  Groups for Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
  in the *Amazon Virtual Private Cloud User Guide*. For more information
  about security group limits, see [Amazon VPC
  Limits](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html).

  Each rule consists of the protocol (for example, TCP), plus either a CIDR
  range or a source group. For the TCP and UDP protocols, you must also
  specify the destination port or port range. For the ICMP protocol, you must
  also specify the ICMP type and code. You can use -1 for the type or code to
  mean all types or all codes. You can optionally specify a description for
  the rule.

  Rule changes are propagated to affected instances as quickly as possible.
  However, a small delay might occur.
  """
  def authorize_security_group_egress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AuthorizeSecurityGroupEgress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Provides information to AWS about your VPN customer gateway device. The
  customer gateway is the appliance at your end of the VPN connection. (The
  device on the AWS side of the VPN connection is the virtual private
  gateway.) You must provide the Internet-routable IP address of the customer
  gateway's external interface. The IP address must be static and may be
  behind a device performing network address translation (NAT).

  For devices that use Border Gateway Protocol (BGP), you can also provide
  the device's BGP Autonomous System Number (ASN). You can use an existing
  ASN assigned to your network. If you don't have an ASN already, you can use
  a private ASN (in the 64512 - 65534 range).

  <note> Amazon EC2 supports all 2-byte ASN numbers in the range of 1 -
  65534, with the exception of 7224, which is reserved in the `us-east-1`
  region, and 9059, which is reserved in the `eu-west-1` region.

  </note> For more information about VPN customer gateways, see [Adding a
  Hardware Virtual Private Gateway to Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in
  the *Amazon Virtual Private Cloud User Guide*.

  <important> You cannot create more than one customer gateway with the same
  VPN type, IP address, and BGP ASN parameter values. If you run an identical
  request more than one time, the first request creates the customer gateway,
  and subsequent requests return information about the existing customer
  gateway. The subsequent requests do not create new customer gateway
  resources.

  </important>
  """
  def create_customer_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateCustomerGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your bundling tasks.

  <note> Completed bundle tasks are listed for only a limited time. If your
  bundle task is no longer in the list, you can still register an AMI from
  it. Just use `RegisterImage` with the Amazon S3 bucket name and image
  manifest name you provided to the bundle task.

  </note>
  """
  def describe_bundle_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeBundleTasks",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Accepts the Convertible Reserved Instance exchange quote described in the
  `GetReservedInstancesExchangeQuote` call.
  """
  def accept_reserved_instances_exchange_quote(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AcceptReservedInstancesExchangeQuote",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Allocates an Elastic IP address.

  An Elastic IP address is for use either in the EC2-Classic platform or in a
  VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic
  per region and 5 Elastic IP addresses for EC2-VPC per region.

  If you release an Elastic IP address for use in a VPC, you might be able to
  recover it. To recover an Elastic IP address that you released, specify it
  in the `Address` parameter. Note that you cannot recover an Elastic IP
  address that you released after it is allocated to another AWS account.

  For more information, see [Elastic IP
  Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def allocate_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AllocateAddress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes one or more flow logs.
  """
  def delete_flow_logs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteFlowLogs",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Purchase a reservation with configurations that match those of your
  Dedicated Host. You must have active Dedicated Hosts in your account before
  you purchase a reservation. This action results in the specified
  reservation being purchased and charged to your account.
  """
  def purchase_host_reservation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PurchaseHostReservation",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a set of DHCP options for your VPC. After creating the set, you
  must associate it with the VPC, causing all existing and new instances that
  you launch in the VPC to use this set of DHCP options. The following are
  the individual DHCP options you can specify. For more information about the
  options, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).

  <ul> <li> `domain-name-servers` - The IP addresses of up to four domain
  name servers, or AmazonProvidedDNS. The default DHCP option set specifies
  AmazonProvidedDNS. If specifying more than one domain name server, specify
  the IP addresses in a single parameter, separated by commas. If you want
  your instance to receive a custom DNS hostname as specified in
  `domain-name`, you must set `domain-name-servers` to a custom DNS server.

  </li> <li> `domain-name` - If you're using AmazonProvidedDNS in
  `us-east-1`, specify `ec2.internal`. If you're using AmazonProvidedDNS in
  another region, specify `region.compute.internal` (for example,
  `ap-northeast-1.compute.internal`). Otherwise, specify a domain name (for
  example, `MyCompany.com`). This value is used to complete unqualified DNS
  hostnames. **Important**: Some Linux operating systems accept multiple
  domain names separated by spaces. However, Windows and other Linux
  operating systems treat the value as a single domain, which results in
  unexpected behavior. If your DHCP options set is associated with a VPC that
  has instances with multiple operating systems, specify only one domain
  name.

  </li> <li> `ntp-servers` - The IP addresses of up to four Network Time
  Protocol (NTP) servers.

  </li> <li> `netbios-name-servers` - The IP addresses of up to four NetBIOS
  name servers.

  </li> <li> `netbios-node-type` - The NetBIOS node type (1, 2, 4, or 8). We
  recommend that you specify 2 (broadcast and multicast are not currently
  supported). For more information about these node types, see [RFC
  2132](http://www.ietf.org/rfc/rfc2132.txt).

  </li> </ul> Your VPC automatically starts out with a set of DHCP options
  that includes only a DNS server that we provide (AmazonProvidedDNS). If you
  create a set of options, and if your VPC has an Internet gateway, make sure
  to set the `domain-name-servers` option either to `AmazonProvidedDNS` or to
  a domain name server of your choice. For more information about DHCP
  options, see [DHCP Options
  Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_dhcp_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateDhcpOptions",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your placement groups. For more information about
  placement groups and cluster instances, see [Cluster
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_placement_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribePlacementGroups",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Releases the specified Elastic IP address.

  [EC2-Classic, default VPC] Releasing an Elastic IP address automatically
  disassociates it from any instance that it's associated with. To
  disassociate an Elastic IP address without releasing it, use
  `DisassociateAddress`.

  [Nondefault VPC] You must use `DisassociateAddress` to disassociate the
  Elastic IP address before you can release it. Otherwise, Amazon EC2 returns
  an error (`InvalidIPAddress.InUse`).

  After releasing an Elastic IP address, it is released to the IP address
  pool. Be sure to update your DNS records and any servers or devices that
  communicate with the address. If you attempt to release an Elastic IP
  address that you already released, you'll get an `AuthFailure` error if the
  address is already allocated to another AWS account.

  [EC2-VPC] After you release an Elastic IP address for use in a VPC, you
  might be able to recover it. For more information, see `AllocateAddress`.
  """
  def release_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReleaseAddress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Registers an AMI. When you're creating an AMI, this is the final step you
  must complete before you can launch an instance from the AMI. For more
  information about creating AMIs, see [Creating Your Own
  AMIs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  <note> For Amazon EBS-backed instances, `CreateImage` creates and registers
  the AMI in a single request, so you don't have to register the AMI
  yourself.

  </note> You can also use `RegisterImage` to create an Amazon EBS-backed
  Linux AMI from a snapshot of a root device volume. You specify the snapshot
  using the block device mapping. For more information, see [Launching a
  Linux Instance from a
  Backup](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-launch-snapshot.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  You can't register an image where a secondary (non-root) snapshot has AWS
  Marketplace product codes.

  Some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE
  Linux Enterprise Server (SLES), use the EC2 billing product code associated
  with an AMI to verify the subscription status for package updates. Creating
  an AMI from an EBS snapshot does not maintain this billing code, and
  subsequent instances launched from such an AMI will not be able to connect
  to package update infrastructure. To create an AMI that must retain billing
  codes, see `CreateImage`.

  If needed, you can deregister an AMI at any time. Any modifications you
  make to an AMI backed by an instance store volume invalidates its
  registration. If you make changes to an image, deregister the previous
  image and register the new image.
  """
  def register_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RegisterImage",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the Dedicated Host Reservations that are available to purchase.

  The results describe all the Dedicated Host Reservation offerings,
  including offerings that may not match the instance family and region of
  your Dedicated Hosts. When purchasing an offering, ensure that the the
  instance family and region of the offering matches that of the Dedicated
  Host/s it will be associated with. For an overview of supported instance
  types, see [Dedicated Hosts
  Overview](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_host_reservation_offerings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeHostReservationOfferings",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Detaches a network interface from an instance.
  """
  def detach_network_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DetachNetworkInterface",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disassociates a subnet from a route table.

  After you perform this action, the subnet no longer uses the routes in the
  route table. Instead, it uses the routes in the VPC's main route table. For
  more information about route tables, see [Route
  Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def disassociate_route_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisassociateRouteTable",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of the tags for your EC2 resources.

  For more information about tags, see [Tagging Your
  Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeTags",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disassociates a CIDR block from a subnet. Currently, you can disassociate
  an IPv6 CIDR block only. You must detach or delete all gateways and
  resources that are associated with the CIDR block before you can
  disassociate it.
  """
  def disassociate_subnet_cidr_block(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisassociateSubnetCidrBlock",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your virtual private gateways.

  For more information about virtual private gateways, see [Adding an IPsec
  Hardware VPN to Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in
  the *Amazon Virtual Private Cloud User Guide*.
  """
  def describe_vpn_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpnGateways",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Submits feedback about the status of an instance. The instance must be in
  the `running` state. If your experience with the instance differs from the
  instance status returned by `DescribeInstanceStatus`, use
  `ReportInstanceStatus` to report your experience with the instance. Amazon
  EC2 collects this information to improve the accuracy of status checks.

  Use of this action does not change the value returned by
  `DescribeInstanceStatus`.
  """
  def report_instance_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReportInstanceStatus",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more flow logs. To view the information in your flow logs
  (the log streams for the network interfaces), you must use the CloudWatch
  Logs console or the CloudWatch Logs API.
  """
  def describe_flow_logs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeFlowLogs",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified VPN connection.

  If you're deleting the VPC and its associated components, we recommend that
  you detach the virtual private gateway from the VPC and delete the VPC
  before deleting the VPN connection. If you believe that the tunnel
  credentials for your VPN connection have been compromised, you can delete
  the VPN connection and create a new one that has new keys, without needing
  to delete the VPC or virtual private gateway. If you create a new VPN
  connection, you must reconfigure the customer gateway using the new
  configuration information returned with the new VPN connection ID.
  """
  def delete_vpn_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVpnConnection",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates an Amazon FPGA Image (AFI) from the specified design checkpoint
  (DCP).

  The create operation is asynchronous. To verify that the AFI is ready for
  use, check the output logs.

  An AFI contains the FPGA bitstream that is ready to download to an FPGA.
  You can securely deploy an AFI on one or more FPGA-accelerated instances.
  For more information, see the [AWS FPGA Hardware Development
  Kit](https://github.com/aws/aws-fpga/).
  """
  def create_fpga_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateFpgaImage",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Purchases one or more Scheduled Instances with the specified schedule.

  Scheduled Instances enable you to purchase Amazon EC2 compute capacity by
  the hour for a one-year term. Before you can purchase a Scheduled Instance,
  you must call `DescribeScheduledInstanceAvailability` to check for
  available schedules and obtain a purchase token. After you purchase a
  Scheduled Instance, you must call `RunScheduledInstances` during each
  scheduled time period.

  After you purchase a Scheduled Instance, you can't cancel, modify, or
  resell your purchase.
  """
  def purchase_scheduled_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PurchaseScheduledInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modify the auto-placement setting of a Dedicated Host. When auto-placement
  is enabled, AWS will place instances that you launch with a tenancy of
  `host`, but without targeting a specific host ID, onto any available
  Dedicated Host in your account which has auto-placement enabled. When
  auto-placement is disabled, you need to provide a host ID if you want the
  instance to launch onto a specific host. If no host ID is provided, the
  instance will be launched onto a suitable host which has auto-placement
  enabled.
  """
  def modify_hosts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyHosts",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes a security group.

  If you attempt to delete a security group that is associated with an
  instance, or is referenced by another security group, the operation fails
  with `InvalidGroup.InUse` in EC2-Classic or `DependencyViolation` in
  EC2-VPC.
  """
  def delete_security_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSecurityGroup",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates an entry (a rule) in a network ACL with the specified rule number.
  Each network ACL has a set of numbered ingress rules and a separate set of
  numbered egress rules. When determining whether a packet should be allowed
  in or out of a subnet associated with the ACL, we process the entries in
  the ACL according to the rule numbers, in ascending order. Each network ACL
  has a set of ingress rules and a separate set of egress rules.

  We recommend that you leave room between the rule numbers (for example,
  100, 110, 120, ...), and not number them one right after the other (for
  example, 101, 102, 103, ...). This makes it easier to add a rule between
  existing ones without having to renumber the rules.

  After you add an entry, you can't modify it; you must either replace it, or
  create an entry and delete the old one.

  For more information about network ACLs, see [Network
  ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_network_acl_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateNetworkAclEntry",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  When you no longer want to use an On-Demand Dedicated Host it can be
  released. On-Demand billing is stopped and the host goes into `released`
  state. The host ID of Dedicated Hosts that have been released can no longer
  be specified in another request, e.g., ModifyHosts. You must stop or
  terminate all instances on a host before it can be released.

  When Dedicated Hosts are released, it make take some time for them to stop
  counting toward your limit and you may receive capacity errors when trying
  to allocate new Dedicated hosts. Try waiting a few minutes, and then try
  again.

  Released hosts will still appear in a `DescribeHosts` response.
  """
  def release_hosts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReleaseHosts",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Disables a virtual private gateway (VGW) from propagating routes to a
  specified route table of a VPC.
  """
  def disable_vgw_route_propagation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DisableVgwRoutePropagation",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes an egress-only Internet gateway.
  """
  def delete_egress_only_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteEgressOnlyInternetGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified virtual private gateway. We recommend that before you
  delete a virtual private gateway, you detach it from the VPC and delete the
  VPN connection. Note that you don't need to delete the virtual private
  gateway if you plan to delete and recreate the VPN connection between your
  VPC and your network.
  """
  def delete_vpn_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVpnGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Adds or overwrites one or more tags for the specified Amazon EC2 resource
  or resources. Each resource can have a maximum of 50 tags. Each tag
  consists of a key and optional value. Tag keys must be unique per resource.

  For more information about tags, see [Tagging Your
  Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon Elastic Compute Cloud User Guide*. For more information
  about creating IAM policies that control users' access to resources based
  on tags, see [Supported Resource-Level Permissions for Amazon EC2 API
  Actions](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateTags",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the specified attribute of the specified volume. You can specify
  only one attribute at a time.

  For more information about EBS volumes, see [Amazon EBS
  Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_volume_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVolumeAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the Elastic GPUs associated with your instances. For more
  information about Elastic GPUs, see [Amazon EC2 Elastic
  GPUs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-gpus.html).
  """
  def describe_elastic_gpus(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeElasticGpus",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the Availability Zone, instance count, instance type, or network
  platform (EC2-Classic or EC2-VPC) of your Standard Reserved Instances. The
  Reserved Instances to be modified must be identical, except for
  Availability Zone, network platform, and instance type.

  For more information, see [Modifying Reserved
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
  in the Amazon Elastic Compute Cloud User Guide.
  """
  def modify_reserved_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyReservedInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a data feed for Spot instances, enabling you to view Spot instance
  usage logs. You can create one data feed per AWS account. For more
  information, see [Spot Instance Data
  Feed](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_spot_datafeed_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateSpotDatafeedSubscription",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified route from the specified route table.
  """
  def delete_route(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteRoute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Starts an Amazon EBS-backed AMI that you've previously stopped.

  Instances that use Amazon EBS volumes as their root devices can be quickly
  stopped and started. When an instance is stopped, the compute resources are
  released and you are not billed for hourly instance usage. However, your
  root partition Amazon EBS volume remains, continues to persist your data,
  and you are charged for Amazon EBS volume usage. You can restart your
  instance at any time. Each time you transition an instance from stopped to
  started, Amazon EC2 charges a full instance hour, even if transitions
  happen multiple times within a single hour.

  Before stopping an instance, make sure it is in a state from which it can
  be restarted. Stopping an instance does not preserve data stored in RAM.

  Performing this operation on an instance that uses an instance store as its
  root device returns an error.

  For more information, see [Stopping
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def start_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Grants an AWS authorized partner account permission to attach the specified
  network interface to an instance in their account.

  You can grant permission to a single AWS account only, and only one account
  at a time.
  """
  def create_network_interface_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateNetworkInterfacePermission",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  [EC2-VPC only] Removes one or more egress rules from a security group for
  EC2-VPC. This action doesn't apply to security groups for use in
  EC2-Classic. To remove a rule, the values that you specify (for example,
  ports) must match the existing rule's values exactly.

  Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or
  source security group. For the TCP and UDP protocols, you must also specify
  the destination port or range of ports. For the ICMP protocol, you must
  also specify the ICMP type and code. If the security group rule has a
  description, you do not have to specify the description to revoke the rule.

  Rule changes are propagated to instances within the security group as
  quickly as possible. However, a small delay might occur.
  """
  def revoke_security_group_egress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RevokeSecurityGroupEgress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified snapshot.

  When you make periodic snapshots of a volume, the snapshots are
  incremental, and only the blocks on the device that have changed since your
  last snapshot are saved in the new snapshot. When you delete a snapshot,
  only the data not needed for any other snapshot is removed. So regardless
  of which prior snapshots have been deleted, all active snapshots will have
  access to all the information needed to restore the volume.

  You cannot delete a snapshot of the root device of an EBS volume used by a
  registered AMI. You must first de-register the AMI before you can delete
  the snapshot.

  For more information, see [Deleting an Amazon EBS
  Snapshot](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def delete_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSnapshot",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a static route associated with a VPN connection between an existing
  virtual private gateway and a VPN customer gateway. The static route allows
  traffic to be routed from the virtual private gateway to the VPN customer
  gateway.

  For more information about VPN connections, see [Adding a Hardware Virtual
  Private Gateway to Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in
  the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_vpn_connection_route(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateVpnConnectionRoute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Associates a set of DHCP options (that you've previously created) with the
  specified VPC, or associates no DHCP options with the VPC.

  After you associate the options with the VPC, any existing instances and
  all new instances that you launch in that VPC use the options. You don't
  need to restart or relaunch the instances. They automatically pick up the
  changes within a few hours, depending on how frequently the instance renews
  its DHCP lease. You can explicitly renew the lease using the operating
  system on the instance.

  For more information, see [DHCP Options
  Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def associate_dhcp_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssociateDhcpOptions",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Resets permission settings for the specified snapshot.

  For more information on modifying snapshot permissions, see [Sharing
  Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def reset_snapshot_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResetSnapshotAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Cancels an in-process import virtual machine or import snapshot task.
  """
  def cancel_import_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CancelImportTask",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Unassigns one or more IPv6 addresses from a network interface.
  """
  def unassign_ipv6_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UnassignIpv6Addresses",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the VPC peering connection options on one side of a VPC peering
  connection. You can do the following:

  <ul> <li> Enable/disable communication over the peering connection between
  an EC2-Classic instance that's linked to your VPC (using ClassicLink) and
  instances in the peer VPC.

  </li> <li> Enable/disable communication over the peering connection between
  instances in your VPC and an EC2-Classic instance that's linked to the peer
  VPC.

  </li> <li> Enable/disable a local VPC to resolve public DNS hostnames to
  private IP addresses when queried from instances in the peer VPC.

  </li> </ul> If the peered VPCs are in different accounts, each owner must
  initiate a separate request to modify the peering connection options,
  depending on whether their VPC was the requester or accepter for the VPC
  peering connection. If the peered VPCs are in the same account, you can
  modify the requester and accepter options in the same request. To confirm
  which VPC is the accepter and requester for a VPC peering connection, use
  the `DescribeVpcPeeringConnections` command.
  """
  def modify_vpc_peering_connection_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyVpcPeeringConnectionOptions",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your instances.

  If you specify one or more instance IDs, Amazon EC2 returns information for
  those instances. If you do not specify instance IDs, Amazon EC2 returns
  information for all relevant instances. If you specify an instance ID that
  is not valid, an error is returned. If you specify an instance that you do
  not own, it is not included in the returned results.

  Recently terminated instances might appear in the returned results. This
  interval is usually less than one hour.

  If you describe instances in the rare case where an Availability Zone is
  experiencing a service disruption and you specify instance IDs that are in
  the affected zone, or do not specify any instance IDs at all, the call
  fails. If you describe instances and specify only instance IDs that are in
  an unaffected zone, the call works normally.
  """
  def describe_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in
  the Reserved Instance Marketplace. You can submit one Standard Reserved
  Instance listing at a time. To get a list of your Standard Reserved
  Instances, you can use the `DescribeReservedInstances` operation.

  <note> Only Standard Reserved Instances with a capacity reservation can be
  sold in the Reserved Instance Marketplace. Convertible Reserved Instances
  and Standard Reserved Instances with a regional benefit cannot be sold.

  </note> The Reserved Instance Marketplace matches sellers who want to
  resell Standard Reserved Instance capacity that they no longer need with
  buyers who want to purchase additional capacity. Reserved Instances bought
  and sold through the Reserved Instance Marketplace work like any other
  Reserved Instances.

  To sell your Standard Reserved Instances, you must first register as a
  seller in the Reserved Instance Marketplace. After completing the
  registration process, you can create a Reserved Instance Marketplace
  listing of some or all of your Standard Reserved Instances, and specify the
  upfront price to receive for them. Your Standard Reserved Instance listings
  then become available for purchase. To view the details of your Standard
  Reserved Instance listing, you can use the
  `DescribeReservedInstancesListings` operation.

  For more information, see [Reserved Instance
  Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_reserved_instances_listing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateReservedInstancesListing",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Retrieve a JPG-format screenshot of a running instance to help with
  troubleshooting.

  The returned content is Base64-encoded.
  """
  def get_console_screenshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetConsoleScreenshot",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of the EBS snapshots available to you. Available
  snapshots include public snapshots available for any AWS account to launch,
  private snapshots that you own, and private snapshots owned by another AWS
  account but for which you've been given explicit create volume permissions.

  The create volume permissions fall into the following categories:

  <ul> <li> *public*: The owner of the snapshot granted create volume
  permissions for the snapshot to the `all` group. All AWS accounts have
  create volume permissions for these snapshots.

  </li> <li> *explicit*: The owner of the snapshot granted create volume
  permissions to a specific AWS account.

  </li> <li> *implicit*: An AWS account has implicit create volume
  permissions for all snapshots it owns.

  </li> </ul> The list of snapshots returned can be modified by specifying
  snapshot IDs, snapshot owners, or AWS accounts with create volume
  permissions. If no options are specified, Amazon EC2 returns all snapshots
  for which you have create volume permissions.

  If you specify one or more snapshot IDs, only snapshots that have the
  specified IDs are returned. If you specify an invalid snapshot ID, an error
  is returned. If you specify a snapshot ID for which you do not have access,
  it is not included in the returned results.

  If you specify one or more snapshot owners using the `OwnerIds` option,
  only snapshots from the specified owners and for which you have access are
  returned. The results can include the AWS account IDs of the specified
  owners, `amazon` for snapshots owned by Amazon, or `self` for snapshots
  that you own.

  If you specify a list of restorable users, only snapshots with create
  snapshot permissions for those users are returned. You can specify AWS
  account IDs (if you own the snapshots), `self` for snapshots for which you
  own or have explicit permissions, or `all` for public snapshots.

  If you are describing a long list of snapshots, you can paginate the output
  to make the list more manageable. The `MaxResults` parameter sets the
  maximum number of results returned in a single page. If the list of results
  exceeds your `MaxResults` value, then that number of results is returned
  along with a `NextToken` value that can be passed to a subsequent
  `DescribeSnapshots` request to retrieve the remaining results.

  For more information about EBS snapshots, see [Amazon EBS
  Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_snapshots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSnapshots",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the modifications made to your Reserved Instances. If no
  parameter is specified, information about all your Reserved Instances
  modification requests is returned. If a modification ID is specified, only
  information about the specific modification is returned.

  For more information, see [Modifying Reserved
  Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
  in the Amazon Elastic Compute Cloud User Guide.
  """
  def describe_reserved_instances_modifications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReservedInstancesModifications",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes Reserved Instance offerings that are available for purchase. With
  Reserved Instances, you purchase the right to launch instances for a period
  of time. During that time period, you do not receive insufficient capacity
  errors, and you pay a lower usage rate than the rate charged for On-Demand
  instances for the actual time used.

  If you have listed your own Reserved Instances for sale in the Reserved
  Instance Marketplace, they will be excluded from these results. This is to
  ensure that you do not purchase your own Reserved Instances.

  For more information, see [Reserved Instance
  Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_reserved_instances_offerings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReservedInstancesOfferings",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes a network interface attribute. You can specify only one attribute
  at a time.
  """
  def describe_network_interface_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeNetworkInterfaceAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the specified attribute of the specified AMI. You can specify only
  one attribute at a time.

  <note> AWS Marketplace product codes cannot be modified. Images with an AWS
  Marketplace product code cannot be made public.

  </note> <note> The SriovNetSupport enhanced networking attribute cannot be
  changed using this command. Instead, enable SriovNetSupport on an instance
  and create an AMI from the instance. This will result in an image with
  SriovNetSupport enabled.

  </note>
  """
  def modify_image_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyImageAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates an EBS volume that can be attached to an instance in the same
  Availability Zone. The volume is created in the regional endpoint that you
  send the HTTP request to. For more information see [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html).

  You can create a new empty volume or restore a volume from an EBS snapshot.
  Any AWS Marketplace product codes from the snapshot are propagated to the
  volume.

  You can create encrypted volumes with the `Encrypted` parameter. Encrypted
  volumes may only be attached to instances that support Amazon EBS
  encryption. Volumes that are created from encrypted snapshots are also
  automatically encrypted. For more information, see [Amazon EBS
  Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  You can tag your volumes during creation. For more information, see
  [Tagging Your Amazon EC2
  Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).

  For more information, see [Creating an Amazon EBS
  Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateVolume",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the specified attribute of the specified VPC.
  """
  def modify_vpc_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyVpcAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Enables a virtual private gateway (VGW) to propagate routes to the
  specified route table of a VPC.
  """
  def enable_vgw_route_propagation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableVgwRoutePropagation",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the specified attribute of the specified AMI. You can specify
  only one attribute at a time.
  """
  def describe_image_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeImageAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the specified attribute of the specified instance. You can
  specify only one attribute at a time. Valid attribute values are:
  `instanceType` | `kernel` | `ramdisk` | `userData` |
  `disableApiTermination` | `instanceInitiatedShutdownBehavior` |
  `rootDeviceName` | `blockDeviceMapping` | `productCodes` |
  `sourceDestCheck` | `groupSet` | `ebsOptimized` | `sriovNetSupport`
  """
  def describe_instance_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeInstanceAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deregisters the specified AMI. After you deregister an AMI, it can't be
  used to launch new instances; however, it doesn't affect any instances that
  you've already launched from the AMI. You'll continue to incur usage costs
  for those instances until you terminate them.

  When you deregister an Amazon EBS-backed AMI, it doesn't affect the
  snapshot that was created for the root volume of the instance during the
  AMI creation process. When you deregister an instance store-backed AMI, it
  doesn't affect the files that you uploaded to Amazon S3 when you created
  the AMI.
  """
  def deregister_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeregisterImage",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates an Internet gateway for use with a VPC. After creating the Internet
  gateway, you attach it to a VPC using `AttachInternetGateway`.

  For more information about your VPC and Internet gateway, see the [Amazon
  Virtual Private Cloud User
  Guide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/).
  """
  def create_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateInternetGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a subnet in an existing VPC.

  When you create each subnet, you provide the VPC ID and the IPv4 CIDR block
  you want for the subnet. After you create a subnet, you can't change its
  CIDR block. The size of the subnet's IPv4 CIDR block can be the same as a
  VPC's IPv4 CIDR block, or a subset of a VPC's IPv4 CIDR block. If you
  create more than one subnet in a VPC, the subnets' CIDR blocks must not
  overlap. The smallest IPv4 subnet (and VPC) you can create uses a /28
  netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536
  IPv4 addresses).

  If you've associated an IPv6 CIDR block with your VPC, you can create a
  subnet with an IPv6 CIDR block that uses a /64 prefix length.

  <important> AWS reserves both the first four and the last IPv4 address in
  each subnet's CIDR block. They're not available for use.

  </important> If you add more than one subnet to a VPC, they're set up in a
  star topology with a logical router in the middle.

  If you launch an instance in a VPC using an Amazon EBS-backed AMI, the IP
  address doesn't change if you stop and restart the instance (unlike a
  similar instance launched outside a VPC, which gets a new IP address when
  restarted). It's therefore possible to have a subnet with no running
  instances (they're all stopped), but no remaining IP addresses available.

  For more information about subnets, see [Your VPC and
  Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_subnet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateSubnet",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Resets an attribute of an instance to its default value. To reset the
  `kernel` or `ramdisk`, the instance must be in a stopped state. To reset
  the `sourceDestCheck`, the instance can be either running or stopped.

  The `sourceDestCheck` attribute controls whether source/destination
  checking is enabled. The default value is `true`, which means checking is
  enabled. This value must be `false` for a NAT instance to perform NAT. For
  more information, see [NAT
  Instances](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def reset_instance_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResetInstanceAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a virtual private gateway. A virtual private gateway is the
  endpoint on the VPC side of your VPN connection. You can create a virtual
  private gateway before creating the VPC itself.

  For more information about virtual private gateways, see [Adding a Hardware
  Virtual Private Gateway to Your
  VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in
  the *Amazon Virtual Private Cloud User Guide*.
  """
  def create_vpn_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateVpnGateway",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes attributes of your AWS account. The following are the supported
  account attributes:

  <ul> <li> `supported-platforms`: Indicates whether your account can launch
  instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.

  </li> <li> `default-vpc`: The ID of the default VPC for your account, or
  `none`.

  </li> <li> `max-instances`: The maximum number of On-Demand instances that
  you can run.

  </li> <li> `vpc-max-security-groups-per-interface`: The maximum number of
  security groups that you can assign to a network interface.

  </li> <li> `max-elastic-ips`: The maximum number of Elastic IP addresses
  that you can allocate for use with EC2-Classic.

  </li> <li> `vpc-max-elastic-ips`: The maximum number of Elastic IP
  addresses that you can allocate for use with EC2-VPC.

  </li> </ul>
  """
  def describe_account_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAccountAttributes",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes all supported AWS services that can be specified when creating a
  VPC endpoint.
  """
  def describe_vpc_endpoint_services(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpcEndpointServices",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more available Amazon FPGA Images (AFIs). These include
  public AFIs, private AFIs that you own, and AFIs owned by other AWS
  accounts for which you have load permissions.
  """
  def describe_fpga_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeFpgaImages",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Exports a running or stopped instance to an S3 bucket.

  For information about the supported operating systems, image formats, and
  known limitations for the types of instances you can export, see [Exporting
  an Instance as a VM Using VM
  Import/Export](http://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html)
  in the *VM Import/Export User Guide*.
  """
  def create_instance_export_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateInstanceExportTask",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes your Elastic IP addresses that are being moved to the EC2-VPC
  platform, or that are being restored to the EC2-Classic platform. This
  request does not return information about any other Elastic IP addresses in
  your account.
  """
  def describe_moving_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeMovingAddresses",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the ClassicLink status of one or more VPCs.
  """
  def describe_vpc_classic_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpcClassicLink",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Assigns one or more IPv6 addresses to the specified network interface. You
  can specify one or more specific IPv6 addresses, or you can specify the
  number of IPv6 addresses to be automatically assigned from within the
  subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses to a
  network interface as you can assign private IPv4 addresses, and the limit
  varies per instance type. For information, see [IP Addresses Per Network
  Interface Per Instance
  Type](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def assign_ipv6_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssignIpv6Addresses",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of the Availability Zones that are available to you.
  The results include zones only for the region you're currently using. If
  there is an event impacting an Availability Zone, you can use this request
  to view the state and any provided message for that Availability Zone.

  For more information, see [Regions and Availability
  Zones](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_availability_zones(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAvailabilityZones",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the ClassicLink DNS support status of one or more VPCs. If
  enabled, the DNS hostname of a linked EC2-Classic instance resolves to its
  private IP address when addressed from an instance in the VPC to which it's
  linked. Similarly, the DNS hostname of an instance in a VPC resolves to its
  private IP address when addressed from a linked EC2-Classic instance. For
  more information, see
  [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_vpc_classic_link_dns_support(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeVpcClassicLinkDnsSupport",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified set of DHCP options. You must disassociate the set of
  DHCP options before you can delete it. You can disassociate the set of DHCP
  options by associating either a new set of options or the default set of
  options with the VPC.
  """
  def delete_dhcp_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteDhcpOptions",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Removes one or more ingress rules from a security group. To remove a rule,
  the values that you specify (for example, ports) must match the existing
  rule's values exactly.

  <note> [EC2-Classic security groups only] If the values you specify do not
  match the existing rule's values, no error is returned. Use
  `DescribeSecurityGroups` to verify that the rule has been removed.

  </note> Each rule consists of the protocol and the CIDR range or source
  security group. For the TCP and UDP protocols, you must also specify the
  destination port or range of ports. For the ICMP protocol, you must also
  specify the ICMP type and code. If the security group rule has a
  description, you do not have to specify the description to revoke the rule.

  Rule changes are propagated to instances within the security group as
  quickly as possible. However, a small delay might occur.
  """
  def revoke_security_group_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RevokeSecurityGroupIngress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Enables detailed monitoring for a running instance. Otherwise, basic
  monitoring is enabled. For more information, see [Monitoring Your Instances
  and
  Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  To disable detailed monitoring, see .
  """
  def monitor_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "MonitorInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified network interface. You must detach the network
  interface before you can delete it.
  """
  def delete_network_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteNetworkInterface",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Associates a CIDR block with your subnet. You can only associate a single
  IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix
  length of /64.
  """
  def associate_subnet_cidr_block(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssociateSubnetCidrBlock",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Updates the description of an ingress (inbound) security group rule. You
  can replace an existing description, or add a description to a rule that
  did not have one previously.

  You specify the description as part of the IP permissions structure. You
  can remove a description for a security group rule by omitting the
  description parameter in the request.
  """
  def update_security_group_rule_descriptions_ingress(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateSecurityGroupRuleDescriptionsIngress",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores
  the public key and displays the private key for you to save to a file. The
  private key is returned as an unencrypted PEM encoded PKCS#8 private key.
  If a key with the specified name already exists, Amazon EC2 returns an
  error.

  You can have up to five thousand key pairs per region.

  The key pair returned to you is available only in the region in which you
  create it. To create a key pair that is available in all regions, use
  `ImportKeyPair`.

  For more information about key pairs, see [Key
  Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateKeyPair",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes one or more of your network interfaces.
  """
  def describe_network_interfaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeNetworkInterfaces",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Attaches an EBS volume to a running or stopped instance and exposes it to
  the instance with the specified device name.

  Encrypted EBS volumes may only be attached to instances that support Amazon
  EBS encryption. For more information, see [Amazon EBS
  Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  For a list of supported device names, see [Attaching an EBS Volume to an
  Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html).
  Any device names that aren't reserved for instance store volumes can be
  used for EBS volumes. For more information, see [Amazon EC2 Instance
  Store](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  If a volume has an AWS Marketplace product code:

  <ul> <li> The volume can be attached only to a stopped instance.

  </li> <li> AWS Marketplace product codes are copied from the volume to the
  instance.

  </li> <li> You must be subscribed to the product.

  </li> <li> The instance type and operating system of the instance must
  support the product. For example, you can't detach a volume from a Windows
  instance and attach it to a Linux instance.

  </li> </ul> For an overview of the AWS Marketplace, see [Introducing AWS
  Marketplace](https://aws.amazon.com/marketplace/help/200900000).

  For more information about EBS volumes, see [Attaching Amazon EBS
  Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def attach_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AttachVolume",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Assigns one or more secondary private IP addresses to the specified network
  interface. You can specify one or more specific secondary IP addresses, or
  you can specify the number of secondary IP addresses to be automatically
  assigned within the subnet's CIDR block range. The number of secondary IP
  addresses that you can assign to an instance varies by instance type. For
  information about instance types, see [Instance
  Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
  in the *Amazon Elastic Compute Cloud User Guide*. For more information
  about Elastic IP addresses, see [Elastic IP
  Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  AssignPrivateIpAddresses is available only in EC2-VPC.
  """
  def assign_private_ip_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AssignPrivateIpAddresses",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Modifies the ID format of a resource for a specified IAM user, IAM role, or
  the root user for an account; or all IAM users, IAM roles, and the root
  user for an account. You can specify that resources should receive longer
  IDs (17-character IDs) when they are created.

  The following resource types support longer IDs: `instance` | `reservation`
  | `snapshot` | `volume`. For more information, see [Resource
  IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  This setting applies to the principal specified in the request; it does not
  apply to the principal that makes the request.

  Resources created with longer IDs are visible to all IAM roles and users,
  regardless of these settings and provided that they have permission to use
  the relevant `Describe` command for the resource type.
  """
  def modify_identity_id_format(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ModifyIdentityIdFormat",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Describes the running instances for the specified Spot fleet.
  """
  def describe_spot_fleet_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeSpotFleetInstances",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Changes the route table associated with a given subnet in a VPC. After the
  operation completes, the subnet uses the routes in the new route table it's
  associated with. For more information about route tables, see [Route
  Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html)
  in the *Amazon Virtual Private Cloud User Guide*.

  You can also use ReplaceRouteTableAssociation to change which table is the
  main route table in the VPC. You just specify the main route table's
  association ID and the route table to be the new main route table.
  """
  def replace_route_table_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReplaceRouteTableAssociation",
      
      type:           :ec2,
      method:         :post
    }
  end
  
  @doc """
  Resets an attribute of an AMI to its default value.

  <note> The productCodes attribute can't be reset.

  </note>
  """
  def reset_image_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ec2",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResetImageAttribute",
      
      type:           :ec2,
      method:         :post
    }
  end
  
end