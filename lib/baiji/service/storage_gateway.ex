defmodule Baiji.StorageGateway do
  @moduledoc """
  AWS Storage Gateway Service

  AWS Storage Gateway is the service that connects an on-premises software
  appliance with cloud-based storage to provide seamless and secure
  integration between an organization's on-premises IT environment and AWS's
  storage infrastructure. The service enables you to securely upload data to
  the AWS cloud for cost effective backup and rapid disaster recovery.

  Use the following links to get started using the *AWS Storage Gateway
  Service API Reference*:

  <ul> <li> [AWS Storage Gateway Required Request
  Headers](http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders):
  Describes the required headers that you must send with every POST request
  to AWS Storage Gateway.

  </li> <li> [Signing
  Requests](http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests):
  AWS Storage Gateway requires that you authenticate every request you send;
  this topic describes how sign such a request.

  </li> <li> [Error
  Responses](http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses):
  Provides reference information about AWS Storage Gateway errors.

  </li> <li> [Operations in AWS Storage
  Gateway](http://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html):
  Contains detailed descriptions of all AWS Storage Gateway operations, their
  request parameters, response elements, possible errors, and examples of
  requests and responses.

  </li> <li> [AWS Storage Gateway Regions and
  Endpoints:](http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region)
  Provides a list of each region and endpoints available for use with AWS
  Storage Gateway.

  </li> </ul> <note> AWS Storage Gateway resource IDs are in uppercase. When
  you use these resource IDs with the Amazon EC2 API, EC2 expects resource
  IDs in lowercase. You must change your resource ID to lowercase to use it
  with the EC2 API. For example, in Storage Gateway the ID for a volume might
  be `vol-AA22BB012345DAF670`. When you use this ID with the EC2 API, you
  must change it to `vol-aa22bb012345daf670`. Otherwise, the EC2 API might
  not behave as expected.

  </note> <important> IDs for Storage Gateway volumes and Amazon EBS
  snapshots created from gateway volumes are changing to a longer format.
  Starting in December 2016, all new volumes and snapshots will be created
  with a 17-character string. Starting in April 2016, you will be able to use
  these longer IDs so you can test your systems with the new format. For more
  information, see [Longer EC2 and EBS Resource
  IDs](https://aws.amazon.com/ec2/faqs/#longer-ids).

  For example, a volume Amazon Resource Name (ARN) with the longer volume ID
  format looks like the following:

  `arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG`.

  A snapshot ID with the longer ID format looks like the following:
  `snap-78e226633445566ee`.

  For more information, see [Announcement: Heads-up – Longer AWS Storage
  Gateway volume and snapshot IDs coming in
  2016](https://forums.aws.amazon.com/ann.jspa?annID=3557).

  </important>
  """
  
  @doc """
  Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for
  a specified iSCSI target and initiator pair.
  """
  def delete_chap_credentials(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteChapCredentials",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after
  the archiving process is initiated. This operation is only supported in the
  tape gateway architecture.
  """
  def cancel_archival(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelArchival",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Resets all cache disks that have encountered a error and makes the disks
  available for reconfiguration as cache storage. If your cache disk
  encounters a error, the gateway prevents read and write operations on
  virtual tapes in the gateway. For example, an error can occur when a disk
  is corrupted or removed from the gateway. When a cache is reset, the
  gateway loses its cache storage. At this point you can reconfigure the
  disks as cache disks. This operation is only supported in the cached
  volume,tape and file gateway architectures.

  <important> If the cache disk you are resetting contains data that has not
  been uploaded to Amazon S3 yet, that data can be lost. After you reset
  cache disks, there will be no configured cache disks left in the gateway,
  so you must configure at least one new cache disk for your gateway to
  function properly.

  </important>
  """
  def reset_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResetCache",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Deletes the bandwidth rate limits of a gateway. You can delete either the
  upload and download bandwidth rate limit, or you can delete both. If you
  delete only one of the limits, the other limit remains unchanged. To
  specify which gateway to work with, use the Amazon Resource Name (ARN) of
  the gateway in your request.
  """
  def delete_bandwidth_rate_limit(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteBandwidthRateLimit",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Lists virtual tapes in your virtual tape library (VTL) and your virtual
  tape shelf (VTS). You specify the tapes to list by specifying one or more
  tape Amazon Resource Names (ARNs). If you don't specify a tape ARN, the
  operation lists all virtual tapes in both your VTL and VTS.

  This operation supports pagination. By default, the operation returns a
  maximum of up to 100 tapes. You can optionally specify the `Limit`
  parameter in the body to limit the number of tapes in the response. If the
  number of tapes returned in the response is truncated, the response
  includes a `Marker` element that you can use in your subsequent request to
  retrieve the next set of tapes. This operation is only supported in the
  tape gateway architecture.
  """
  def list_tapes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTapes",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Describes the snapshot schedule for the specified gateway volume. The
  snapshot schedule information includes intervals at which snapshots are
  automatically initiated on the volume. This operation is only supported in
  the cached volume and stored volume architectures.
  """
  def describe_snapshot_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSnapshotSchedule",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns information about the cache of a gateway. This operation is only
  supported in the cached volume,tape and file gateway architectures.

  The response includes disk IDs that are configured as cache, and it
  includes the amount of cache allocated and used.
  """
  def describe_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCache",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Lists iSCSI initiators that are connected to a volume. You can use this
  operation to determine whether a volume is being used or not. This
  operation is only supported in the cached volume and stored volume gateway
  architecture.
  """
  def list_volume_initiators(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListVolumeInitiators",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Updates the gateway virtual machine (VM) software. The request immediately
  triggers the software update.

  <note> When you make this request, you get a `200 OK` success response
  immediately. However, it might take some time for the update to complete.
  You can call `DescribeGatewayInformation` to verify the gateway is in the
  `STATE_RUNNING` state.

  </note> <important> A software update forces a system restart of your
  gateway. You can minimize the chance of any disruption to your applications
  by increasing your iSCSI Initiators' timeouts. For more information about
  increasing iSCSI Initiator timeouts for Windows and Linux, see [Customizing
  Your Windows iSCSI
  Settings](http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings)
  and [Customizing Your Linux iSCSI
  Settings](http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings),
  respectively.

  </important>
  """
  def update_gateway_software_now(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateGatewaySoftwareNow",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Removes one or more tags from the specified resource. This operation is
  only supported in the cached volume, stored volume and tape gateway
  architectures.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Creates a virtual tape by using your own barcode. You write data to the
  virtual tape and then archive the tape. A barcode is unique and can not be
  reused if it has already been used on a tape . This applies to barcodes
  used on deleted tapes. This operation is only supported in the tape
  gateway. architecture.

  <note> Cache storage must be allocated to the gateway before you can create
  a virtual tape. Use the `AddCache` operation to add cache storage to a
  gateway.

  </note>
  """
  def create_tape_with_barcode(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateTapeWithBarcode",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Gets a list of the file shares for a specific file gateway, or the list of
  file shares that belong to the calling user account. This operation is only
  supported in the file gateway architecture.
  """
  def list_file_shares(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListFileShares",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Lists the tags that have been added to the specified resource. This
  operation is only supported in the cached volume, stored volume and tape
  gateway architecture.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Lists the iSCSI stored volumes of a gateway. Results are sorted by volume
  ARN. The response includes only the volume ARNs. If you want additional
  volume information, use the `DescribeStorediSCSIVolumes` or the
  `DescribeCachediSCSIVolumes` API.

  The operation supports pagination. By default, the operation returns a
  maximum of up to 100 volumes. You can optionally specify the `Limit` field
  in the body to limit the number of volumes in the response. If the number
  of volumes returned in the response is truncated, the response includes a
  Marker field. You can use this Marker value in your subsequent request to
  retrieve the next set of volumes. This operation is only supported in the
  cached volume and stored volume gateway architectures.
  """
  def list_volumes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListVolumes",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Deletes the specified virtual tape from the virtual tape shelf (VTS). This
  operation is only supported in the tape gateway architecture.
  """
  def delete_tape_archive(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTapeArchive",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns the bandwidth rate limits of a gateway. By default, these limits
  are not set, which means no bandwidth rate limiting is in effect.

  This operation only returns a value for a bandwidth rate limit only if the
  limit is set. If no limits are set for the gateway, then this operation
  returns only the gateway ARN in the response body. To specify which gateway
  to describe, use the Amazon Resource Name (ARN) of the gateway in your
  request.
  """
  def describe_bandwidth_rate_limit(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeBandwidthRateLimit",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Creates a file share on an existing file gateway. In Storage Gateway, a
  file share is a file system mount point backed by Amazon S3 cloud storage.
  Storage Gateway exposes file shares using a Network File System (NFS)
  interface. This operation is only supported in the file gateway
  architecture.

  <important> File gateway requires AWS Security Token Service (AWS STS) to
  be activated to enable you create a file share. Make sure AWS STS is
  activated in the region you are creating your file gateway in. If AWS STS
  is not activated in the region, activate it. For information about how to
  activate AWS STS, see Activating and Deactivating AWS STS in an AWS Region
  in the AWS Identity and Access Management User Guide.

  File gateway does not support creating hard or symbolic links on a file
  share.

  </important>
  """
  def create_n_f_s_file_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateNFSFileShare",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Starts a gateway that you previously shut down (see `ShutdownGateway`).
  After the gateway starts, you can then make other API calls, your
  applications can read from or write to the gateway's storage volumes and
  you will be able to take snapshot backups.

  <note> When you make a request, you will get a 200 OK success response
  immediately. However, it might take some time for the gateway to be ready.
  You should call `DescribeGatewayInformation` and check the status before
  making any additional API calls. For more information, see
  `ActivateGateway`.

  </note> To specify which gateway to start, use the Amazon Resource Name
  (ARN) of the gateway in your request.
  """
  def start_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartGateway",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Initiates a snapshot of a volume.

  AWS Storage Gateway provides the ability to back up point-in-time snapshots
  of your data to Amazon Simple Storage (S3) for durable off-site recovery,
  as well as import the data to an Amazon Elastic Block Store (EBS) volume in
  Amazon Elastic Compute Cloud (EC2). You can take snapshots of your gateway
  volume on a scheduled or ad-hoc basis. This API enables you to take ad-hoc
  snapshot. For more information, see [Editing a Snapshot
  Schedule](http://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot).

  In the CreateSnapshot request you identify the volume by providing its
  Amazon Resource Name (ARN). You must also provide description for the
  snapshot. When AWS Storage Gateway takes the snapshot of specified volume,
  the snapshot and description appears in the AWS Storage Gateway Console. In
  response, AWS Storage Gateway returns you a snapshot ID. You can use this
  snapshot ID to check the snapshot progress or later use it when you want to
  create a volume from a snapshot. This operation is only supported in stored
  and cached volume gateway architecture.

  <note> To list or delete a snapshot, you must use the Amazon EC2 API. For
  more information, see DescribeSnapshots or DeleteSnapshot in the [EC2 API
  reference](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html).

  </note> <important> Volume and snapshot IDs are changing to a longer length
  ID format. For more information, see the important note on the
  [Welcome](http://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html)
  page.

  </important>
  """
  def create_snapshot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSnapshot",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Gets a description for one or more file shares from a file gateway. This
  operation is only supported in file gateways.
  """
  def describe_n_f_s_file_shares(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNFSFileShares",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Disables a tape gateway when the gateway is no longer functioning. For
  example, if your gateway VM is damaged, you can disable the gateway so you
  can recover virtual tapes.

  Use this operation for a tape gateway that is not reachable or not
  functioning. This operation is only supported in the tape gateway
  architectures.

  <important> Once a gateway is disabled it cannot be enabled.

  </important>
  """
  def disable_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableGateway",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the recovery point for the specified virtual tape. This operation
  is only supported in the tape gateway architecture.

  A recovery point is a point in time view of a virtual tape at which all the
  data on the tape is consistent. If your gateway crashes, virtual tapes that
  have recovery points can be recovered to a new gateway.

  <note> The virtual tape can be retrieved to only one gateway. The retrieved
  tape is read-only. The virtual tape can be retrieved to only a tape
  gateway. There is no charge for retrieving recovery points.

  </note>
  """
  def retrieve_tape_recovery_point(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RetrieveTapeRecoveryPoint",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Creates a volume on a specified gateway. This operation is only supported
  in the stored volume gateway architecture.

  The size of the volume to create is inferred from the disk size. You can
  choose to preserve existing data on the disk, create volume from an
  existing snapshot, or create an empty volume. If you choose to create an
  empty gateway volume, then any existing data on the disk is erased.

  In the request you must specify the gateway and the disk information on
  which you are creating the volume. In response, the gateway creates the
  volume and returns volume information such as the volume Amazon Resource
  Name (ARN), its size, and the iSCSI target ARN that initiators can use to
  connect to the volume target.
  """
  def create_storedi_s_c_s_i_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateStorediSCSIVolume",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Updates a file share. This operation is only supported in the file gateway
  architecture.

  <note> To leave a file share field unchanged, set the corresponding input
  field to null.

  </note> Updates the following file share setting:

  <ul> <li> Default storage class for your S3 bucket

  </li> <li> Metadata defaults for your S3 bucket

  </li> <li> Allowed NFS clients for your file share

  </li> <li> Squash settings

  </li> <li> Write status of your file share

  </li> </ul> <note> To leave a file share field unchanged, set the
  corresponding input field to null. This operation is only supported in file
  gateways.

  </note>
  """
  def update_n_f_s_file_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateNFSFileShare",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns metadata about a gateway such as its name, network interfaces,
  configured time zone, and the state (whether the gateway is running or
  not). To specify which gateway to describe, use the Amazon Resource Name
  (ARN) of the gateway in your request.
  """
  def describe_gateway_information(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeGatewayInformation",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Deletes a gateway. To specify which gateway to delete, use the Amazon
  Resource Name (ARN) of the gateway in your request. The operation deletes
  the gateway; however, it does not delete the gateway virtual machine (VM)
  from your host computer.

  After you delete a gateway, you cannot reactivate it. Completed snapshots
  of the gateway volumes are not deleted upon deleting the gateway, however,
  pending snapshots will not complete. After you delete a gateway, your next
  step is to remove it from your environment.

  <important> You no longer pay software charges after the gateway is
  deleted; however, your existing Amazon EBS snapshots persist and you will
  continue to be billed for these snapshots. You can choose to remove all
  remaining Amazon EBS snapshots by canceling your Amazon EC2 subscription.
  If you prefer not to cancel your Amazon EC2 subscription, you can delete
  your snapshots using the Amazon EC2 console. For more information, see the
  [ AWS Storage Gateway Detail Page](http://aws.amazon.com/storagegateway).

  </important>
  """
  def delete_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteGateway",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Deletes the specified storage volume that you previously created using the
  `CreateCachediSCSIVolume` or `CreateStorediSCSIVolume` API. This operation
  is only supported in the cached volume and stored volume architectures. For
  stored volume gateways, the local disk that was configured as the storage
  volume is not deleted. You can reuse the local disk to create another
  storage volume.

  Before you delete a volume, make sure there are no iSCSI connections to the
  volume you are deleting. You should also make sure there is no snapshot in
  progress. You can use the Amazon Elastic Compute Cloud (Amazon EC2) API to
  query snapshots on the volume you are deleting and check the snapshot
  status. For more information, go to
  [DescribeSnapshots](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html)
  in the *Amazon Elastic Compute Cloud API Reference*.

  In the request, you must provide the Amazon Resource Name (ARN) of the
  storage volume you want to delete.
  """
  def delete_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVolume",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns information about the upload buffer of a gateway. This operation is
  supported for the stored volume, cached volume and tape gateway
  architectures.

  The response includes disk IDs that are configured as upload buffer space,
  and it includes the amount of upload buffer space allocated and used.
  """
  def describe_upload_buffer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeUploadBuffer",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns information about the working storage of a gateway. This operation
  is only supported in the stored volumes gateway architecture. This
  operation is deprecated in cached volumes API version (20120630). Use
  DescribeUploadBuffer instead.

  <note> Working storage is also referred to as upload buffer. You can also
  use the DescribeUploadBuffer operation to add upload buffer to a stored
  volume gateway.

  </note> The response includes disk IDs that are configured as working
  storage, and it includes the amount of working storage allocated and used.
  """
  def describe_working_storage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeWorkingStorage",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Lists the recovery points for a specified gateway. This operation is only
  supported in the cached volume gateway architecture.

  Each cache volume has one recovery point. A volume recovery point is a
  point in time at which all data of the volume is consistent and from which
  you can create a snapshot or clone a new cached volume from a source
  volume. To create a snapshot from a volume recovery point use the
  `CreateSnapshotFromVolumeRecoveryPoint` operation.
  """
  def list_volume_recovery_points(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListVolumeRecoveryPoints",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns a description of the specified Amazon Resource Name (ARN) of
  virtual tapes. If a `TapeARN` is not specified, returns a description of
  all virtual tapes associated with the specified gateway. This operation is
  only supported in the tape gateway architecture.
  """
  def describe_tapes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTapes",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Creates a cached volume on a specified cached volume gateway. This
  operation is only supported in the cached volume gateway architecture.

  <note> Cache storage must be allocated to the gateway before you can create
  a cached volume. Use the `AddCache` operation to add cache storage to a
  gateway.

  </note> In the request, you must specify the gateway, size of the volume in
  bytes, the iSCSI target name, an IP address on which to expose the target,
  and a unique client token. In response, the gateway creates the volume and
  returns information about it. This information includes the volume Amazon
  Resource Name (ARN), its size, and the iSCSI target ARN that initiators can
  use to connect to the volume target.

  Optionally, you can provide the ARN for an existing volume as the
  `SourceVolumeARN` for this cached volume, which creates an exact copy of
  the existing volume’s latest recovery point. The `VolumeSizeInBytes` value
  must be equal to or larger than the size of the copied volume, in bytes.
  """
  def create_cachedi_s_c_s_i_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCachediSCSIVolume",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Updates the bandwidth rate limits of a gateway. You can update both the
  upload and download bandwidth rate limit or specify only one of the two. If
  you don't set a bandwidth rate limit, the existing rate limit remains.

  By default, a gateway's bandwidth rate limits are not set. If you don't set
  any limit, the gateway does not have any limitations on its bandwidth usage
  and could potentially use the maximum available bandwidth.

  To specify which gateway to update, use the Amazon Resource Name (ARN) of
  the gateway in your request.
  """
  def update_bandwidth_rate_limit(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateBandwidthRateLimit",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Shuts down a gateway. To specify which gateway to shut down, use the Amazon
  Resource Name (ARN) of the gateway in the body of your request.

  The operation shuts down the gateway service component running in the
  gateway's virtual machine (VM) and not the host VM.

  <note> If you want to shut down the VM, it is recommended that you first
  shut down the gateway component in the VM to avoid unpredictable
  conditions.

  </note> After the gateway is shutdown, you cannot call any other API except
  `StartGateway`, `DescribeGatewayInformation`, and `ListGateways`. For more
  information, see `ActivateGateway`. Your applications cannot read from or
  write to the gateway's storage volumes, and there are no snapshots taken.

  <note> When you make a shutdown request, you will get a `200 OK` success
  response immediately. However, it might take some time for the gateway to
  shut down. You can call the `DescribeGatewayInformation` API to check the
  status. For more information, see `ActivateGateway`.

  </note> If do not intend to use the gateway again, you must delete the
  gateway (using `DeleteGateway`) to no longer pay software charges
  associated with the gateway.
  """
  def shutdown_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ShutdownGateway",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Lists gateways owned by an AWS account in a region specified in the
  request. The returned list is ordered by gateway Amazon Resource Name
  (ARN).

  By default, the operation returns a maximum of 100 gateways. This operation
  supports pagination that allows you to optionally reduce the number of
  gateways returned in a response.

  If you have more gateways than are returned in a response (that is, the
  response returns only a truncated list of your gateways), the response
  contains a marker that you can specify in your next request to fetch the
  next page of gateways.
  """
  def list_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListGateways",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Configures one or more gateway local disks as working storage for a
  gateway. This operation is only supported in the stored volume gateway
  architecture. This operation is deprecated in cached volume API version
  20120630. Use `AddUploadBuffer` instead.

  <note> Working storage is also referred to as upload buffer. You can also
  use the `AddUploadBuffer` operation to add upload buffer to a stored volume
  gateway.

  </note> In the request, you specify the gateway Amazon Resource Name (ARN)
  to which you want to add working storage, and one or more disk IDs that you
  want to configure as working storage.
  """
  def add_working_storage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddWorkingStorage",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a
  tape gateway. Virtual tapes archived in the VTS are not associated with any
  gateway. However after a tape is retrieved, it is associated with a
  gateway, even though it is also listed in the VTS, that is, archive. This
  operation is only supported in the tape gateway architecture.

  Once a tape is successfully retrieved to a gateway, it cannot be retrieved
  again to another gateway. You must archive the tape again before you can
  retrieve it to another gateway. This operation is only supported in the
  tape gateway architecture.
  """
  def retrieve_tape_archive(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RetrieveTapeArchive",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Updates the type of medium changer in a tape gateway. When you activate a
  tape gateway, you select a medium changer type for the tape gateway. This
  operation enables you to select a different type of medium changer after a
  tape gateway is activated. This operation is only supported in the tape
  gateway architecture.
  """
  def update_v_t_l_device_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateVTLDeviceType",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Adds one or more tags to the specified resource. You use tags to add
  metadata to resources, which you can use to categorize these resources. For
  example, you can categorize resources by purpose, owner, environment, or
  team. Each tag consists of a key and a value, which you define. You can add
  tags to the following AWS Storage Gateway resources:

  <ul> <li> Storage gateways of all types

  </li> </ul> <ul> <li> Storage Volumes

  </li> </ul> <ul> <li> Virtual Tapes

  </li> </ul> You can create a maximum of 10 tags for each resource. Virtual
  tapes and storage volumes that are recovered to a new gateway maintain
  their tags.
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns a description of specified virtual tapes in the virtual tape shelf
  (VTS). This operation is only supported in the tape gateway architecture.

  If a specific `TapeARN` is not specified, AWS Storage Gateway returns a
  description of all virtual tapes found in the VTS associated with your
  account.
  """
  def describe_tape_archives(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTapeArchives",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Sets the password for your VM local console. When you log in to the local
  console for the first time, you log in to the VM with the default
  credentials. We recommend that you set a new password. You don't need to
  know the default password to set a new password.
  """
  def set_local_console_password(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetLocalConsolePassword",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Creates one or more virtual tapes. You write data to the virtual tapes and
  then archive the tapes. This operation is only supported in the tape
  gateway architecture.

  <note> Cache storage must be allocated to the gateway before you can create
  virtual tapes. Use the `AddCache` operation to add cache storage to a
  gateway.

  </note>
  """
  def create_tapes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateTapes",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Activates the gateway you previously deployed on your host. For more
  information, see [ Activate the AWS Storage
  Gateway](http://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedActivateGateway-common.html).
  In the activation process, you specify information such as the region you
  want to use for storing snapshots or tapes, the time zone for scheduled
  snapshots the gateway snapshot schedule window, an activation key, and a
  name for your gateway. The activation process also associates your gateway
  with your account; for more information, see `UpdateGatewayInformation`.

  <note> You must turn on the gateway VM before you can activate your
  gateway.

  </note>
  """
  def activate_gateway(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ActivateGateway",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials
  for a specified iSCSI target. By default, a gateway does not have CHAP
  enabled; however, for added security, you might use it.

  <important> When you update CHAP credentials, all existing connections on
  the target are closed and initiators must reconnect with the new
  credentials.

  </important>
  """
  def update_chap_credentials(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateChapCredentials",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Updates a snapshot schedule configured for a gateway volume. This operation
  is only supported in the cached volume and stored volume gateway
  architectures.

  The default snapshot schedule for volume is once every 24 hours, starting
  at the creation time of the volume. You can use this API to change the
  snapshot schedule configured for the volume.

  In the request you must identify the gateway volume whose snapshot schedule
  you want to update, and the schedule information, including when you want
  the snapshot to begin on a day and the frequency (in hours) of snapshots.
  """
  def update_snapshot_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateSnapshotSchedule",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns a description of the gateway volumes specified in the request. This
  operation is only supported in the cached volume gateway architecture.

  The list of gateway volumes in the request must be from one gateway. In the
  response Amazon Storage Gateway returns volume information sorted by volume
  Amazon Resource Name (ARN).
  """
  def describe_cachedi_s_c_s_i_volumes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCachediSCSIVolumes",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Initiates a snapshot of a gateway from a volume recovery point. This
  operation is only supported in the cached volume gateway architecture.

  A volume recovery point is a point in time at which all data of the volume
  is consistent and from which you can create a snapshot. To get a list of
  volume recovery point for cached volume gateway, use
  `ListVolumeRecoveryPoints`.

  In the `CreateSnapshotFromVolumeRecoveryPoint` request, you identify the
  volume by providing its Amazon Resource Name (ARN). You must also provide a
  description for the snapshot. When the gateway takes a snapshot of the
  specified volume, the snapshot and its description appear in the AWS
  Storage Gateway console. In response, the gateway returns you a snapshot
  ID. You can use this snapshot ID to check the snapshot progress or later
  use it when you want to create a volume from a snapshot.

  <note> To list or delete a snapshot, you must use the Amazon EC2 API. For
  more information, in *Amazon Elastic Compute Cloud API Reference*.

  </note>
  """
  def create_snapshot_from_volume_recovery_point(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSnapshotFromVolumeRecoveryPoint",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Configures one or more gateway local disks as upload buffer for a specified
  gateway. This operation is supported for the stored volume, cached volume
  and tape gateway architectures.

  In the request, you specify the gateway Amazon Resource Name (ARN) to which
  you want to add upload buffer, and one or more disk IDs that you want to
  configure as upload buffer.
  """
  def add_upload_buffer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddUploadBuffer",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns the description of the gateway volumes specified in the request.
  The list of gateway volumes in the request must be from one gateway. In the
  response Amazon Storage Gateway returns volume information sorted by volume
  ARNs. This operation is only supported in stored volume gateway
  architecture.
  """
  def describe_storedi_s_c_s_i_volumes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeStorediSCSIVolumes",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns your gateway's weekly maintenance start time including the day and
  time of the week. Note that values are in terms of the gateway's time zone.
  """
  def describe_maintenance_start_time(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceStartTime",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns a list of the gateway's local disks. To specify which gateway to
  describe, you use the Amazon Resource Name (ARN) of the gateway in the body
  of the request.

  The request returns a list of all disks, specifying which are configured as
  working storage, cache storage, or stored volume or not configured at all.
  The response includes a `DiskStatus` field. This field can have a value of
  present (the disk is available to use), missing (the disk is no longer
  connected to the gateway), or mismatch (the disk node is occupied by a disk
  that has incorrect metadata or the disk content is corrupted).
  """
  def list_local_disks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListLocalDisks",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Deletes a snapshot of a volume.

  You can take snapshots of your gateway volumes on a scheduled or ad hoc
  basis. This API action enables you to delete a snapshot schedule for a
  volume. For more information, see [Working with
  Snapshots](http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html).
  In the `DeleteSnapshotSchedule` request, you identify the volume by
  providing its Amazon Resource Name (ARN).

  <note> To list or delete a snapshot, you must use the Amazon EC2 API. in
  *Amazon Elastic Compute Cloud API Reference*.

  </note>
  """
  def delete_snapshot_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSnapshotSchedule",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns a description of virtual tape library (VTL) devices for the
  specified tape gateway. In the response, AWS Storage Gateway returns VTL
  device information.

  This operation is only supported in the tape gateway architecture.
  """
  def describe_v_t_l_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVTLDevices",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a
  gateway after the retrieval process is initiated. The virtual tape is
  returned to the VTS.
  """
  def cancel_retrieval(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CancelRetrieval",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Updates a gateway's metadata, which includes the gateway's name and time
  zone. To specify which gateway to update, use the Amazon Resource Name
  (ARN) of the gateway in your request.

  <note> For Gateways activated after September 2, 2015, the gateway's ARN
  contains the gateway ID rather than the gateway name. However, changing the
  name of the gateway has no effect on the gateway's ARN.

  </note>
  """
  def update_gateway_information(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateGatewayInformation",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Updates a gateway's weekly maintenance start time information, including
  day and time of the week. The maintenance time is the time in your
  gateway's time zone.
  """
  def update_maintenance_start_time(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateMaintenanceStartTime",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Refreshes the cache for the specified file share. This operation finds
  objects in the Amazon S3 bucket that were added, removed or replaced since
  the gateway last listed the bucket's contents and cached the results.
  """
  def refresh_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RefreshCache",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Deletes a file share from a file gateway. This operation is only supported
  in the file gateway architecture.
  """
  def delete_file_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteFileShare",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Deletes the specified virtual tape. This operation is only supported in the
  tape gateway architecture.
  """
  def delete_tape(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTape",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
  credentials information for a specified iSCSI target, one for each
  target-initiator pair.
  """
  def describe_chap_credentials(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeChapCredentials",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Returns a list of virtual tape recovery points that are available for the
  specified tape gateway.

  A recovery point is a point-in-time view of a virtual tape at which all the
  data on the virtual tape is consistent. If your gateway crashes, virtual
  tapes that have recovery points can be recovered to a new gateway. This
  operation is only supported in the tape gateway architecture.
  """
  def describe_tape_recovery_points(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTapeRecoveryPoints",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
  @doc """
  Configures one or more gateway local disks as cache for a gateway. This
  operation is only supported in the cached volume, tape and file gateway
  architectures (see [Storage Gateway
  Concepts](http://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html)).

  In the request, you specify the gateway Amazon Resource Name (ARN) to which
  you want to add cache, and one or more disk IDs that you want to configure
  as cache.
  """
  def add_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "storagegateway",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddCache",
      
      target_prefix:    "StorageGateway_20130630",
      
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      method:           :post
    }
  end
  
end