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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ImportImage",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ImportImageRequest",
      output_shape:     "ImportImageResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNetworkAcls",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeNetworkAclsRequest",
      output_shape:     "DescribeNetworkAclsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopyImage",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CopyImageRequest",
      output_shape:     "CopyImageResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpnConnections",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpnConnectionsRequest",
      output_shape:     "DescribeVpnConnectionsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ImportInstance",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ImportInstanceRequest",
      output_shape:     "ImportInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSpotDatafeedSubscription",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSpotDatafeedSubscriptionRequest",
      output_shape:     "DescribeSpotDatafeedSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "StopInstancesRequest",
      output_shape:     "StopInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Allocates a Dedicated Host to your account. At minimum you need to specify
  the instance size type, Availability Zone, and quantity of hosts you want
  to allocate.
  """
  def allocate_hosts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AllocateHosts",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AllocateHostsRequest",
      output_shape:     "AllocateHostsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the data feed for Spot instances.
  """
  def delete_spot_datafeed_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSpotDatafeedSubscription",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteSpotDatafeedSubscriptionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetHostReservationPurchasePreview",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "GetHostReservationPurchasePreviewRequest",
      output_shape:     "GetHostReservationPurchasePreviewResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVolumeStatus",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVolumeStatusRequest",
      output_shape:     "DescribeVolumeStatusResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelExportTask",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CancelExportTaskRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified key pair, by removing the public key from Amazon EC2.
  """
  def delete_key_pair(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteKeyPair",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteKeyPairRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ConfirmProductInstance",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ConfirmProductInstanceRequest",
      output_shape:     "ConfirmProductInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "MoveAddressToVpc",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "MoveAddressToVpcRequest",
      output_shape:     "MoveAddressToVpcResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeIdFormat",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeIdFormatRequest",
      output_shape:     "DescribeIdFormatResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateNatGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateNatGatewayRequest",
      output_shape:     "CreateNatGatewayResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ImportVolume",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ImportVolumeRequest",
      output_shape:     "ImportVolumeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes Dedicated Host Reservations which are associated with Dedicated
  Hosts in your account.
  """
  def describe_host_reservations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeHostReservations",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeHostReservationsRequest",
      output_shape:     "DescribeHostReservationsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVolumesModifications",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVolumesModificationsRequest",
      output_shape:     "DescribeVolumesModificationsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelConversionTask",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CancelConversionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScheduledInstanceAvailability",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeScheduledInstanceAvailabilityRequest",
      output_shape:     "DescribeScheduledInstanceAvailabilityResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ImportKeyPair",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ImportKeyPairRequest",
      output_shape:     "ImportKeyPairResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAddresses",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeAddressesRequest",
      output_shape:     "DescribeAddressesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateRoute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateRouteRequest",
      output_shape:     "CreateRouteResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateVpcCidrBlock",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DisassociateVpcCidrBlockRequest",
      output_shape:     "DisassociateVpcCidrBlockResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyVolumeAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyVolumeAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateNetworkInterface",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateNetworkInterfaceRequest",
      output_shape:     "CreateNetworkInterfaceResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeConversionTasks",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeConversionTasksRequest",
      output_shape:     "DescribeConversionTasksResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the specified network interface attribute. You can specify only
  one attribute at a time.
  """
  def modify_network_interface_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyNetworkInterfaceAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyNetworkInterfaceAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVolumes",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVolumesRequest",
      output_shape:     "DescribeVolumesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSpotInstanceRequests",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSpotInstanceRequestsRequest",
      output_shape:     "DescribeSpotInstanceRequestsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSubnets",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSubnetsRequest",
      output_shape:     "DescribeSubnetsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns details about the values and term of your specified Convertible
  Reserved Instances. When a target configuration is specified, it returns
  information about whether the exchange is valid and can be performed.
  """
  def get_reserved_instances_exchange_quote(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetReservedInstancesExchangeQuote",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "GetReservedInstancesExchangeQuoteRequest",
      output_shape:     "GetReservedInstancesExchangeQuoteResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVpnConnectionRoute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteVpnConnectionRouteRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeletePlacementGroup",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeletePlacementGroupRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeStaleSecurityGroups",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeStaleSecurityGroupsRequest",
      output_shape:     "DescribeStaleSecurityGroupsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVpnConnection",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateVpnConnectionRequest",
      output_shape:     "CreateVpnConnectionResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifySpotFleetRequest",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifySpotFleetRequestRequest",
      output_shape:     "ModifySpotFleetRequestResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Resets a network interface attribute. You can specify only one attribute at
  a time.
  """
  def reset_network_interface_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetNetworkInterfaceAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ResetNetworkInterfaceAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVpcPeeringConnection",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteVpcPeeringConnectionRequest",
      output_shape:     "DeleteVpcPeeringConnectionResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateRouteTable",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AssociateRouteTableRequest",
      output_shape:     "AssociateRouteTableResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVpcPeeringConnection",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateVpcPeeringConnectionRequest",
      output_shape:     "CreateVpcPeeringConnectionResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RequestSpotFleet",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RequestSpotFleetRequest",
      output_shape:     "RequestSpotFleetResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstanceStatus",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeInstanceStatusRequest",
      output_shape:     "DescribeInstanceStatusResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  [EC2-VPC only] Describes the VPCs on the other side of a VPC peering
  connection that are referencing the security groups you've specified in
  this request.
  """
  def describe_security_group_references(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSecurityGroupReferences",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSecurityGroupReferencesRequest",
      output_shape:     "DescribeSecurityGroupReferencesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCustomerGateways",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeCustomerGatewaysRequest",
      output_shape:     "DescribeCustomerGatewaysResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateAddress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DisassociateAddressRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Cancels a bundling operation for an instance store-backed Windows instance.
  """
  def cancel_bundle_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelBundleTask",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CancelBundleTaskRequest",
      output_shape:     "CancelBundleTaskResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified ingress or egress entry (rule) from the specified
  network ACL.
  """
  def delete_network_acl_entry(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteNetworkAclEntry",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteNetworkAclEntryRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified route table. You must disassociate the route table
  from any subnets before you can delete it. You can't delete the main route
  table.
  """
  def delete_route_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRouteTable",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteRouteTableRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeImages",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeImagesRequest",
      output_shape:     "DescribeImagesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Displays details about an import virtual machine or import snapshot tasks
  that are already created.
  """
  def describe_import_image_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeImportImageTasks",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeImportImageTasksRequest",
      output_shape:     "DescribeImportImageTasksResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your egress-only Internet gateways.
  """
  def describe_egress_only_internet_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEgressOnlyInternetGateways",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeEgressOnlyInternetGatewaysRequest",
      output_shape:     "DescribeEgressOnlyInternetGatewaysResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVpc",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteVpcRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSpotPriceHistory",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSpotPriceHistoryRequest",
      output_shape:     "DescribeSpotPriceHistoryResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UnmonitorInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "UnmonitorInstancesRequest",
      output_shape:     "UnmonitorInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeRouteTables",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeRouteTablesRequest",
      output_shape:     "DescribeRouteTablesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateVpcCidrBlock",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AssociateVpcCidrBlockRequest",
      output_shape:     "AssociateVpcCidrBlockResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyIdFormat",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyIdFormatRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified network ACL. You can't delete the ACL if it's
  associated with any subnets. You can't delete the default network ACL.
  """
  def delete_network_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteNetworkAcl",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteNetworkAclRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyInstancePlacement",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyInstancePlacementRequest",
      output_shape:     "ModifyInstancePlacementResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RequestSpotInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RequestSpotInstancesRequest",
      output_shape:     "RequestSpotInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Imports a disk into an EBS snapshot.
  """
  def import_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ImportSnapshot",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ImportSnapshotRequest",
      output_shape:     "ImportSnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RunInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RunInstancesRequest",
      output_shape:     "Reservation",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AttachInternetGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AttachInternetGatewayRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClassicLinkInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeClassicLinkInstancesRequest",
      output_shape:     "DescribeClassicLinkInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePlacementGroup",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreatePlacementGroupRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedInstancesListings",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeReservedInstancesListingsRequest",
      output_shape:     "DescribeReservedInstancesListingsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSpotFleetRequestHistory",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSpotFleetRequestHistoryRequest",
      output_shape:     "DescribeSpotFleetRequestHistoryResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your Scheduled Instances.
  """
  def describe_scheduled_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScheduledInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeScheduledInstancesRequest",
      output_shape:     "DescribeScheduledInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Detaches an Internet gateway from a VPC, disabling connectivity between the
  Internet and the VPC. The VPC must not contain any running instances with
  Elastic IP addresses or public IPv4 addresses.
  """
  def detach_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DetachInternetGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DetachInternetGatewayRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "BundleInstance",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "BundleInstanceRequest",
      output_shape:     "BundleInstanceResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateRouteTable",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateRouteTableRequest",
      output_shape:     "CreateRouteTableResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableVpcClassicLinkDnsSupport",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DisableVpcClassicLinkDnsSupportRequest",
      output_shape:     "DisableVpcClassicLinkDnsSupportResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyInstanceAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyInstanceAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetConsoleOutput",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "GetConsoleOutputRequest",
      output_shape:     "GetConsoleOutputResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your export tasks.
  """
  def describe_export_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeExportTasks",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeExportTasksRequest",
      output_shape:     "DescribeExportTasksResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your VPC endpoints.
  """
  def describe_vpc_endpoints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcEndpoints",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpcEndpointsRequest",
      output_shape:     "DescribeVpcEndpointsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSecurityGroup",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateSecurityGroupRequest",
      output_shape:     "CreateSecurityGroupResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified attribute of the specified VPC. You can specify
  only one attribute at a time.
  """
  def describe_vpc_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpcAttributeRequest",
      output_shape:     "DescribeVpcAttributeResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AcceptVpcPeeringConnection",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AcceptVpcPeeringConnectionRequest",
      output_shape:     "AcceptVpcPeeringConnectionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more regions that are currently available to you.

  For a list of the regions supported by Amazon EC2, see [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region).
  """
  def describe_regions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeRegions",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeRegionsRequest",
      output_shape:     "DescribeRegionsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelSpotFleetRequests",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CancelSpotFleetRequestsRequest",
      output_shape:     "CancelSpotFleetRequestsResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteNatGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteNatGatewayRequest",
      output_shape:     "DeleteNatGatewayResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeHosts",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeHostsRequest",
      output_shape:     "DescribeHostsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetPasswordData",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "GetPasswordDataRequest",
      output_shape:     "GetPasswordDataResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelReservedInstancesListing",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CancelReservedInstancesListingRequest",
      output_shape:     "CancelReservedInstancesListingResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Unassigns one or more secondary private IP addresses from a network
  interface.
  """
  def unassign_private_ip_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UnassignPrivateIpAddresses",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "UnassignPrivateIpAddressesRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies attributes of a specified VPC endpoint. You can modify the policy
  associated with the endpoint, and you can add and remove route tables
  associated with the endpoint.
  """
  def modify_vpc_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyVpcEndpoint",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyVpcEndpointRequest",
      output_shape:     "ModifyVpcEndpointResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSnapshot",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateSnapshotRequest",
      output_shape:     "Snapshot",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified Internet gateway. You must detach the Internet
  gateway from the VPC before you can delete it.
  """
  def delete_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteInternetGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteInternetGatewayRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyVolume",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyVolumeRequest",
      output_shape:     "ModifyVolumeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies a subnet attribute. You can only modify one attribute at a time.
  """
  def modify_subnet_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifySubnetAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifySubnetAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSecurityGroups",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSecurityGroupsRequest",
      output_shape:     "DescribeSecurityGroupsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateSecurityGroupRuleDescriptionsEgress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "UpdateSecurityGroupRuleDescriptionsEgressRequest",
      output_shape:     "UpdateSecurityGroupRuleDescriptionsEgressResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeDhcpOptions",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeDhcpOptionsRequest",
      output_shape:     "DescribeDhcpOptionsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AuthorizeSecurityGroupIngress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AuthorizeSecurityGroupIngressRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateEgressOnlyInternetGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateEgressOnlyInternetGatewayRequest",
      output_shape:     "CreateEgressOnlyInternetGatewayResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Enables I/O operations for a volume that had I/O operations disabled
  because the data on the volume was potentially inconsistent.
  """
  def enable_volume_i_o(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableVolumeIO",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "EnableVolumeIORequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateNetworkAcl",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateNetworkAclRequest",
      output_shape:     "CreateNetworkAclResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePrefixLists",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribePrefixListsRequest",
      output_shape:     "DescribePrefixListsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the permissions for your network interfaces.
  """
  def describe_network_interface_permissions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNetworkInterfacePermissions",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeNetworkInterfacePermissionsRequest",
      output_shape:     "DescribeNetworkInterfacePermissionsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReplaceNetworkAclAssociation",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ReplaceNetworkAclAssociationRequest",
      output_shape:     "ReplaceNetworkAclAssociationResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateAddress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AssociateAddressRequest",
      output_shape:     "AssociateAddressResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RejectVpcPeeringConnection",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RejectVpcPeeringConnectionRequest",
      output_shape:     "RejectVpcPeeringConnectionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Attaches a network interface to an instance.
  """
  def attach_network_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AttachNetworkInterface",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AttachNetworkInterfaceRequest",
      output_shape:     "AttachNetworkInterfaceResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RunScheduledInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RunScheduledInstancesRequest",
      output_shape:     "RunScheduledInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DetachVolume",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DetachVolumeRequest",
      output_shape:     "VolumeAttachment",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your VPC peering connections.
  """
  def describe_vpc_peering_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcPeeringConnections",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpcPeeringConnectionsRequest",
      output_shape:     "DescribeVpcPeeringConnectionsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DetachVpnGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DetachVpnGatewayRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDefaultVpc",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateDefaultVpcRequest",
      output_shape:     "CreateDefaultVpcResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVpcEndpoint",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateVpcEndpointRequest",
      output_shape:     "CreateVpcEndpointResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DetachClassicLinkVpc",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DetachClassicLinkVpcRequest",
      output_shape:     "DetachClassicLinkVpcResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TerminateInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "TerminateInstancesRequest",
      output_shape:     "TerminateInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes your Spot fleet requests.

  Spot fleet requests are deleted 48 hours after they are canceled and their
  instances are terminated.
  """
  def describe_spot_fleet_requests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSpotFleetRequests",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSpotFleetRequestsRequest",
      output_shape:     "DescribeSpotFleetRequestsResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateImage",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateImageRequest",
      output_shape:     "CreateImageResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateFlowLogs",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateFlowLogsRequest",
      output_shape:     "CreateFlowLogsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableVpcClassicLinkDnsSupport",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "EnableVpcClassicLinkDnsSupportRequest",
      output_shape:     "EnableVpcClassicLinkDnsSupportResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVolume",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteVolumeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSnapshotAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSnapshotAttributeRequest",
      output_shape:     "DescribeSnapshotAttributeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disassociates an IAM instance profile from a running or stopped instance.

  Use `DescribeIamInstanceProfileAssociations` to get the association ID.
  """
  def disassociate_iam_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateIamInstanceProfile",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DisassociateIamInstanceProfileRequest",
      output_shape:     "DisassociateIamInstanceProfileResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreAddressToClassic",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RestoreAddressToClassicRequest",
      output_shape:     "RestoreAddressToClassicResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeKeyPairs",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeKeyPairsRequest",
      output_shape:     "DescribeKeyPairsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReplaceIamInstanceProfileAssociation",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ReplaceIamInstanceProfileAssociationRequest",
      output_shape:     "ReplaceIamInstanceProfileAssociationResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelSpotInstanceRequests",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CancelSpotInstanceRequestsRequest",
      output_shape:     "CancelSpotInstanceRequestsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVpc",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateVpcRequest",
      output_shape:     "CreateVpcResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifySnapshotAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifySnapshotAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your VPCs.
  """
  def describe_vpcs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcs",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpcsRequest",
      output_shape:     "DescribeVpcsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReplaceRoute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ReplaceRouteRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of the your NAT gateways.
  """
  def describe_nat_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNatGateways",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeNatGatewaysRequest",
      output_shape:     "DescribeNatGatewaysResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopySnapshot",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CopySnapshotRequest",
      output_shape:     "CopySnapshotResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableVpcClassicLink",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "EnableVpcClassicLinkRequest",
      output_shape:     "EnableVpcClassicLinkResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your Internet gateways.
  """
  def describe_internet_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInternetGateways",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeInternetGatewaysRequest",
      output_shape:     "DescribeInternetGatewaysResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes your import snapshot tasks.
  """
  def describe_import_snapshot_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeImportSnapshotTasks",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeImportSnapshotTasksRequest",
      output_shape:     "DescribeImportSnapshotTasksResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes one or more specified VPC endpoints. Deleting the endpoint also
  deletes the endpoint routes in the route tables that were associated with
  the endpoint.
  """
  def delete_vpc_endpoints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVpcEndpoints",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteVpcEndpointsRequest",
      output_shape:     "DeleteVpcEndpointsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AttachClassicLinkVpc",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AttachClassicLinkVpcRequest",
      output_shape:     "AttachClassicLinkVpcResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PurchaseReservedInstancesOffering",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "PurchaseReservedInstancesOfferingRequest",
      output_shape:     "PurchaseReservedInstancesOfferingResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReplaceNetworkAclEntry",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ReplaceNetworkAclEntryRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes your IAM instance profile associations.
  """
  def describe_iam_instance_profile_associations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeIamInstanceProfileAssociations",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeIamInstanceProfileAssociationsRequest",
      output_shape:     "DescribeIamInstanceProfileAssociationsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RebootInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RebootInstancesRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Associates an IAM instance profile with a running or stopped instance. You
  cannot associate more than one IAM instance profile with an instance.
  """
  def associate_iam_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateIamInstanceProfile",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AssociateIamInstanceProfileRequest",
      output_shape:     "AssociateIamInstanceProfileResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteNetworkInterfacePermission",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteNetworkInterfacePermissionRequest",
      output_shape:     "DeleteNetworkInterfacePermissionResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AttachVpnGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AttachVpnGatewayRequest",
      output_shape:     "AttachVpnGatewayResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified subnet. You must terminate all running instances in
  the subnet before you can delete the subnet.
  """
  def delete_subnet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSubnet",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteSubnetRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTags",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteTagsRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeIdentityIdFormat",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeIdentityIdFormatRequest",
      output_shape:     "DescribeIdentityIdFormatResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC
  that has EC2-Classic instances linked to it.
  """
  def disable_vpc_classic_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableVpcClassicLink",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DisableVpcClassicLinkRequest",
      output_shape:     "DisableVpcClassicLinkResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeReservedInstancesRequest",
      output_shape:     "DescribeReservedInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified customer gateway. You must delete the VPN connection
  before you can delete the customer gateway.
  """
  def delete_customer_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCustomerGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteCustomerGatewayRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AuthorizeSecurityGroupEgress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AuthorizeSecurityGroupEgressRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCustomerGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateCustomerGatewayRequest",
      output_shape:     "CreateCustomerGatewayResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeBundleTasks",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeBundleTasksRequest",
      output_shape:     "DescribeBundleTasksResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Accepts the Convertible Reserved Instance exchange quote described in the
  `GetReservedInstancesExchangeQuote` call.
  """
  def accept_reserved_instances_exchange_quote(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AcceptReservedInstancesExchangeQuote",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AcceptReservedInstancesExchangeQuoteRequest",
      output_shape:     "AcceptReservedInstancesExchangeQuoteResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AllocateAddress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AllocateAddressRequest",
      output_shape:     "AllocateAddressResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes one or more flow logs.
  """
  def delete_flow_logs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteFlowLogs",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteFlowLogsRequest",
      output_shape:     "DeleteFlowLogsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PurchaseHostReservation",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "PurchaseHostReservationRequest",
      output_shape:     "PurchaseHostReservationResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDhcpOptions",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateDhcpOptionsRequest",
      output_shape:     "CreateDhcpOptionsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePlacementGroups",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribePlacementGroupsRequest",
      output_shape:     "DescribePlacementGroupsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReleaseAddress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ReleaseAddressRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterImage",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RegisterImageRequest",
      output_shape:     "RegisterImageResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeHostReservationOfferings",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeHostReservationOfferingsRequest",
      output_shape:     "DescribeHostReservationOfferingsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Detaches a network interface from an instance.
  """
  def detach_network_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DetachNetworkInterface",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DetachNetworkInterfaceRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateRouteTable",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DisassociateRouteTableRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeTagsRequest",
      output_shape:     "DescribeTagsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateSubnetCidrBlock",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DisassociateSubnetCidrBlockRequest",
      output_shape:     "DisassociateSubnetCidrBlockResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpnGateways",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpnGatewaysRequest",
      output_shape:     "DescribeVpnGatewaysResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReportInstanceStatus",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ReportInstanceStatusRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more flow logs. To view the information in your flow logs
  (the log streams for the network interfaces), you must use the CloudWatch
  Logs console or the CloudWatch Logs API.
  """
  def describe_flow_logs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFlowLogs",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeFlowLogsRequest",
      output_shape:     "DescribeFlowLogsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVpnConnection",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteVpnConnectionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateFpgaImage",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateFpgaImageRequest",
      output_shape:     "CreateFpgaImageResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PurchaseScheduledInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "PurchaseScheduledInstancesRequest",
      output_shape:     "PurchaseScheduledInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyHosts",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyHostsRequest",
      output_shape:     "ModifyHostsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSecurityGroup",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteSecurityGroupRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateNetworkAclEntry",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateNetworkAclEntryRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReleaseHosts",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ReleaseHostsRequest",
      output_shape:     "ReleaseHostsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disables a virtual private gateway (VGW) from propagating routes to a
  specified route table of a VPC.
  """
  def disable_vgw_route_propagation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableVgwRoutePropagation",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DisableVgwRoutePropagationRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes an egress-only Internet gateway.
  """
  def delete_egress_only_internet_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteEgressOnlyInternetGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteEgressOnlyInternetGatewayRequest",
      output_shape:     "DeleteEgressOnlyInternetGatewayResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVpnGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteVpnGatewayRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateTags",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateTagsRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVolumeAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVolumeAttributeRequest",
      output_shape:     "DescribeVolumeAttributeResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the Elastic GPUs associated with your instances. For more
  information about Elastic GPUs, see [Amazon EC2 Elastic
  GPUs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-gpus.html).
  """
  def describe_elastic_gpus(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeElasticGpus",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeElasticGpusRequest",
      output_shape:     "DescribeElasticGpusResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyReservedInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyReservedInstancesRequest",
      output_shape:     "ModifyReservedInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSpotDatafeedSubscription",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateSpotDatafeedSubscriptionRequest",
      output_shape:     "CreateSpotDatafeedSubscriptionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified route from the specified route table.
  """
  def delete_route(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRoute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteRouteRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "StartInstancesRequest",
      output_shape:     "StartInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateNetworkInterfacePermission",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateNetworkInterfacePermissionRequest",
      output_shape:     "CreateNetworkInterfacePermissionResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RevokeSecurityGroupEgress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RevokeSecurityGroupEgressRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSnapshot",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteSnapshotRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVpnConnectionRoute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateVpnConnectionRouteRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateDhcpOptions",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AssociateDhcpOptionsRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetSnapshotAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ResetSnapshotAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Cancels an in-process import virtual machine or import snapshot task.
  """
  def cancel_import_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelImportTask",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CancelImportTaskRequest",
      output_shape:     "CancelImportTaskResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Unassigns one or more IPv6 addresses from a network interface.
  """
  def unassign_ipv6_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UnassignIpv6Addresses",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "UnassignIpv6AddressesRequest",
      output_shape:     "UnassignIpv6AddressesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyVpcPeeringConnectionOptions",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyVpcPeeringConnectionOptionsRequest",
      output_shape:     "ModifyVpcPeeringConnectionOptionsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeInstancesRequest",
      output_shape:     "DescribeInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateReservedInstancesListing",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateReservedInstancesListingRequest",
      output_shape:     "CreateReservedInstancesListingResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieve a JPG-format screenshot of a running instance to help with
  troubleshooting.

  The returned content is Base64-encoded.
  """
  def get_console_screenshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetConsoleScreenshot",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "GetConsoleScreenshotRequest",
      output_shape:     "GetConsoleScreenshotResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSnapshots",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSnapshotsRequest",
      output_shape:     "DescribeSnapshotsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedInstancesModifications",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeReservedInstancesModificationsRequest",
      output_shape:     "DescribeReservedInstancesModificationsResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReservedInstancesOfferings",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeReservedInstancesOfferingsRequest",
      output_shape:     "DescribeReservedInstancesOfferingsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes a network interface attribute. You can specify only one attribute
  at a time.
  """
  def describe_network_interface_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNetworkInterfaceAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeNetworkInterfaceAttributeRequest",
      output_shape:     "DescribeNetworkInterfaceAttributeResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyImageAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyImageAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVolume",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateVolumeRequest",
      output_shape:     "Volume",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Modifies the specified attribute of the specified VPC.
  """
  def modify_vpc_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyVpcAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyVpcAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Enables a virtual private gateway (VGW) to propagate routes to the
  specified route table of a VPC.
  """
  def enable_vgw_route_propagation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableVgwRoutePropagation",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "EnableVgwRoutePropagationRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the specified attribute of the specified AMI. You can specify
  only one attribute at a time.
  """
  def describe_image_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeImageAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeImageAttributeRequest",
      output_shape:     "ImageAttribute",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstanceAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeInstanceAttributeRequest",
      output_shape:     "InstanceAttribute",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeregisterImage",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeregisterImageRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateInternetGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateInternetGatewayRequest",
      output_shape:     "CreateInternetGatewayResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSubnet",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateSubnetRequest",
      output_shape:     "CreateSubnetResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetInstanceAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ResetInstanceAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVpnGateway",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateVpnGatewayRequest",
      output_shape:     "CreateVpnGatewayResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAccountAttributes",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeAccountAttributesRequest",
      output_shape:     "DescribeAccountAttributesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes all supported AWS services that can be specified when creating a
  VPC endpoint.
  """
  def describe_vpc_endpoint_services(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcEndpointServices",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpcEndpointServicesRequest",
      output_shape:     "DescribeVpcEndpointServicesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more available Amazon FPGA Images (AFIs). These include
  public AFIs, private AFIs that you own, and AFIs owned by other AWS
  accounts for which you have load permissions.
  """
  def describe_fpga_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFpgaImages",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeFpgaImagesRequest",
      output_shape:     "DescribeFpgaImagesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateInstanceExportTask",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateInstanceExportTaskRequest",
      output_shape:     "CreateInstanceExportTaskResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMovingAddresses",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeMovingAddressesRequest",
      output_shape:     "DescribeMovingAddressesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the ClassicLink status of one or more VPCs.
  """
  def describe_vpc_classic_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcClassicLink",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpcClassicLinkRequest",
      output_shape:     "DescribeVpcClassicLinkResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssignIpv6Addresses",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AssignIpv6AddressesRequest",
      output_shape:     "AssignIpv6AddressesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAvailabilityZones",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeAvailabilityZonesRequest",
      output_shape:     "DescribeAvailabilityZonesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcClassicLinkDnsSupport",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeVpcClassicLinkDnsSupportRequest",
      output_shape:     "DescribeVpcClassicLinkDnsSupportResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDhcpOptions",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteDhcpOptionsRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RevokeSecurityGroupIngress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "RevokeSecurityGroupIngressRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "MonitorInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "MonitorInstancesRequest",
      output_shape:     "MonitorInstancesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified network interface. You must detach the network
  interface before you can delete it.
  """
  def delete_network_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteNetworkInterface",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DeleteNetworkInterfaceRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Associates a CIDR block with your subnet. You can only associate a single
  IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix
  length of /64.
  """
  def associate_subnet_cidr_block(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateSubnetCidrBlock",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AssociateSubnetCidrBlockRequest",
      output_shape:     "AssociateSubnetCidrBlockResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateSecurityGroupRuleDescriptionsIngress",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "UpdateSecurityGroupRuleDescriptionsIngressRequest",
      output_shape:     "UpdateSecurityGroupRuleDescriptionsIngressResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateKeyPair",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "CreateKeyPairRequest",
      output_shape:     "KeyPair",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes one or more of your network interfaces.
  """
  def describe_network_interfaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNetworkInterfaces",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeNetworkInterfacesRequest",
      output_shape:     "DescribeNetworkInterfacesResult",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AttachVolume",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AttachVolumeRequest",
      output_shape:     "VolumeAttachment",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssignPrivateIpAddresses",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "AssignPrivateIpAddressesRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ModifyIdentityIdFormat",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ModifyIdentityIdFormatRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the running instances for the specified Spot fleet.
  """
  def describe_spot_fleet_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSpotFleetInstances",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "DescribeSpotFleetInstancesRequest",
      output_shape:     "DescribeSpotFleetInstancesResponse",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReplaceRouteTableAssociation",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ReplaceRouteTableAssociationRequest",
      output_shape:     "ReplaceRouteTableAssociationResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Resets an attribute of an AMI to its default value.

  <note> The productCodes attribute can't be reset.

  </note>
  """
  def reset_image_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "ec2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetImageAttribute",
      
      endpoint_prefix:  "ec2",
      type:             :ec2,
      version:          "2016-11-15",
      method:           :post,
      input_shape:      "ResetImageAttributeRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"SubnetIpv6CidrBlockAssociation" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "Ipv6CidrBlock" => %{"locationName" => "ipv6CidrBlock", "shape" => "String"}, "Ipv6CidrBlockState" => %{"locationName" => "ipv6CidrBlockState", "shape" => "SubnetCidrBlockState"}}, "type" => "structure"}, "ElasticGpuSpecifications" => %{"member" => %{"locationName" => "item", "shape" => "ElasticGpuSpecification"}, "type" => "list"}, "DescribeKeyPairsResult" => %{"members" => %{"KeyPairs" => %{"locationName" => "keySet", "shape" => "KeyPairList"}}, "type" => "structure"}, "InstanceIpv6AddressList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceIpv6Address"}, "type" => "list"}, "ExportEnvironment" => %{"enum" => ["citrix", "vmware", "microsoft"], "type" => "string"}, "VgwTelemetryList" => %{"member" => %{"locationName" => "item", "shape" => "VgwTelemetry"}, "type" => "list"}, "PurchaseRequestSet" => %{"member" => %{"locationName" => "PurchaseRequest", "shape" => "PurchaseRequest"}, "min" => 1, "type" => "list"}, "UserIdGroupPairList" => %{"member" => %{"locationName" => "item", "shape" => "UserIdGroupPair"}, "type" => "list"}, "KeyPair" => %{"members" => %{"KeyFingerprint" => %{"locationName" => "keyFingerprint", "shape" => "String"}, "KeyMaterial" => %{"locationName" => "keyMaterial", "shape" => "String"}, "KeyName" => %{"locationName" => "keyName", "shape" => "String"}}, "type" => "structure"}, "CreateNetworkInterfaceRequest" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Groups" => %{"locationName" => "SecurityGroupId", "shape" => "SecurityGroupIdStringList"}, "Ipv6AddressCount" => %{"locationName" => "ipv6AddressCount", "shape" => "Integer"}, "Ipv6Addresses" => %{"locationName" => "ipv6Addresses", "shape" => "InstanceIpv6AddressList"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "PrivateIpAddresses" => %{"locationName" => "privateIpAddresses", "shape" => "PrivateIpAddressSpecificationList"}, "SecondaryPrivateIpAddressCount" => %{"locationName" => "secondaryPrivateIpAddressCount", "shape" => "Integer"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "required" => ["SubnetId"], "type" => "structure"}, "ConfirmProductInstanceResult" => %{"members" => %{"OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "FleetType" => %{"enum" => ["request", "maintain"], "type" => "string"}, "DescribeScheduledInstancesResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "ScheduledInstanceSet" => %{"locationName" => "scheduledInstanceSet", "shape" => "ScheduledInstanceSet"}}, "type" => "structure"}, "DescribeReservedInstancesOfferingsRequest" => %{"members" => %{"AvailabilityZone" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "IncludeMarketplace" => %{"shape" => "Boolean"}, "InstanceTenancy" => %{"locationName" => "instanceTenancy", "shape" => "Tenancy"}, "InstanceType" => %{"shape" => "InstanceType"}, "MaxDuration" => %{"shape" => "Long"}, "MaxInstanceCount" => %{"shape" => "Integer"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "MinDuration" => %{"shape" => "Long"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "OfferingClass" => %{"shape" => "OfferingClassType"}, "OfferingType" => %{"locationName" => "offeringType", "shape" => "OfferingTypeValues"}, "ProductDescription" => %{"shape" => "RIProductDescription"}, "ReservedInstancesOfferingIds" => %{"locationName" => "ReservedInstancesOfferingId", "shape" => "ReservedInstancesOfferingIdStringList"}}, "type" => "structure"}, "InstanceStatusDetailsList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceStatusDetails"}, "type" => "list"}, "DiskImageFormat" => %{"enum" => ["VMDK", "RAW", "VHD"], "type" => "string"}, "DescribeVolumesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "VolumeIds" => %{"locationName" => "VolumeId", "shape" => "VolumeIdStringList"}}, "type" => "structure"}, "CancelReservedInstancesListingResult" => %{"members" => %{"ReservedInstancesListings" => %{"locationName" => "reservedInstancesListingsSet", "shape" => "ReservedInstancesListingList"}}, "type" => "structure"}, "PlatformValues" => %{"enum" => ["Windows"], "type" => "string"}, "VpcEndpointSet" => %{"member" => %{"locationName" => "item", "shape" => "VpcEndpoint"}, "type" => "list"}, "CreateCustomerGatewayResult" => %{"members" => %{"CustomerGateway" => %{"locationName" => "customerGateway", "shape" => "CustomerGateway"}}, "type" => "structure"}, "ResponseHostIdSet" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "RegionList" => %{"member" => %{"locationName" => "item", "shape" => "Region"}, "type" => "list"}, "SpotInstanceRequestList" => %{"member" => %{"locationName" => "item", "shape" => "SpotInstanceRequest"}, "type" => "list"}, "CreateKeyPairRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "KeyName" => %{"shape" => "String"}}, "required" => ["KeyName"], "type" => "structure"}, "CreateDhcpOptionsResult" => %{"members" => %{"DhcpOptions" => %{"locationName" => "dhcpOptions", "shape" => "DhcpOptions"}}, "type" => "structure"}, "SubnetList" => %{"member" => %{"locationName" => "item", "shape" => "Subnet"}, "type" => "list"}, "AllocationIdList" => %{"member" => %{"locationName" => "AllocationId", "shape" => "String"}, "type" => "list"}, "IpRanges" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "GroupIds" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "NetworkInterfaceIpv6Address" => %{"members" => %{"Ipv6Address" => %{"locationName" => "ipv6Address", "shape" => "String"}}, "type" => "structure"}, "ReservedInstancesModification" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "CreateDate" => %{"locationName" => "createDate", "shape" => "DateTime"}, "EffectiveDate" => %{"locationName" => "effectiveDate", "shape" => "DateTime"}, "ModificationResults" => %{"locationName" => "modificationResultSet", "shape" => "ReservedInstancesModificationResultList"}, "ReservedInstancesIds" => %{"locationName" => "reservedInstancesSet", "shape" => "ReservedIntancesIds"}, "ReservedInstancesModificationId" => %{"locationName" => "reservedInstancesModificationId", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "String"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}, "UpdateDate" => %{"locationName" => "updateDate", "shape" => "DateTime"}}, "type" => "structure"}, "ListingStatus" => %{"enum" => ["active", "pending", "cancelled", "closed"], "type" => "string"}, "VpcCidrBlockStateCode" => %{"enum" => ["associating", "associated", "disassociating", "disassociated", "failing", "failed"], "type" => "string"}, "DescribeSnapshotsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "Snapshots" => %{"locationName" => "snapshotSet", "shape" => "SnapshotList"}}, "type" => "structure"}, "CancelSpotInstanceRequestsResult" => %{"members" => %{"CancelledSpotInstanceRequests" => %{"locationName" => "spotInstanceRequestSet", "shape" => "CancelledSpotInstanceRequestList"}}, "type" => "structure"}, "RejectVpcPeeringConnectionRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "required" => ["VpcPeeringConnectionId"], "type" => "structure"}, "BlockDeviceMappingList" => %{"member" => %{"locationName" => "item", "shape" => "BlockDeviceMapping"}, "type" => "list"}, "RecurringChargeFrequency" => %{"enum" => ["Hourly"], "type" => "string"}, "NetworkInterfacePermission" => %{"members" => %{"AwsAccountId" => %{"locationName" => "awsAccountId", "shape" => "String"}, "AwsService" => %{"locationName" => "awsService", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "NetworkInterfacePermissionId" => %{"locationName" => "networkInterfacePermissionId", "shape" => "String"}, "Permission" => %{"locationName" => "permission", "shape" => "InterfacePermissionType"}, "PermissionState" => %{"locationName" => "permissionState", "shape" => "NetworkInterfacePermissionState"}}, "type" => "structure"}, "Vpc" => %{"members" => %{"CidrBlock" => %{"locationName" => "cidrBlock", "shape" => "String"}, "CidrBlockAssociationSet" => %{"locationName" => "cidrBlockAssociationSet", "shape" => "VpcCidrBlockAssociationSet"}, "DhcpOptionsId" => %{"locationName" => "dhcpOptionsId", "shape" => "String"}, "InstanceTenancy" => %{"locationName" => "instanceTenancy", "shape" => "Tenancy"}, "Ipv6CidrBlockAssociationSet" => %{"locationName" => "ipv6CidrBlockAssociationSet", "shape" => "VpcIpv6CidrBlockAssociationSet"}, "IsDefault" => %{"locationName" => "isDefault", "shape" => "Boolean"}, "State" => %{"locationName" => "state", "shape" => "VpcState"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "ScheduledInstancesNetworkInterface" => %{"members" => %{"AssociatePublicIpAddress" => %{"shape" => "Boolean"}, "DeleteOnTermination" => %{"shape" => "Boolean"}, "Description" => %{"shape" => "String"}, "DeviceIndex" => %{"shape" => "Integer"}, "Groups" => %{"locationName" => "Group", "shape" => "ScheduledInstancesSecurityGroupIdSet"}, "Ipv6AddressCount" => %{"shape" => "Integer"}, "Ipv6Addresses" => %{"locationName" => "Ipv6Address", "shape" => "ScheduledInstancesIpv6AddressList"}, "NetworkInterfaceId" => %{"shape" => "String"}, "PrivateIpAddress" => %{"shape" => "String"}, "PrivateIpAddressConfigs" => %{"locationName" => "PrivateIpAddressConfig", "shape" => "PrivateIpAddressConfigSet"}, "SecondaryPrivateIpAddressCount" => %{"shape" => "Integer"}, "SubnetId" => %{"shape" => "String"}}, "type" => "structure"}, "NatGatewayState" => %{"enum" => ["pending", "failed", "available", "deleting", "deleted"], "type" => "string"}, "PriceScheduleList" => %{"member" => %{"locationName" => "item", "shape" => "PriceSchedule"}, "type" => "list"}, "CreateVpcPeeringConnectionRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "PeerOwnerId" => %{"locationName" => "peerOwnerId", "shape" => "String"}, "PeerVpcId" => %{"locationName" => "peerVpcId", "shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "CancelBundleTaskRequest" => %{"members" => %{"BundleId" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "required" => ["BundleId"], "type" => "structure"}, "VolumeStatusEvent" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "EventId" => %{"locationName" => "eventId", "shape" => "String"}, "EventType" => %{"locationName" => "eventType", "shape" => "String"}, "NotAfter" => %{"locationName" => "notAfter", "shape" => "DateTime"}, "NotBefore" => %{"locationName" => "notBefore", "shape" => "DateTime"}}, "type" => "structure"}, "ImportInstanceVolumeDetailItem" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "BytesConverted" => %{"locationName" => "bytesConverted", "shape" => "Long"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "Image" => %{"locationName" => "image", "shape" => "DiskImageDescription"}, "Status" => %{"locationName" => "status", "shape" => "String"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}, "Volume" => %{"locationName" => "volume", "shape" => "DiskImageVolumeDescription"}}, "required" => ["AvailabilityZone", "BytesConverted", "Image", "Status", "Volume"], "type" => "structure"}, "HostOffering" => %{"members" => %{"CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Duration" => %{"locationName" => "duration", "shape" => "Integer"}, "HourlyPrice" => %{"locationName" => "hourlyPrice", "shape" => "String"}, "InstanceFamily" => %{"locationName" => "instanceFamily", "shape" => "String"}, "OfferingId" => %{"locationName" => "offeringId", "shape" => "String"}, "PaymentOption" => %{"locationName" => "paymentOption", "shape" => "PaymentOption"}, "UpfrontPrice" => %{"locationName" => "upfrontPrice", "shape" => "String"}}, "type" => "structure"}, "ReservedInstancesOfferingList" => %{"member" => %{"locationName" => "item", "shape" => "ReservedInstancesOffering"}, "type" => "list"}, "DescribeImagesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "ExecutableUsers" => %{"locationName" => "ExecutableBy", "shape" => "ExecutableByStringList"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "ImageIds" => %{"locationName" => "ImageId", "shape" => "ImageIdStringList"}, "Owners" => %{"locationName" => "Owner", "shape" => "OwnerStringList"}}, "type" => "structure"}, "ReservedInstanceReservationValue" => %{"members" => %{"ReservationValue" => %{"locationName" => "reservationValue", "shape" => "ReservationValue"}, "ReservedInstanceId" => %{"locationName" => "reservedInstanceId", "shape" => "String"}}, "type" => "structure"}, "DescribeSpotPriceHistoryResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "SpotPriceHistory" => %{"locationName" => "spotPriceHistorySet", "shape" => "SpotPriceHistoryList"}}, "type" => "structure"}, "CancelSpotFleetRequestsResponse" => %{"members" => %{"SuccessfulFleetRequests" => %{"locationName" => "successfulFleetRequestSet", "shape" => "CancelSpotFleetRequestsSuccessSet"}, "UnsuccessfulFleetRequests" => %{"locationName" => "unsuccessfulFleetRequestSet", "shape" => "CancelSpotFleetRequestsErrorSet"}}, "type" => "structure"}, "ModifyVpcEndpointResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "ActivityStatus" => %{"enum" => ["error", "pending_fulfillment", "pending_termination", "fulfilled"], "type" => "string"}, "Subnet" => %{"members" => %{"AssignIpv6AddressOnCreation" => %{"locationName" => "assignIpv6AddressOnCreation", "shape" => "Boolean"}, "AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "AvailableIpAddressCount" => %{"locationName" => "availableIpAddressCount", "shape" => "Integer"}, "CidrBlock" => %{"locationName" => "cidrBlock", "shape" => "String"}, "DefaultForAz" => %{"locationName" => "defaultForAz", "shape" => "Boolean"}, "Ipv6CidrBlockAssociationSet" => %{"locationName" => "ipv6CidrBlockAssociationSet", "shape" => "SubnetIpv6CidrBlockAssociationSet"}, "MapPublicIpOnLaunch" => %{"locationName" => "mapPublicIpOnLaunch", "shape" => "Boolean"}, "State" => %{"locationName" => "state", "shape" => "SubnetState"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "IpRange" => %{"members" => %{"CidrIp" => %{"locationName" => "cidrIp", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}}, "type" => "structure"}, "VolumeStatusName" => %{"enum" => ["io-enabled", "io-performance"], "type" => "string"}, "DescribeRegionsResult" => %{"members" => %{"Regions" => %{"locationName" => "regionInfo", "shape" => "RegionList"}}, "type" => "structure"}, "InternetGatewayAttachmentList" => %{"member" => %{"locationName" => "item", "shape" => "InternetGatewayAttachment"}, "type" => "list"}, "VpcAttributeName" => %{"enum" => ["enableDnsSupport", "enableDnsHostnames"], "type" => "string"}, "CreateSubnetResult" => %{"members" => %{"Subnet" => %{"locationName" => "subnet", "shape" => "Subnet"}}, "type" => "structure"}, "DescribeSecurityGroupsResult" => %{"members" => %{"SecurityGroups" => %{"locationName" => "securityGroupInfo", "shape" => "SecurityGroupList"}}, "type" => "structure"}, "TerminateInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}}, "required" => ["InstanceIds"], "type" => "structure"}, "ResourceType" => %{"enum" => ["customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection", "vpn-gateway"], "type" => "string"}, "AssociateSubnetCidrBlockResult" => %{"members" => %{"Ipv6CidrBlockAssociation" => %{"locationName" => "ipv6CidrBlockAssociation", "shape" => "SubnetIpv6CidrBlockAssociation"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "type" => "structure"}, "DeleteDhcpOptionsRequest" => %{"members" => %{"DhcpOptionsId" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "required" => ["DhcpOptionsId"], "type" => "structure"}, "SpotInstanceRequestIdList" => %{"member" => %{"locationName" => "SpotInstanceRequestId", "shape" => "String"}, "type" => "list"}, "ReservedInstanceReservationValueSet" => %{"member" => %{"locationName" => "item", "shape" => "ReservedInstanceReservationValue"}, "type" => "list"}, "DescribeCustomerGatewaysResult" => %{"members" => %{"CustomerGateways" => %{"locationName" => "customerGatewaySet", "shape" => "CustomerGatewayList"}}, "type" => "structure"}, "DescribeRegionsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "RegionNames" => %{"locationName" => "RegionName", "shape" => "RegionNameStringList"}}, "type" => "structure"}, "ModifyImageAttributeRequest" => %{"members" => %{"Attribute" => %{"shape" => "String"}, "Description" => %{"shape" => "AttributeValue"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "ImageId" => %{"shape" => "String"}, "LaunchPermission" => %{"shape" => "LaunchPermissionModifications"}, "OperationType" => %{"shape" => "OperationType"}, "ProductCodes" => %{"locationName" => "ProductCode", "shape" => "ProductCodeStringList"}, "UserGroups" => %{"locationName" => "UserGroup", "shape" => "UserGroupStringList"}, "UserIds" => %{"locationName" => "UserId", "shape" => "UserIdStringList"}, "Value" => %{"shape" => "String"}}, "required" => ["ImageId"], "type" => "structure"}, "DescribeRouteTablesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "RouteTableIds" => %{"locationName" => "RouteTableId", "shape" => "ValueStringList"}}, "type" => "structure"}, "ReplaceIamInstanceProfileAssociationRequest" => %{"members" => %{"AssociationId" => %{"shape" => "String"}, "IamInstanceProfile" => %{"shape" => "IamInstanceProfileSpecification"}}, "required" => ["IamInstanceProfile", "AssociationId"], "type" => "structure"}, "PeeringConnectionOptions" => %{"members" => %{"AllowDnsResolutionFromRemoteVpc" => %{"locationName" => "allowDnsResolutionFromRemoteVpc", "shape" => "Boolean"}, "AllowEgressFromLocalClassicLinkToRemoteVpc" => %{"locationName" => "allowEgressFromLocalClassicLinkToRemoteVpc", "shape" => "Boolean"}, "AllowEgressFromLocalVpcToRemoteClassicLink" => %{"locationName" => "allowEgressFromLocalVpcToRemoteClassicLink", "shape" => "Boolean"}}, "type" => "structure"}, "CreateFpgaImageRequest" => %{"members" => %{"ClientToken" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "DryRun" => %{"shape" => "Boolean"}, "InputStorageLocation" => %{"shape" => "StorageLocation"}, "LogsStorageLocation" => %{"shape" => "StorageLocation"}, "Name" => %{"shape" => "String"}}, "required" => ["InputStorageLocation"], "type" => "structure"}, "BundleTaskList" => %{"member" => %{"locationName" => "item", "shape" => "BundleTask"}, "type" => "list"}, "TagDescriptionList" => %{"member" => %{"locationName" => "item", "shape" => "TagDescription"}, "type" => "list"}, "InstanceIpv6Address" => %{"members" => %{"Ipv6Address" => %{"locationName" => "ipv6Address", "shape" => "String"}}, "type" => "structure"}, "EgressOnlyInternetGatewayIdList" => %{"member" => %{"locationName" => "item", "shape" => "EgressOnlyInternetGatewayId"}, "type" => "list"}, "ScheduledInstance" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "CreateDate" => %{"locationName" => "createDate", "shape" => "DateTime"}, "HourlyPrice" => %{"locationName" => "hourlyPrice", "shape" => "String"}, "InstanceCount" => %{"locationName" => "instanceCount", "shape" => "Integer"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "String"}, "NetworkPlatform" => %{"locationName" => "networkPlatform", "shape" => "String"}, "NextSlotStartTime" => %{"locationName" => "nextSlotStartTime", "shape" => "DateTime"}, "Platform" => %{"locationName" => "platform", "shape" => "String"}, "PreviousSlotEndTime" => %{"locationName" => "previousSlotEndTime", "shape" => "DateTime"}, "Recurrence" => %{"locationName" => "recurrence", "shape" => "ScheduledInstanceRecurrence"}, "ScheduledInstanceId" => %{"locationName" => "scheduledInstanceId", "shape" => "String"}, "SlotDurationInHours" => %{"locationName" => "slotDurationInHours", "shape" => "Integer"}, "TermEndDate" => %{"locationName" => "termEndDate", "shape" => "DateTime"}, "TermStartDate" => %{"locationName" => "termStartDate", "shape" => "DateTime"}, "TotalScheduledInstanceHours" => %{"locationName" => "totalScheduledInstanceHours", "shape" => "Integer"}}, "type" => "structure"}, "AccountAttribute" => %{"members" => %{"AttributeName" => %{"locationName" => "attributeName", "shape" => "String"}, "AttributeValues" => %{"locationName" => "attributeValueSet", "shape" => "AccountAttributeValueList"}}, "type" => "structure"}, "Ipv6CidrBlockSet" => %{"member" => %{"locationName" => "item", "shape" => "Ipv6CidrBlock"}, "type" => "list"}, "HostReservation" => %{"members" => %{"Count" => %{"locationName" => "count", "shape" => "Integer"}, "CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Duration" => %{"locationName" => "duration", "shape" => "Integer"}, "End" => %{"locationName" => "end", "shape" => "DateTime"}, "HostIdSet" => %{"locationName" => "hostIdSet", "shape" => "ResponseHostIdSet"}, "HostReservationId" => %{"locationName" => "hostReservationId", "shape" => "String"}, "HourlyPrice" => %{"locationName" => "hourlyPrice", "shape" => "String"}, "InstanceFamily" => %{"locationName" => "instanceFamily", "shape" => "String"}, "OfferingId" => %{"locationName" => "offeringId", "shape" => "String"}, "PaymentOption" => %{"locationName" => "paymentOption", "shape" => "PaymentOption"}, "Start" => %{"locationName" => "start", "shape" => "DateTime"}, "State" => %{"locationName" => "state", "shape" => "ReservationState"}, "UpfrontPrice" => %{"locationName" => "upfrontPrice", "shape" => "String"}}, "type" => "structure"}, "VpcPeeringConnection" => %{"members" => %{"AccepterVpcInfo" => %{"locationName" => "accepterVpcInfo", "shape" => "VpcPeeringConnectionVpcInfo"}, "ExpirationTime" => %{"locationName" => "expirationTime", "shape" => "DateTime"}, "RequesterVpcInfo" => %{"locationName" => "requesterVpcInfo", "shape" => "VpcPeeringConnectionVpcInfo"}, "Status" => %{"locationName" => "status", "shape" => "VpcPeeringConnectionStateReason"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "type" => "structure"}, "SnapshotState" => %{"enum" => ["pending", "completed", "error"], "type" => "string"}, "CancelSpotFleetRequestsErrorSet" => %{"member" => %{"locationName" => "item", "shape" => "CancelSpotFleetRequestsErrorItem"}, "type" => "list"}, "DatafeedSubscriptionState" => %{"enum" => ["Active", "Inactive"], "type" => "string"}, "VpnGateway" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "VpnState"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "Type" => %{"locationName" => "type", "shape" => "GatewayType"}, "VpcAttachments" => %{"locationName" => "attachments", "shape" => "VpcAttachmentList"}, "VpnGatewayId" => %{"locationName" => "vpnGatewayId", "shape" => "String"}}, "type" => "structure"}, "AllocationState" => %{"enum" => ["available", "under-assessment", "permanent-failure", "released", "released-permanent-failure"], "type" => "string"}, "ClassicLinkInstanceList" => %{"member" => %{"locationName" => "item", "shape" => "ClassicLinkInstance"}, "type" => "list"}, "AssociateSubnetCidrBlockRequest" => %{"members" => %{"Ipv6CidrBlock" => %{"locationName" => "ipv6CidrBlock", "shape" => "String"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "required" => ["Ipv6CidrBlock", "SubnetId"], "type" => "structure"}, "PurchaseHostReservationResult" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Purchase" => %{"locationName" => "purchase", "shape" => "PurchaseSet"}, "TotalHourlyPrice" => %{"locationName" => "totalHourlyPrice", "shape" => "String"}, "TotalUpfrontPrice" => %{"locationName" => "totalUpfrontPrice", "shape" => "String"}}, "type" => "structure"}, "InstanceNetworkInterfaceSpecification" => %{"members" => %{"AssociatePublicIpAddress" => %{"locationName" => "associatePublicIpAddress", "shape" => "Boolean"}, "DeleteOnTermination" => %{"locationName" => "deleteOnTermination", "shape" => "Boolean"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "DeviceIndex" => %{"locationName" => "deviceIndex", "shape" => "Integer"}, "Groups" => %{"locationName" => "SecurityGroupId", "shape" => "SecurityGroupIdStringList"}, "Ipv6AddressCount" => %{"locationName" => "ipv6AddressCount", "shape" => "Integer"}, "Ipv6Addresses" => %{"locationName" => "ipv6AddressesSet", "queryName" => "Ipv6Addresses", "shape" => "InstanceIpv6AddressList"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "PrivateIpAddresses" => %{"locationName" => "privateIpAddressesSet", "queryName" => "PrivateIpAddresses", "shape" => "PrivateIpAddressSpecificationList"}, "SecondaryPrivateIpAddressCount" => %{"locationName" => "secondaryPrivateIpAddressCount", "shape" => "Integer"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "type" => "structure"}, "CreateFlowLogsResult" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "FlowLogIds" => %{"locationName" => "flowLogIdSet", "shape" => "ValueStringList"}, "Unsuccessful" => %{"locationName" => "unsuccessful", "shape" => "UnsuccessfulItemSet"}}, "type" => "structure"}, "TelemetryStatus" => %{"enum" => ["UP", "DOWN"], "type" => "string"}, "LaunchSpecification" => %{"members" => %{"AddressingType" => %{"locationName" => "addressingType", "shape" => "String"}, "BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "BlockDeviceMappingList"}, "EbsOptimized" => %{"locationName" => "ebsOptimized", "shape" => "Boolean"}, "IamInstanceProfile" => %{"locationName" => "iamInstanceProfile", "shape" => "IamInstanceProfileSpecification"}, "ImageId" => %{"locationName" => "imageId", "shape" => "String"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "KernelId" => %{"locationName" => "kernelId", "shape" => "String"}, "KeyName" => %{"locationName" => "keyName", "shape" => "String"}, "Monitoring" => %{"locationName" => "monitoring", "shape" => "RunInstancesMonitoringEnabled"}, "NetworkInterfaces" => %{"locationName" => "networkInterfaceSet", "shape" => "InstanceNetworkInterfaceSpecificationList"}, "Placement" => %{"locationName" => "placement", "shape" => "SpotPlacement"}, "RamdiskId" => %{"locationName" => "ramdiskId", "shape" => "String"}, "SecurityGroups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "UserData" => %{"locationName" => "userData", "shape" => "String"}}, "type" => "structure"}, "PrivateIpAddressSpecification" => %{"members" => %{"Primary" => %{"locationName" => "primary", "shape" => "Boolean"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}}, "required" => ["PrivateIpAddress"], "type" => "structure"}, "ImportVolumeRequest" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Image" => %{"locationName" => "image", "shape" => "DiskImageDetail"}, "Volume" => %{"locationName" => "volume", "shape" => "VolumeDetail"}}, "required" => ["AvailabilityZone", "Image", "Volume"], "type" => "structure"}, "DescribePrefixListsRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "PrefixListIds" => %{"locationName" => "PrefixListId", "shape" => "ValueStringList"}}, "type" => "structure"}, "CreateRouteResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "FlowLogSet" => %{"member" => %{"locationName" => "item", "shape" => "FlowLog"}, "type" => "list"}, "String" => %{"type" => "string"}, "VpnStaticRouteList" => %{"member" => %{"locationName" => "item", "shape" => "VpnStaticRoute"}, "type" => "list"}, "AccountAttributeValueList" => %{"member" => %{"locationName" => "item", "shape" => "AccountAttributeValue"}, "type" => "list"}, "EnableVpcClassicLinkRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "DescribeReservedInstancesListingsResult" => %{"members" => %{"ReservedInstancesListings" => %{"locationName" => "reservedInstancesListingsSet", "shape" => "ReservedInstancesListingList"}}, "type" => "structure"}, "ExportToS3TaskSpecification" => %{"members" => %{"ContainerFormat" => %{"locationName" => "containerFormat", "shape" => "ContainerFormat"}, "DiskImageFormat" => %{"locationName" => "diskImageFormat", "shape" => "DiskImageFormat"}, "S3Bucket" => %{"locationName" => "s3Bucket", "shape" => "String"}, "S3Prefix" => %{"locationName" => "s3Prefix", "shape" => "String"}}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "DescribeInstancesResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "Reservations" => %{"locationName" => "reservationSet", "shape" => "ReservationList"}}, "type" => "structure"}, "ReservedIntancesIds" => %{"member" => %{"locationName" => "item", "shape" => "ReservedInstancesId"}, "type" => "list"}, "StaleIpPermission" => %{"members" => %{"FromPort" => %{"locationName" => "fromPort", "shape" => "Integer"}, "IpProtocol" => %{"locationName" => "ipProtocol", "shape" => "String"}, "IpRanges" => %{"locationName" => "ipRanges", "shape" => "IpRanges"}, "PrefixListIds" => %{"locationName" => "prefixListIds", "shape" => "PrefixListIdSet"}, "ToPort" => %{"locationName" => "toPort", "shape" => "Integer"}, "UserIdGroupPairs" => %{"locationName" => "groups", "shape" => "UserIdGroupPairSet"}}, "type" => "structure"}, "DescribeVolumesModificationsRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "VolumeIds" => %{"locationName" => "VolumeId", "shape" => "VolumeIdStringList"}}, "type" => "structure"}, "AccountAttributeValue" => %{"members" => %{"AttributeValue" => %{"locationName" => "attributeValue", "shape" => "String"}}, "type" => "structure"}, "SecurityGroupReferences" => %{"member" => %{"locationName" => "item", "shape" => "SecurityGroupReference"}, "type" => "list"}, "DescribeClassicLinkInstancesResult" => %{"members" => %{"Instances" => %{"locationName" => "instancesSet", "shape" => "ClassicLinkInstanceList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "OccurrenceDayRequestSet" => %{"member" => %{"locationName" => "OccurenceDay", "shape" => "Integer"}, "type" => "list"}, "DescribeStaleSecurityGroupsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "StaleSecurityGroupSet" => %{"locationName" => "staleSecurityGroupSet", "shape" => "StaleSecurityGroupSet"}}, "type" => "structure"}, "ResetImageAttributeName" => %{"enum" => ["launchPermission"], "type" => "string"}, "PlacementGroupList" => %{"member" => %{"locationName" => "item", "shape" => "PlacementGroup"}, "type" => "list"}, "UpdateSecurityGroupRuleDescriptionsEgressRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "GroupId" => %{"shape" => "String"}, "GroupName" => %{"shape" => "String"}, "IpPermissions" => %{"shape" => "IpPermissionList"}}, "required" => ["IpPermissions"], "type" => "structure"}, "AvailabilityZoneMessageList" => %{"member" => %{"locationName" => "item", "shape" => "AvailabilityZoneMessage"}, "type" => "list"}, "DiskImageList" => %{"member" => %{"shape" => "DiskImage"}, "type" => "list"}, "CreateVpnConnectionRequest" => %{"members" => %{"CustomerGatewayId" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Options" => %{"locationName" => "options", "shape" => "VpnConnectionOptionsSpecification"}, "Type" => %{"shape" => "String"}, "VpnGatewayId" => %{"shape" => "String"}}, "required" => ["CustomerGatewayId", "Type", "VpnGatewayId"], "type" => "structure"}, "ReservedInstancesOffering" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Duration" => %{"locationName" => "duration", "shape" => "Long"}, "FixedPrice" => %{"locationName" => "fixedPrice", "shape" => "Float"}, "InstanceTenancy" => %{"locationName" => "instanceTenancy", "shape" => "Tenancy"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "Marketplace" => %{"locationName" => "marketplace", "shape" => "Boolean"}, "OfferingClass" => %{"locationName" => "offeringClass", "shape" => "OfferingClassType"}, "OfferingType" => %{"locationName" => "offeringType", "shape" => "OfferingTypeValues"}, "PricingDetails" => %{"locationName" => "pricingDetailsSet", "shape" => "PricingDetailsList"}, "ProductDescription" => %{"locationName" => "productDescription", "shape" => "RIProductDescription"}, "RecurringCharges" => %{"locationName" => "recurringCharges", "shape" => "RecurringChargesList"}, "ReservedInstancesOfferingId" => %{"locationName" => "reservedInstancesOfferingId", "shape" => "String"}, "Scope" => %{"locationName" => "scope", "shape" => "scope"}, "UsagePrice" => %{"locationName" => "usagePrice", "shape" => "Float"}}, "type" => "structure"}, "NetworkInterfaceType" => %{"enum" => ["interface", "natGateway"], "type" => "string"}, "HostReservationIdSet" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "AttachInternetGatewayRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InternetGatewayId" => %{"locationName" => "internetGatewayId", "shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["InternetGatewayId", "VpcId"], "type" => "structure"}, "CreateVpcEndpointResult" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "VpcEndpoint" => %{"locationName" => "vpcEndpoint", "shape" => "VpcEndpoint"}}, "type" => "structure"}, "CopySnapshotRequest" => %{"members" => %{"Description" => %{"shape" => "String"}, "DestinationRegion" => %{"locationName" => "destinationRegion", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Encrypted" => %{"locationName" => "encrypted", "shape" => "Boolean"}, "KmsKeyId" => %{"locationName" => "kmsKeyId", "shape" => "String"}, "PresignedUrl" => %{"locationName" => "presignedUrl", "shape" => "String"}, "SourceRegion" => %{"shape" => "String"}, "SourceSnapshotId" => %{"shape" => "String"}}, "required" => ["SourceRegion", "SourceSnapshotId"], "type" => "structure"}, "Ipv6RangeList" => %{"member" => %{"locationName" => "item", "shape" => "Ipv6Range"}, "type" => "list"}, "ModifyIdFormatRequest" => %{"members" => %{"Resource" => %{"shape" => "String"}, "UseLongIds" => %{"shape" => "Boolean"}}, "required" => ["Resource", "UseLongIds"], "type" => "structure"}, "ExcessCapacityTerminationPolicy" => %{"enum" => ["noTermination", "default"], "type" => "string"}, "ScheduledInstancesMonitoring" => %{"members" => %{"Enabled" => %{"shape" => "Boolean"}}, "type" => "structure"}, "SubnetIpv6CidrBlockAssociationSet" => %{"member" => %{"locationName" => "item", "shape" => "SubnetIpv6CidrBlockAssociation"}, "type" => "list"}, "DescribeImportImageTasksResult" => %{"members" => %{"ImportImageTasks" => %{"locationName" => "importImageTaskSet", "shape" => "ImportImageTaskList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "DisassociateIamInstanceProfileResult" => %{"members" => %{"IamInstanceProfileAssociation" => %{"locationName" => "iamInstanceProfileAssociation", "shape" => "IamInstanceProfileAssociation"}}, "type" => "structure"}, "DescribeVpcClassicLinkRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "VpcIds" => %{"locationName" => "VpcId", "shape" => "VpcClassicLinkIdList"}}, "type" => "structure"}, "Storage" => %{"members" => %{"S3" => %{"shape" => "S3Storage"}}, "type" => "structure"}, "ReportStatusType" => %{"enum" => ["ok", "impaired"], "type" => "string"}, "SpotInstanceRequest" => %{"members" => %{"ActualBlockHourlyPrice" => %{"locationName" => "actualBlockHourlyPrice", "shape" => "String"}, "AvailabilityZoneGroup" => %{"locationName" => "availabilityZoneGroup", "shape" => "String"}, "BlockDurationMinutes" => %{"locationName" => "blockDurationMinutes", "shape" => "Integer"}, "CreateTime" => %{"locationName" => "createTime", "shape" => "DateTime"}, "Fault" => %{"locationName" => "fault", "shape" => "SpotInstanceStateFault"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "LaunchGroup" => %{"locationName" => "launchGroup", "shape" => "String"}, "LaunchSpecification" => %{"locationName" => "launchSpecification", "shape" => "LaunchSpecification"}, "LaunchedAvailabilityZone" => %{"locationName" => "launchedAvailabilityZone", "shape" => "String"}, "ProductDescription" => %{"locationName" => "productDescription", "shape" => "RIProductDescription"}, "SpotInstanceRequestId" => %{"locationName" => "spotInstanceRequestId", "shape" => "String"}, "SpotPrice" => %{"locationName" => "spotPrice", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "SpotInstanceState"}, "Status" => %{"locationName" => "status", "shape" => "SpotInstanceStatus"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "Type" => %{"locationName" => "type", "shape" => "SpotInstanceType"}, "ValidFrom" => %{"locationName" => "validFrom", "shape" => "DateTime"}, "ValidUntil" => %{"locationName" => "validUntil", "shape" => "DateTime"}}, "type" => "structure"}, "ImportImageResult" => %{"members" => %{"Architecture" => %{"locationName" => "architecture", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "Hypervisor" => %{"locationName" => "hypervisor", "shape" => "String"}, "ImageId" => %{"locationName" => "imageId", "shape" => "String"}, "ImportTaskId" => %{"locationName" => "importTaskId", "shape" => "String"}, "LicenseType" => %{"locationName" => "licenseType", "shape" => "String"}, "Platform" => %{"locationName" => "platform", "shape" => "String"}, "Progress" => %{"locationName" => "progress", "shape" => "String"}, "SnapshotDetails" => %{"locationName" => "snapshotDetailSet", "shape" => "SnapshotDetailList"}, "Status" => %{"locationName" => "status", "shape" => "String"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}}, "type" => "structure"}, "InstanceStatus" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "Events" => %{"locationName" => "eventsSet", "shape" => "InstanceStatusEventList"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "InstanceState" => %{"locationName" => "instanceState", "shape" => "InstanceState"}, "InstanceStatus" => %{"locationName" => "instanceStatus", "shape" => "InstanceStatusSummary"}, "SystemStatus" => %{"locationName" => "systemStatus", "shape" => "InstanceStatusSummary"}}, "type" => "structure"}, "ExportTaskIdStringList" => %{"member" => %{"locationName" => "ExportTaskId", "shape" => "String"}, "type" => "list"}, "DescribeAddressesRequest" => %{"members" => %{"AllocationIds" => %{"locationName" => "AllocationId", "shape" => "AllocationIdList"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "PublicIps" => %{"locationName" => "PublicIp", "shape" => "PublicIpStringList"}}, "type" => "structure"}, "DeleteSubnetRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "SubnetId" => %{"shape" => "String"}}, "required" => ["SubnetId"], "type" => "structure"}, "DescribeAddressesResult" => %{"members" => %{"Addresses" => %{"locationName" => "addressesSet", "shape" => "AddressList"}}, "type" => "structure"}, "KeyPairList" => %{"member" => %{"locationName" => "item", "shape" => "KeyPairInfo"}, "type" => "list"}, "ImportInstanceVolumeDetailSet" => %{"member" => %{"locationName" => "item", "shape" => "ImportInstanceVolumeDetailItem"}, "type" => "list"}, "CreateFpgaImageResult" => %{"members" => %{"FpgaImageGlobalId" => %{"locationName" => "fpgaImageGlobalId", "shape" => "String"}, "FpgaImageId" => %{"locationName" => "fpgaImageId", "shape" => "String"}}, "type" => "structure"}, "DescribeNetworkInterfacePermissionsRequest" => %{"members" => %{"Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NetworkInterfacePermissionIds" => %{"locationName" => "NetworkInterfacePermissionId", "shape" => "NetworkInterfacePermissionIdList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "CreateVolumePermissionList" => %{"member" => %{"locationName" => "item", "shape" => "CreateVolumePermission"}, "type" => "list"}, "InstanceBlockDeviceMappingSpecification" => %{"members" => %{"DeviceName" => %{"locationName" => "deviceName", "shape" => "String"}, "Ebs" => %{"locationName" => "ebs", "shape" => "EbsInstanceBlockDeviceSpecification"}, "NoDevice" => %{"locationName" => "noDevice", "shape" => "String"}, "VirtualName" => %{"locationName" => "virtualName", "shape" => "String"}}, "type" => "structure"}, "AvailabilityZoneState" => %{"enum" => ["available", "information", "impaired", "unavailable"], "type" => "string"}, "ScheduledInstancesIpv6Address" => %{"members" => %{"Ipv6Address" => %{"shape" => "Ipv6Address"}}, "type" => "structure"}, "DescribeInstanceStatusResult" => %{"members" => %{"InstanceStatuses" => %{"locationName" => "instanceStatusSet", "shape" => "InstanceStatusList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "RequestHostIdList" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "GetHostReservationPurchasePreviewResult" => %{"members" => %{"CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Purchase" => %{"locationName" => "purchase", "shape" => "PurchaseSet"}, "TotalHourlyPrice" => %{"locationName" => "totalHourlyPrice", "shape" => "String"}, "TotalUpfrontPrice" => %{"locationName" => "totalUpfrontPrice", "shape" => "String"}}, "type" => "structure"}, "VpcList" => %{"member" => %{"locationName" => "item", "shape" => "Vpc"}, "type" => "list"}, "CreateEgressOnlyInternetGatewayRequest" => %{"members" => %{"ClientToken" => %{"shape" => "String"}, "DryRun" => %{"shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "DescribeInternetGatewaysResult" => %{"members" => %{"InternetGateways" => %{"locationName" => "internetGatewaySet", "shape" => "InternetGatewayList"}}, "type" => "structure"}, "AllocateHostsResult" => %{"members" => %{"HostIds" => %{"locationName" => "hostIdSet", "shape" => "ResponseHostIdList"}}, "type" => "structure"}, "DescribeConversionTasksResult" => %{"members" => %{"ConversionTasks" => %{"locationName" => "conversionTasks", "shape" => "DescribeConversionTaskList"}}, "type" => "structure"}, "ElasticGpuIdSet" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "SubnetCidrBlockState" => %{"members" => %{"State" => %{"locationName" => "state", "shape" => "SubnetCidrBlockStateCode"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}}, "type" => "structure"}, "SpotFleetMonitoring" => %{"members" => %{"Enabled" => %{"locationName" => "enabled", "shape" => "Boolean"}}, "type" => "structure"}, "DeleteNatGatewayRequest" => %{"members" => %{"NatGatewayId" => %{"shape" => "String"}}, "required" => ["NatGatewayId"], "type" => "structure"}, "ProvisionedBandwidth" => %{"members" => %{"ProvisionTime" => %{"locationName" => "provisionTime", "shape" => "DateTime"}, "Provisioned" => %{"locationName" => "provisioned", "shape" => "String"}, "RequestTime" => %{"locationName" => "requestTime", "shape" => "DateTime"}, "Requested" => %{"locationName" => "requested", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "String"}}, "type" => "structure"}, "DescribeVpcEndpointsRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "VpcEndpointIds" => %{"locationName" => "VpcEndpointId", "shape" => "ValueStringList"}}, "type" => "structure"}, "RequestHostIdSet" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "DescribeAccountAttributesResult" => %{"members" => %{"AccountAttributes" => %{"locationName" => "accountAttributeSet", "shape" => "AccountAttributeList"}}, "type" => "structure"}, "EgressOnlyInternetGatewayList" => %{"member" => %{"locationName" => "item", "shape" => "EgressOnlyInternetGateway"}, "type" => "list"}, "ImageDiskContainer" => %{"members" => %{"Description" => %{"shape" => "String"}, "DeviceName" => %{"shape" => "String"}, "Format" => %{"shape" => "String"}, "SnapshotId" => %{"shape" => "String"}, "Url" => %{"shape" => "String"}, "UserBucket" => %{"shape" => "UserBucket"}}, "type" => "structure"}, "PurchaseRequest" => %{"members" => %{"InstanceCount" => %{"shape" => "Integer"}, "PurchaseToken" => %{"shape" => "String"}}, "required" => ["InstanceCount", "PurchaseToken"], "type" => "structure"}, "RIProductDescription" => %{"enum" => ["Linux/UNIX", "Linux/UNIX (Amazon VPC)", "Windows", "Windows (Amazon VPC)"], "type" => "string"}, "VolumeStatusDetails" => %{"members" => %{"Name" => %{"locationName" => "name", "shape" => "VolumeStatusName"}, "Status" => %{"locationName" => "status", "shape" => "String"}}, "type" => "structure"}, "DeleteVpnConnectionRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpnConnectionId" => %{"shape" => "String"}}, "required" => ["VpnConnectionId"], "type" => "structure"}, "DescribeSnapshotAttributeResult" => %{"members" => %{"CreateVolumePermissions" => %{"locationName" => "createVolumePermission", "shape" => "CreateVolumePermissionList"}, "ProductCodes" => %{"locationName" => "productCodes", "shape" => "ProductCodeList"}, "SnapshotId" => %{"locationName" => "snapshotId", "shape" => "String"}}, "type" => "structure"}, "RegisterImageRequest" => %{"members" => %{"Architecture" => %{"locationName" => "architecture", "shape" => "ArchitectureValues"}, "BillingProducts" => %{"locationName" => "BillingProduct", "shape" => "BillingProductList"}, "BlockDeviceMappings" => %{"locationName" => "BlockDeviceMapping", "shape" => "BlockDeviceMappingRequestList"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "EnaSupport" => %{"locationName" => "enaSupport", "shape" => "Boolean"}, "ImageLocation" => %{"shape" => "String"}, "KernelId" => %{"locationName" => "kernelId", "shape" => "String"}, "Name" => %{"locationName" => "name", "shape" => "String"}, "RamdiskId" => %{"locationName" => "ramdiskId", "shape" => "String"}, "RootDeviceName" => %{"locationName" => "rootDeviceName", "shape" => "String"}, "SriovNetSupport" => %{"locationName" => "sriovNetSupport", "shape" => "String"}, "VirtualizationType" => %{"locationName" => "virtualizationType", "shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "UserGroupStringList" => %{"member" => %{"locationName" => "UserGroup", "shape" => "String"}, "type" => "list"}, "DescribeElasticGpusResult" => %{"members" => %{"ElasticGpuSet" => %{"locationName" => "elasticGpuSet", "shape" => "ElasticGpuSet"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "ReleaseAddressRequest" => %{"members" => %{"AllocationId" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "PublicIp" => %{"shape" => "String"}}, "type" => "structure"}, "FpgaImageIdList" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "LaunchPermissionModifications" => %{"members" => %{"Add" => %{"shape" => "LaunchPermissionList"}, "Remove" => %{"shape" => "LaunchPermissionList"}}, "type" => "structure"}, "ReplaceRouteRequest" => %{"members" => %{"DestinationCidrBlock" => %{"locationName" => "destinationCidrBlock", "shape" => "String"}, "DestinationIpv6CidrBlock" => %{"locationName" => "destinationIpv6CidrBlock", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "EgressOnlyInternetGatewayId" => %{"locationName" => "egressOnlyInternetGatewayId", "shape" => "String"}, "GatewayId" => %{"locationName" => "gatewayId", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "NatGatewayId" => %{"locationName" => "natGatewayId", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "RouteTableId" => %{"locationName" => "routeTableId", "shape" => "String"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "required" => ["RouteTableId"], "type" => "structure"}, "OccurrenceDaySet" => %{"member" => %{"locationName" => "item", "shape" => "Integer"}, "type" => "list"}, "RequestSpotInstancesRequest" => %{"members" => %{"AvailabilityZoneGroup" => %{"locationName" => "availabilityZoneGroup", "shape" => "String"}, "BlockDurationMinutes" => %{"locationName" => "blockDurationMinutes", "shape" => "Integer"}, "ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceCount" => %{"locationName" => "instanceCount", "shape" => "Integer"}, "LaunchGroup" => %{"locationName" => "launchGroup", "shape" => "String"}, "LaunchSpecification" => %{"shape" => "RequestSpotLaunchSpecification"}, "SpotPrice" => %{"locationName" => "spotPrice", "shape" => "String"}, "Type" => %{"locationName" => "type", "shape" => "SpotInstanceType"}, "ValidFrom" => %{"locationName" => "validFrom", "shape" => "DateTime"}, "ValidUntil" => %{"locationName" => "validUntil", "shape" => "DateTime"}}, "required" => ["SpotPrice"], "type" => "structure"}, "DeviceType" => %{"enum" => ["ebs", "instance-store"], "type" => "string"}, "UnsuccessfulItemError" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "String"}, "Message" => %{"locationName" => "message", "shape" => "String"}}, "required" => ["Code", "Message"], "type" => "structure"}, "UserBucketDetails" => %{"members" => %{"S3Bucket" => %{"locationName" => "s3Bucket", "shape" => "String"}, "S3Key" => %{"locationName" => "s3Key", "shape" => "String"}}, "type" => "structure"}, "CustomerGatewayIdStringList" => %{"member" => %{"locationName" => "CustomerGatewayId", "shape" => "String"}, "type" => "list"}, "AvailableInstanceCapacityList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceCapacity"}, "type" => "list"}, "LaunchSpecsList" => %{"member" => %{"locationName" => "item", "shape" => "SpotFleetLaunchSpecification"}, "min" => 1, "type" => "list"}, "CreatePlacementGroupRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "GroupName" => %{"locationName" => "groupName", "shape" => "String"}, "Strategy" => %{"locationName" => "strategy", "shape" => "PlacementStrategy"}}, "required" => ["GroupName", "Strategy"], "type" => "structure"}, "VpcEndpoint" => %{"members" => %{"CreationTimestamp" => %{"locationName" => "creationTimestamp", "shape" => "DateTime"}, "PolicyDocument" => %{"locationName" => "policyDocument", "shape" => "String"}, "RouteTableIds" => %{"locationName" => "routeTableIdSet", "shape" => "ValueStringList"}, "ServiceName" => %{"locationName" => "serviceName", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "State"}, "VpcEndpointId" => %{"locationName" => "vpcEndpointId", "shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "SnapshotDetailList" => %{"member" => %{"locationName" => "item", "shape" => "SnapshotDetail"}, "type" => "list"}, "PublicIpStringList" => %{"member" => %{"locationName" => "PublicIp", "shape" => "String"}, "type" => "list"}, "ImportTaskIdList" => %{"member" => %{"locationName" => "ImportTaskId", "shape" => "String"}, "type" => "list"}, "ReplaceRouteTableAssociationResult" => %{"members" => %{"NewAssociationId" => %{"locationName" => "newAssociationId", "shape" => "String"}}, "type" => "structure"}, "AcceptVpcPeeringConnectionResult" => %{"members" => %{"VpcPeeringConnection" => %{"locationName" => "vpcPeeringConnection", "shape" => "VpcPeeringConnection"}}, "type" => "structure"}, "StopInstancesResult" => %{"members" => %{"StoppingInstances" => %{"locationName" => "instancesSet", "shape" => "InstanceStateChangeList"}}, "type" => "structure"}, "NetworkAclAssociationList" => %{"member" => %{"locationName" => "item", "shape" => "NetworkAclAssociation"}, "type" => "list"}, "ImportInstanceTaskDetails" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "Platform" => %{"locationName" => "platform", "shape" => "PlatformValues"}, "Volumes" => %{"locationName" => "volumes", "shape" => "ImportInstanceVolumeDetailSet"}}, "required" => ["Volumes"], "type" => "structure"}, "ReservedInstances" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Duration" => %{"locationName" => "duration", "shape" => "Long"}, "End" => %{"locationName" => "end", "shape" => "DateTime"}, "FixedPrice" => %{"locationName" => "fixedPrice", "shape" => "Float"}, "InstanceCount" => %{"locationName" => "instanceCount", "shape" => "Integer"}, "InstanceTenancy" => %{"locationName" => "instanceTenancy", "shape" => "Tenancy"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "OfferingClass" => %{"locationName" => "offeringClass", "shape" => "OfferingClassType"}, "OfferingType" => %{"locationName" => "offeringType", "shape" => "OfferingTypeValues"}, "ProductDescription" => %{"locationName" => "productDescription", "shape" => "RIProductDescription"}, "RecurringCharges" => %{"locationName" => "recurringCharges", "shape" => "RecurringChargesList"}, "ReservedInstancesId" => %{"locationName" => "reservedInstancesId", "shape" => "String"}, "Scope" => %{"locationName" => "scope", "shape" => "scope"}, "Start" => %{"locationName" => "start", "shape" => "DateTime"}, "State" => %{"locationName" => "state", "shape" => "ReservedInstanceState"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "UsagePrice" => %{"locationName" => "usagePrice", "shape" => "Float"}}, "type" => "structure"}, "CreateVpcResult" => %{"members" => %{"Vpc" => %{"locationName" => "vpc", "shape" => "Vpc"}}, "type" => "structure"}, "VpnConnection" => %{"members" => %{"CustomerGatewayConfiguration" => %{"locationName" => "customerGatewayConfiguration", "shape" => "String"}, "CustomerGatewayId" => %{"locationName" => "customerGatewayId", "shape" => "String"}, "Options" => %{"locationName" => "options", "shape" => "VpnConnectionOptions"}, "Routes" => %{"locationName" => "routes", "shape" => "VpnStaticRouteList"}, "State" => %{"locationName" => "state", "shape" => "VpnState"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "Type" => %{"locationName" => "type", "shape" => "GatewayType"}, "VgwTelemetry" => %{"locationName" => "vgwTelemetry", "shape" => "VgwTelemetryList"}, "VpnConnectionId" => %{"locationName" => "vpnConnectionId", "shape" => "String"}, "VpnGatewayId" => %{"locationName" => "vpnGatewayId", "shape" => "String"}}, "type" => "structure"}, "BundleTaskState" => %{"enum" => ["pending", "waiting-for-shutdown", "bundling", "storing", "cancelling", "complete", "failed"], "type" => "string"}, "CreateVolumePermission" => %{"members" => %{"Group" => %{"locationName" => "group", "shape" => "PermissionGroup"}, "UserId" => %{"locationName" => "userId", "shape" => "String"}}, "type" => "structure"}, "InstanceList" => %{"member" => %{"locationName" => "item", "shape" => "Instance"}, "type" => "list"}, "InstanceStatusEventList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceStatusEvent"}, "type" => "list"}, "DomainType" => %{"enum" => ["vpc", "standard"], "type" => "string"}, "DhcpOptionsList" => %{"member" => %{"locationName" => "item", "shape" => "DhcpOptions"}, "type" => "list"}, "MoveAddressToVpcRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}}, "required" => ["PublicIp"], "type" => "structure"}, "DescribeInstanceAttributeRequest" => %{"members" => %{"Attribute" => %{"locationName" => "attribute", "shape" => "InstanceAttributeName"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}}, "required" => ["Attribute", "InstanceId"], "type" => "structure"}, "DescribeIamInstanceProfileAssociationsResult" => %{"members" => %{"IamInstanceProfileAssociations" => %{"locationName" => "iamInstanceProfileAssociationSet", "shape" => "IamInstanceProfileAssociationSet"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "NextToken"}}, "type" => "structure"}, "PrivateIpAddressStringList" => %{"member" => %{"locationName" => "PrivateIpAddress", "shape" => "String"}, "type" => "list"}, "CreateNetworkAclResult" => %{"members" => %{"NetworkAcl" => %{"locationName" => "networkAcl", "shape" => "NetworkAcl"}}, "type" => "structure"}, "BillingProductList" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "RequestSpotInstancesResult" => %{"members" => %{"SpotInstanceRequests" => %{"locationName" => "spotInstanceRequestSet", "shape" => "SpotInstanceRequestList"}}, "type" => "structure"}, "OwnerStringList" => %{"member" => %{"locationName" => "Owner", "shape" => "String"}, "type" => "list"}, "ScheduledInstancesLaunchSpecification" => %{"members" => %{"BlockDeviceMappings" => %{"locationName" => "BlockDeviceMapping", "shape" => "ScheduledInstancesBlockDeviceMappingSet"}, "EbsOptimized" => %{"shape" => "Boolean"}, "IamInstanceProfile" => %{"shape" => "ScheduledInstancesIamInstanceProfile"}, "ImageId" => %{"shape" => "String"}, "InstanceType" => %{"shape" => "String"}, "KernelId" => %{"shape" => "String"}, "KeyName" => %{"shape" => "String"}, "Monitoring" => %{"shape" => "ScheduledInstancesMonitoring"}, "NetworkInterfaces" => %{"locationName" => "NetworkInterface", "shape" => "ScheduledInstancesNetworkInterfaceSet"}, "Placement" => %{"shape" => "ScheduledInstancesPlacement"}, "RamdiskId" => %{"shape" => "String"}, "SecurityGroupIds" => %{"locationName" => "SecurityGroupId", "shape" => "ScheduledInstancesSecurityGroupIdSet"}, "SubnetId" => %{"shape" => "String"}, "UserData" => %{"shape" => "String"}}, "required" => ["ImageId"], "type" => "structure"}, "DescribeReservedInstancesModificationsRequest" => %{"members" => %{"Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "ReservedInstancesModificationIds" => %{"locationName" => "ReservedInstancesModificationId", "shape" => "ReservedInstancesModificationIdStringList"}}, "type" => "structure"}, "StatusType" => %{"enum" => ["passed", "failed", "insufficient-data", "initializing"], "type" => "string"}, "SecurityGroup" => %{"members" => %{"Description" => %{"locationName" => "groupDescription", "shape" => "String"}, "GroupId" => %{"locationName" => "groupId", "shape" => "String"}, "GroupName" => %{"locationName" => "groupName", "shape" => "String"}, "IpPermissions" => %{"locationName" => "ipPermissions", "shape" => "IpPermissionList"}, "IpPermissionsEgress" => %{"locationName" => "ipPermissionsEgress", "shape" => "IpPermissionList"}, "OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "VolumeModificationState" => %{"enum" => ["modifying", "optimizing", "completed", "failed"], "type" => "string"}, "CreateVpcPeeringConnectionResult" => %{"members" => %{"VpcPeeringConnection" => %{"locationName" => "vpcPeeringConnection", "shape" => "VpcPeeringConnection"}}, "type" => "structure"}, "DescribeSubnetsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "SubnetIds" => %{"locationName" => "SubnetId", "shape" => "SubnetIdStringList"}}, "type" => "structure"}, "DescribeCustomerGatewaysRequest" => %{"members" => %{"CustomerGatewayIds" => %{"locationName" => "CustomerGatewayId", "shape" => "CustomerGatewayIdStringList"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}}, "type" => "structure"}, "CancelledSpotInstanceRequestList" => %{"member" => %{"locationName" => "item", "shape" => "CancelledSpotInstanceRequest"}, "type" => "list"}, "DiskImage" => %{"members" => %{"Description" => %{"shape" => "String"}, "Image" => %{"shape" => "DiskImageDetail"}, "Volume" => %{"shape" => "VolumeDetail"}}, "type" => "structure"}, "ModifyVpcAttributeRequest" => %{"members" => %{"EnableDnsHostnames" => %{"shape" => "AttributeBooleanValue"}, "EnableDnsSupport" => %{"shape" => "AttributeBooleanValue"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "DescribeReservedInstancesOfferingsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "ReservedInstancesOfferings" => %{"locationName" => "reservedInstancesOfferingsSet", "shape" => "ReservedInstancesOfferingList"}}, "type" => "structure"}, "ExecutableByStringList" => %{"member" => %{"locationName" => "ExecutableBy", "shape" => "String"}, "type" => "list"}, "InstanceNetworkInterfaceList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceNetworkInterface"}, "type" => "list"}, "ReservedInstancesModificationResultList" => %{"member" => %{"locationName" => "item", "shape" => "ReservedInstancesModificationResult"}, "type" => "list"}, "StartInstancesResult" => %{"members" => %{"StartingInstances" => %{"locationName" => "instancesSet", "shape" => "InstanceStateChangeList"}}, "type" => "structure"}, "ModifyVolumeResult" => %{"members" => %{"VolumeModification" => %{"locationName" => "volumeModification", "shape" => "VolumeModification"}}, "type" => "structure"}, "DescribeAccountAttributesRequest" => %{"members" => %{"AttributeNames" => %{"locationName" => "attributeName", "shape" => "AccountAttributeNameStringList"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "type" => "structure"}, "SecurityGroupReference" => %{"members" => %{"GroupId" => %{"locationName" => "groupId", "shape" => "String"}, "ReferencingVpcId" => %{"locationName" => "referencingVpcId", "shape" => "String"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "required" => ["GroupId", "ReferencingVpcId"], "type" => "structure"}, "IdFormat" => %{"members" => %{"Deadline" => %{"locationName" => "deadline", "shape" => "DateTime"}, "Resource" => %{"locationName" => "resource", "shape" => "String"}, "UseLongIds" => %{"locationName" => "useLongIds", "shape" => "Boolean"}}, "type" => "structure"}, "AttachmentStatus" => %{"enum" => ["attaching", "attached", "detaching", "detached"], "type" => "string"}, "ValueStringList" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "ImportKeyPairResult" => %{"members" => %{"KeyFingerprint" => %{"locationName" => "keyFingerprint", "shape" => "String"}, "KeyName" => %{"locationName" => "keyName", "shape" => "String"}}, "type" => "structure"}, "Ipv6Range" => %{"members" => %{"CidrIpv6" => %{"locationName" => "cidrIpv6", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}}, "type" => "structure"}, "VpcClassicLinkIdList" => %{"member" => %{"locationName" => "VpcId", "shape" => "String"}, "type" => "list"}, "DescribeVolumeStatusRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "VolumeIds" => %{"locationName" => "VolumeId", "shape" => "VolumeIdStringList"}}, "type" => "structure"}, "NatGatewayAddressList" => %{"member" => %{"locationName" => "item", "shape" => "NatGatewayAddress"}, "type" => "list"}, "RequestSpotLaunchSpecification" => %{"members" => %{"AddressingType" => %{"locationName" => "addressingType", "shape" => "String"}, "BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "BlockDeviceMappingList"}, "EbsOptimized" => %{"locationName" => "ebsOptimized", "shape" => "Boolean"}, "IamInstanceProfile" => %{"locationName" => "iamInstanceProfile", "shape" => "IamInstanceProfileSpecification"}, "ImageId" => %{"locationName" => "imageId", "shape" => "String"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "KernelId" => %{"locationName" => "kernelId", "shape" => "String"}, "KeyName" => %{"locationName" => "keyName", "shape" => "String"}, "Monitoring" => %{"locationName" => "monitoring", "shape" => "RunInstancesMonitoringEnabled"}, "NetworkInterfaces" => %{"locationName" => "NetworkInterface", "shape" => "InstanceNetworkInterfaceSpecificationList"}, "Placement" => %{"locationName" => "placement", "shape" => "SpotPlacement"}, "RamdiskId" => %{"locationName" => "ramdiskId", "shape" => "String"}, "SecurityGroupIds" => %{"locationName" => "SecurityGroupId", "shape" => "ValueStringList"}, "SecurityGroups" => %{"locationName" => "SecurityGroup", "shape" => "ValueStringList"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "UserData" => %{"locationName" => "userData", "shape" => "String"}}, "type" => "structure"}, "SpotPrice" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "ProductDescription" => %{"locationName" => "productDescription", "shape" => "RIProductDescription"}, "SpotPrice" => %{"locationName" => "spotPrice", "shape" => "String"}, "Timestamp" => %{"locationName" => "timestamp", "shape" => "DateTime"}}, "type" => "structure"}, "DeleteNetworkInterfaceRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}}, "required" => ["NetworkInterfaceId"], "type" => "structure"}, "AssignIpv6AddressesResult" => %{"members" => %{"AssignedIpv6Addresses" => %{"locationName" => "assignedIpv6Addresses", "shape" => "Ipv6AddressList"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}}, "type" => "structure"}, "VolumeStatusInfoStatus" => %{"enum" => ["ok", "impaired", "insufficient-data"], "type" => "string"}, "AllocateAddressRequest" => %{"members" => %{"Address" => %{"shape" => "String"}, "Domain" => %{"shape" => "DomainType"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "type" => "structure"}, "CreateRouteTableResult" => %{"members" => %{"RouteTable" => %{"locationName" => "routeTable", "shape" => "RouteTable"}}, "type" => "structure"}, "AttachVpnGatewayResult" => %{"members" => %{"VpcAttachment" => %{"locationName" => "attachment", "shape" => "VpcAttachment"}}, "type" => "structure"}, "SnapshotDiskContainer" => %{"members" => %{"Description" => %{"shape" => "String"}, "Format" => %{"shape" => "String"}, "Url" => %{"shape" => "String"}, "UserBucket" => %{"shape" => "UserBucket"}}, "type" => "structure"}, "PortRange" => %{"members" => %{"From" => %{"locationName" => "from", "shape" => "Integer"}, "To" => %{"locationName" => "to", "shape" => "Integer"}}, "type" => "structure"}, "InstanceNetworkInterfaceAssociation" => %{"members" => %{"IpOwnerId" => %{"locationName" => "ipOwnerId", "shape" => "String"}, "PublicDnsName" => %{"locationName" => "publicDnsName", "shape" => "String"}, "PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}}, "type" => "structure"}, "CreateDhcpOptionsRequest" => %{"members" => %{"DhcpConfigurations" => %{"locationName" => "dhcpConfiguration", "shape" => "NewDhcpConfigurationList"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "required" => ["DhcpConfigurations"], "type" => "structure"}, "ReplaceRouteTableAssociationRequest" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "RouteTableId" => %{"locationName" => "routeTableId", "shape" => "String"}}, "required" => ["AssociationId", "RouteTableId"], "type" => "structure"}, "ExportTaskList" => %{"member" => %{"locationName" => "item", "shape" => "ExportTask"}, "type" => "list"}, "AcceptReservedInstancesExchangeQuoteRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "ReservedInstanceIds" => %{"locationName" => "ReservedInstanceId", "shape" => "ReservedInstanceIdSet"}, "TargetConfigurations" => %{"locationName" => "TargetConfiguration", "shape" => "TargetConfigurationRequestSet"}}, "required" => ["ReservedInstanceIds"], "type" => "structure"}, "AssociateRouteTableResult" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}}, "type" => "structure"}, "VpcAttachmentList" => %{"member" => %{"locationName" => "item", "shape" => "VpcAttachment"}, "type" => "list"}, "ClassicLinkDnsSupport" => %{"members" => %{"ClassicLinkDnsSupported" => %{"locationName" => "classicLinkDnsSupported", "shape" => "Boolean"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "scope" => %{"enum" => ["Availability Zone", "Region"], "type" => "string"}, "DisassociateVpcCidrBlockRequest" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}}, "required" => ["AssociationId"], "type" => "structure"}, "ConversionIdStringList" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "ImageState" => %{"enum" => ["pending", "available", "invalid", "deregistered", "transient", "failed", "error"], "type" => "string"}, "ModifyVpcEndpointRequest" => %{"members" => %{"AddRouteTableIds" => %{"locationName" => "AddRouteTableId", "shape" => "ValueStringList"}, "DryRun" => %{"shape" => "Boolean"}, "PolicyDocument" => %{"shape" => "String"}, "RemoveRouteTableIds" => %{"locationName" => "RemoveRouteTableId", "shape" => "ValueStringList"}, "ResetPolicy" => %{"shape" => "Boolean"}, "VpcEndpointId" => %{"shape" => "String"}}, "required" => ["VpcEndpointId"], "type" => "structure"}, "DeleteVpnGatewayRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpnGatewayId" => %{"shape" => "String"}}, "required" => ["VpnGatewayId"], "type" => "structure"}, "LaunchPermissionList" => %{"member" => %{"locationName" => "item", "shape" => "LaunchPermission"}, "type" => "list"}, "CopyImageRequest" => %{"members" => %{"ClientToken" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Encrypted" => %{"locationName" => "encrypted", "shape" => "Boolean"}, "KmsKeyId" => %{"locationName" => "kmsKeyId", "shape" => "String"}, "Name" => %{"shape" => "String"}, "SourceImageId" => %{"shape" => "String"}, "SourceRegion" => %{"shape" => "String"}}, "required" => ["Name", "SourceImageId", "SourceRegion"], "type" => "structure"}, "CancelledSpotInstanceRequest" => %{"members" => %{"SpotInstanceRequestId" => %{"locationName" => "spotInstanceRequestId", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "CancelSpotInstanceRequestState"}}, "type" => "structure"}, "ImportImageRequest" => %{"members" => %{"Architecture" => %{"shape" => "String"}, "ClientData" => %{"shape" => "ClientData"}, "ClientToken" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "DiskContainers" => %{"locationName" => "DiskContainer", "shape" => "ImageDiskContainerList"}, "DryRun" => %{"shape" => "Boolean"}, "Hypervisor" => %{"shape" => "String"}, "LicenseType" => %{"shape" => "String"}, "Platform" => %{"shape" => "String"}, "RoleName" => %{"shape" => "String"}}, "type" => "structure"}, "VolumeModification" => %{"members" => %{"EndTime" => %{"locationName" => "endTime", "shape" => "DateTime"}, "ModificationState" => %{"locationName" => "modificationState", "shape" => "VolumeModificationState"}, "OriginalIops" => %{"locationName" => "originalIops", "shape" => "Integer"}, "OriginalSize" => %{"locationName" => "originalSize", "shape" => "Integer"}, "OriginalVolumeType" => %{"locationName" => "originalVolumeType", "shape" => "VolumeType"}, "Progress" => %{"locationName" => "progress", "shape" => "Long"}, "StartTime" => %{"locationName" => "startTime", "shape" => "DateTime"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}, "TargetIops" => %{"locationName" => "targetIops", "shape" => "Integer"}, "TargetSize" => %{"locationName" => "targetSize", "shape" => "Integer"}, "TargetVolumeType" => %{"locationName" => "targetVolumeType", "shape" => "VolumeType"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}}, "type" => "structure"}, "ImportSnapshotTask" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "ImportTaskId" => %{"locationName" => "importTaskId", "shape" => "String"}, "SnapshotTaskDetail" => %{"locationName" => "snapshotTaskDetail", "shape" => "SnapshotTaskDetail"}}, "type" => "structure"}, "CreateFlowLogsRequest" => %{"members" => %{"ClientToken" => %{"shape" => "String"}, "DeliverLogsPermissionArn" => %{"shape" => "String"}, "LogGroupName" => %{"shape" => "String"}, "ResourceIds" => %{"locationName" => "ResourceId", "shape" => "ValueStringList"}, "ResourceType" => %{"shape" => "FlowLogsResourceType"}, "TrafficType" => %{"shape" => "TrafficType"}}, "required" => ["DeliverLogsPermissionArn", "LogGroupName", "ResourceIds", "ResourceType", "TrafficType"], "type" => "structure"}, "NetworkInterfaceAttachment" => %{"members" => %{"AttachTime" => %{"locationName" => "attachTime", "shape" => "DateTime"}, "AttachmentId" => %{"locationName" => "attachmentId", "shape" => "String"}, "DeleteOnTermination" => %{"locationName" => "deleteOnTermination", "shape" => "Boolean"}, "DeviceIndex" => %{"locationName" => "deviceIndex", "shape" => "Integer"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "InstanceOwnerId" => %{"locationName" => "instanceOwnerId", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "AttachmentStatus"}}, "type" => "structure"}, "ActiveInstanceSet" => %{"member" => %{"locationName" => "item", "shape" => "ActiveInstance"}, "type" => "list"}, "OfferingClassType" => %{"enum" => ["standard", "convertible"], "type" => "string"}, "DescribeMovingAddressesResult" => %{"members" => %{"MovingAddressStatuses" => %{"locationName" => "movingAddressStatusSet", "shape" => "MovingAddressStatusSet"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "ImageIdStringList" => %{"member" => %{"locationName" => "ImageId", "shape" => "String"}, "type" => "list"}, "VolumeStatusItem" => %{"members" => %{"Actions" => %{"locationName" => "actionsSet", "shape" => "VolumeStatusActionsList"}, "AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "Events" => %{"locationName" => "eventsSet", "shape" => "VolumeStatusEventsList"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}, "VolumeStatus" => %{"locationName" => "volumeStatus", "shape" => "VolumeStatusInfo"}}, "type" => "structure"}, "AvailableCapacity" => %{"members" => %{"AvailableInstanceCapacity" => %{"locationName" => "availableInstanceCapacity", "shape" => "AvailableInstanceCapacityList"}, "AvailableVCpus" => %{"locationName" => "availableVCpus", "shape" => "Integer"}}, "type" => "structure"}, "CancelImportTaskRequest" => %{"members" => %{"CancelReason" => %{"shape" => "String"}, "DryRun" => %{"shape" => "Boolean"}, "ImportTaskId" => %{"shape" => "String"}}, "type" => "structure"}, "DhcpConfiguration" => %{"members" => %{"Key" => %{"locationName" => "key", "shape" => "String"}, "Values" => %{"locationName" => "valueSet", "shape" => "DhcpConfigurationValueList"}}, "type" => "structure"}, "RegionNameStringList" => %{"member" => %{"locationName" => "RegionName", "shape" => "String"}, "type" => "list"}, "AccountAttributeName" => %{"enum" => ["supported-platforms", "default-vpc"], "type" => "string"}, "AllocationStrategy" => %{"enum" => ["lowestPrice", "diversified"], "type" => "string"}, "DeleteCustomerGatewayRequest" => %{"members" => %{"CustomerGatewayId" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "required" => ["CustomerGatewayId"], "type" => "structure"}, "NetworkAclEntry" => %{"members" => %{"CidrBlock" => %{"locationName" => "cidrBlock", "shape" => "String"}, "Egress" => %{"locationName" => "egress", "shape" => "Boolean"}, "IcmpTypeCode" => %{"locationName" => "icmpTypeCode", "shape" => "IcmpTypeCode"}, "Ipv6CidrBlock" => %{"locationName" => "ipv6CidrBlock", "shape" => "String"}, "PortRange" => %{"locationName" => "portRange", "shape" => "PortRange"}, "Protocol" => %{"locationName" => "protocol", "shape" => "String"}, "RuleAction" => %{"locationName" => "ruleAction", "shape" => "RuleAction"}, "RuleNumber" => %{"locationName" => "ruleNumber", "shape" => "Integer"}}, "type" => "structure"}, "DeleteVpcPeeringConnectionResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "ProductCode" => %{"members" => %{"ProductCodeId" => %{"locationName" => "productCode", "shape" => "String"}, "ProductCodeType" => %{"locationName" => "type", "shape" => "ProductCodeValues"}}, "type" => "structure"}, "ReservedInstancesConfigurationList" => %{"member" => %{"locationName" => "item", "shape" => "ReservedInstancesConfiguration"}, "type" => "list"}, "VolumeStatusList" => %{"member" => %{"locationName" => "item", "shape" => "VolumeStatusItem"}, "type" => "list"}, "DescribeDhcpOptionsResult" => %{"members" => %{"DhcpOptions" => %{"locationName" => "dhcpOptionsSet", "shape" => "DhcpOptionsList"}}, "type" => "structure"}, "DisableVpcClassicLinkDnsSupportRequest" => %{"members" => %{"VpcId" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteVpcPeeringConnectionRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "required" => ["VpcPeeringConnectionId"], "type" => "structure"}, "SlotDateTimeRangeRequest" => %{"members" => %{"EarliestTime" => %{"shape" => "DateTime"}, "LatestTime" => %{"shape" => "DateTime"}}, "required" => ["EarliestTime", "LatestTime"], "type" => "structure"}, "CreateImageResult" => %{"members" => %{"ImageId" => %{"locationName" => "imageId", "shape" => "String"}}, "type" => "structure"}, "TagSpecificationList" => %{"member" => %{"locationName" => "item", "shape" => "TagSpecification"}, "type" => "list"}, "HostList" => %{"member" => %{"locationName" => "item", "shape" => "Host"}, "type" => "list"}, "ElasticGpus" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "ElasticGpuHealth" => %{"locationName" => "elasticGpuHealth", "shape" => "ElasticGpuHealth"}, "ElasticGpuId" => %{"locationName" => "elasticGpuId", "shape" => "String"}, "ElasticGpuState" => %{"locationName" => "elasticGpuState", "shape" => "ElasticGpuState"}, "ElasticGpuType" => %{"locationName" => "elasticGpuType", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}}, "type" => "structure"}, "AuthorizeSecurityGroupIngressRequest" => %{"members" => %{"CidrIp" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "FromPort" => %{"shape" => "Integer"}, "GroupId" => %{"shape" => "String"}, "GroupName" => %{"shape" => "String"}, "IpPermissions" => %{"shape" => "IpPermissionList"}, "IpProtocol" => %{"shape" => "String"}, "SourceSecurityGroupName" => %{"shape" => "String"}, "SourceSecurityGroupOwnerId" => %{"shape" => "String"}, "ToPort" => %{"shape" => "Integer"}}, "type" => "structure"}, "CancelSpotFleetRequestsSuccessSet" => %{"member" => %{"locationName" => "item", "shape" => "CancelSpotFleetRequestsSuccessItem"}, "type" => "list"}, "BundleIdStringList" => %{"member" => %{"locationName" => "BundleId", "shape" => "String"}, "type" => "list"}, "DescribeVpcClassicLinkResult" => %{"members" => %{"Vpcs" => %{"locationName" => "vpcSet", "shape" => "VpcClassicLinkList"}}, "type" => "structure"}, "ReservedInstanceIdSet" => %{"member" => %{"locationName" => "ReservedInstanceId", "shape" => "String"}, "type" => "list"}, "ConversionTaskState" => %{"enum" => ["active", "cancelling", "cancelled", "completed"], "type" => "string"}, "AvailabilityZoneList" => %{"member" => %{"locationName" => "item", "shape" => "AvailabilityZone"}, "type" => "list"}, "ElasticGpuStatus" => %{"enum" => ["OK", "IMPAIRED"], "type" => "string"}, "MoveStatus" => %{"enum" => ["movingToVpc", "restoringToClassic"], "type" => "string"}, "CancelReservedInstancesListingRequest" => %{"members" => %{"ReservedInstancesListingId" => %{"locationName" => "reservedInstancesListingId", "shape" => "String"}}, "required" => ["ReservedInstancesListingId"], "type" => "structure"}, "CancelSpotInstanceRequestsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "SpotInstanceRequestIds" => %{"locationName" => "SpotInstanceRequestId", "shape" => "SpotInstanceRequestIdList"}}, "required" => ["SpotInstanceRequestIds"], "type" => "structure"}, "AttachVpnGatewayRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}, "VpnGatewayId" => %{"shape" => "String"}}, "required" => ["VpcId", "VpnGatewayId"], "type" => "structure"}, "Region" => %{"members" => %{"Endpoint" => %{"locationName" => "regionEndpoint", "shape" => "String"}, "RegionName" => %{"locationName" => "regionName", "shape" => "String"}}, "type" => "structure"}, "EventCode" => %{"enum" => ["instance-reboot", "system-reboot", "system-maintenance", "instance-retirement", "instance-stop"], "type" => "string"}, "ImportVolumeTaskDetails" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "BytesConverted" => %{"locationName" => "bytesConverted", "shape" => "Long"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "Image" => %{"locationName" => "image", "shape" => "DiskImageDescription"}, "Volume" => %{"locationName" => "volume", "shape" => "DiskImageVolumeDescription"}}, "required" => ["AvailabilityZone", "BytesConverted", "Image", "Volume"], "type" => "structure"}, "DescribeIdentityIdFormatResult" => %{"members" => %{"Statuses" => %{"locationName" => "statusSet", "shape" => "IdFormatList"}}, "type" => "structure"}, "ArchitectureValues" => %{"enum" => ["i386", "x86_64"], "type" => "string"}, "ScheduledInstanceAvailabilitySet" => %{"member" => %{"locationName" => "item", "shape" => "ScheduledInstanceAvailability"}, "type" => "list"}, "CreateVpnConnectionResult" => %{"members" => %{"VpnConnection" => %{"locationName" => "vpnConnection", "shape" => "VpnConnection"}}, "type" => "structure"}, "AssociateRouteTableRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "RouteTableId" => %{"locationName" => "routeTableId", "shape" => "String"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "required" => ["RouteTableId", "SubnetId"], "type" => "structure"}, "Filter" => %{"members" => %{"Name" => %{"shape" => "String"}, "Values" => %{"locationName" => "Value", "shape" => "ValueStringList"}}, "type" => "structure"}, "MovingAddressStatusSet" => %{"member" => %{"locationName" => "item", "shape" => "MovingAddressStatus"}, "type" => "list"}, "NetworkInterfaceAssociation" => %{"members" => %{"AllocationId" => %{"locationName" => "allocationId", "shape" => "String"}, "AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "IpOwnerId" => %{"locationName" => "ipOwnerId", "shape" => "String"}, "PublicDnsName" => %{"locationName" => "publicDnsName", "shape" => "String"}, "PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}}, "type" => "structure"}, "ScheduledInstancesBlockDeviceMapping" => %{"members" => %{"DeviceName" => %{"shape" => "String"}, "Ebs" => %{"shape" => "ScheduledInstancesEbs"}, "NoDevice" => %{"shape" => "String"}, "VirtualName" => %{"shape" => "String"}}, "type" => "structure"}, "ElasticGpuAssociation" => %{"members" => %{"ElasticGpuAssociationId" => %{"locationName" => "elasticGpuAssociationId", "shape" => "String"}, "ElasticGpuAssociationState" => %{"locationName" => "elasticGpuAssociationState", "shape" => "String"}, "ElasticGpuAssociationTime" => %{"locationName" => "elasticGpuAssociationTime", "shape" => "String"}, "ElasticGpuId" => %{"locationName" => "elasticGpuId", "shape" => "String"}}, "type" => "structure"}, "SpotPlacement" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "GroupName" => %{"locationName" => "groupName", "shape" => "String"}, "Tenancy" => %{"locationName" => "tenancy", "shape" => "Tenancy"}}, "type" => "structure"}, "IamInstanceProfileAssociationSet" => %{"member" => %{"locationName" => "item", "shape" => "IamInstanceProfileAssociation"}, "type" => "list"}, "IamInstanceProfileAssociation" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "IamInstanceProfile" => %{"locationName" => "iamInstanceProfile", "shape" => "IamInstanceProfile"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "IamInstanceProfileAssociationState"}, "Timestamp" => %{"locationName" => "timestamp", "shape" => "DateTime"}}, "type" => "structure"}, "HostProperties" => %{"members" => %{"Cores" => %{"locationName" => "cores", "shape" => "Integer"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "String"}, "Sockets" => %{"locationName" => "sockets", "shape" => "Integer"}, "TotalVCpus" => %{"locationName" => "totalVCpus", "shape" => "Integer"}}, "type" => "structure"}, "EnableVolumeIORequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "TrafficType" => %{"enum" => ["ACCEPT", "REJECT", "ALL"], "type" => "string"}, "SnapshotAttributeName" => %{"enum" => ["productCodes", "createVolumePermission"], "type" => "string"}, "RouteTable" => %{"members" => %{"Associations" => %{"locationName" => "associationSet", "shape" => "RouteTableAssociationList"}, "PropagatingVgws" => %{"locationName" => "propagatingVgwSet", "shape" => "PropagatingVgwList"}, "RouteTableId" => %{"locationName" => "routeTableId", "shape" => "String"}, "Routes" => %{"locationName" => "routeSet", "shape" => "RouteList"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "AssignIpv6AddressesRequest" => %{"members" => %{"Ipv6AddressCount" => %{"locationName" => "ipv6AddressCount", "shape" => "Integer"}, "Ipv6Addresses" => %{"locationName" => "ipv6Addresses", "shape" => "Ipv6AddressList"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}}, "required" => ["NetworkInterfaceId"], "type" => "structure"}, "ImportImageTask" => %{"members" => %{"Architecture" => %{"locationName" => "architecture", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "Hypervisor" => %{"locationName" => "hypervisor", "shape" => "String"}, "ImageId" => %{"locationName" => "imageId", "shape" => "String"}, "ImportTaskId" => %{"locationName" => "importTaskId", "shape" => "String"}, "LicenseType" => %{"locationName" => "licenseType", "shape" => "String"}, "Platform" => %{"locationName" => "platform", "shape" => "String"}, "Progress" => %{"locationName" => "progress", "shape" => "String"}, "SnapshotDetails" => %{"locationName" => "snapshotDetailSet", "shape" => "SnapshotDetailList"}, "Status" => %{"locationName" => "status", "shape" => "String"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}}, "type" => "structure"}, "DescribeSpotFleetInstancesResponse" => %{"members" => %{"ActiveInstances" => %{"locationName" => "activeInstanceSet", "shape" => "ActiveInstanceSet"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}}, "required" => ["ActiveInstances", "SpotFleetRequestId"], "type" => "structure"}, "VpnGatewayList" => %{"member" => %{"locationName" => "item", "shape" => "VpnGateway"}, "type" => "list"}, "EnableVgwRoutePropagationRequest" => %{"members" => %{"GatewayId" => %{"shape" => "String"}, "RouteTableId" => %{"shape" => "String"}}, "required" => ["GatewayId", "RouteTableId"], "type" => "structure"}, "ReservedInstanceLimitPrice" => %{"members" => %{"Amount" => %{"locationName" => "amount", "shape" => "Double"}, "CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}}, "type" => "structure"}, "IamInstanceProfileAssociationState" => %{"enum" => ["associating", "associated", "disassociating", "disassociated"], "type" => "string"}, "ReservedInstancesModificationList" => %{"member" => %{"locationName" => "item", "shape" => "ReservedInstancesModification"}, "type" => "list"}, "PlacementGroup" => %{"members" => %{"GroupName" => %{"locationName" => "groupName", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "PlacementGroupState"}, "Strategy" => %{"locationName" => "strategy", "shape" => "PlacementStrategy"}}, "type" => "structure"}, "HostOfferingSet" => %{"member" => %{"locationName" => "item", "shape" => "HostOffering"}, "type" => "list"}, "IpRangeList" => %{"member" => %{"locationName" => "item", "shape" => "IpRange"}, "type" => "list"}, "CopyImageResult" => %{"members" => %{"ImageId" => %{"locationName" => "imageId", "shape" => "String"}}, "type" => "structure"}, "DescribePlacementGroupsResult" => %{"members" => %{"PlacementGroups" => %{"locationName" => "placementGroupSet", "shape" => "PlacementGroupList"}}, "type" => "structure"}, "UserIdStringList" => %{"member" => %{"locationName" => "UserId", "shape" => "String"}, "type" => "list"}, "CreateNatGatewayRequest" => %{"members" => %{"AllocationId" => %{"shape" => "String"}, "ClientToken" => %{"shape" => "String"}, "SubnetId" => %{"shape" => "String"}}, "required" => ["AllocationId", "SubnetId"], "type" => "structure"}, "NewDhcpConfigurationList" => %{"member" => %{"locationName" => "item", "shape" => "NewDhcpConfiguration"}, "type" => "list"}, "ScheduledInstanceRecurrenceRequest" => %{"members" => %{"Frequency" => %{"shape" => "String"}, "Interval" => %{"shape" => "Integer"}, "OccurrenceDays" => %{"locationName" => "OccurrenceDay", "shape" => "OccurrenceDayRequestSet"}, "OccurrenceRelativeToEnd" => %{"shape" => "Boolean"}, "OccurrenceUnit" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeExportTasksRequest" => %{"members" => %{"ExportTaskIds" => %{"locationName" => "exportTaskId", "shape" => "ExportTaskIdStringList"}}, "type" => "structure"}, "MoveAddressToVpcResult" => %{"members" => %{"AllocationId" => %{"locationName" => "allocationId", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "Status"}}, "type" => "structure"}, "CreateNetworkAclRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "RunScheduledInstancesRequest" => %{"members" => %{"ClientToken" => %{"idempotencyToken" => true, "shape" => "String"}, "DryRun" => %{"shape" => "Boolean"}, "InstanceCount" => %{"shape" => "Integer"}, "LaunchSpecification" => %{"shape" => "ScheduledInstancesLaunchSpecification"}, "ScheduledInstanceId" => %{"shape" => "String"}}, "required" => ["LaunchSpecification", "ScheduledInstanceId"], "type" => "structure"}, "RouteOrigin" => %{"enum" => ["CreateRouteTable", "CreateRoute", "EnableVgwRoutePropagation"], "type" => "string"}, "DescribeImportImageTasksRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Filters" => %{"shape" => "FilterList"}, "ImportTaskIds" => %{"locationName" => "ImportTaskId", "shape" => "ImportTaskIdList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "ExportToS3Task" => %{"members" => %{"ContainerFormat" => %{"locationName" => "containerFormat", "shape" => "ContainerFormat"}, "DiskImageFormat" => %{"locationName" => "diskImageFormat", "shape" => "DiskImageFormat"}, "S3Bucket" => %{"locationName" => "s3Bucket", "shape" => "String"}, "S3Key" => %{"locationName" => "s3Key", "shape" => "String"}}, "type" => "structure"}, "ImageAttribute" => %{"members" => %{"BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "BlockDeviceMappingList"}, "Description" => %{"locationName" => "description", "shape" => "AttributeValue"}, "ImageId" => %{"locationName" => "imageId", "shape" => "String"}, "KernelId" => %{"locationName" => "kernel", "shape" => "AttributeValue"}, "LaunchPermissions" => %{"locationName" => "launchPermission", "shape" => "LaunchPermissionList"}, "ProductCodes" => %{"locationName" => "productCodes", "shape" => "ProductCodeList"}, "RamdiskId" => %{"locationName" => "ramdisk", "shape" => "AttributeValue"}, "SriovNetSupport" => %{"locationName" => "sriovNetSupport", "shape" => "AttributeValue"}}, "type" => "structure"}, "VpcIpv6CidrBlockAssociation" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "Ipv6CidrBlock" => %{"locationName" => "ipv6CidrBlock", "shape" => "String"}, "Ipv6CidrBlockState" => %{"locationName" => "ipv6CidrBlockState", "shape" => "VpcCidrBlockState"}}, "type" => "structure"}, "VpcCidrBlockAssociation" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "CidrBlock" => %{"locationName" => "cidrBlock", "shape" => "String"}, "CidrBlockState" => %{"locationName" => "cidrBlockState", "shape" => "VpcCidrBlockState"}}, "type" => "structure"}, "Address" => %{"members" => %{"AllocationId" => %{"locationName" => "allocationId", "shape" => "String"}, "AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "Domain" => %{"locationName" => "domain", "shape" => "DomainType"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "NetworkInterfaceOwnerId" => %{"locationName" => "networkInterfaceOwnerId", "shape" => "String"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}}, "type" => "structure"}, "ZoneNameStringList" => %{"member" => %{"locationName" => "ZoneName", "shape" => "String"}, "type" => "list"}, "ReservedInstancesConfiguration" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "InstanceCount" => %{"locationName" => "instanceCount", "shape" => "Integer"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "Platform" => %{"locationName" => "platform", "shape" => "String"}, "Scope" => %{"locationName" => "scope", "shape" => "scope"}}, "type" => "structure"}, "RuleAction" => %{"enum" => ["allow", "deny"], "type" => "string"}, "UpdateSecurityGroupRuleDescriptionsEgressResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "DescribeVolumesModificationsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "VolumesModifications" => %{"locationName" => "volumeModificationSet", "shape" => "VolumeModificationList"}}, "type" => "structure"}, "ImageList" => %{"member" => %{"locationName" => "item", "shape" => "Image"}, "type" => "list"}, "InstanceHealthStatus" => %{"enum" => ["healthy", "unhealthy"], "type" => "string"}, "Float" => %{"type" => "float"}, "ReportInstanceReasonCodes" => %{"enum" => ["instance-stuck-in-state", "unresponsive", "not-accepting-credentials", "password-not-available", "performance-network", "performance-instance-store", "performance-ebs-volume", "performance-other", "other"], "type" => "string"}, "DescribeInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "DescribeHostReservationsResult" => %{"members" => %{"HostReservationSet" => %{"locationName" => "hostReservationSet", "shape" => "HostReservationSet"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "InstanceStatusDetails" => %{"members" => %{"ImpairedSince" => %{"locationName" => "impairedSince", "shape" => "DateTime"}, "Name" => %{"locationName" => "name", "shape" => "StatusName"}, "Status" => %{"locationName" => "status", "shape" => "StatusType"}}, "type" => "structure"}, "VpcCidrBlockState" => %{"members" => %{"State" => %{"locationName" => "state", "shape" => "VpcCidrBlockStateCode"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}}, "type" => "structure"}, "UpdateSecurityGroupRuleDescriptionsIngressRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "GroupId" => %{"shape" => "String"}, "GroupName" => %{"shape" => "String"}, "IpPermissions" => %{"shape" => "IpPermissionList"}}, "required" => ["IpPermissions"], "type" => "structure"}, "DeleteNetworkAclRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "NetworkAclId" => %{"locationName" => "networkAclId", "shape" => "String"}}, "required" => ["NetworkAclId"], "type" => "structure"}, "Host" => %{"members" => %{"AutoPlacement" => %{"locationName" => "autoPlacement", "shape" => "AutoPlacement"}, "AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "AvailableCapacity" => %{"locationName" => "availableCapacity", "shape" => "AvailableCapacity"}, "ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "HostId" => %{"locationName" => "hostId", "shape" => "String"}, "HostProperties" => %{"locationName" => "hostProperties", "shape" => "HostProperties"}, "HostReservationId" => %{"locationName" => "hostReservationId", "shape" => "String"}, "Instances" => %{"locationName" => "instances", "shape" => "HostInstanceList"}, "State" => %{"locationName" => "state", "shape" => "AllocationState"}}, "type" => "structure"}, "IpPermission" => %{"members" => %{"FromPort" => %{"locationName" => "fromPort", "shape" => "Integer"}, "IpProtocol" => %{"locationName" => "ipProtocol", "shape" => "String"}, "IpRanges" => %{"locationName" => "ipRanges", "shape" => "IpRangeList"}, "Ipv6Ranges" => %{"locationName" => "ipv6Ranges", "shape" => "Ipv6RangeList"}, "PrefixListIds" => %{"locationName" => "prefixListIds", "shape" => "PrefixListIdList"}, "ToPort" => %{"locationName" => "toPort", "shape" => "Integer"}, "UserIdGroupPairs" => %{"locationName" => "groups", "shape" => "UserIdGroupPairList"}}, "type" => "structure"}, "DhcpConfigurationValueList" => %{"member" => %{"locationName" => "item", "shape" => "AttributeValue"}, "type" => "list"}, "InstanceStateChangeList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceStateChange"}, "type" => "list"}, "ScheduledInstancesPlacement" => %{"members" => %{"AvailabilityZone" => %{"shape" => "String"}, "GroupName" => %{"shape" => "String"}}, "type" => "structure"}, "DeletePlacementGroupRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "GroupName" => %{"locationName" => "groupName", "shape" => "String"}}, "required" => ["GroupName"], "type" => "structure"}, "DhcpOptions" => %{"members" => %{"DhcpConfigurations" => %{"locationName" => "dhcpConfigurationSet", "shape" => "DhcpConfigurationList"}, "DhcpOptionsId" => %{"locationName" => "dhcpOptionsId", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}}, "type" => "structure"}, "CreateVpcRequest" => %{"members" => %{"AmazonProvidedIpv6CidrBlock" => %{"locationName" => "amazonProvidedIpv6CidrBlock", "shape" => "Boolean"}, "CidrBlock" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceTenancy" => %{"locationName" => "instanceTenancy", "shape" => "Tenancy"}}, "required" => ["CidrBlock"], "type" => "structure"}, "DeleteEgressOnlyInternetGatewayResult" => %{"members" => %{"ReturnCode" => %{"locationName" => "returnCode", "shape" => "Boolean"}}, "type" => "structure"}, "ModifyVolumeRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Iops" => %{"shape" => "Integer"}, "Size" => %{"shape" => "Integer"}, "VolumeId" => %{"shape" => "String"}, "VolumeType" => %{"shape" => "VolumeType"}}, "required" => ["VolumeId"], "type" => "structure"}, "CancelSpotFleetRequestsErrorItem" => %{"members" => %{"Error" => %{"locationName" => "error", "shape" => "CancelSpotFleetRequestsError"}, "SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}}, "required" => ["Error", "SpotFleetRequestId"], "type" => "structure"}, "PciId" => %{"members" => %{"DeviceId" => %{"shape" => "String"}, "SubsystemId" => %{"shape" => "String"}, "SubsystemVendorId" => %{"shape" => "String"}, "VendorId" => %{"shape" => "String"}}, "type" => "structure"}, "VpcPeeringConnectionStateReason" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "VpcPeeringConnectionStateReasonCode"}, "Message" => %{"locationName" => "message", "shape" => "String"}}, "type" => "structure"}, "ImportImageTaskList" => %{"member" => %{"locationName" => "item", "shape" => "ImportImageTask"}, "type" => "list"}, "DescribeAvailabilityZonesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "ZoneNames" => %{"locationName" => "ZoneName", "shape" => "ZoneNameStringList"}}, "type" => "structure"}, "DescribeVpnConnectionsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "VpnConnectionIds" => %{"locationName" => "VpnConnectionId", "shape" => "VpnConnectionIdStringList"}}, "type" => "structure"}, "DescribeVpcClassicLinkDnsSupportResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "NextToken"}, "Vpcs" => %{"locationName" => "vpcs", "shape" => "ClassicLinkDnsSupportList"}}, "type" => "structure"}, "DescribeNetworkInterfaceAttributeRequest" => %{"members" => %{"Attribute" => %{"locationName" => "attribute", "shape" => "NetworkInterfaceAttribute"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}}, "required" => ["NetworkInterfaceId"], "type" => "structure"}, "DisassociateRouteTableRequest" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "required" => ["AssociationId"], "type" => "structure"}, "InstanceStatusList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceStatus"}, "type" => "list"}, "GetConsoleScreenshotRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}, "WakeUp" => %{"shape" => "Boolean"}}, "required" => ["InstanceId"], "type" => "structure"}, "CreateDefaultVpcRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}}, "type" => "structure"}, "TargetReservationValueSet" => %{"member" => %{"locationName" => "item", "shape" => "TargetReservationValue"}, "type" => "list"}, "ExportTask" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "ExportTaskId" => %{"locationName" => "exportTaskId", "shape" => "String"}, "ExportToS3Task" => %{"locationName" => "exportToS3", "shape" => "ExportToS3Task"}, "InstanceExportDetails" => %{"locationName" => "instanceExport", "shape" => "InstanceExportDetails"}, "State" => %{"locationName" => "state", "shape" => "ExportTaskState"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}}, "type" => "structure"}, "InternetGatewayList" => %{"member" => %{"locationName" => "item", "shape" => "InternetGateway"}, "type" => "list"}, "MonitorInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}}, "required" => ["InstanceIds"], "type" => "structure"}, "PaymentOption" => %{"enum" => ["AllUpfront", "PartialUpfront", "NoUpfront"], "type" => "string"}, "DescribeVpnConnectionsResult" => %{"members" => %{"VpnConnections" => %{"locationName" => "vpnConnectionSet", "shape" => "VpnConnectionList"}}, "type" => "structure"}, "CreateVpnGatewayRequest" => %{"members" => %{"AvailabilityZone" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Type" => %{"shape" => "GatewayType"}}, "required" => ["Type"], "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"locationName" => "key", "shape" => "String"}, "Value" => %{"locationName" => "value", "shape" => "String"}}, "type" => "structure"}, "ScheduledInstancesBlockDeviceMappingSet" => %{"member" => %{"locationName" => "BlockDeviceMapping", "shape" => "ScheduledInstancesBlockDeviceMapping"}, "type" => "list"}, "ReservedInstanceState" => %{"enum" => ["payment-pending", "active", "payment-failed", "retired"], "type" => "string"}, "AssociateIamInstanceProfileResult" => %{"members" => %{"IamInstanceProfileAssociation" => %{"locationName" => "iamInstanceProfileAssociation", "shape" => "IamInstanceProfileAssociation"}}, "type" => "structure"}, "ReleaseHostsResult" => %{"members" => %{"Successful" => %{"locationName" => "successful", "shape" => "ResponseHostIdList"}, "Unsuccessful" => %{"locationName" => "unsuccessful", "shape" => "UnsuccessfulItemList"}}, "type" => "structure"}, "TargetReservationValue" => %{"members" => %{"ReservationValue" => %{"locationName" => "reservationValue", "shape" => "ReservationValue"}, "TargetConfiguration" => %{"locationName" => "targetConfiguration", "shape" => "TargetConfiguration"}}, "type" => "structure"}, "SpotInstanceStatus" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "String"}, "Message" => %{"locationName" => "message", "shape" => "String"}, "UpdateTime" => %{"locationName" => "updateTime", "shape" => "DateTime"}}, "type" => "structure"}, "DescribeHostReservationOfferingsRequest" => %{"members" => %{"Filter" => %{"shape" => "FilterList"}, "MaxDuration" => %{"shape" => "Integer"}, "MaxResults" => %{"shape" => "Integer"}, "MinDuration" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "OfferingId" => %{"shape" => "String"}}, "type" => "structure"}, "IamInstanceProfile" => %{"members" => %{"Arn" => %{"locationName" => "arn", "shape" => "String"}, "Id" => %{"locationName" => "id", "shape" => "String"}}, "type" => "structure"}, "RecurringCharge" => %{"members" => %{"Amount" => %{"locationName" => "amount", "shape" => "Double"}, "Frequency" => %{"locationName" => "frequency", "shape" => "RecurringChargeFrequency"}}, "type" => "structure"}, "SecurityGroupStringList" => %{"member" => %{"locationName" => "SecurityGroup", "shape" => "String"}, "type" => "list"}, "StartInstancesRequest" => %{"members" => %{"AdditionalInfo" => %{"locationName" => "additionalInfo", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}}, "required" => ["InstanceIds"], "type" => "structure"}, "VpcClassicLinkList" => %{"member" => %{"locationName" => "item", "shape" => "VpcClassicLink"}, "type" => "list"}, "StateReason" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "String"}, "Message" => %{"locationName" => "message", "shape" => "String"}}, "type" => "structure"}, "DeleteSecurityGroupRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "GroupId" => %{"shape" => "String"}, "GroupName" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteRouteTableRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "RouteTableId" => %{"locationName" => "routeTableId", "shape" => "String"}}, "required" => ["RouteTableId"], "type" => "structure"}, "DescribeRouteTablesResult" => %{"members" => %{"RouteTables" => %{"locationName" => "routeTableSet", "shape" => "RouteTableList"}}, "type" => "structure"}, "CreateVpcEndpointRequest" => %{"members" => %{"ClientToken" => %{"shape" => "String"}, "DryRun" => %{"shape" => "Boolean"}, "PolicyDocument" => %{"shape" => "String"}, "RouteTableIds" => %{"locationName" => "RouteTableId", "shape" => "ValueStringList"}, "ServiceName" => %{"shape" => "String"}, "VpcId" => %{"shape" => "String"}}, "required" => ["ServiceName", "VpcId"], "type" => "structure"}, "DescribeConversionTasksRequest" => %{"members" => %{"ConversionTaskIds" => %{"locationName" => "conversionTaskId", "shape" => "ConversionIdStringList"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "type" => "structure"}, "DescribeSpotDatafeedSubscriptionRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "type" => "structure"}, "DescribeInternetGatewaysRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "InternetGatewayIds" => %{"locationName" => "internetGatewayId", "shape" => "ValueStringList"}}, "type" => "structure"}, "ScheduledInstancesNetworkInterfaceSet" => %{"member" => %{"locationName" => "NetworkInterface", "shape" => "ScheduledInstancesNetworkInterface"}, "type" => "list"}, "DescribeVolumeAttributeRequest" => %{"members" => %{"Attribute" => %{"shape" => "VolumeAttributeName"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "InstanceIdStringList" => %{"member" => %{"locationName" => "InstanceId", "shape" => "String"}, "type" => "list"}, "UnassignIpv6AddressesResult" => %{"members" => %{"NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "UnassignedIpv6Addresses" => %{"locationName" => "unassignedIpv6Addresses", "shape" => "Ipv6AddressList"}}, "type" => "structure"}, "VpnConnectionOptionsSpecification" => %{"members" => %{"StaticRoutesOnly" => %{"locationName" => "staticRoutesOnly", "shape" => "Boolean"}}, "type" => "structure"}, "ModifyInstancePlacementResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "DescribeHostsRequest" => %{"members" => %{"Filter" => %{"locationName" => "filter", "shape" => "FilterList"}, "HostIds" => %{"locationName" => "hostId", "shape" => "RequestHostIdList"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "ModifyVpcPeeringConnectionOptionsResult" => %{"members" => %{"AccepterPeeringConnectionOptions" => %{"locationName" => "accepterPeeringConnectionOptions", "shape" => "PeeringConnectionOptions"}, "RequesterPeeringConnectionOptions" => %{"locationName" => "requesterPeeringConnectionOptions", "shape" => "PeeringConnectionOptions"}}, "type" => "structure"}, "VpnConnectionList" => %{"member" => %{"locationName" => "item", "shape" => "VpnConnection"}, "type" => "list"}, "DescribeVpnGatewaysResult" => %{"members" => %{"VpnGateways" => %{"locationName" => "vpnGatewaySet", "shape" => "VpnGatewayList"}}, "type" => "structure"}, "Route" => %{"members" => %{"DestinationCidrBlock" => %{"locationName" => "destinationCidrBlock", "shape" => "String"}, "DestinationIpv6CidrBlock" => %{"locationName" => "destinationIpv6CidrBlock", "shape" => "String"}, "DestinationPrefixListId" => %{"locationName" => "destinationPrefixListId", "shape" => "String"}, "EgressOnlyInternetGatewayId" => %{"locationName" => "egressOnlyInternetGatewayId", "shape" => "String"}, "GatewayId" => %{"locationName" => "gatewayId", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "InstanceOwnerId" => %{"locationName" => "instanceOwnerId", "shape" => "String"}, "NatGatewayId" => %{"locationName" => "natGatewayId", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "Origin" => %{"locationName" => "origin", "shape" => "RouteOrigin"}, "State" => %{"locationName" => "state", "shape" => "RouteState"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "type" => "structure"}, "ReportInstanceStatusRequest" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "EndTime" => %{"locationName" => "endTime", "shape" => "DateTime"}, "Instances" => %{"locationName" => "instanceId", "shape" => "InstanceIdStringList"}, "ReasonCodes" => %{"locationName" => "reasonCode", "shape" => "ReasonCodesList"}, "StartTime" => %{"locationName" => "startTime", "shape" => "DateTime"}, "Status" => %{"locationName" => "status", "shape" => "ReportStatusType"}}, "required" => ["Instances", "ReasonCodes", "Status"], "type" => "structure"}, "DescribeVpcsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "VpcIds" => %{"locationName" => "VpcId", "shape" => "VpcIdStringList"}}, "type" => "structure"}, "UserIdGroupPair" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "GroupId" => %{"locationName" => "groupId", "shape" => "String"}, "GroupName" => %{"locationName" => "groupName", "shape" => "String"}, "PeeringStatus" => %{"locationName" => "peeringStatus", "shape" => "String"}, "UserId" => %{"locationName" => "userId", "shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "type" => "structure"}, "ScheduledInstancesSecurityGroupIdSet" => %{"member" => %{"locationName" => "SecurityGroupId", "shape" => "String"}, "type" => "list"}, "InstanceStatusEvent" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "EventCode"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "NotAfter" => %{"locationName" => "notAfter", "shape" => "DateTime"}, "NotBefore" => %{"locationName" => "notBefore", "shape" => "DateTime"}}, "type" => "structure"}, "ImportKeyPairRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "KeyName" => %{"locationName" => "keyName", "shape" => "String"}, "PublicKeyMaterial" => %{"locationName" => "publicKeyMaterial", "shape" => "Blob"}}, "required" => ["KeyName", "PublicKeyMaterial"], "type" => "structure"}, "ReservedInstancesOfferingIdStringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "ExportTaskState" => %{"enum" => ["active", "cancelling", "cancelled", "completed"], "type" => "string"}, "DescribeEgressOnlyInternetGatewaysResult" => %{"members" => %{"EgressOnlyInternetGateways" => %{"locationName" => "egressOnlyInternetGatewaySet", "shape" => "EgressOnlyInternetGatewayList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "DescribeVpcAttributeRequest" => %{"members" => %{"Attribute" => %{"shape" => "VpcAttributeName"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}}, "required" => ["Attribute", "VpcId"], "type" => "structure"}, "OfferingTypeValues" => %{"enum" => ["Heavy Utilization", "Medium Utilization", "Light Utilization", "No Upfront", "Partial Upfront", "All Upfront"], "type" => "string"}, "ShutdownBehavior" => %{"enum" => ["stop", "terminate"], "type" => "string"}, "SnapshotTaskDetail" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "DiskImageSize" => %{"locationName" => "diskImageSize", "shape" => "Double"}, "Format" => %{"locationName" => "format", "shape" => "String"}, "Progress" => %{"locationName" => "progress", "shape" => "String"}, "SnapshotId" => %{"locationName" => "snapshotId", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "String"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}, "Url" => %{"locationName" => "url", "shape" => "String"}, "UserBucket" => %{"locationName" => "userBucket", "shape" => "UserBucketDetails"}}, "type" => "structure"}, "RevokeSecurityGroupEgressRequest" => %{"members" => %{"CidrIp" => %{"locationName" => "cidrIp", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "FromPort" => %{"locationName" => "fromPort", "shape" => "Integer"}, "GroupId" => %{"locationName" => "groupId", "shape" => "String"}, "IpPermissions" => %{"locationName" => "ipPermissions", "shape" => "IpPermissionList"}, "IpProtocol" => %{"locationName" => "ipProtocol", "shape" => "String"}, "SourceSecurityGroupName" => %{"locationName" => "sourceSecurityGroupName", "shape" => "String"}, "SourceSecurityGroupOwnerId" => %{"locationName" => "sourceSecurityGroupOwnerId", "shape" => "String"}, "ToPort" => %{"locationName" => "toPort", "shape" => "Integer"}}, "required" => ["GroupId"], "type" => "structure"}, "VolumeDetail" => %{"members" => %{"Size" => %{"locationName" => "size", "shape" => "Long"}}, "required" => ["Size"], "type" => "structure"}, "CancelImportTaskResult" => %{"members" => %{"ImportTaskId" => %{"locationName" => "importTaskId", "shape" => "String"}, "PreviousState" => %{"locationName" => "previousState", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "String"}}, "type" => "structure"}, "CreateVolumePermissionModifications" => %{"members" => %{"Add" => %{"shape" => "CreateVolumePermissionList"}, "Remove" => %{"shape" => "CreateVolumePermissionList"}}, "type" => "structure"}, "VolumeStatusEventsList" => %{"member" => %{"locationName" => "item", "shape" => "VolumeStatusEvent"}, "type" => "list"}, "Monitoring" => %{"members" => %{"State" => %{"locationName" => "state", "shape" => "MonitoringState"}}, "type" => "structure"}, "TagList" => %{"member" => %{"locationName" => "item", "shape" => "Tag"}, "type" => "list"}, "EgressOnlyInternetGateway" => %{"members" => %{"Attachments" => %{"locationName" => "attachmentSet", "shape" => "InternetGatewayAttachmentList"}, "EgressOnlyInternetGatewayId" => %{"locationName" => "egressOnlyInternetGatewayId", "shape" => "EgressOnlyInternetGatewayId"}}, "type" => "structure"}, "ScheduledInstanceAvailability" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "AvailableInstanceCount" => %{"locationName" => "availableInstanceCount", "shape" => "Integer"}, "FirstSlotStartTime" => %{"locationName" => "firstSlotStartTime", "shape" => "DateTime"}, "HourlyPrice" => %{"locationName" => "hourlyPrice", "shape" => "String"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "String"}, "MaxTermDurationInDays" => %{"locationName" => "maxTermDurationInDays", "shape" => "Integer"}, "MinTermDurationInDays" => %{"locationName" => "minTermDurationInDays", "shape" => "Integer"}, "NetworkPlatform" => %{"locationName" => "networkPlatform", "shape" => "String"}, "Platform" => %{"locationName" => "platform", "shape" => "String"}, "PurchaseToken" => %{"locationName" => "purchaseToken", "shape" => "String"}, "Recurrence" => %{"locationName" => "recurrence", "shape" => "ScheduledInstanceRecurrence"}, "SlotDurationInHours" => %{"locationName" => "slotDurationInHours", "shape" => "Integer"}, "TotalScheduledInstanceHours" => %{"locationName" => "totalScheduledInstanceHours", "shape" => "Integer"}}, "type" => "structure"}, "MonitoringState" => %{"enum" => ["disabled", "disabling", "enabled", "pending"], "type" => "string"}, "GetPasswordDataResult" => %{"members" => %{"InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "PasswordData" => %{"locationName" => "passwordData", "shape" => "String"}, "Timestamp" => %{"locationName" => "timestamp", "shape" => "DateTime"}}, "type" => "structure"}, "DescribeSpotPriceHistoryRequest" => %{"members" => %{"AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "EndTime" => %{"locationName" => "endTime", "shape" => "DateTime"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "InstanceTypes" => %{"locationName" => "InstanceType", "shape" => "InstanceTypeList"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "ProductDescriptions" => %{"locationName" => "ProductDescription", "shape" => "ProductDescriptionList"}, "StartTime" => %{"locationName" => "startTime", "shape" => "DateTime"}}, "type" => "structure"}, "MaxResults" => %{"max" => 255, "min" => 5, "type" => "integer"}, "DescribeHostsResult" => %{"members" => %{"Hosts" => %{"locationName" => "hostSet", "shape" => "HostList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "AcceptReservedInstancesExchangeQuoteResult" => %{"members" => %{"ExchangeId" => %{"locationName" => "exchangeId", "shape" => "String"}}, "type" => "structure"}, "StaleSecurityGroup" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "GroupId" => %{"locationName" => "groupId", "shape" => "String"}, "GroupName" => %{"locationName" => "groupName", "shape" => "String"}, "StaleIpPermissions" => %{"locationName" => "staleIpPermissions", "shape" => "StaleIpPermissionSet"}, "StaleIpPermissionsEgress" => %{"locationName" => "staleIpPermissionsEgress", "shape" => "StaleIpPermissionSet"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["GroupId"], "type" => "structure"}, "CreateNetworkAclEntryRequest" => %{"members" => %{"CidrBlock" => %{"locationName" => "cidrBlock", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Egress" => %{"locationName" => "egress", "shape" => "Boolean"}, "IcmpTypeCode" => %{"locationName" => "Icmp", "shape" => "IcmpTypeCode"}, "Ipv6CidrBlock" => %{"locationName" => "ipv6CidrBlock", "shape" => "String"}, "NetworkAclId" => %{"locationName" => "networkAclId", "shape" => "String"}, "PortRange" => %{"locationName" => "portRange", "shape" => "PortRange"}, "Protocol" => %{"locationName" => "protocol", "shape" => "String"}, "RuleAction" => %{"locationName" => "ruleAction", "shape" => "RuleAction"}, "RuleNumber" => %{"locationName" => "ruleNumber", "shape" => "Integer"}}, "required" => ["Egress", "NetworkAclId", "Protocol", "RuleAction", "RuleNumber"], "type" => "structure"}, "HostInstance" => %{"members" => %{"InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "String"}}, "type" => "structure"}, "SubnetCidrBlockStateCode" => %{"enum" => ["associating", "associated", "disassociating", "disassociated", "failing", "failed"], "type" => "string"}, "ReservationState" => %{"enum" => ["payment-pending", "payment-failed", "active", "retired"], "type" => "string"}, "SnapshotIdStringList" => %{"member" => %{"locationName" => "SnapshotId", "shape" => "String"}, "type" => "list"}, "DescribeIdFormatRequest" => %{"members" => %{"Resource" => %{"shape" => "String"}}, "type" => "structure"}, "InstanceCapacity" => %{"members" => %{"AvailableCapacity" => %{"locationName" => "availableCapacity", "shape" => "Integer"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "String"}, "TotalCapacity" => %{"locationName" => "totalCapacity", "shape" => "Integer"}}, "type" => "structure"}, "DescribeVpcAttributeResult" => %{"members" => %{"EnableDnsHostnames" => %{"locationName" => "enableDnsHostnames", "shape" => "AttributeBooleanValue"}, "EnableDnsSupport" => %{"locationName" => "enableDnsSupport", "shape" => "AttributeBooleanValue"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "AutoPlacement" => %{"enum" => ["on", "off"], "type" => "string"}, "ReservedInstancesModificationIdStringList" => %{"member" => %{"locationName" => "ReservedInstancesModificationId", "shape" => "String"}, "type" => "list"}, "ElasticGpuState" => %{"enum" => ["ATTACHED"], "type" => "string"}, "DescribeSpotInstanceRequestsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "SpotInstanceRequestIds" => %{"locationName" => "SpotInstanceRequestId", "shape" => "SpotInstanceRequestIdList"}}, "type" => "structure"}, "PurchaseSet" => %{"member" => %{"shape" => "Purchase"}, "type" => "list"}, "ScheduledInstanceIdRequestSet" => %{"member" => %{"locationName" => "ScheduledInstanceId", "shape" => "String"}, "type" => "list"}, "InternetGateway" => %{"members" => %{"Attachments" => %{"locationName" => "attachmentSet", "shape" => "InternetGatewayAttachmentList"}, "InternetGatewayId" => %{"locationName" => "internetGatewayId", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}}, "type" => "structure"}, "CreateSpotDatafeedSubscriptionRequest" => %{"members" => %{"Bucket" => %{"locationName" => "bucket", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Prefix" => %{"locationName" => "prefix", "shape" => "String"}}, "required" => ["Bucket"], "type" => "structure"}, "ReservationValue" => %{"members" => %{"HourlyPrice" => %{"locationName" => "hourlyPrice", "shape" => "String"}, "RemainingTotalValue" => %{"locationName" => "remainingTotalValue", "shape" => "String"}, "RemainingUpfrontValue" => %{"locationName" => "remainingUpfrontValue", "shape" => "String"}}, "type" => "structure"}, "RouteTableList" => %{"member" => %{"locationName" => "item", "shape" => "RouteTable"}, "type" => "list"}, "VolumeAttachment" => %{"members" => %{"AttachTime" => %{"locationName" => "attachTime", "shape" => "DateTime"}, "DeleteOnTermination" => %{"locationName" => "deleteOnTermination", "shape" => "Boolean"}, "Device" => %{"locationName" => "device", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "State" => %{"locationName" => "status", "shape" => "VolumeAttachmentState"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}}, "type" => "structure"}, "VpnConnectionIdStringList" => %{"member" => %{"locationName" => "VpnConnectionId", "shape" => "String"}, "type" => "list"}, "RejectVpcPeeringConnectionResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "RouteTableAssociation" => %{"members" => %{"Main" => %{"locationName" => "main", "shape" => "Boolean"}, "RouteTableAssociationId" => %{"locationName" => "routeTableAssociationId", "shape" => "String"}, "RouteTableId" => %{"locationName" => "routeTableId", "shape" => "String"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "type" => "structure"}, "ImportInstanceRequest" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "DiskImages" => %{"locationName" => "diskImage", "shape" => "DiskImageList"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "LaunchSpecification" => %{"locationName" => "launchSpecification", "shape" => "ImportInstanceLaunchSpecification"}, "Platform" => %{"locationName" => "platform", "shape" => "PlatformValues"}}, "required" => ["Platform"], "type" => "structure"}, "ReplaceIamInstanceProfileAssociationResult" => %{"members" => %{"IamInstanceProfileAssociation" => %{"locationName" => "iamInstanceProfileAssociation", "shape" => "IamInstanceProfileAssociation"}}, "type" => "structure"}, "DescribeVpcsResult" => %{"members" => %{"Vpcs" => %{"locationName" => "vpcSet", "shape" => "VpcList"}}, "type" => "structure"}, "ElasticGpuAssociationList" => %{"member" => %{"locationName" => "item", "shape" => "ElasticGpuAssociation"}, "type" => "list"}, "RequestSpotFleetResponse" => %{"members" => %{"SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}}, "required" => ["SpotFleetRequestId"], "type" => "structure"}, "CreateRouteRequest" => %{"members" => %{"DestinationCidrBlock" => %{"locationName" => "destinationCidrBlock", "shape" => "String"}, "DestinationIpv6CidrBlock" => %{"locationName" => "destinationIpv6CidrBlock", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "EgressOnlyInternetGatewayId" => %{"locationName" => "egressOnlyInternetGatewayId", "shape" => "String"}, "GatewayId" => %{"locationName" => "gatewayId", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "NatGatewayId" => %{"locationName" => "natGatewayId", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "RouteTableId" => %{"locationName" => "routeTableId", "shape" => "String"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "required" => ["RouteTableId"], "type" => "structure"}, "FlowLog" => %{"members" => %{"CreationTime" => %{"locationName" => "creationTime", "shape" => "DateTime"}, "DeliverLogsErrorMessage" => %{"locationName" => "deliverLogsErrorMessage", "shape" => "String"}, "DeliverLogsPermissionArn" => %{"locationName" => "deliverLogsPermissionArn", "shape" => "String"}, "DeliverLogsStatus" => %{"locationName" => "deliverLogsStatus", "shape" => "String"}, "FlowLogId" => %{"locationName" => "flowLogId", "shape" => "String"}, "FlowLogStatus" => %{"locationName" => "flowLogStatus", "shape" => "String"}, "LogGroupName" => %{"locationName" => "logGroupName", "shape" => "String"}, "ResourceId" => %{"locationName" => "resourceId", "shape" => "String"}, "TrafficType" => %{"locationName" => "trafficType", "shape" => "TrafficType"}}, "type" => "structure"}, "DeleteNetworkInterfacePermissionResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "RequestSpotFleetRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "SpotFleetRequestConfig" => %{"locationName" => "spotFleetRequestConfig", "shape" => "SpotFleetRequestConfigData"}}, "required" => ["SpotFleetRequestConfig"], "type" => "structure"}, "AssociateAddressRequest" => %{"members" => %{"AllocationId" => %{"shape" => "String"}, "AllowReassociation" => %{"locationName" => "allowReassociation", "shape" => "Boolean"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "PublicIp" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateSecurityGroupRuleDescriptionsIngressResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "SpotInstanceStateFault" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "String"}, "Message" => %{"locationName" => "message", "shape" => "String"}}, "type" => "structure"}, "ImageDiskContainerList" => %{"member" => %{"locationName" => "item", "shape" => "ImageDiskContainer"}, "type" => "list"}, "GroupNameStringList" => %{"member" => %{"locationName" => "GroupName", "shape" => "String"}, "type" => "list"}, "InstanceNetworkInterfaceSpecificationList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceNetworkInterfaceSpecification"}, "type" => "list"}, "DescribeVpcEndpointServicesRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "GetHostReservationPurchasePreviewRequest" => %{"members" => %{"HostIdSet" => %{"shape" => "RequestHostIdSet"}, "OfferingId" => %{"shape" => "String"}}, "required" => ["HostIdSet", "OfferingId"], "type" => "structure"}, "UnmonitorInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}}, "required" => ["InstanceIds"], "type" => "structure"}, "VpcPeeringConnectionStateReasonCode" => %{"enum" => ["initiating-request", "pending-acceptance", "active", "deleted", "rejected", "failed", "expired", "provisioning", "deleting"], "type" => "string"}, "ResetSnapshotAttributeRequest" => %{"members" => %{"Attribute" => %{"shape" => "SnapshotAttributeName"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "SnapshotId" => %{"shape" => "String"}}, "required" => ["Attribute", "SnapshotId"], "type" => "structure"}, "ModifyVpcPeeringConnectionOptionsRequest" => %{"members" => %{"AccepterPeeringConnectionOptions" => %{"shape" => "PeeringConnectionOptionsRequest"}, "DryRun" => %{"shape" => "Boolean"}, "RequesterPeeringConnectionOptions" => %{"shape" => "PeeringConnectionOptionsRequest"}, "VpcPeeringConnectionId" => %{"shape" => "String"}}, "required" => ["VpcPeeringConnectionId"], "type" => "structure"}, "DeleteNetworkAclEntryRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Egress" => %{"locationName" => "egress", "shape" => "Boolean"}, "NetworkAclId" => %{"locationName" => "networkAclId", "shape" => "String"}, "RuleNumber" => %{"locationName" => "ruleNumber", "shape" => "Integer"}}, "required" => ["Egress", "NetworkAclId", "RuleNumber"], "type" => "structure"}, "DescribeHostReservationsRequest" => %{"members" => %{"Filter" => %{"shape" => "FilterList"}, "HostReservationIdSet" => %{"shape" => "HostReservationIdSet"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "AttachClassicLinkVpcRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Groups" => %{"locationName" => "SecurityGroupId", "shape" => "GroupIdStringList"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["Groups", "InstanceId", "VpcId"], "type" => "structure"}, "GetConsoleOutputResult" => %{"members" => %{"InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "Output" => %{"locationName" => "output", "shape" => "String"}, "Timestamp" => %{"locationName" => "timestamp", "shape" => "DateTime"}}, "type" => "structure"}, "NatGatewayList" => %{"member" => %{"locationName" => "item", "shape" => "NatGateway"}, "type" => "list"}, "DisassociateAddressRequest" => %{"members" => %{"AssociationId" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "PublicIp" => %{"shape" => "String"}}, "type" => "structure"}, "PurchaseScheduledInstancesRequest" => %{"members" => %{"ClientToken" => %{"idempotencyToken" => true, "shape" => "String"}, "DryRun" => %{"shape" => "Boolean"}, "PurchaseRequests" => %{"locationName" => "PurchaseRequest", "shape" => "PurchaseRequestSet"}}, "required" => ["PurchaseRequests"], "type" => "structure"}, "CreateInternetGatewayRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "type" => "structure"}, "CancelSpotFleetRequestsSuccessItem" => %{"members" => %{"CurrentSpotFleetRequestState" => %{"locationName" => "currentSpotFleetRequestState", "shape" => "BatchState"}, "PreviousSpotFleetRequestState" => %{"locationName" => "previousSpotFleetRequestState", "shape" => "BatchState"}, "SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}}, "required" => ["CurrentSpotFleetRequestState", "PreviousSpotFleetRequestState", "SpotFleetRequestId"], "type" => "structure"}, "Double" => %{"type" => "double"}, "AvailabilityZone" => %{"members" => %{"Messages" => %{"locationName" => "messageSet", "shape" => "AvailabilityZoneMessageList"}, "RegionName" => %{"locationName" => "regionName", "shape" => "String"}, "State" => %{"locationName" => "zoneState", "shape" => "AvailabilityZoneState"}, "ZoneName" => %{"locationName" => "zoneName", "shape" => "String"}}, "type" => "structure"}, "ReservedInstancesIdStringList" => %{"member" => %{"locationName" => "ReservedInstancesId", "shape" => "String"}, "type" => "list"}, "EventInformation" => %{"members" => %{"EventDescription" => %{"locationName" => "eventDescription", "shape" => "String"}, "EventSubType" => %{"locationName" => "eventSubType", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}}, "type" => "structure"}, "DescribeElasticGpusRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "ElasticGpuIds" => %{"locationName" => "ElasticGpuId", "shape" => "ElasticGpuIdSet"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "AttachNetworkInterfaceRequest" => %{"members" => %{"DeviceIndex" => %{"locationName" => "deviceIndex", "shape" => "Integer"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}}, "required" => ["DeviceIndex", "InstanceId", "NetworkInterfaceId"], "type" => "structure"}, "DescribeScheduledInstanceAvailabilityResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "ScheduledInstanceAvailabilitySet" => %{"locationName" => "scheduledInstanceAvailabilitySet", "shape" => "ScheduledInstanceAvailabilitySet"}}, "type" => "structure"}, "CancelSpotFleetRequestsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "SpotFleetRequestIds" => %{"locationName" => "spotFleetRequestId", "shape" => "ValueStringList"}, "TerminateInstances" => %{"locationName" => "terminateInstances", "shape" => "Boolean"}}, "required" => ["SpotFleetRequestIds", "TerminateInstances"], "type" => "structure"}, "PrefixListId" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "PrefixListId" => %{"locationName" => "prefixListId", "shape" => "String"}}, "type" => "structure"}, "DisassociateSubnetCidrBlockResult" => %{"members" => %{"Ipv6CidrBlockAssociation" => %{"locationName" => "ipv6CidrBlockAssociation", "shape" => "SubnetIpv6CidrBlockAssociation"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "type" => "structure"}, "VolumeAttributeName" => %{"enum" => ["autoEnableIO", "productCodes"], "type" => "string"}, "AssociateVpcCidrBlockRequest" => %{"members" => %{"AmazonProvidedIpv6CidrBlock" => %{"locationName" => "amazonProvidedIpv6CidrBlock", "shape" => "Boolean"}, "CidrBlock" => %{"shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "DescribeReservedInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "OfferingClass" => %{"shape" => "OfferingClassType"}, "OfferingType" => %{"locationName" => "offeringType", "shape" => "OfferingTypeValues"}, "ReservedInstancesIds" => %{"locationName" => "ReservedInstancesId", "shape" => "ReservedInstancesIdStringList"}}, "type" => "structure"}, "DescribeVolumeStatusResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "VolumeStatuses" => %{"locationName" => "volumeStatusSet", "shape" => "VolumeStatusList"}}, "type" => "structure"}, "InstanceMonitoring" => %{"members" => %{"InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "Monitoring" => %{"locationName" => "monitoring", "shape" => "Monitoring"}}, "type" => "structure"}, "DescribeTagsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "RestorableByStringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "DescribeReservedInstancesResult" => %{"members" => %{"ReservedInstances" => %{"locationName" => "reservedInstancesSet", "shape" => "ReservedInstancesList"}}, "type" => "structure"}, "ElasticGpuHealth" => %{"members" => %{"Status" => %{"locationName" => "status", "shape" => "ElasticGpuStatus"}}, "type" => "structure"}, "VgwTelemetry" => %{"members" => %{"AcceptedRouteCount" => %{"locationName" => "acceptedRouteCount", "shape" => "Integer"}, "LastStatusChange" => %{"locationName" => "lastStatusChange", "shape" => "DateTime"}, "OutsideIpAddress" => %{"locationName" => "outsideIpAddress", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "TelemetryStatus"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}}, "type" => "structure"}, "Image" => %{"members" => %{"Architecture" => %{"locationName" => "architecture", "shape" => "ArchitectureValues"}, "BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "BlockDeviceMappingList"}, "CreationDate" => %{"locationName" => "creationDate", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "EnaSupport" => %{"locationName" => "enaSupport", "shape" => "Boolean"}, "Hypervisor" => %{"locationName" => "hypervisor", "shape" => "HypervisorType"}, "ImageId" => %{"locationName" => "imageId", "shape" => "String"}, "ImageLocation" => %{"locationName" => "imageLocation", "shape" => "String"}, "ImageOwnerAlias" => %{"locationName" => "imageOwnerAlias", "shape" => "String"}, "ImageType" => %{"locationName" => "imageType", "shape" => "ImageTypeValues"}, "KernelId" => %{"locationName" => "kernelId", "shape" => "String"}, "Name" => %{"locationName" => "name", "shape" => "String"}, "OwnerId" => %{"locationName" => "imageOwnerId", "shape" => "String"}, "Platform" => %{"locationName" => "platform", "shape" => "PlatformValues"}, "ProductCodes" => %{"locationName" => "productCodes", "shape" => "ProductCodeList"}, "Public" => %{"locationName" => "isPublic", "shape" => "Boolean"}, "RamdiskId" => %{"locationName" => "ramdiskId", "shape" => "String"}, "RootDeviceName" => %{"locationName" => "rootDeviceName", "shape" => "String"}, "RootDeviceType" => %{"locationName" => "rootDeviceType", "shape" => "DeviceType"}, "SriovNetSupport" => %{"locationName" => "sriovNetSupport", "shape" => "String"}, "State" => %{"locationName" => "imageState", "shape" => "ImageState"}, "StateReason" => %{"locationName" => "stateReason", "shape" => "StateReason"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VirtualizationType" => %{"locationName" => "virtualizationType", "shape" => "VirtualizationType"}}, "type" => "structure"}, "DeleteVpcRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "InstanceBlockDeviceMappingSpecificationList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceBlockDeviceMappingSpecification"}, "type" => "list"}, "InstanceCount" => %{"members" => %{"InstanceCount" => %{"locationName" => "instanceCount", "shape" => "Integer"}, "State" => %{"locationName" => "state", "shape" => "ListingState"}}, "type" => "structure"}, "NetworkInterfaceIpv6AddressesList" => %{"member" => %{"locationName" => "item", "shape" => "NetworkInterfaceIpv6Address"}, "type" => "list"}, "DescribeNatGatewaysRequest" => %{"members" => %{"Filter" => %{"shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NatGatewayIds" => %{"locationName" => "NatGatewayId", "shape" => "ValueStringList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "BundleTaskError" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "String"}, "Message" => %{"locationName" => "message", "shape" => "String"}}, "type" => "structure"}, "DescribeSecurityGroupReferencesRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "GroupId" => %{"shape" => "GroupIds"}}, "required" => ["GroupId"], "type" => "structure"}, "DetachClassicLinkVpcResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "ScheduledInstancesPrivateIpAddressConfig" => %{"members" => %{"Primary" => %{"shape" => "Boolean"}, "PrivateIpAddress" => %{"shape" => "String"}}, "type" => "structure"}, "NetworkInterfacePrivateIpAddress" => %{"members" => %{"Association" => %{"locationName" => "association", "shape" => "NetworkInterfaceAssociation"}, "Primary" => %{"locationName" => "primary", "shape" => "Boolean"}, "PrivateDnsName" => %{"locationName" => "privateDnsName", "shape" => "String"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}}, "type" => "structure"}, "VpnState" => %{"enum" => ["pending", "available", "deleting", "deleted"], "type" => "string"}, "RecurringChargesList" => %{"member" => %{"locationName" => "item", "shape" => "RecurringCharge"}, "type" => "list"}, "Ipv6Address" => %{"type" => "string"}, "CreateNetworkInterfaceResult" => %{"members" => %{"NetworkInterface" => %{"locationName" => "networkInterface", "shape" => "NetworkInterface"}}, "type" => "structure"}, "DescribeVolumeAttributeResult" => %{"members" => %{"AutoEnableIO" => %{"locationName" => "autoEnableIO", "shape" => "AttributeBooleanValue"}, "ProductCodes" => %{"locationName" => "productCodes", "shape" => "ProductCodeList"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}}, "type" => "structure"}, "TagDescription" => %{"members" => %{"Key" => %{"locationName" => "key", "shape" => "String"}, "ResourceId" => %{"locationName" => "resourceId", "shape" => "String"}, "ResourceType" => %{"locationName" => "resourceType", "shape" => "ResourceType"}, "Value" => %{"locationName" => "value", "shape" => "String"}}, "type" => "structure"}, "DescribeConversionTaskList" => %{"member" => %{"locationName" => "item", "shape" => "ConversionTask"}, "type" => "list"}, "DescribeSpotFleetInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}}, "required" => ["SpotFleetRequestId"], "type" => "structure"}, "ProductCodeList" => %{"member" => %{"locationName" => "item", "shape" => "ProductCode"}, "type" => "list"}, "ModifySnapshotAttributeRequest" => %{"members" => %{"Attribute" => %{"shape" => "SnapshotAttributeName"}, "CreateVolumePermission" => %{"shape" => "CreateVolumePermissionModifications"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "GroupNames" => %{"locationName" => "UserGroup", "shape" => "GroupNameStringList"}, "OperationType" => %{"shape" => "OperationType"}, "SnapshotId" => %{"shape" => "String"}, "UserIds" => %{"locationName" => "UserId", "shape" => "UserIdStringList"}}, "required" => ["SnapshotId"], "type" => "structure"}, "ImageTypeValues" => %{"enum" => ["machine", "kernel", "ramdisk"], "type" => "string"}, "PeeringConnectionOptionsRequest" => %{"members" => %{"AllowDnsResolutionFromRemoteVpc" => %{"shape" => "Boolean"}, "AllowEgressFromLocalClassicLinkToRemoteVpc" => %{"shape" => "Boolean"}, "AllowEgressFromLocalVpcToRemoteClassicLink" => %{"shape" => "Boolean"}}, "type" => "structure"}, "NetworkInterfacePermissionIdList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "LaunchPermission" => %{"members" => %{"Group" => %{"locationName" => "group", "shape" => "PermissionGroup"}, "UserId" => %{"locationName" => "userId", "shape" => "String"}}, "type" => "structure"}, "RevokeSecurityGroupIngressRequest" => %{"members" => %{"CidrIp" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "FromPort" => %{"shape" => "Integer"}, "GroupId" => %{"shape" => "String"}, "GroupName" => %{"shape" => "String"}, "IpPermissions" => %{"shape" => "IpPermissionList"}, "IpProtocol" => %{"shape" => "String"}, "SourceSecurityGroupName" => %{"shape" => "String"}, "SourceSecurityGroupOwnerId" => %{"shape" => "String"}, "ToPort" => %{"shape" => "Integer"}}, "type" => "structure"}, "EbsInstanceBlockDevice" => %{"members" => %{"AttachTime" => %{"locationName" => "attachTime", "shape" => "DateTime"}, "DeleteOnTermination" => %{"locationName" => "deleteOnTermination", "shape" => "Boolean"}, "Status" => %{"locationName" => "status", "shape" => "AttachmentStatus"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}}, "type" => "structure"}, "RouteState" => %{"enum" => ["active", "blackhole"], "type" => "string"}, "VpcPeeringConnectionVpcInfo" => %{"members" => %{"CidrBlock" => %{"locationName" => "cidrBlock", "shape" => "String"}, "CidrBlockSet" => %{"locationName" => "cidrBlockSet", "shape" => "CidrBlockSet"}, "Ipv6CidrBlockSet" => %{"locationName" => "ipv6CidrBlockSet", "shape" => "Ipv6CidrBlockSet"}, "OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "PeeringOptions" => %{"locationName" => "peeringOptions", "shape" => "VpcPeeringConnectionOptionsDescription"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "NetworkAclEntryList" => %{"member" => %{"locationName" => "item", "shape" => "NetworkAclEntry"}, "type" => "list"}, "DescribeImportSnapshotTasksResult" => %{"members" => %{"ImportSnapshotTasks" => %{"locationName" => "importSnapshotTaskSet", "shape" => "ImportSnapshotTaskList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "InstanceStatusSummary" => %{"members" => %{"Details" => %{"locationName" => "details", "shape" => "InstanceStatusDetailsList"}, "Status" => %{"locationName" => "status", "shape" => "SummaryStatus"}}, "type" => "structure"}, "ElasticGpuSpecification" => %{"members" => %{"Type" => %{"shape" => "String"}}, "required" => ["Type"], "type" => "structure"}, "AllocateHostsRequest" => %{"members" => %{"AutoPlacement" => %{"locationName" => "autoPlacement", "shape" => "AutoPlacement"}, "AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "String"}, "Quantity" => %{"locationName" => "quantity", "shape" => "Integer"}}, "required" => ["AvailabilityZone", "InstanceType", "Quantity"], "type" => "structure"}, "DescribeVpcEndpointsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "VpcEndpoints" => %{"locationName" => "vpcEndpointSet", "shape" => "VpcEndpointSet"}}, "type" => "structure"}, "InstanceExportDetails" => %{"members" => %{"InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "TargetEnvironment" => %{"locationName" => "targetEnvironment", "shape" => "ExportEnvironment"}}, "type" => "structure"}, "IpPermissionList" => %{"member" => %{"locationName" => "item", "shape" => "IpPermission"}, "type" => "list"}, "SpotFleetLaunchSpecification" => %{"members" => %{"AddressingType" => %{"locationName" => "addressingType", "shape" => "String"}, "BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "BlockDeviceMappingList"}, "EbsOptimized" => %{"locationName" => "ebsOptimized", "shape" => "Boolean"}, "IamInstanceProfile" => %{"locationName" => "iamInstanceProfile", "shape" => "IamInstanceProfileSpecification"}, "ImageId" => %{"locationName" => "imageId", "shape" => "String"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "KernelId" => %{"locationName" => "kernelId", "shape" => "String"}, "KeyName" => %{"locationName" => "keyName", "shape" => "String"}, "Monitoring" => %{"locationName" => "monitoring", "shape" => "SpotFleetMonitoring"}, "NetworkInterfaces" => %{"locationName" => "networkInterfaceSet", "shape" => "InstanceNetworkInterfaceSpecificationList"}, "Placement" => %{"locationName" => "placement", "shape" => "SpotPlacement"}, "RamdiskId" => %{"locationName" => "ramdiskId", "shape" => "String"}, "SecurityGroups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "SpotPrice" => %{"locationName" => "spotPrice", "shape" => "String"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "TagSpecifications" => %{"locationName" => "tagSpecificationSet", "shape" => "SpotFleetTagSpecificationList"}, "UserData" => %{"locationName" => "userData", "shape" => "String"}, "WeightedCapacity" => %{"locationName" => "weightedCapacity", "shape" => "Double"}}, "type" => "structure"}, "ResponseHostIdList" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "SnapshotDetail" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "DeviceName" => %{"locationName" => "deviceName", "shape" => "String"}, "DiskImageSize" => %{"locationName" => "diskImageSize", "shape" => "Double"}, "Format" => %{"locationName" => "format", "shape" => "String"}, "Progress" => %{"locationName" => "progress", "shape" => "String"}, "SnapshotId" => %{"locationName" => "snapshotId", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "String"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}, "Url" => %{"locationName" => "url", "shape" => "String"}, "UserBucket" => %{"locationName" => "userBucket", "shape" => "UserBucketDetails"}}, "type" => "structure"}, "ModifyReservedInstancesResult" => %{"members" => %{"ReservedInstancesModificationId" => %{"locationName" => "reservedInstancesModificationId", "shape" => "String"}}, "type" => "structure"}, "CreateVpnConnectionRouteRequest" => %{"members" => %{"DestinationCidrBlock" => %{"shape" => "String"}, "VpnConnectionId" => %{"shape" => "String"}}, "required" => ["DestinationCidrBlock", "VpnConnectionId"], "type" => "structure"}, "CreateInstanceExportTaskResult" => %{"members" => %{"ExportTask" => %{"locationName" => "exportTask", "shape" => "ExportTask"}}, "type" => "structure"}, "AccountAttributeNameStringList" => %{"member" => %{"locationName" => "attributeName", "shape" => "AccountAttributeName"}, "type" => "list"}, "Status" => %{"enum" => ["MoveInProgress", "InVpc", "InClassic"], "type" => "string"}, "TagSpecification" => %{"members" => %{"ResourceType" => %{"locationName" => "resourceType", "shape" => "ResourceType"}, "Tags" => %{"locationName" => "Tag", "shape" => "TagList"}}, "type" => "structure"}, "BundleTask" => %{"members" => %{"BundleId" => %{"locationName" => "bundleId", "shape" => "String"}, "BundleTaskError" => %{"locationName" => "error", "shape" => "BundleTaskError"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "Progress" => %{"locationName" => "progress", "shape" => "String"}, "StartTime" => %{"locationName" => "startTime", "shape" => "DateTime"}, "State" => %{"locationName" => "state", "shape" => "BundleTaskState"}, "Storage" => %{"locationName" => "storage", "shape" => "Storage"}, "UpdateTime" => %{"locationName" => "updateTime", "shape" => "DateTime"}}, "type" => "structure"}, "VolumeAttachmentState" => %{"enum" => ["attaching", "attached", "detaching", "detached"], "type" => "string"}, "DescribeDhcpOptionsRequest" => %{"members" => %{"DhcpOptionsIds" => %{"locationName" => "DhcpOptionsId", "shape" => "DhcpOptionsIdStringList"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}}, "type" => "structure"}, "ReplaceNetworkAclAssociationResult" => %{"members" => %{"NewAssociationId" => %{"locationName" => "newAssociationId", "shape" => "String"}}, "type" => "structure"}, "Long" => %{"type" => "long"}, "SpotDatafeedSubscription" => %{"members" => %{"Bucket" => %{"locationName" => "bucket", "shape" => "String"}, "Fault" => %{"locationName" => "fault", "shape" => "SpotInstanceStateFault"}, "OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "Prefix" => %{"locationName" => "prefix", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "DatafeedSubscriptionState"}}, "type" => "structure"}, "NetworkInterfacePermissionList" => %{"member" => %{"locationName" => "item", "shape" => "NetworkInterfacePermission"}, "type" => "list"}, "DescribeSpotFleetRequestsResponse" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "SpotFleetRequestConfigs" => %{"locationName" => "spotFleetRequestConfigSet", "shape" => "SpotFleetRequestConfigSet"}}, "required" => ["SpotFleetRequestConfigs"], "type" => "structure"}, "RouteTableAssociationList" => %{"member" => %{"locationName" => "item", "shape" => "RouteTableAssociation"}, "type" => "list"}, "SecurityGroupIdStringList" => %{"member" => %{"locationName" => "SecurityGroupId", "shape" => "String"}, "type" => "list"}, "VpnConnectionOptions" => %{"members" => %{"StaticRoutesOnly" => %{"locationName" => "staticRoutesOnly", "shape" => "Boolean"}}, "type" => "structure"}, "GetReservedInstancesExchangeQuoteResult" => %{"members" => %{"CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "String"}, "IsValidExchange" => %{"locationName" => "isValidExchange", "shape" => "Boolean"}, "OutputReservedInstancesWillExpireAt" => %{"locationName" => "outputReservedInstancesWillExpireAt", "shape" => "DateTime"}, "PaymentDue" => %{"locationName" => "paymentDue", "shape" => "String"}, "ReservedInstanceValueRollup" => %{"locationName" => "reservedInstanceValueRollup", "shape" => "ReservationValue"}, "ReservedInstanceValueSet" => %{"locationName" => "reservedInstanceValueSet", "shape" => "ReservedInstanceReservationValueSet"}, "TargetConfigurationValueRollup" => %{"locationName" => "targetConfigurationValueRollup", "shape" => "ReservationValue"}, "TargetConfigurationValueSet" => %{"locationName" => "targetConfigurationValueSet", "shape" => "TargetReservationValueSet"}, "ValidationFailureReason" => %{"locationName" => "validationFailureReason", "shape" => "String"}}, "type" => "structure"}, "GetConsoleOutputRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "DescribeClassicLinkInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "DescribeFlowLogsRequest" => %{"members" => %{"Filter" => %{"shape" => "FilterList"}, "FlowLogIds" => %{"locationName" => "FlowLogId", "shape" => "ValueStringList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeSecurityGroupsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "GroupIds" => %{"locationName" => "GroupId", "shape" => "GroupIdStringList"}, "GroupNames" => %{"locationName" => "GroupName", "shape" => "GroupNameStringList"}}, "type" => "structure"}, "BundleInstanceResult" => %{"members" => %{"BundleTask" => %{"locationName" => "bundleInstanceTask", "shape" => "BundleTask"}}, "type" => "structure"}, "NetworkAclList" => %{"member" => %{"locationName" => "item", "shape" => "NetworkAcl"}, "type" => "list"}, "DescribeAvailabilityZonesResult" => %{"members" => %{"AvailabilityZones" => %{"locationName" => "availabilityZoneInfo", "shape" => "AvailabilityZoneList"}}, "type" => "structure"}, "GatewayType" => %{"enum" => ["ipsec.1"], "type" => "string"}, "DeleteInternetGatewayRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InternetGatewayId" => %{"locationName" => "internetGatewayId", "shape" => "String"}}, "required" => ["InternetGatewayId"], "type" => "structure"}, "VpcPeeringConnectionList" => %{"member" => %{"locationName" => "item", "shape" => "VpcPeeringConnection"}, "type" => "list"}, "OperationType" => %{"enum" => ["add", "remove"], "type" => "string"}, "InterfacePermissionType" => %{"enum" => ["INSTANCE-ATTACH", "EIP-ASSOCIATE"], "type" => "string"}, "NewDhcpConfiguration" => %{"members" => %{"Key" => %{"locationName" => "key", "shape" => "String"}, "Values" => %{"locationName" => "Value", "shape" => "ValueStringList"}}, "type" => "structure"}, "PurchaseReservedInstancesOfferingResult" => %{"members" => %{"ReservedInstancesId" => %{"locationName" => "reservedInstancesId", "shape" => "String"}}, "type" => "structure"}, "DescribeKeyPairsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "KeyNames" => %{"locationName" => "KeyName", "shape" => "KeyNameStringList"}}, "type" => "structure"}, "CreateVpnGatewayResult" => %{"members" => %{"VpnGateway" => %{"locationName" => "vpnGateway", "shape" => "VpnGateway"}}, "type" => "structure"}, "RebootInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}}, "required" => ["InstanceIds"], "type" => "structure"}, "Ipv6CidrBlock" => %{"members" => %{"Ipv6CidrBlock" => %{"locationName" => "ipv6CidrBlock", "shape" => "String"}}, "type" => "structure"}, "StaleIpPermissionSet" => %{"member" => %{"locationName" => "item", "shape" => "StaleIpPermission"}, "type" => "list"}, "EnableVpcClassicLinkDnsSupportRequest" => %{"members" => %{"VpcId" => %{"shape" => "String"}}, "type" => "structure"}, "CreateImageRequest" => %{"members" => %{"BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "BlockDeviceMappingRequestList"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "Name" => %{"locationName" => "name", "shape" => "String"}, "NoReboot" => %{"locationName" => "noReboot", "shape" => "Boolean"}}, "required" => ["InstanceId", "Name"], "type" => "structure"}, "SpotFleetRequestConfigSet" => %{"member" => %{"locationName" => "item", "shape" => "SpotFleetRequestConfig"}, "type" => "list"}, "ModifyIdentityIdFormatRequest" => %{"members" => %{"PrincipalArn" => %{"locationName" => "principalArn", "shape" => "String"}, "Resource" => %{"locationName" => "resource", "shape" => "String"}, "UseLongIds" => %{"locationName" => "useLongIds", "shape" => "Boolean"}}, "required" => ["PrincipalArn", "Resource", "UseLongIds"], "type" => "structure"}, "VolumeAttachmentList" => %{"member" => %{"locationName" => "item", "shape" => "VolumeAttachment"}, "type" => "list"}, "PurchaseScheduledInstancesResult" => %{"members" => %{"ScheduledInstanceSet" => %{"locationName" => "scheduledInstanceSet", "shape" => "PurchasedScheduledInstanceSet"}}, "type" => "structure"}, "DeleteNetworkInterfacePermissionRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Force" => %{"shape" => "Boolean"}, "NetworkInterfacePermissionId" => %{"shape" => "String"}}, "required" => ["NetworkInterfacePermissionId"], "type" => "structure"}, "ImportSnapshotTaskList" => %{"member" => %{"locationName" => "item", "shape" => "ImportSnapshotTask"}, "type" => "list"}, "DescribeNetworkInterfacesResult" => %{"members" => %{"NetworkInterfaces" => %{"locationName" => "networkInterfaceSet", "shape" => "NetworkInterfaceList"}}, "type" => "structure"}, "TargetConfigurationRequestSet" => %{"member" => %{"locationName" => "TargetConfigurationRequest", "shape" => "TargetConfigurationRequest"}, "type" => "list"}, "ClassicLinkInstance" => %{"members" => %{"Groups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "VpnStaticRouteSource" => %{"enum" => ["Static"], "type" => "string"}, "GetConsoleScreenshotResult" => %{"members" => %{"ImageData" => %{"locationName" => "imageData", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}}, "type" => "structure"}, "ModifyVolumeAttributeRequest" => %{"members" => %{"AutoEnableIO" => %{"shape" => "AttributeBooleanValue"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "InstanceState" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "Integer"}, "Name" => %{"locationName" => "name", "shape" => "InstanceStateName"}}, "type" => "structure"}, "DescribePrefixListsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "PrefixLists" => %{"locationName" => "prefixListSet", "shape" => "PrefixListSet"}}, "type" => "structure"}, "DescribeSnapshotAttributeRequest" => %{"members" => %{"Attribute" => %{"shape" => "SnapshotAttributeName"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "SnapshotId" => %{"shape" => "String"}}, "required" => ["Attribute", "SnapshotId"], "type" => "structure"}, "PurchaseHostReservationRequest" => %{"members" => %{"ClientToken" => %{"shape" => "String"}, "CurrencyCode" => %{"shape" => "CurrencyCodeValues"}, "HostIdSet" => %{"shape" => "RequestHostIdSet"}, "LimitPrice" => %{"shape" => "String"}, "OfferingId" => %{"shape" => "String"}}, "required" => ["HostIdSet", "OfferingId"], "type" => "structure"}, "InstanceIdSet" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "SecurityGroupList" => %{"member" => %{"locationName" => "item", "shape" => "SecurityGroup"}, "type" => "list"}, "ResetNetworkInterfaceAttributeRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "SourceDestCheck" => %{"locationName" => "sourceDestCheck", "shape" => "String"}}, "required" => ["NetworkInterfaceId"], "type" => "structure"}, "Purchase" => %{"members" => %{"CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Duration" => %{"locationName" => "duration", "shape" => "Integer"}, "HostIdSet" => %{"locationName" => "hostIdSet", "shape" => "ResponseHostIdSet"}, "HostReservationId" => %{"locationName" => "hostReservationId", "shape" => "String"}, "HourlyPrice" => %{"locationName" => "hourlyPrice", "shape" => "String"}, "InstanceFamily" => %{"locationName" => "instanceFamily", "shape" => "String"}, "PaymentOption" => %{"locationName" => "paymentOption", "shape" => "PaymentOption"}, "UpfrontPrice" => %{"locationName" => "upfrontPrice", "shape" => "String"}}, "type" => "structure"}, "UnmonitorInstancesResult" => %{"members" => %{"InstanceMonitorings" => %{"locationName" => "instancesSet", "shape" => "InstanceMonitoringList"}}, "type" => "structure"}, "DisassociateVpcCidrBlockResult" => %{"members" => %{"CidrBlockAssociation" => %{"locationName" => "cidrBlockAssociation", "shape" => "VpcCidrBlockAssociation"}, "Ipv6CidrBlockAssociation" => %{"locationName" => "ipv6CidrBlockAssociation", "shape" => "VpcIpv6CidrBlockAssociation"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "NetworkInterfaceStatus" => %{"enum" => ["available", "attaching", "in-use", "detaching"], "type" => "string"}, "DescribeFlowLogsResult" => %{"members" => %{"FlowLogs" => %{"locationName" => "flowLogSet", "shape" => "FlowLogSet"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "DeleteNatGatewayResult" => %{"members" => %{"NatGatewayId" => %{"locationName" => "natGatewayId", "shape" => "String"}}, "type" => "structure"}, "ModifyInstanceAttributeRequest" => %{"members" => %{"Attribute" => %{"locationName" => "attribute", "shape" => "InstanceAttributeName"}, "BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "InstanceBlockDeviceMappingSpecificationList"}, "DisableApiTermination" => %{"locationName" => "disableApiTermination", "shape" => "AttributeBooleanValue"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "EbsOptimized" => %{"locationName" => "ebsOptimized", "shape" => "AttributeBooleanValue"}, "EnaSupport" => %{"locationName" => "enaSupport", "shape" => "AttributeBooleanValue"}, "Groups" => %{"locationName" => "GroupId", "shape" => "GroupIdStringList"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "InstanceInitiatedShutdownBehavior" => %{"locationName" => "instanceInitiatedShutdownBehavior", "shape" => "AttributeValue"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "AttributeValue"}, "Kernel" => %{"locationName" => "kernel", "shape" => "AttributeValue"}, "Ramdisk" => %{"locationName" => "ramdisk", "shape" => "AttributeValue"}, "SourceDestCheck" => %{"shape" => "AttributeBooleanValue"}, "SriovNetSupport" => %{"locationName" => "sriovNetSupport", "shape" => "AttributeValue"}, "UserData" => %{"locationName" => "userData", "shape" => "BlobAttributeValue"}, "Value" => %{"locationName" => "value", "shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "InternetGatewayAttachment" => %{"members" => %{"State" => %{"locationName" => "state", "shape" => "AttachmentStatus"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "CidrBlockSet" => %{"member" => %{"locationName" => "item", "shape" => "CidrBlock"}, "type" => "list"}, "SpotFleetTagSpecificationList" => %{"member" => %{"locationName" => "item", "shape" => "SpotFleetTagSpecification"}, "type" => "list"}, "FpgaImageList" => %{"member" => %{"locationName" => "item", "shape" => "FpgaImage"}, "type" => "list"}, "DhcpConfigurationList" => %{"member" => %{"locationName" => "item", "shape" => "DhcpConfiguration"}, "type" => "list"}, "DeleteSnapshotRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "SnapshotId" => %{"shape" => "String"}}, "required" => ["SnapshotId"], "type" => "structure"}, "VpcCidrBlockAssociationSet" => %{"member" => %{"locationName" => "item", "shape" => "VpcCidrBlockAssociation"}, "type" => "list"}, "SpotFleetRequestConfigData" => %{"members" => %{"AllocationStrategy" => %{"locationName" => "allocationStrategy", "shape" => "AllocationStrategy"}, "ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "ExcessCapacityTerminationPolicy" => %{"locationName" => "excessCapacityTerminationPolicy", "shape" => "ExcessCapacityTerminationPolicy"}, "FulfilledCapacity" => %{"locationName" => "fulfilledCapacity", "shape" => "Double"}, "IamFleetRole" => %{"locationName" => "iamFleetRole", "shape" => "String"}, "LaunchSpecifications" => %{"locationName" => "launchSpecifications", "shape" => "LaunchSpecsList"}, "ReplaceUnhealthyInstances" => %{"locationName" => "replaceUnhealthyInstances", "shape" => "Boolean"}, "SpotPrice" => %{"locationName" => "spotPrice", "shape" => "String"}, "TargetCapacity" => %{"locationName" => "targetCapacity", "shape" => "Integer"}, "TerminateInstancesWithExpiration" => %{"locationName" => "terminateInstancesWithExpiration", "shape" => "Boolean"}, "Type" => %{"locationName" => "type", "shape" => "FleetType"}, "ValidFrom" => %{"locationName" => "validFrom", "shape" => "DateTime"}, "ValidUntil" => %{"locationName" => "validUntil", "shape" => "DateTime"}}, "required" => ["IamFleetRole", "LaunchSpecifications", "SpotPrice", "TargetCapacity"], "type" => "structure"}, "InstancePrivateIpAddressList" => %{"member" => %{"locationName" => "item", "shape" => "InstancePrivateIpAddress"}, "type" => "list"}, "CancelConversionRequest" => %{"members" => %{"ConversionTaskId" => %{"locationName" => "conversionTaskId", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "ReasonMessage" => %{"locationName" => "reasonMessage", "shape" => "String"}}, "required" => ["ConversionTaskId"], "type" => "structure"}, "PrivateIpAddressConfigSet" => %{"member" => %{"locationName" => "PrivateIpAddressConfigSet", "shape" => "ScheduledInstancesPrivateIpAddressConfig"}, "type" => "list"}, "ImageAttributeName" => %{"enum" => ["description", "kernel", "ramdisk", "launchPermission", "productCodes", "blockDeviceMapping", "sriovNetSupport"], "type" => "string"}, "VpcPeeringConnectionOptionsDescription" => %{"members" => %{"AllowDnsResolutionFromRemoteVpc" => %{"locationName" => "allowDnsResolutionFromRemoteVpc", "shape" => "Boolean"}, "AllowEgressFromLocalClassicLinkToRemoteVpc" => %{"locationName" => "allowEgressFromLocalClassicLinkToRemoteVpc", "shape" => "Boolean"}, "AllowEgressFromLocalVpcToRemoteClassicLink" => %{"locationName" => "allowEgressFromLocalVpcToRemoteClassicLink", "shape" => "Boolean"}}, "type" => "structure"}, "PropagatingVgw" => %{"members" => %{"GatewayId" => %{"locationName" => "gatewayId", "shape" => "String"}}, "type" => "structure"}, "RunScheduledInstancesResult" => %{"members" => %{"InstanceIdSet" => %{"locationName" => "instanceIdSet", "shape" => "InstanceIdSet"}}, "type" => "structure"}, "VolumeState" => %{"enum" => ["creating", "available", "in-use", "deleting", "deleted", "error"], "type" => "string"}, "PrefixListIdList" => %{"member" => %{"locationName" => "item", "shape" => "PrefixListId"}, "type" => "list"}, "DetachNetworkInterfaceRequest" => %{"members" => %{"AttachmentId" => %{"locationName" => "attachmentId", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Force" => %{"locationName" => "force", "shape" => "Boolean"}}, "required" => ["AttachmentId"], "type" => "structure"}, "RestoreAddressToClassicResult" => %{"members" => %{"PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "Status"}}, "type" => "structure"}, "DescribeNetworkInterfaceAttributeResult" => %{"members" => %{"Attachment" => %{"locationName" => "attachment", "shape" => "NetworkInterfaceAttachment"}, "Description" => %{"locationName" => "description", "shape" => "AttributeValue"}, "Groups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "SourceDestCheck" => %{"locationName" => "sourceDestCheck", "shape" => "AttributeBooleanValue"}}, "type" => "structure"}, "EgressOnlyInternetGatewayId" => %{"type" => "string"}, "DescribeBundleTasksResult" => %{"members" => %{"BundleTasks" => %{"locationName" => "bundleInstanceTasksSet", "shape" => "BundleTaskList"}}, "type" => "structure"}, "ConversionTask" => %{"members" => %{"ConversionTaskId" => %{"locationName" => "conversionTaskId", "shape" => "String"}, "ExpirationTime" => %{"locationName" => "expirationTime", "shape" => "String"}, "ImportInstance" => %{"locationName" => "importInstance", "shape" => "ImportInstanceTaskDetails"}, "ImportVolume" => %{"locationName" => "importVolume", "shape" => "ImportVolumeTaskDetails"}, "State" => %{"locationName" => "state", "shape" => "ConversionTaskState"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}}, "required" => ["ConversionTaskId", "State"], "type" => "structure"}, "RegisterImageResult" => %{"members" => %{"ImageId" => %{"locationName" => "imageId", "shape" => "String"}}, "type" => "structure"}, "DetachVpnGatewayRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}, "VpnGatewayId" => %{"shape" => "String"}}, "required" => ["VpcId", "VpnGatewayId"], "type" => "structure"}, "SpotInstanceType" => %{"enum" => ["one-time", "persistent"], "type" => "string"}, "AddressList" => %{"member" => %{"locationName" => "item", "shape" => "Address"}, "type" => "list"}, "ContainerFormat" => %{"enum" => ["ova"], "type" => "string"}, "ProductDescriptionList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "DeleteRouteRequest" => %{"members" => %{"DestinationCidrBlock" => %{"locationName" => "destinationCidrBlock", "shape" => "String"}, "DestinationIpv6CidrBlock" => %{"locationName" => "destinationIpv6CidrBlock", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "RouteTableId" => %{"locationName" => "routeTableId", "shape" => "String"}}, "required" => ["RouteTableId"], "type" => "structure"}, "BlockDeviceMappingRequestList" => %{"member" => %{"locationName" => "BlockDeviceMapping", "shape" => "BlockDeviceMapping"}, "type" => "list"}, "VpnStaticRoute" => %{"members" => %{"DestinationCidrBlock" => %{"locationName" => "destinationCidrBlock", "shape" => "String"}, "Source" => %{"locationName" => "source", "shape" => "VpnStaticRouteSource"}, "State" => %{"locationName" => "state", "shape" => "VpnState"}}, "type" => "structure"}, "PlacementGroupStringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "PriceSchedule" => %{"members" => %{"Active" => %{"locationName" => "active", "shape" => "Boolean"}, "CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Price" => %{"locationName" => "price", "shape" => "Double"}, "Term" => %{"locationName" => "term", "shape" => "Long"}}, "type" => "structure"}, "ReservedInstancesListingList" => %{"member" => %{"locationName" => "item", "shape" => "ReservedInstancesListing"}, "type" => "list"}, "RunInstancesMonitoringEnabled" => %{"members" => %{"Enabled" => %{"locationName" => "enabled", "shape" => "Boolean"}}, "required" => ["Enabled"], "type" => "structure"}, "ScheduledInstancesIamInstanceProfile" => %{"members" => %{"Arn" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}}, "type" => "structure"}, "StaleSecurityGroupSet" => %{"member" => %{"locationName" => "item", "shape" => "StaleSecurityGroup"}, "type" => "list"}, "CreateNatGatewayResult" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "NatGateway" => %{"locationName" => "natGateway", "shape" => "NatGateway"}}, "type" => "structure"}, "VolumeIdStringList" => %{"member" => %{"locationName" => "VolumeId", "shape" => "String"}, "type" => "list"}, "ModifySubnetAttributeRequest" => %{"members" => %{"AssignIpv6AddressOnCreation" => %{"shape" => "AttributeBooleanValue"}, "MapPublicIpOnLaunch" => %{"shape" => "AttributeBooleanValue"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "required" => ["SubnetId"], "type" => "structure"}, "PriceScheduleSpecificationList" => %{"member" => %{"locationName" => "item", "shape" => "PriceScheduleSpecification"}, "type" => "list"}, "AssociateAddressResult" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}}, "type" => "structure"}, "CreateSecurityGroupResult" => %{"members" => %{"GroupId" => %{"locationName" => "groupId", "shape" => "String"}}, "type" => "structure"}, "DescribeVpnGatewaysRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "VpnGatewayIds" => %{"locationName" => "VpnGatewayId", "shape" => "VpnGatewayIdStringList"}}, "type" => "structure"}, "AssociateVpcCidrBlockResult" => %{"members" => %{"CidrBlockAssociation" => %{"locationName" => "cidrBlockAssociation", "shape" => "VpcCidrBlockAssociation"}, "Ipv6CidrBlockAssociation" => %{"locationName" => "ipv6CidrBlockAssociation", "shape" => "VpcIpv6CidrBlockAssociation"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "DescribeVpcPeeringConnectionsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "VpcPeeringConnectionIds" => %{"locationName" => "VpcPeeringConnectionId", "shape" => "ValueStringList"}}, "type" => "structure"}, "IamInstanceProfileSpecification" => %{"members" => %{"Arn" => %{"locationName" => "arn", "shape" => "String"}, "Name" => %{"locationName" => "name", "shape" => "String"}}, "type" => "structure"}, "EbsBlockDevice" => %{"members" => %{"DeleteOnTermination" => %{"locationName" => "deleteOnTermination", "shape" => "Boolean"}, "Encrypted" => %{"locationName" => "encrypted", "shape" => "Boolean"}, "Iops" => %{"locationName" => "iops", "shape" => "Integer"}, "SnapshotId" => %{"locationName" => "snapshotId", "shape" => "String"}, "VolumeSize" => %{"locationName" => "volumeSize", "shape" => "Integer"}, "VolumeType" => %{"locationName" => "volumeType", "shape" => "VolumeType"}}, "type" => "structure"}, "IcmpTypeCode" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "Integer"}, "Type" => %{"locationName" => "type", "shape" => "Integer"}}, "type" => "structure"}, "MovingAddressStatus" => %{"members" => %{"MoveStatus" => %{"locationName" => "moveStatus", "shape" => "MoveStatus"}, "PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}}, "type" => "structure"}, "DeleteVpcEndpointsRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "VpcEndpointIds" => %{"locationName" => "VpcEndpointId", "shape" => "ValueStringList"}}, "required" => ["VpcEndpointIds"], "type" => "structure"}, "FpgaImageStateCode" => %{"enum" => ["pending", "failed", "available", "unavailable"], "type" => "string"}, "SpotFleetRequestConfig" => %{"members" => %{"ActivityStatus" => %{"locationName" => "activityStatus", "shape" => "ActivityStatus"}, "CreateTime" => %{"locationName" => "createTime", "shape" => "DateTime"}, "SpotFleetRequestConfig" => %{"locationName" => "spotFleetRequestConfig", "shape" => "SpotFleetRequestConfigData"}, "SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}, "SpotFleetRequestState" => %{"locationName" => "spotFleetRequestState", "shape" => "BatchState"}}, "required" => ["CreateTime", "SpotFleetRequestConfig", "SpotFleetRequestId", "SpotFleetRequestState"], "type" => "structure"}, "ModifyHostsResult" => %{"members" => %{"Successful" => %{"locationName" => "successful", "shape" => "ResponseHostIdList"}, "Unsuccessful" => %{"locationName" => "unsuccessful", "shape" => "UnsuccessfulItemList"}}, "type" => "structure"}, "CreateReservedInstancesListingRequest" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "InstanceCount" => %{"locationName" => "instanceCount", "shape" => "Integer"}, "PriceSchedules" => %{"locationName" => "priceSchedules", "shape" => "PriceScheduleSpecificationList"}, "ReservedInstancesId" => %{"locationName" => "reservedInstancesId", "shape" => "String"}}, "required" => ["ClientToken", "InstanceCount", "PriceSchedules", "ReservedInstancesId"], "type" => "structure"}, "PricingDetailsList" => %{"member" => %{"locationName" => "item", "shape" => "PricingDetail"}, "type" => "list"}, "TargetConfiguration" => %{"members" => %{"InstanceCount" => %{"locationName" => "instanceCount", "shape" => "Integer"}, "OfferingId" => %{"locationName" => "offeringId", "shape" => "String"}}, "type" => "structure"}, "VolumeStatusActionsList" => %{"member" => %{"locationName" => "item", "shape" => "VolumeStatusAction"}, "type" => "list"}, "S3Storage" => %{"members" => %{"AWSAccessKeyId" => %{"shape" => "String"}, "Bucket" => %{"locationName" => "bucket", "shape" => "String"}, "Prefix" => %{"locationName" => "prefix", "shape" => "String"}, "UploadPolicy" => %{"locationName" => "uploadPolicy", "shape" => "Blob"}, "UploadPolicySignature" => %{"locationName" => "uploadPolicySignature", "shape" => "String"}}, "type" => "structure"}, "AccountAttributeList" => %{"member" => %{"locationName" => "item", "shape" => "AccountAttribute"}, "type" => "list"}, "VolumeStatusDetailsList" => %{"member" => %{"locationName" => "item", "shape" => "VolumeStatusDetails"}, "type" => "list"}, "DescribeNetworkAclsResult" => %{"members" => %{"NetworkAcls" => %{"locationName" => "networkAclSet", "shape" => "NetworkAclList"}}, "type" => "structure"}, "HostInstanceList" => %{"member" => %{"locationName" => "item", "shape" => "HostInstance"}, "type" => "list"}, "SlotStartTimeRangeRequest" => %{"members" => %{"EarliestTime" => %{"shape" => "DateTime"}, "LatestTime" => %{"shape" => "DateTime"}}, "type" => "structure"}, "DescribeVpcClassicLinkDnsSupportRequest" => %{"members" => %{"MaxResults" => %{"locationName" => "maxResults", "shape" => "MaxResults"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "NextToken"}, "VpcIds" => %{"shape" => "VpcClassicLinkIdList"}}, "type" => "structure"}, "PriceScheduleSpecification" => %{"members" => %{"CurrencyCode" => %{"locationName" => "currencyCode", "shape" => "CurrencyCodeValues"}, "Price" => %{"locationName" => "price", "shape" => "Double"}, "Term" => %{"locationName" => "term", "shape" => "Long"}}, "type" => "structure"}, "ScheduledInstancesIpv6AddressList" => %{"member" => %{"locationName" => "Ipv6Address", "shape" => "ScheduledInstancesIpv6Address"}, "type" => "list"}, "InstanceLifecycleType" => %{"enum" => ["spot", "scheduled"], "type" => "string"}, "DeleteTagsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Resources" => %{"locationName" => "resourceId", "shape" => "ResourceIdList"}, "Tags" => %{"locationName" => "tag", "shape" => "TagList"}}, "required" => ["Resources"], "type" => "structure"}, "DescribeImageAttributeRequest" => %{"members" => %{"Attribute" => %{"shape" => "ImageAttributeName"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "ImageId" => %{"shape" => "String"}}, "required" => ["Attribute", "ImageId"], "type" => "structure"}, "VpcIdStringList" => %{"member" => %{"locationName" => "VpcId", "shape" => "String"}, "type" => "list"}, "UnsuccessfulItemList" => %{"member" => %{"locationName" => "item", "shape" => "UnsuccessfulItem"}, "type" => "list"}, "GetReservedInstancesExchangeQuoteRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "ReservedInstanceIds" => %{"locationName" => "ReservedInstanceId", "shape" => "ReservedInstanceIdSet"}, "TargetConfigurations" => %{"locationName" => "TargetConfiguration", "shape" => "TargetConfigurationRequestSet"}}, "required" => ["ReservedInstanceIds"], "type" => "structure"}, "CreateTagsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Resources" => %{"locationName" => "ResourceId", "shape" => "ResourceIdList"}, "Tags" => %{"locationName" => "Tag", "shape" => "TagList"}}, "required" => ["Resources", "Tags"], "type" => "structure"}, "IdFormatList" => %{"member" => %{"locationName" => "item", "shape" => "IdFormat"}, "type" => "list"}, "DescribeHostReservationOfferingsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "OfferingSet" => %{"locationName" => "offeringSet", "shape" => "HostOfferingSet"}}, "type" => "structure"}, "DescribeSubnetsResult" => %{"members" => %{"Subnets" => %{"locationName" => "subnetSet", "shape" => "SubnetList"}}, "type" => "structure"}, "VolumeStatusInfo" => %{"members" => %{"Details" => %{"locationName" => "details", "shape" => "VolumeStatusDetailsList"}, "Status" => %{"locationName" => "status", "shape" => "VolumeStatusInfoStatus"}}, "type" => "structure"}, "ListingState" => %{"enum" => ["available", "sold", "cancelled", "pending"], "type" => "string"}, "UnassignPrivateIpAddressesRequest" => %{"members" => %{"NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "PrivateIpAddresses" => %{"locationName" => "privateIpAddress", "shape" => "PrivateIpAddressStringList"}}, "required" => ["NetworkInterfaceId", "PrivateIpAddresses"], "type" => "structure"}, "DisableVgwRoutePropagationRequest" => %{"members" => %{"GatewayId" => %{"shape" => "String"}, "RouteTableId" => %{"shape" => "String"}}, "required" => ["GatewayId", "RouteTableId"], "type" => "structure"}, "DetachInternetGatewayRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InternetGatewayId" => %{"locationName" => "internetGatewayId", "shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["InternetGatewayId", "VpcId"], "type" => "structure"}, "ActiveInstance" => %{"members" => %{"InstanceHealth" => %{"locationName" => "instanceHealth", "shape" => "InstanceHealthStatus"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "String"}, "SpotInstanceRequestId" => %{"locationName" => "spotInstanceRequestId", "shape" => "String"}}, "type" => "structure"}, "ModifyInstancePlacementRequest" => %{"members" => %{"Affinity" => %{"locationName" => "affinity", "shape" => "Affinity"}, "HostId" => %{"locationName" => "hostId", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "Tenancy" => %{"locationName" => "tenancy", "shape" => "HostTenancy"}}, "required" => ["InstanceId"], "type" => "structure"}, "PrefixListIdSet" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "AssociationIdList" => %{"member" => %{"locationName" => "AssociationId", "shape" => "String"}, "type" => "list"}, "PlacementGroupState" => %{"enum" => ["pending", "available", "deleting", "deleted"], "type" => "string"}, "TargetConfigurationRequest" => %{"members" => %{"InstanceCount" => %{"shape" => "Integer"}, "OfferingId" => %{"shape" => "String"}}, "required" => ["OfferingId"], "type" => "structure"}, "DescribeScheduledInstanceAvailabilityRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "FirstSlotStartTimeRange" => %{"shape" => "SlotDateTimeRangeRequest"}, "MaxResults" => %{"shape" => "Integer"}, "MaxSlotDurationInHours" => %{"shape" => "Integer"}, "MinSlotDurationInHours" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "Recurrence" => %{"shape" => "ScheduledInstanceRecurrenceRequest"}}, "required" => ["FirstSlotStartTimeRange", "Recurrence"], "type" => "structure"}, "CurrencyCodeValues" => %{"enum" => ["USD"], "type" => "string"}, "InstanceAttributeName" => %{"enum" => ["instanceType", "kernel", "ramdisk", "userData", "disableApiTermination", "instanceInitiatedShutdownBehavior", "rootDeviceName", "blockDeviceMapping", "productCodes", "sourceDestCheck", "groupSet", "ebsOptimized", "sriovNetSupport", "enaSupport"], "type" => "string"}, "DescribeSpotFleetRequestsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "SpotFleetRequestIds" => %{"locationName" => "spotFleetRequestId", "shape" => "ValueStringList"}}, "type" => "structure"}, "FilterList" => %{"member" => %{"locationName" => "Filter", "shape" => "Filter"}, "type" => "list"}, "UnsuccessfulItem" => %{"members" => %{"Error" => %{"locationName" => "error", "shape" => "UnsuccessfulItemError"}, "ResourceId" => %{"locationName" => "resourceId", "shape" => "String"}}, "required" => ["Error"], "type" => "structure"}, "DescribeTagsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagDescriptionList"}}, "type" => "structure"}, "CreateSecurityGroupRequest" => %{"members" => %{"Description" => %{"locationName" => "GroupDescription", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "GroupName" => %{"shape" => "String"}, "VpcId" => %{"shape" => "String"}}, "required" => ["Description", "GroupName"], "type" => "structure"}, "SummaryStatus" => %{"enum" => ["ok", "impaired", "insufficient-data", "not-applicable", "initializing"], "type" => "string"}, "DeleteVolumeRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "DescribeSpotInstanceRequestsResult" => %{"members" => %{"SpotInstanceRequests" => %{"locationName" => "spotInstanceRequestSet", "shape" => "SpotInstanceRequestList"}}, "type" => "structure"}, "HostTenancy" => %{"enum" => ["dedicated", "host"], "type" => "string"}, "InstanceCountList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceCount"}, "type" => "list"}, "Ipv6AddressList" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "InstanceMonitoringList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceMonitoring"}, "type" => "list"}, "DescribeScheduledInstancesRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "ScheduledInstanceIds" => %{"locationName" => "ScheduledInstanceId", "shape" => "ScheduledInstanceIdRequestSet"}, "SlotStartTimeRange" => %{"shape" => "SlotStartTimeRangeRequest"}}, "type" => "structure"}, "SpotInstanceState" => %{"enum" => ["open", "active", "closed", "cancelled", "failed"], "type" => "string"}, "ResetInstanceAttributeRequest" => %{"members" => %{"Attribute" => %{"locationName" => "attribute", "shape" => "InstanceAttributeName"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}}, "required" => ["Attribute", "InstanceId"], "type" => "structure"}, "StopInstancesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Force" => %{"locationName" => "force", "shape" => "Boolean"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}}, "required" => ["InstanceIds"], "type" => "structure"}, "DhcpOptionsIdStringList" => %{"member" => %{"locationName" => "DhcpOptionsId", "shape" => "String"}, "type" => "list"}, "AttributeBooleanValue" => %{"members" => %{"Value" => %{"locationName" => "value", "shape" => "Boolean"}}, "type" => "structure"}, "DeleteEgressOnlyInternetGatewayRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "EgressOnlyInternetGatewayId" => %{"shape" => "EgressOnlyInternetGatewayId"}}, "required" => ["EgressOnlyInternetGatewayId"], "type" => "structure"}, "DescribeExportTasksResult" => %{"members" => %{"ExportTasks" => %{"locationName" => "exportTaskSet", "shape" => "ExportTaskList"}}, "type" => "structure"}, "ModifySpotFleetRequestResponse" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "CreateNetworkInterfacePermissionRequest" => %{"members" => %{"AwsAccountId" => %{"shape" => "String"}, "AwsService" => %{"shape" => "String"}, "DryRun" => %{"shape" => "Boolean"}, "NetworkInterfaceId" => %{"shape" => "String"}, "Permission" => %{"shape" => "InterfacePermissionType"}}, "required" => ["NetworkInterfaceId", "Permission"], "type" => "structure"}, "ReservationList" => %{"member" => %{"locationName" => "item", "shape" => "Reservation"}, "type" => "list"}, "VpcIpv6CidrBlockAssociationSet" => %{"member" => %{"locationName" => "item", "shape" => "VpcIpv6CidrBlockAssociation"}, "type" => "list"}, "DisassociateSubnetCidrBlockRequest" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}}, "required" => ["AssociationId"], "type" => "structure"}, "ReservedInstancesList" => %{"member" => %{"locationName" => "item", "shape" => "ReservedInstances"}, "type" => "list"}, "EventType" => %{"enum" => ["instanceChange", "fleetRequestChange", "error"], "type" => "string"}, "PropagatingVgwList" => %{"member" => %{"locationName" => "item", "shape" => "PropagatingVgw"}, "type" => "list"}, "InstanceNetworkInterface" => %{"members" => %{"Association" => %{"locationName" => "association", "shape" => "InstanceNetworkInterfaceAssociation"}, "Attachment" => %{"locationName" => "attachment", "shape" => "InstanceNetworkInterfaceAttachment"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "Groups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "Ipv6Addresses" => %{"locationName" => "ipv6AddressesSet", "shape" => "InstanceIpv6AddressList"}, "MacAddress" => %{"locationName" => "macAddress", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "PrivateDnsName" => %{"locationName" => "privateDnsName", "shape" => "String"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "PrivateIpAddresses" => %{"locationName" => "privateIpAddressesSet", "shape" => "InstancePrivateIpAddressList"}, "SourceDestCheck" => %{"locationName" => "sourceDestCheck", "shape" => "Boolean"}, "Status" => %{"locationName" => "status", "shape" => "NetworkInterfaceStatus"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "CopySnapshotResult" => %{"members" => %{"SnapshotId" => %{"locationName" => "snapshotId", "shape" => "String"}}, "type" => "structure"}, "NetworkInterfaceAttachmentChanges" => %{"members" => %{"AttachmentId" => %{"locationName" => "attachmentId", "shape" => "String"}, "DeleteOnTermination" => %{"locationName" => "deleteOnTermination", "shape" => "Boolean"}}, "type" => "structure"}, "SpotPriceHistoryList" => %{"member" => %{"locationName" => "item", "shape" => "SpotPrice"}, "type" => "list"}, "PlacementStrategy" => %{"enum" => ["cluster"], "type" => "string"}, "CancelSpotFleetRequestsError" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "CancelBatchErrorCode"}, "Message" => %{"locationName" => "message", "shape" => "String"}}, "required" => ["Code", "Message"], "type" => "structure"}, "PrefixList" => %{"members" => %{"Cidrs" => %{"locationName" => "cidrSet", "shape" => "ValueStringList"}, "PrefixListId" => %{"locationName" => "prefixListId", "shape" => "String"}, "PrefixListName" => %{"locationName" => "prefixListName", "shape" => "String"}}, "type" => "structure"}, "HistoryRecords" => %{"member" => %{"locationName" => "item", "shape" => "HistoryRecord"}, "type" => "list"}, "UnsuccessfulItemSet" => %{"member" => %{"locationName" => "item", "shape" => "UnsuccessfulItem"}, "type" => "list"}, "EnableVpcClassicLinkResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "KeyNameStringList" => %{"member" => %{"locationName" => "KeyName", "shape" => "String"}, "type" => "list"}, "DescribeFpgaImagesResult" => %{"members" => %{"FpgaImages" => %{"locationName" => "fpgaImageSet", "shape" => "FpgaImageList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "NextToken"}}, "type" => "structure"}, "SubnetState" => %{"enum" => ["pending", "available"], "type" => "string"}, "InstanceNetworkInterfaceAttachment" => %{"members" => %{"AttachTime" => %{"locationName" => "attachTime", "shape" => "DateTime"}, "AttachmentId" => %{"locationName" => "attachmentId", "shape" => "String"}, "DeleteOnTermination" => %{"locationName" => "deleteOnTermination", "shape" => "Boolean"}, "DeviceIndex" => %{"locationName" => "deviceIndex", "shape" => "Integer"}, "Status" => %{"locationName" => "status", "shape" => "AttachmentStatus"}}, "type" => "structure"}, "SubnetIdStringList" => %{"member" => %{"locationName" => "SubnetId", "shape" => "String"}, "type" => "list"}, "DeleteVpnConnectionRouteRequest" => %{"members" => %{"DestinationCidrBlock" => %{"shape" => "String"}, "VpnConnectionId" => %{"shape" => "String"}}, "required" => ["DestinationCidrBlock", "VpnConnectionId"], "type" => "structure"}, "NetworkInterfacePermissionStateCode" => %{"enum" => ["pending", "granted", "revoking", "revoked"], "type" => "string"}, "CreateReservedInstancesListingResult" => %{"members" => %{"ReservedInstancesListings" => %{"locationName" => "reservedInstancesListingsSet", "shape" => "ReservedInstancesListingList"}}, "type" => "structure"}, "DescribeImportSnapshotTasksRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Filters" => %{"shape" => "FilterList"}, "ImportTaskIds" => %{"locationName" => "ImportTaskId", "shape" => "ImportTaskIdList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "StatusName" => %{"enum" => ["reachability"], "type" => "string"}, "DescribeSpotFleetRequestHistoryResponse" => %{"members" => %{"HistoryRecords" => %{"locationName" => "historyRecordSet", "shape" => "HistoryRecords"}, "LastEvaluatedTime" => %{"locationName" => "lastEvaluatedTime", "shape" => "DateTime"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}, "StartTime" => %{"locationName" => "startTime", "shape" => "DateTime"}}, "required" => ["HistoryRecords", "LastEvaluatedTime", "SpotFleetRequestId", "StartTime"], "type" => "structure"}, "GroupIdentifierList" => %{"member" => %{"locationName" => "item", "shape" => "GroupIdentifier"}, "type" => "list"}, "HypervisorType" => %{"enum" => ["ovm", "xen"], "type" => "string"}, "DescribeNatGatewaysResult" => %{"members" => %{"NatGateways" => %{"locationName" => "natGatewaySet", "shape" => "NatGatewayList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "Reservation" => %{"members" => %{"Groups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "Instances" => %{"locationName" => "instancesSet", "shape" => "InstanceList"}, "OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "RequesterId" => %{"locationName" => "requesterId", "shape" => "String"}, "ReservationId" => %{"locationName" => "reservationId", "shape" => "String"}}, "type" => "structure"}, "VolumeType" => %{"enum" => ["standard", "io1", "gp2", "sc1", "st1"], "type" => "string"}, "AcceptVpcPeeringConnectionRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcPeeringConnectionId" => %{"locationName" => "vpcPeeringConnectionId", "shape" => "String"}}, "type" => "structure"}, "AttributeValue" => %{"members" => %{"Value" => %{"locationName" => "value", "shape" => "String"}}, "type" => "structure"}, "ScheduledInstancesEbs" => %{"members" => %{"DeleteOnTermination" => %{"shape" => "Boolean"}, "Encrypted" => %{"shape" => "Boolean"}, "Iops" => %{"shape" => "Integer"}, "SnapshotId" => %{"shape" => "String"}, "VolumeSize" => %{"shape" => "Integer"}, "VolumeType" => %{"shape" => "String"}}, "type" => "structure"}, "ImportInstanceLaunchSpecification" => %{"members" => %{"AdditionalInfo" => %{"locationName" => "additionalInfo", "shape" => "String"}, "Architecture" => %{"locationName" => "architecture", "shape" => "ArchitectureValues"}, "GroupIds" => %{"locationName" => "GroupId", "shape" => "SecurityGroupIdStringList"}, "GroupNames" => %{"locationName" => "GroupName", "shape" => "SecurityGroupStringList"}, "InstanceInitiatedShutdownBehavior" => %{"locationName" => "instanceInitiatedShutdownBehavior", "shape" => "ShutdownBehavior"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "Monitoring" => %{"locationName" => "monitoring", "shape" => "Boolean"}, "Placement" => %{"locationName" => "placement", "shape" => "Placement"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "UserData" => %{"locationName" => "userData", "shape" => "UserData"}}, "type" => "structure"}, "ReleaseHostsRequest" => %{"members" => %{"HostIds" => %{"locationName" => "hostId", "shape" => "RequestHostIdList"}}, "required" => ["HostIds"], "type" => "structure"}, "AssignPrivateIpAddressesRequest" => %{"members" => %{"AllowReassignment" => %{"locationName" => "allowReassignment", "shape" => "Boolean"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "PrivateIpAddresses" => %{"locationName" => "privateIpAddress", "shape" => "PrivateIpAddressStringList"}, "SecondaryPrivateIpAddressCount" => %{"locationName" => "secondaryPrivateIpAddressCount", "shape" => "Integer"}}, "required" => ["NetworkInterfaceId"], "type" => "structure"}, "PricingDetail" => %{"members" => %{"Count" => %{"locationName" => "count", "shape" => "Integer"}, "Price" => %{"locationName" => "price", "shape" => "Double"}}, "type" => "structure"}, "GroupIdentifier" => %{"members" => %{"GroupId" => %{"locationName" => "groupId", "shape" => "String"}, "GroupName" => %{"locationName" => "groupName", "shape" => "String"}}, "type" => "structure"}, "InstanceBlockDeviceMappingList" => %{"member" => %{"locationName" => "item", "shape" => "InstanceBlockDeviceMapping"}, "type" => "list"}, "ClassicLinkDnsSupportList" => %{"member" => %{"locationName" => "item", "shape" => "ClassicLinkDnsSupport"}, "type" => "list"}, "DescribeNetworkInterfacesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "filter", "shape" => "FilterList"}, "NetworkInterfaceIds" => %{"locationName" => "NetworkInterfaceId", "shape" => "NetworkInterfaceIdList"}}, "type" => "structure"}, "ReplaceNetworkAclEntryRequest" => %{"members" => %{"CidrBlock" => %{"locationName" => "cidrBlock", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Egress" => %{"locationName" => "egress", "shape" => "Boolean"}, "IcmpTypeCode" => %{"locationName" => "Icmp", "shape" => "IcmpTypeCode"}, "Ipv6CidrBlock" => %{"locationName" => "ipv6CidrBlock", "shape" => "String"}, "NetworkAclId" => %{"locationName" => "networkAclId", "shape" => "String"}, "PortRange" => %{"locationName" => "portRange", "shape" => "PortRange"}, "Protocol" => %{"locationName" => "protocol", "shape" => "String"}, "RuleAction" => %{"locationName" => "ruleAction", "shape" => "RuleAction"}, "RuleNumber" => %{"locationName" => "ruleNumber", "shape" => "Integer"}}, "required" => ["Egress", "NetworkAclId", "Protocol", "RuleAction", "RuleNumber"], "type" => "structure"}, "HostReservationSet" => %{"member" => %{"locationName" => "item", "shape" => "HostReservation"}, "type" => "list"}, "DescribePlacementGroupsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "GroupNames" => %{"locationName" => "groupName", "shape" => "PlacementGroupStringList"}}, "type" => "structure"}, "KeyPairInfo" => %{"members" => %{"KeyFingerprint" => %{"locationName" => "keyFingerprint", "shape" => "String"}, "KeyName" => %{"locationName" => "keyName", "shape" => "String"}}, "type" => "structure"}, "DescribeSpotFleetRequestHistoryRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "EventType" => %{"locationName" => "eventType", "shape" => "EventType"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}, "StartTime" => %{"locationName" => "startTime", "shape" => "DateTime"}}, "required" => ["SpotFleetRequestId", "StartTime"], "type" => "structure"}, "SpotFleetTagSpecification" => %{"members" => %{"ResourceType" => %{"locationName" => "resourceType", "shape" => "ResourceType"}, "Tags" => %{"locationName" => "tag", "shape" => "TagList"}}, "type" => "structure"}, "DetachVolumeRequest" => %{"members" => %{"Device" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Force" => %{"shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}, "VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "ReasonCodesList" => %{"member" => %{"locationName" => "item", "shape" => "ReportInstanceReasonCodes"}, "type" => "list"}, "DescribeVpcPeeringConnectionsResult" => %{"members" => %{"VpcPeeringConnections" => %{"locationName" => "vpcPeeringConnectionSet", "shape" => "VpcPeeringConnectionList"}}, "type" => "structure"}, "DeleteVpcEndpointsResult" => %{"members" => %{"Unsuccessful" => %{"locationName" => "unsuccessful", "shape" => "UnsuccessfulItemSet"}}, "type" => "structure"}, "DescribeIamInstanceProfileAssociationsRequest" => %{"members" => %{"AssociationIds" => %{"locationName" => "AssociationId", "shape" => "AssociationIdList"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "SnapshotList" => %{"member" => %{"locationName" => "item", "shape" => "Snapshot"}, "type" => "list"}, "AttachNetworkInterfaceResult" => %{"members" => %{"AttachmentId" => %{"locationName" => "attachmentId", "shape" => "String"}}, "type" => "structure"}, "BatchState" => %{"enum" => ["submitted", "active", "cancelled", "failed", "cancelled_running", "cancelled_terminating", "modifying"], "type" => "string"}, "DiskImageDetail" => %{"members" => %{"Bytes" => %{"locationName" => "bytes", "shape" => "Long"}, "Format" => %{"locationName" => "format", "shape" => "DiskImageFormat"}, "ImportManifestUrl" => %{"locationName" => "importManifestUrl", "shape" => "String"}}, "required" => ["Bytes", "Format", "ImportManifestUrl"], "type" => "structure"}, "CreateInstanceExportTaskRequest" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "ExportToS3Task" => %{"locationName" => "exportToS3", "shape" => "ExportToS3TaskSpecification"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "TargetEnvironment" => %{"locationName" => "targetEnvironment", "shape" => "ExportEnvironment"}}, "required" => ["InstanceId"], "type" => "structure"}, "ClientData" => %{"members" => %{"Comment" => %{"shape" => "String"}, "UploadEnd" => %{"shape" => "DateTime"}, "UploadSize" => %{"shape" => "Double"}, "UploadStart" => %{"shape" => "DateTime"}}, "type" => "structure"}, "DescribeSpotDatafeedSubscriptionResult" => %{"members" => %{"SpotDatafeedSubscription" => %{"locationName" => "spotDatafeedSubscription", "shape" => "SpotDatafeedSubscription"}}, "type" => "structure"}, "InstanceStateChange" => %{"members" => %{"CurrentState" => %{"locationName" => "currentState", "shape" => "InstanceState"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "PreviousState" => %{"locationName" => "previousState", "shape" => "InstanceState"}}, "type" => "structure"}, "NetworkInterfacePrivateIpAddressList" => %{"member" => %{"locationName" => "item", "shape" => "NetworkInterfacePrivateIpAddress"}, "type" => "list"}, "DescribeSnapshotsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "OwnerIds" => %{"locationName" => "Owner", "shape" => "OwnerStringList"}, "RestorableByUserIds" => %{"locationName" => "RestorableBy", "shape" => "RestorableByStringList"}, "SnapshotIds" => %{"locationName" => "SnapshotId", "shape" => "SnapshotIdStringList"}}, "type" => "structure"}, "ScheduledInstanceSet" => %{"member" => %{"locationName" => "item", "shape" => "ScheduledInstance"}, "type" => "list"}, "DescribeReservedInstancesModificationsResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "ReservedInstancesModifications" => %{"locationName" => "reservedInstancesModificationsSet", "shape" => "ReservedInstancesModificationList"}}, "type" => "structure"}, "VolumeList" => %{"member" => %{"locationName" => "item", "shape" => "Volume"}, "type" => "list"}, "DisassociateIamInstanceProfileRequest" => %{"members" => %{"AssociationId" => %{"shape" => "String"}}, "required" => ["AssociationId"], "type" => "structure"}, "Tenancy" => %{"enum" => ["default", "dedicated", "host"], "type" => "string"}, "VolumeStatusAction" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "EventId" => %{"locationName" => "eventId", "shape" => "String"}, "EventType" => %{"locationName" => "eventType", "shape" => "String"}}, "type" => "structure"}, "HistoryRecord" => %{"members" => %{"EventInformation" => %{"locationName" => "eventInformation", "shape" => "EventInformation"}, "EventType" => %{"locationName" => "eventType", "shape" => "EventType"}, "Timestamp" => %{"locationName" => "timestamp", "shape" => "DateTime"}}, "required" => ["EventInformation", "EventType", "Timestamp"], "type" => "structure"}, "ModifySpotFleetRequestRequest" => %{"members" => %{"ExcessCapacityTerminationPolicy" => %{"locationName" => "excessCapacityTerminationPolicy", "shape" => "ExcessCapacityTerminationPolicy"}, "SpotFleetRequestId" => %{"locationName" => "spotFleetRequestId", "shape" => "String"}, "TargetCapacity" => %{"locationName" => "targetCapacity", "shape" => "Integer"}}, "required" => ["SpotFleetRequestId"], "type" => "structure"}, "ImportSnapshotResult" => %{"members" => %{"Description" => %{"locationName" => "description", "shape" => "String"}, "ImportTaskId" => %{"locationName" => "importTaskId", "shape" => "String"}, "SnapshotTaskDetail" => %{"locationName" => "snapshotTaskDetail", "shape" => "SnapshotTaskDetail"}}, "type" => "structure"}, "FpgaImageState" => %{"members" => %{"Code" => %{"locationName" => "code", "shape" => "FpgaImageStateCode"}, "Message" => %{"locationName" => "message", "shape" => "String"}}, "type" => "structure"}, "StorageLocation" => %{"members" => %{"Bucket" => %{"shape" => "String"}, "Key" => %{"shape" => "String"}}, "type" => "structure"}, "VolumeModificationList" => %{"member" => %{"locationName" => "item", "shape" => "VolumeModification"}, "type" => "list"}, "MonitorInstancesResult" => %{"members" => %{"InstanceMonitorings" => %{"locationName" => "instancesSet", "shape" => "InstanceMonitoringList"}}, "type" => "structure"}, "DescribeVolumesResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "Volumes" => %{"locationName" => "volumeSet", "shape" => "VolumeList"}}, "type" => "structure"}, "CustomerGatewayList" => %{"member" => %{"locationName" => "item", "shape" => "CustomerGateway"}, "type" => "list"}, "DateTime" => %{"type" => "timestamp"}, "UserBucket" => %{"members" => %{"S3Bucket" => %{"shape" => "String"}, "S3Key" => %{"shape" => "String"}}, "type" => "structure"}, "Snapshot" => %{"members" => %{"DataEncryptionKeyId" => %{"locationName" => "dataEncryptionKeyId", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "Encrypted" => %{"locationName" => "encrypted", "shape" => "Boolean"}, "KmsKeyId" => %{"locationName" => "kmsKeyId", "shape" => "String"}, "OwnerAlias" => %{"locationName" => "ownerAlias", "shape" => "String"}, "OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "Progress" => %{"locationName" => "progress", "shape" => "String"}, "SnapshotId" => %{"locationName" => "snapshotId", "shape" => "String"}, "StartTime" => %{"locationName" => "startTime", "shape" => "DateTime"}, "State" => %{"locationName" => "status", "shape" => "SnapshotState"}, "StateMessage" => %{"locationName" => "statusMessage", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}, "VolumeSize" => %{"locationName" => "volumeSize", "shape" => "Integer"}}, "type" => "structure"}, "NetworkInterfaceAttribute" => %{"enum" => ["description", "groupSet", "sourceDestCheck", "attachment"], "type" => "string"}, "UserData" => %{"members" => %{"Data" => %{"locationName" => "data", "shape" => "String"}}, "type" => "structure"}, "ModifyNetworkInterfaceAttributeRequest" => %{"members" => %{"Attachment" => %{"locationName" => "attachment", "shape" => "NetworkInterfaceAttachmentChanges"}, "Description" => %{"locationName" => "description", "shape" => "AttributeValue"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Groups" => %{"locationName" => "SecurityGroupId", "shape" => "SecurityGroupIdStringList"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "SourceDestCheck" => %{"locationName" => "sourceDestCheck", "shape" => "AttributeBooleanValue"}}, "required" => ["NetworkInterfaceId"], "type" => "structure"}, "TerminateInstancesResult" => %{"members" => %{"TerminatingInstances" => %{"locationName" => "instancesSet", "shape" => "InstanceStateChangeList"}}, "type" => "structure"}, "CreateInternetGatewayResult" => %{"members" => %{"InternetGateway" => %{"locationName" => "internetGateway", "shape" => "InternetGateway"}}, "type" => "structure"}, "VpcState" => %{"enum" => ["pending", "available"], "type" => "string"}, "GroupIdStringList" => %{"member" => %{"locationName" => "groupId", "shape" => "String"}, "type" => "list"}, "ProductCodeValues" => %{"enum" => ["devpay", "marketplace"], "type" => "string"}, "DescribeNetworkInterfacePermissionsResult" => %{"members" => %{"NetworkInterfacePermissions" => %{"locationName" => "networkInterfacePermissions", "shape" => "NetworkInterfacePermissionList"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "AuthorizeSecurityGroupEgressRequest" => %{"members" => %{"CidrIp" => %{"locationName" => "cidrIp", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "FromPort" => %{"locationName" => "fromPort", "shape" => "Integer"}, "GroupId" => %{"locationName" => "groupId", "shape" => "String"}, "IpPermissions" => %{"locationName" => "ipPermissions", "shape" => "IpPermissionList"}, "IpProtocol" => %{"locationName" => "ipProtocol", "shape" => "String"}, "SourceSecurityGroupName" => %{"locationName" => "sourceSecurityGroupName", "shape" => "String"}, "SourceSecurityGroupOwnerId" => %{"locationName" => "sourceSecurityGroupOwnerId", "shape" => "String"}, "ToPort" => %{"locationName" => "toPort", "shape" => "Integer"}}, "required" => ["GroupId"], "type" => "structure"}, "PurchasedScheduledInstanceSet" => %{"member" => %{"locationName" => "item", "shape" => "ScheduledInstance"}, "type" => "list"}, "ImportVolumeResult" => %{"members" => %{"ConversionTask" => %{"locationName" => "conversionTask", "shape" => "ConversionTask"}}, "type" => "structure"}, "CancelBundleTaskResult" => %{"members" => %{"BundleTask" => %{"locationName" => "bundleInstanceTask", "shape" => "BundleTask"}}, "type" => "structure"}, "DisableVpcClassicLinkDnsSupportResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "FlowLogsResourceType" => %{"enum" => ["VPC", "Subnet", "NetworkInterface"], "type" => "string"}, "InstancePrivateIpAddress" => %{"members" => %{"Association" => %{"locationName" => "association", "shape" => "InstanceNetworkInterfaceAssociation"}, "Primary" => %{"locationName" => "primary", "shape" => "Boolean"}, "PrivateDnsName" => %{"locationName" => "privateDnsName", "shape" => "String"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}}, "type" => "structure"}, "DetachClassicLinkVpcRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["InstanceId", "VpcId"], "type" => "structure"}, "ImportInstanceResult" => %{"members" => %{"ConversionTask" => %{"locationName" => "conversionTask", "shape" => "ConversionTask"}}, "type" => "structure"}, "DeleteFlowLogsRequest" => %{"members" => %{"FlowLogIds" => %{"locationName" => "FlowLogId", "shape" => "ValueStringList"}}, "required" => ["FlowLogIds"], "type" => "structure"}, "NetworkAcl" => %{"members" => %{"Associations" => %{"locationName" => "associationSet", "shape" => "NetworkAclAssociationList"}, "Entries" => %{"locationName" => "entrySet", "shape" => "NetworkAclEntryList"}, "IsDefault" => %{"locationName" => "default", "shape" => "Boolean"}, "NetworkAclId" => %{"locationName" => "networkAclId", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "UnassignIpv6AddressesRequest" => %{"members" => %{"Ipv6Addresses" => %{"locationName" => "ipv6Addresses", "shape" => "Ipv6AddressList"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}}, "required" => ["Ipv6Addresses", "NetworkInterfaceId"], "type" => "structure"}, "CancelSpotInstanceRequestState" => %{"enum" => ["active", "open", "closed", "cancelled", "completed"], "type" => "string"}, "DescribeVpcEndpointServicesResult" => %{"members" => %{"NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "ServiceNames" => %{"locationName" => "serviceNameSet", "shape" => "ValueStringList"}}, "type" => "structure"}, "ImportSnapshotRequest" => %{"members" => %{"ClientData" => %{"shape" => "ClientData"}, "ClientToken" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "DiskContainer" => %{"shape" => "SnapshotDiskContainer"}, "DryRun" => %{"shape" => "Boolean"}, "RoleName" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeStaleSecurityGroupsRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "VpcId" => %{"shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "DescribeSecurityGroupReferencesResult" => %{"members" => %{"SecurityGroupReferenceSet" => %{"locationName" => "securityGroupReferenceSet", "shape" => "SecurityGroupReferences"}}, "type" => "structure"}, "CancelBatchErrorCode" => %{"enum" => ["fleetRequestIdDoesNotExist", "fleetRequestIdMalformed", "fleetRequestNotInCancellableState", "unexpectedError"], "type" => "string"}, "DisableVpcClassicLinkRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "RunInstancesRequest" => %{"members" => %{"AdditionalInfo" => %{"locationName" => "additionalInfo", "shape" => "String"}, "BlockDeviceMappings" => %{"locationName" => "BlockDeviceMapping", "shape" => "BlockDeviceMappingRequestList"}, "ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "DisableApiTermination" => %{"locationName" => "disableApiTermination", "shape" => "Boolean"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "EbsOptimized" => %{"locationName" => "ebsOptimized", "shape" => "Boolean"}, "ElasticGpuSpecification" => %{"shape" => "ElasticGpuSpecifications"}, "IamInstanceProfile" => %{"locationName" => "iamInstanceProfile", "shape" => "IamInstanceProfileSpecification"}, "ImageId" => %{"shape" => "String"}, "InstanceInitiatedShutdownBehavior" => %{"locationName" => "instanceInitiatedShutdownBehavior", "shape" => "ShutdownBehavior"}, "InstanceType" => %{"shape" => "InstanceType"}, "Ipv6AddressCount" => %{"shape" => "Integer"}, "Ipv6Addresses" => %{"locationName" => "Ipv6Address", "shape" => "InstanceIpv6AddressList"}, "KernelId" => %{"shape" => "String"}, "KeyName" => %{"shape" => "String"}, "MaxCount" => %{"shape" => "Integer"}, "MinCount" => %{"shape" => "Integer"}, "Monitoring" => %{"shape" => "RunInstancesMonitoringEnabled"}, "NetworkInterfaces" => %{"locationName" => "networkInterface", "shape" => "InstanceNetworkInterfaceSpecificationList"}, "Placement" => %{"shape" => "Placement"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "RamdiskId" => %{"shape" => "String"}, "SecurityGroupIds" => %{"locationName" => "SecurityGroupId", "shape" => "SecurityGroupIdStringList"}, "SecurityGroups" => %{"locationName" => "SecurityGroup", "shape" => "SecurityGroupStringList"}, "SubnetId" => %{"shape" => "String"}, "TagSpecifications" => %{"locationName" => "TagSpecification", "shape" => "TagSpecificationList"}, "UserData" => %{"shape" => "String"}}, "required" => ["ImageId", "MaxCount", "MinCount"], "type" => "structure"}, "ScheduledInstanceRecurrence" => %{"members" => %{"Frequency" => %{"locationName" => "frequency", "shape" => "String"}, "Interval" => %{"locationName" => "interval", "shape" => "Integer"}, "OccurrenceDaySet" => %{"locationName" => "occurrenceDaySet", "shape" => "OccurrenceDaySet"}, "OccurrenceRelativeToEnd" => %{"locationName" => "occurrenceRelativeToEnd", "shape" => "Boolean"}, "OccurrenceUnit" => %{"locationName" => "occurrenceUnit", "shape" => "String"}}, "type" => "structure"}, "ResetImageAttributeRequest" => %{"members" => %{"Attribute" => %{"shape" => "ResetImageAttributeName"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "ImageId" => %{"shape" => "String"}}, "required" => ["Attribute", "ImageId"], "type" => "structure"}, "DescribeIdentityIdFormatRequest" => %{"members" => %{"PrincipalArn" => %{"locationName" => "principalArn", "shape" => "String"}, "Resource" => %{"locationName" => "resource", "shape" => "String"}}, "required" => ["PrincipalArn"], "type" => "structure"}, "Integer" => %{"type" => "integer"}, "DescribeImagesResult" => %{"members" => %{"Images" => %{"locationName" => "imagesSet", "shape" => "ImageList"}}, "type" => "structure"}, "DiskImageVolumeDescription" => %{"members" => %{"Id" => %{"locationName" => "id", "shape" => "String"}, "Size" => %{"locationName" => "size", "shape" => "Long"}}, "required" => ["Id"], "type" => "structure"}, "PurchaseReservedInstancesOfferingRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceCount" => %{"shape" => "Integer"}, "LimitPrice" => %{"locationName" => "limitPrice", "shape" => "ReservedInstanceLimitPrice"}, "ReservedInstancesOfferingId" => %{"shape" => "String"}}, "required" => ["InstanceCount", "ReservedInstancesOfferingId"], "type" => "structure"}, "CreateCustomerGatewayRequest" => %{"members" => %{"BgpAsn" => %{"shape" => "Integer"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "PublicIp" => %{"locationName" => "IpAddress", "shape" => "String"}, "Type" => %{"shape" => "GatewayType"}}, "required" => ["BgpAsn", "PublicIp", "Type"], "type" => "structure"}, "VpcClassicLink" => %{"members" => %{"ClassicLinkEnabled" => %{"locationName" => "classicLinkEnabled", "shape" => "Boolean"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "NetworkInterfaceIdList" => %{"member" => %{"locationName" => "item", "shape" => "String"}, "type" => "list"}, "RestoreAddressToClassicRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}}, "required" => ["PublicIp"], "type" => "structure"}, "CidrBlock" => %{"members" => %{"CidrBlock" => %{"locationName" => "cidrBlock", "shape" => "String"}}, "type" => "structure"}, "ResourceIdList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "ConfirmProductInstanceRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}, "ProductCode" => %{"shape" => "String"}}, "required" => ["InstanceId", "ProductCode"], "type" => "structure"}, "AssociateDhcpOptionsRequest" => %{"members" => %{"DhcpOptionsId" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}}, "required" => ["DhcpOptionsId", "VpcId"], "type" => "structure"}, "CreateEgressOnlyInternetGatewayResult" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "EgressOnlyInternetGateway" => %{"locationName" => "egressOnlyInternetGateway", "shape" => "EgressOnlyInternetGateway"}}, "type" => "structure"}, "DescribeFpgaImagesRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "FpgaImageIds" => %{"locationName" => "FpgaImageId", "shape" => "FpgaImageIdList"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "Owners" => %{"locationName" => "Owner", "shape" => "OwnerStringList"}}, "type" => "structure"}, "DescribeNetworkAclsRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "NetworkAclIds" => %{"locationName" => "NetworkAclId", "shape" => "ValueStringList"}}, "type" => "structure"}, "DescribeEgressOnlyInternetGatewaysRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "EgressOnlyInternetGatewayIds" => %{"locationName" => "EgressOnlyInternetGatewayId", "shape" => "EgressOnlyInternetGatewayIdList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "CustomerGateway" => %{"members" => %{"BgpAsn" => %{"locationName" => "bgpAsn", "shape" => "String"}, "CustomerGatewayId" => %{"locationName" => "customerGatewayId", "shape" => "String"}, "IpAddress" => %{"locationName" => "ipAddress", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "Type" => %{"locationName" => "type", "shape" => "String"}}, "type" => "structure"}, "NetworkInterfacePermissionState" => %{"members" => %{"State" => %{"locationName" => "state", "shape" => "NetworkInterfacePermissionStateCode"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}}, "type" => "structure"}, "EbsInstanceBlockDeviceSpecification" => %{"members" => %{"DeleteOnTermination" => %{"locationName" => "deleteOnTermination", "shape" => "Boolean"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}}, "type" => "structure"}, "ProductCodeStringList" => %{"member" => %{"locationName" => "ProductCode", "shape" => "String"}, "type" => "list"}, "BundleInstanceRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}, "Storage" => %{"shape" => "Storage"}}, "required" => ["InstanceId", "Storage"], "type" => "structure"}, "VpnGatewayIdStringList" => %{"member" => %{"locationName" => "VpnGatewayId", "shape" => "String"}, "type" => "list"}, "ModifyReservedInstancesRequest" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "ReservedInstancesIds" => %{"locationName" => "ReservedInstancesId", "shape" => "ReservedInstancesIdStringList"}, "TargetConfigurations" => %{"locationName" => "ReservedInstancesConfigurationSetItemType", "shape" => "ReservedInstancesConfigurationList"}}, "required" => ["ReservedInstancesIds", "TargetConfigurations"], "type" => "structure"}, "DeleteFlowLogsResult" => %{"members" => %{"Unsuccessful" => %{"locationName" => "unsuccessful", "shape" => "UnsuccessfulItemSet"}}, "type" => "structure"}, "NatGateway" => %{"members" => %{"CreateTime" => %{"locationName" => "createTime", "shape" => "DateTime"}, "DeleteTime" => %{"locationName" => "deleteTime", "shape" => "DateTime"}, "FailureCode" => %{"locationName" => "failureCode", "shape" => "String"}, "FailureMessage" => %{"locationName" => "failureMessage", "shape" => "String"}, "NatGatewayAddresses" => %{"locationName" => "natGatewayAddressSet", "shape" => "NatGatewayAddressList"}, "NatGatewayId" => %{"locationName" => "natGatewayId", "shape" => "String"}, "ProvisionedBandwidth" => %{"locationName" => "provisionedBandwidth", "shape" => "ProvisionedBandwidth"}, "State" => %{"locationName" => "state", "shape" => "NatGatewayState"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "InstanceTypeList" => %{"member" => %{"shape" => "InstanceType"}, "type" => "list"}, "AttachClassicLinkVpcResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "ModifyHostsRequest" => %{"members" => %{"AutoPlacement" => %{"locationName" => "autoPlacement", "shape" => "AutoPlacement"}, "HostIds" => %{"locationName" => "hostId", "shape" => "RequestHostIdList"}}, "required" => ["AutoPlacement", "HostIds"], "type" => "structure"}, "NextToken" => %{"max" => 1024, "min" => 1, "type" => "string"}, "InstanceType" => %{"enum" => ["t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"], "type" => "string"}, "DeleteKeyPairRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "KeyName" => %{"shape" => "String"}}, "required" => ["KeyName"], "type" => "structure"}, "DiskImageDescription" => %{"members" => %{"Checksum" => %{"locationName" => "checksum", "shape" => "String"}, "Format" => %{"locationName" => "format", "shape" => "DiskImageFormat"}, "ImportManifestUrl" => %{"locationName" => "importManifestUrl", "shape" => "String"}, "Size" => %{"locationName" => "size", "shape" => "Long"}}, "required" => ["Format", "ImportManifestUrl", "Size"], "type" => "structure"}, "CreateNetworkInterfacePermissionResult" => %{"members" => %{"InterfacePermission" => %{"locationName" => "interfacePermission", "shape" => "NetworkInterfacePermission"}}, "type" => "structure"}, "PrefixListSet" => %{"member" => %{"locationName" => "item", "shape" => "PrefixList"}, "type" => "list"}, "DeleteSpotDatafeedSubscriptionRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}}, "type" => "structure"}, "Volume" => %{"members" => %{"Attachments" => %{"locationName" => "attachmentSet", "shape" => "VolumeAttachmentList"}, "AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "CreateTime" => %{"locationName" => "createTime", "shape" => "DateTime"}, "Encrypted" => %{"locationName" => "encrypted", "shape" => "Boolean"}, "Iops" => %{"locationName" => "iops", "shape" => "Integer"}, "KmsKeyId" => %{"locationName" => "kmsKeyId", "shape" => "String"}, "Size" => %{"locationName" => "size", "shape" => "Integer"}, "SnapshotId" => %{"locationName" => "snapshotId", "shape" => "String"}, "State" => %{"locationName" => "status", "shape" => "VolumeState"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VolumeId" => %{"locationName" => "volumeId", "shape" => "String"}, "VolumeType" => %{"locationName" => "volumeType", "shape" => "VolumeType"}}, "type" => "structure"}, "DescribeIdFormatResult" => %{"members" => %{"Statuses" => %{"locationName" => "statusSet", "shape" => "IdFormatList"}}, "type" => "structure"}, "ReservedInstancesId" => %{"members" => %{"ReservedInstancesId" => %{"locationName" => "reservedInstancesId", "shape" => "String"}}, "type" => "structure"}, "BlobAttributeValue" => %{"members" => %{"Value" => %{"locationName" => "value", "shape" => "Blob"}}, "type" => "structure"}, "ReservedInstancesModificationResult" => %{"members" => %{"ReservedInstancesId" => %{"locationName" => "reservedInstancesId", "shape" => "String"}, "TargetConfiguration" => %{"locationName" => "targetConfiguration", "shape" => "ReservedInstancesConfiguration"}}, "type" => "structure"}, "ElasticGpuSet" => %{"member" => %{"shape" => "ElasticGpus"}, "type" => "list"}, "ReplaceNetworkAclAssociationRequest" => %{"members" => %{"AssociationId" => %{"locationName" => "associationId", "shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "NetworkAclId" => %{"locationName" => "networkAclId", "shape" => "String"}}, "required" => ["AssociationId", "NetworkAclId"], "type" => "structure"}, "PermissionGroup" => %{"enum" => ["all"], "type" => "string"}, "Blob" => %{"type" => "blob"}, "NetworkAclAssociation" => %{"members" => %{"NetworkAclAssociationId" => %{"locationName" => "networkAclAssociationId", "shape" => "String"}, "NetworkAclId" => %{"locationName" => "networkAclId", "shape" => "String"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}}, "type" => "structure"}, "CreateSpotDatafeedSubscriptionResult" => %{"members" => %{"SpotDatafeedSubscription" => %{"locationName" => "spotDatafeedSubscription", "shape" => "SpotDatafeedSubscription"}}, "type" => "structure"}, "DescribeInstanceStatusRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "IncludeAllInstances" => %{"locationName" => "includeAllInstances", "shape" => "Boolean"}, "InstanceIds" => %{"locationName" => "InstanceId", "shape" => "InstanceIdStringList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "NatGatewayAddress" => %{"members" => %{"AllocationId" => %{"locationName" => "allocationId", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "PrivateIp" => %{"locationName" => "privateIp", "shape" => "String"}, "PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}}, "type" => "structure"}, "CancelExportTaskRequest" => %{"members" => %{"ExportTaskId" => %{"locationName" => "exportTaskId", "shape" => "String"}}, "required" => ["ExportTaskId"], "type" => "structure"}, "AttachVolumeRequest" => %{"members" => %{"Device" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}, "VolumeId" => %{"shape" => "String"}}, "required" => ["Device", "InstanceId", "VolumeId"], "type" => "structure"}, "DescribeMovingAddressesRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "filter", "shape" => "FilterList"}, "MaxResults" => %{"locationName" => "maxResults", "shape" => "Integer"}, "NextToken" => %{"locationName" => "nextToken", "shape" => "String"}, "PublicIps" => %{"locationName" => "publicIp", "shape" => "ValueStringList"}}, "type" => "structure"}, "BlockDeviceMapping" => %{"members" => %{"DeviceName" => %{"locationName" => "deviceName", "shape" => "String"}, "Ebs" => %{"locationName" => "ebs", "shape" => "EbsBlockDevice"}, "NoDevice" => %{"locationName" => "noDevice", "shape" => "String"}, "VirtualName" => %{"locationName" => "virtualName", "shape" => "String"}}, "type" => "structure"}, "FpgaImage" => %{"members" => %{"CreateTime" => %{"locationName" => "createTime", "shape" => "DateTime"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "FpgaImageGlobalId" => %{"locationName" => "fpgaImageGlobalId", "shape" => "String"}, "FpgaImageId" => %{"locationName" => "fpgaImageId", "shape" => "String"}, "Name" => %{"locationName" => "name", "shape" => "String"}, "OwnerAlias" => %{"locationName" => "ownerAlias", "shape" => "String"}, "OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "PciId" => %{"locationName" => "pciId", "shape" => "PciId"}, "ProductCodes" => %{"locationName" => "productCodes", "shape" => "ProductCodeList"}, "ShellVersion" => %{"locationName" => "shellVersion", "shape" => "String"}, "State" => %{"locationName" => "state", "shape" => "FpgaImageState"}, "Tags" => %{"locationName" => "tags", "shape" => "TagList"}, "UpdateTime" => %{"locationName" => "updateTime", "shape" => "DateTime"}}, "type" => "structure"}, "CreateVolumeRequest" => %{"members" => %{"AvailabilityZone" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Encrypted" => %{"locationName" => "encrypted", "shape" => "Boolean"}, "Iops" => %{"shape" => "Integer"}, "KmsKeyId" => %{"shape" => "String"}, "Size" => %{"shape" => "Integer"}, "SnapshotId" => %{"shape" => "String"}, "TagSpecifications" => %{"locationName" => "TagSpecification", "shape" => "TagSpecificationList"}, "VolumeType" => %{"shape" => "VolumeType"}}, "required" => ["AvailabilityZone"], "type" => "structure"}, "CreateDefaultVpcResult" => %{"members" => %{"Vpc" => %{"locationName" => "vpc", "shape" => "Vpc"}}, "type" => "structure"}, "CreateRouteTableRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "required" => ["VpcId"], "type" => "structure"}, "ReservedInstancesListing" => %{"members" => %{"ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "CreateDate" => %{"locationName" => "createDate", "shape" => "DateTime"}, "InstanceCounts" => %{"locationName" => "instanceCounts", "shape" => "InstanceCountList"}, "PriceSchedules" => %{"locationName" => "priceSchedules", "shape" => "PriceScheduleList"}, "ReservedInstancesId" => %{"locationName" => "reservedInstancesId", "shape" => "String"}, "ReservedInstancesListingId" => %{"locationName" => "reservedInstancesListingId", "shape" => "String"}, "Status" => %{"locationName" => "status", "shape" => "ListingStatus"}, "StatusMessage" => %{"locationName" => "statusMessage", "shape" => "String"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "UpdateDate" => %{"locationName" => "updateDate", "shape" => "DateTime"}}, "type" => "structure"}, "NetworkInterfaceList" => %{"member" => %{"locationName" => "item", "shape" => "NetworkInterface"}, "type" => "list"}, "DescribeReservedInstancesListingsRequest" => %{"members" => %{"Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}, "ReservedInstancesId" => %{"locationName" => "reservedInstancesId", "shape" => "String"}, "ReservedInstancesListingId" => %{"locationName" => "reservedInstancesListingId", "shape" => "String"}}, "type" => "structure"}, "DeregisterImageRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "ImageId" => %{"shape" => "String"}}, "required" => ["ImageId"], "type" => "structure"}, "UserIdGroupPairSet" => %{"member" => %{"locationName" => "item", "shape" => "UserIdGroupPair"}, "type" => "list"}, "Placement" => %{"members" => %{"Affinity" => %{"locationName" => "affinity", "shape" => "String"}, "AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "GroupName" => %{"locationName" => "groupName", "shape" => "String"}, "HostId" => %{"locationName" => "hostId", "shape" => "String"}, "SpreadDomain" => %{"locationName" => "spreadDomain", "shape" => "String"}, "Tenancy" => %{"locationName" => "tenancy", "shape" => "Tenancy"}}, "type" => "structure"}, "InstanceBlockDeviceMapping" => %{"members" => %{"DeviceName" => %{"locationName" => "deviceName", "shape" => "String"}, "Ebs" => %{"locationName" => "ebs", "shape" => "EbsInstanceBlockDevice"}}, "type" => "structure"}, "InstanceAttribute" => %{"members" => %{"BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "InstanceBlockDeviceMappingList"}, "DisableApiTermination" => %{"locationName" => "disableApiTermination", "shape" => "AttributeBooleanValue"}, "EbsOptimized" => %{"locationName" => "ebsOptimized", "shape" => "AttributeBooleanValue"}, "EnaSupport" => %{"locationName" => "enaSupport", "shape" => "AttributeBooleanValue"}, "Groups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "InstanceInitiatedShutdownBehavior" => %{"locationName" => "instanceInitiatedShutdownBehavior", "shape" => "AttributeValue"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "AttributeValue"}, "KernelId" => %{"locationName" => "kernel", "shape" => "AttributeValue"}, "ProductCodes" => %{"locationName" => "productCodes", "shape" => "ProductCodeList"}, "RamdiskId" => %{"locationName" => "ramdisk", "shape" => "AttributeValue"}, "RootDeviceName" => %{"locationName" => "rootDeviceName", "shape" => "AttributeValue"}, "SourceDestCheck" => %{"locationName" => "sourceDestCheck", "shape" => "AttributeBooleanValue"}, "SriovNetSupport" => %{"locationName" => "sriovNetSupport", "shape" => "AttributeValue"}, "UserData" => %{"locationName" => "userData", "shape" => "AttributeValue"}}, "type" => "structure"}, "AllocateAddressResult" => %{"members" => %{"AllocationId" => %{"locationName" => "allocationId", "shape" => "String"}, "Domain" => %{"locationName" => "domain", "shape" => "DomainType"}, "PublicIp" => %{"locationName" => "publicIp", "shape" => "String"}}, "type" => "structure"}, "CreateSnapshotRequest" => %{"members" => %{"Description" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "VpcAttachment" => %{"members" => %{"State" => %{"locationName" => "state", "shape" => "AttachmentStatus"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "NetworkInterface" => %{"members" => %{"Association" => %{"locationName" => "association", "shape" => "NetworkInterfaceAssociation"}, "Attachment" => %{"locationName" => "attachment", "shape" => "NetworkInterfaceAttachment"}, "AvailabilityZone" => %{"locationName" => "availabilityZone", "shape" => "String"}, "Description" => %{"locationName" => "description", "shape" => "String"}, "Groups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "InterfaceType" => %{"locationName" => "interfaceType", "shape" => "NetworkInterfaceType"}, "Ipv6Addresses" => %{"locationName" => "ipv6AddressesSet", "shape" => "NetworkInterfaceIpv6AddressesList"}, "MacAddress" => %{"locationName" => "macAddress", "shape" => "String"}, "NetworkInterfaceId" => %{"locationName" => "networkInterfaceId", "shape" => "String"}, "OwnerId" => %{"locationName" => "ownerId", "shape" => "String"}, "PrivateDnsName" => %{"locationName" => "privateDnsName", "shape" => "String"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "PrivateIpAddresses" => %{"locationName" => "privateIpAddressesSet", "shape" => "NetworkInterfacePrivateIpAddressList"}, "RequesterId" => %{"locationName" => "requesterId", "shape" => "String"}, "RequesterManaged" => %{"locationName" => "requesterManaged", "shape" => "Boolean"}, "SourceDestCheck" => %{"locationName" => "sourceDestCheck", "shape" => "Boolean"}, "Status" => %{"locationName" => "status", "shape" => "NetworkInterfaceStatus"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "TagSet" => %{"locationName" => "tagSet", "shape" => "TagList"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}}, "type" => "structure"}, "RouteList" => %{"member" => %{"locationName" => "item", "shape" => "Route"}, "type" => "list"}, "State" => %{"enum" => ["Pending", "Available", "Deleting", "Deleted"], "type" => "string"}, "DisableVpcClassicLinkResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "VirtualizationType" => %{"enum" => ["hvm", "paravirtual"], "type" => "string"}, "Instance" => %{"members" => %{"AmiLaunchIndex" => %{"locationName" => "amiLaunchIndex", "shape" => "Integer"}, "BlockDeviceMappings" => %{"locationName" => "blockDeviceMapping", "shape" => "InstanceBlockDeviceMappingList"}, "ImageId" => %{"locationName" => "imageId", "shape" => "String"}, "StateTransitionReason" => %{"locationName" => "reason", "shape" => "String"}, "ClientToken" => %{"locationName" => "clientToken", "shape" => "String"}, "SpotInstanceRequestId" => %{"locationName" => "spotInstanceRequestId", "shape" => "String"}, "InstanceId" => %{"locationName" => "instanceId", "shape" => "String"}, "RootDeviceName" => %{"locationName" => "rootDeviceName", "shape" => "String"}, "SourceDestCheck" => %{"locationName" => "sourceDestCheck", "shape" => "Boolean"}, "Hypervisor" => %{"locationName" => "hypervisor", "shape" => "HypervisorType"}, "VpcId" => %{"locationName" => "vpcId", "shape" => "String"}, "SecurityGroups" => %{"locationName" => "groupSet", "shape" => "GroupIdentifierList"}, "Tags" => %{"locationName" => "tagSet", "shape" => "TagList"}, "IamInstanceProfile" => %{"locationName" => "iamInstanceProfile", "shape" => "IamInstanceProfile"}, "StateReason" => %{"locationName" => "stateReason", "shape" => "StateReason"}, "PrivateDnsName" => %{"locationName" => "privateDnsName", "shape" => "String"}, "RootDeviceType" => %{"locationName" => "rootDeviceType", "shape" => "DeviceType"}, "Monitoring" => %{"locationName" => "monitoring", "shape" => "Monitoring"}, "Platform" => %{"locationName" => "platform", "shape" => "PlatformValues"}, "ProductCodes" => %{"locationName" => "productCodes", "shape" => "ProductCodeList"}, "PrivateIpAddress" => %{"locationName" => "privateIpAddress", "shape" => "String"}, "SubnetId" => %{"locationName" => "subnetId", "shape" => "String"}, "LaunchTime" => %{"locationName" => "launchTime", "shape" => "DateTime"}, "ElasticGpuAssociations" => %{"locationName" => "elasticGpuAssociationSet", "shape" => "ElasticGpuAssociationList"}, "PublicDnsName" => %{"locationName" => "dnsName", "shape" => "String"}, "RamdiskId" => %{"locationName" => "ramdiskId", "shape" => "String"}, "InstanceLifecycle" => %{"locationName" => "instanceLifecycle", "shape" => "InstanceLifecycleType"}, "KernelId" => %{"locationName" => "kernelId", "shape" => "String"}, "SriovNetSupport" => %{"locationName" => "sriovNetSupport", "shape" => "String"}, "NetworkInterfaces" => %{"locationName" => "networkInterfaceSet", "shape" => "InstanceNetworkInterfaceList"}, "EbsOptimized" => %{"locationName" => "ebsOptimized", "shape" => "Boolean"}, "KeyName" => %{"locationName" => "keyName", "shape" => "String"}, "EnaSupport" => %{"locationName" => "enaSupport", "shape" => "Boolean"}, "InstanceType" => %{"locationName" => "instanceType", "shape" => "InstanceType"}, "PublicIpAddress" => %{"locationName" => "ipAddress", "shape" => "String"}, "Placement" => %{"locationName" => "placement", "shape" => "Placement"}, "State" => %{"locationName" => "instanceState", "shape" => "InstanceState"}, "Architecture" => %{"locationName" => "architecture", "shape" => "ArchitectureValues"}, "VirtualizationType" => %{"locationName" => "virtualizationType", "shape" => "VirtualizationType"}}, "type" => "structure"}, "InstanceStateName" => %{"enum" => ["pending", "running", "shutting-down", "terminated", "stopping", "stopped"], "type" => "string"}, "CreateSubnetRequest" => %{"members" => %{"AvailabilityZone" => %{"shape" => "String"}, "CidrBlock" => %{"shape" => "String"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Ipv6CidrBlock" => %{"shape" => "String"}, "VpcId" => %{"shape" => "String"}}, "required" => ["CidrBlock", "VpcId"], "type" => "structure"}, "EnableVpcClassicLinkDnsSupportResult" => %{"members" => %{"Return" => %{"locationName" => "return", "shape" => "Boolean"}}, "type" => "structure"}, "AssociateIamInstanceProfileRequest" => %{"members" => %{"IamInstanceProfile" => %{"shape" => "IamInstanceProfileSpecification"}, "InstanceId" => %{"shape" => "String"}}, "required" => ["IamInstanceProfile", "InstanceId"], "type" => "structure"}, "DescribeBundleTasksRequest" => %{"members" => %{"BundleIds" => %{"locationName" => "BundleId", "shape" => "BundleIdStringList"}, "DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "Filters" => %{"locationName" => "Filter", "shape" => "FilterList"}}, "type" => "structure"}, "GetPasswordDataRequest" => %{"members" => %{"DryRun" => %{"locationName" => "dryRun", "shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "PrivateIpAddressSpecificationList" => %{"member" => %{"locationName" => "item", "shape" => "PrivateIpAddressSpecification"}, "type" => "list"}, "AvailabilityZoneMessage" => %{"members" => %{"Message" => %{"locationName" => "message", "shape" => "String"}}, "type" => "structure"}, "Affinity" => %{"enum" => ["default", "host"], "type" => "string"}}
  end
end