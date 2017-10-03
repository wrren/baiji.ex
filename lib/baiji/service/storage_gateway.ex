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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteChapCredentials",
      method:           :post,
      input_shape:      "DeleteChapCredentialsInput",
      output_shape:     "DeleteChapCredentialsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after
  the archiving process is initiated. This operation is only supported in the
  tape gateway architecture.
  """
  def cancel_archival(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CancelArchival",
      method:           :post,
      input_shape:      "CancelArchivalInput",
      output_shape:     "CancelArchivalOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ResetCache",
      method:           :post,
      input_shape:      "ResetCacheInput",
      output_shape:     "ResetCacheOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteBandwidthRateLimit",
      method:           :post,
      input_shape:      "DeleteBandwidthRateLimitInput",
      output_shape:     "DeleteBandwidthRateLimitOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTapes",
      method:           :post,
      input_shape:      "ListTapesInput",
      output_shape:     "ListTapesOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeSnapshotSchedule",
      method:           :post,
      input_shape:      "DescribeSnapshotScheduleInput",
      output_shape:     "DescribeSnapshotScheduleOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeCache",
      method:           :post,
      input_shape:      "DescribeCacheInput",
      output_shape:     "DescribeCacheOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListVolumeInitiators",
      method:           :post,
      input_shape:      "ListVolumeInitiatorsInput",
      output_shape:     "ListVolumeInitiatorsOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateGatewaySoftwareNow",
      method:           :post,
      input_shape:      "UpdateGatewaySoftwareNowInput",
      output_shape:     "UpdateGatewaySoftwareNowOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes one or more tags from the specified resource. This operation is
  only supported in the cached volume, stored volume and tape gateway
  architectures.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromResource",
      method:           :post,
      input_shape:      "RemoveTagsFromResourceInput",
      output_shape:     "RemoveTagsFromResourceOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateTapeWithBarcode",
      method:           :post,
      input_shape:      "CreateTapeWithBarcodeInput",
      output_shape:     "CreateTapeWithBarcodeOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a list of the file shares for a specific file gateway, or the list of
  file shares that belong to the calling user account. This operation is only
  supported in the file gateway architecture.
  """
  def list_file_shares(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListFileShares",
      method:           :post,
      input_shape:      "ListFileSharesInput",
      output_shape:     "ListFileSharesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the tags that have been added to the specified resource. This
  operation is only supported in the cached volume, stored volume and tape
  gateway architecture.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      method:           :post,
      input_shape:      "ListTagsForResourceInput",
      output_shape:     "ListTagsForResourceOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListVolumes",
      method:           :post,
      input_shape:      "ListVolumesInput",
      output_shape:     "ListVolumesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified virtual tape from the virtual tape shelf (VTS). This
  operation is only supported in the tape gateway architecture.
  """
  def delete_tape_archive(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTapeArchive",
      method:           :post,
      input_shape:      "DeleteTapeArchiveInput",
      output_shape:     "DeleteTapeArchiveOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeBandwidthRateLimit",
      method:           :post,
      input_shape:      "DescribeBandwidthRateLimitInput",
      output_shape:     "DescribeBandwidthRateLimitOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateNFSFileShare",
      method:           :post,
      input_shape:      "CreateNFSFileShareInput",
      output_shape:     "CreateNFSFileShareOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartGateway",
      method:           :post,
      input_shape:      "StartGatewayInput",
      output_shape:     "StartGatewayOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateSnapshot",
      method:           :post,
      input_shape:      "CreateSnapshotInput",
      output_shape:     "CreateSnapshotOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a description for one or more file shares from a file gateway. This
  operation is only supported in file gateways.
  """
  def describe_n_f_s_file_shares(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeNFSFileShares",
      method:           :post,
      input_shape:      "DescribeNFSFileSharesInput",
      output_shape:     "DescribeNFSFileSharesOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisableGateway",
      method:           :post,
      input_shape:      "DisableGatewayInput",
      output_shape:     "DisableGatewayOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "RetrieveTapeRecoveryPoint",
      method:           :post,
      input_shape:      "RetrieveTapeRecoveryPointInput",
      output_shape:     "RetrieveTapeRecoveryPointOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateStorediSCSIVolume",
      method:           :post,
      input_shape:      "CreateStorediSCSIVolumeInput",
      output_shape:     "CreateStorediSCSIVolumeOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateNFSFileShare",
      method:           :post,
      input_shape:      "UpdateNFSFileShareInput",
      output_shape:     "UpdateNFSFileShareOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeGatewayInformation",
      method:           :post,
      input_shape:      "DescribeGatewayInformationInput",
      output_shape:     "DescribeGatewayInformationOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteGateway",
      method:           :post,
      input_shape:      "DeleteGatewayInput",
      output_shape:     "DeleteGatewayOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteVolume",
      method:           :post,
      input_shape:      "DeleteVolumeInput",
      output_shape:     "DeleteVolumeOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeUploadBuffer",
      method:           :post,
      input_shape:      "DescribeUploadBufferInput",
      output_shape:     "DescribeUploadBufferOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeWorkingStorage",
      method:           :post,
      input_shape:      "DescribeWorkingStorageInput",
      output_shape:     "DescribeWorkingStorageOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListVolumeRecoveryPoints",
      method:           :post,
      input_shape:      "ListVolumeRecoveryPointsInput",
      output_shape:     "ListVolumeRecoveryPointsOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTapes",
      method:           :post,
      input_shape:      "DescribeTapesInput",
      output_shape:     "DescribeTapesOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateCachediSCSIVolume",
      method:           :post,
      input_shape:      "CreateCachediSCSIVolumeInput",
      output_shape:     "CreateCachediSCSIVolumeOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateBandwidthRateLimit",
      method:           :post,
      input_shape:      "UpdateBandwidthRateLimitInput",
      output_shape:     "UpdateBandwidthRateLimitOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ShutdownGateway",
      method:           :post,
      input_shape:      "ShutdownGatewayInput",
      output_shape:     "ShutdownGatewayOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListGateways",
      method:           :post,
      input_shape:      "ListGatewaysInput",
      output_shape:     "ListGatewaysOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddWorkingStorage",
      method:           :post,
      input_shape:      "AddWorkingStorageInput",
      output_shape:     "AddWorkingStorageOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "RetrieveTapeArchive",
      method:           :post,
      input_shape:      "RetrieveTapeArchiveInput",
      output_shape:     "RetrieveTapeArchiveOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateVTLDeviceType",
      method:           :post,
      input_shape:      "UpdateVTLDeviceTypeInput",
      output_shape:     "UpdateVTLDeviceTypeOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddTagsToResource",
      method:           :post,
      input_shape:      "AddTagsToResourceInput",
      output_shape:     "AddTagsToResourceOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTapeArchives",
      method:           :post,
      input_shape:      "DescribeTapeArchivesInput",
      output_shape:     "DescribeTapeArchivesOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetLocalConsolePassword",
      method:           :post,
      input_shape:      "SetLocalConsolePasswordInput",
      output_shape:     "SetLocalConsolePasswordOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateTapes",
      method:           :post,
      input_shape:      "CreateTapesInput",
      output_shape:     "CreateTapesOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ActivateGateway",
      method:           :post,
      input_shape:      "ActivateGatewayInput",
      output_shape:     "ActivateGatewayOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateChapCredentials",
      method:           :post,
      input_shape:      "UpdateChapCredentialsInput",
      output_shape:     "UpdateChapCredentialsOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateSnapshotSchedule",
      method:           :post,
      input_shape:      "UpdateSnapshotScheduleInput",
      output_shape:     "UpdateSnapshotScheduleOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeCachediSCSIVolumes",
      method:           :post,
      input_shape:      "DescribeCachediSCSIVolumesInput",
      output_shape:     "DescribeCachediSCSIVolumesOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateSnapshotFromVolumeRecoveryPoint",
      method:           :post,
      input_shape:      "CreateSnapshotFromVolumeRecoveryPointInput",
      output_shape:     "CreateSnapshotFromVolumeRecoveryPointOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddUploadBuffer",
      method:           :post,
      input_shape:      "AddUploadBufferInput",
      output_shape:     "AddUploadBufferOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStorediSCSIVolumes",
      method:           :post,
      input_shape:      "DescribeStorediSCSIVolumesInput",
      output_shape:     "DescribeStorediSCSIVolumesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns your gateway's weekly maintenance start time including the day and
  time of the week. Note that values are in terms of the gateway's time zone.
  """
  def describe_maintenance_start_time(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMaintenanceStartTime",
      method:           :post,
      input_shape:      "DescribeMaintenanceStartTimeInput",
      output_shape:     "DescribeMaintenanceStartTimeOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListLocalDisks",
      method:           :post,
      input_shape:      "ListLocalDisksInput",
      output_shape:     "ListLocalDisksOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteSnapshotSchedule",
      method:           :post,
      input_shape:      "DeleteSnapshotScheduleInput",
      output_shape:     "DeleteSnapshotScheduleOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeVTLDevices",
      method:           :post,
      input_shape:      "DescribeVTLDevicesInput",
      output_shape:     "DescribeVTLDevicesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a
  gateway after the retrieval process is initiated. The virtual tape is
  returned to the VTS.
  """
  def cancel_retrieval(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CancelRetrieval",
      method:           :post,
      input_shape:      "CancelRetrievalInput",
      output_shape:     "CancelRetrievalOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateGatewayInformation",
      method:           :post,
      input_shape:      "UpdateGatewayInformationInput",
      output_shape:     "UpdateGatewayInformationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a gateway's weekly maintenance start time information, including
  day and time of the week. The maintenance time is the time in your
  gateway's time zone.
  """
  def update_maintenance_start_time(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateMaintenanceStartTime",
      method:           :post,
      input_shape:      "UpdateMaintenanceStartTimeInput",
      output_shape:     "UpdateMaintenanceStartTimeOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Refreshes the cache for the specified file share. This operation finds
  objects in the Amazon S3 bucket that were added, removed or replaced since
  the gateway last listed the bucket's contents and cached the results.
  """
  def refresh_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RefreshCache",
      method:           :post,
      input_shape:      "RefreshCacheInput",
      output_shape:     "RefreshCacheOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a file share from a file gateway. This operation is only supported
  in the file gateway architecture.
  """
  def delete_file_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteFileShare",
      method:           :post,
      input_shape:      "DeleteFileShareInput",
      output_shape:     "DeleteFileShareOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified virtual tape. This operation is only supported in the
  tape gateway architecture.
  """
  def delete_tape(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTape",
      method:           :post,
      input_shape:      "DeleteTapeInput",
      output_shape:     "DeleteTapeOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
  credentials information for a specified iSCSI target, one for each
  target-initiator pair.
  """
  def describe_chap_credentials(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeChapCredentials",
      method:           :post,
      input_shape:      "DescribeChapCredentialsInput",
      output_shape:     "DescribeChapCredentialsOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTapeRecoveryPoints",
      method:           :post,
      input_shape:      "DescribeTapeRecoveryPointsInput",
      output_shape:     "DescribeTapeRecoveryPointsOutput",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddCache",
      method:           :post,
      input_shape:      "AddCacheInput",
      output_shape:     "AddCacheOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "storagegateway",
      target_prefix:    "StorageGateway_20130630",
      endpoint_prefix:  "storagegateway",
      type:             :json,
      version:          "2013-06-30",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"CreateSnapshotFromVolumeRecoveryPointInput" => %{"members" => %{"SnapshotDescription" => %{"shape" => "SnapshotDescription"}, "VolumeARN" => %{"shape" => "VolumeARN"}}, "required" => ["VolumeARN", "SnapshotDescription"], "type" => "structure"}, "AddUploadBufferOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "HourOfDay" => %{"max" => 23, "min" => 0, "type" => "integer"}, "DisableGatewayInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "ActivationKey" => %{"max" => 50, "min" => 1, "type" => "string"}, "DescribeTapeRecoveryPointsOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "Marker" => %{"shape" => "Marker"}, "TapeRecoveryPointInfos" => %{"shape" => "TapeRecoveryPointInfos"}}, "type" => "structure"}, "ResetCacheInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "DeleteChapCredentialsOutput" => %{"members" => %{"InitiatorName" => %{"shape" => "IqnName"}, "TargetARN" => %{"shape" => "TargetARN"}}, "type" => "structure"}, "TagKeys" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "BandwidthDownloadRateLimit" => %{"min" => 102400, "type" => "long"}, "DescribeStorediSCSIVolumesInput" => %{"members" => %{"VolumeARNs" => %{"shape" => "VolumeARNs"}}, "required" => ["VolumeARNs"], "type" => "structure"}, "ListTagsForResourceInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}, "ResourceARN" => %{"shape" => "ResourceARN"}}, "required" => ["ResourceARN"], "type" => "structure"}, "SnapshotDescription" => %{"max" => 255, "min" => 1, "type" => "string"}, "ListFileSharesOutput" => %{"members" => %{"FileShareInfoList" => %{"shape" => "FileShareInfoList"}, "Marker" => %{"shape" => "Marker"}, "NextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "AddTagsToResourceInput" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["ResourceARN", "Tags"], "type" => "structure"}, "DescribeCacheOutput" => %{"members" => %{"CacheAllocatedInBytes" => %{"shape" => "long"}, "CacheDirtyPercentage" => %{"shape" => "double"}, "CacheHitPercentage" => %{"shape" => "double"}, "CacheMissPercentage" => %{"shape" => "double"}, "CacheUsedPercentage" => %{"shape" => "double"}, "DiskIds" => %{"shape" => "DiskIds"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "CreateSnapshotOutput" => %{"members" => %{"SnapshotId" => %{"shape" => "SnapshotId"}, "VolumeARN" => %{"shape" => "VolumeARN"}}, "type" => "structure"}, "RemoveTagsFromResourceOutput" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}}, "type" => "structure"}, "StartGatewayInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "UpdateNFSFileShareInput" => %{"members" => %{"ClientList" => %{"shape" => "FileShareClientList"}, "DefaultStorageClass" => %{"shape" => "StorageClass"}, "FileShareARN" => %{"shape" => "FileShareARN"}, "KMSEncrypted" => %{"shape" => "Boolean"}, "KMSKey" => %{"shape" => "KMSKey"}, "NFSFileShareDefaults" => %{"shape" => "NFSFileShareDefaults"}, "ReadOnly" => %{"shape" => "Boolean"}, "Squash" => %{"shape" => "Squash"}}, "required" => ["FileShareARN"], "type" => "structure"}, "ListFileSharesInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "CancelRetrievalOutput" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}}, "type" => "structure"}, "TapeDriveType" => %{"max" => 50, "min" => 2, "type" => "string"}, "DeleteTapeArchiveInput" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}}, "required" => ["TapeARN"], "type" => "structure"}, "PermissionMode" => %{"max" => 4, "min" => 1, "pattern" => "^[0-7]{4}$", "type" => "string"}, "Disk" => %{"members" => %{"DiskAllocationResource" => %{"shape" => "string"}, "DiskAllocationType" => %{"shape" => "DiskAllocationType"}, "DiskId" => %{"shape" => "DiskId"}, "DiskNode" => %{"shape" => "string"}, "DiskPath" => %{"shape" => "string"}, "DiskSizeInBytes" => %{"shape" => "long"}, "DiskStatus" => %{"shape" => "string"}}, "type" => "structure"}, "DeleteTapeArchiveOutput" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "DescribeTapeRecoveryPointsInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}}, "required" => ["GatewayARN"], "type" => "structure"}, "NFSFileShareInfo" => %{"members" => %{"ClientList" => %{"shape" => "FileShareClientList"}, "DefaultStorageClass" => %{"shape" => "StorageClass"}, "FileShareARN" => %{"shape" => "FileShareARN"}, "FileShareId" => %{"shape" => "FileShareId"}, "FileShareStatus" => %{"shape" => "FileShareStatus"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "KMSEncrypted" => %{"shape" => "boolean"}, "KMSKey" => %{"shape" => "KMSKey"}, "LocationARN" => %{"shape" => "LocationARN"}, "NFSFileShareDefaults" => %{"shape" => "NFSFileShareDefaults"}, "Path" => %{"shape" => "Path"}, "ReadOnly" => %{"shape" => "Boolean"}, "Role" => %{"shape" => "Role"}, "Squash" => %{"shape" => "Squash"}}, "type" => "structure"}, "DeleteFileShareOutput" => %{"members" => %{"FileShareARN" => %{"shape" => "FileShareARN"}}, "type" => "structure"}, "LocalConsolePassword" => %{"max" => 512, "min" => 6, "pattern" => "^[ -~]+$", "sensitive" => true, "type" => "string"}, "RegionId" => %{"max" => 25, "min" => 1, "type" => "string"}, "AddCacheOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "Role" => %{"max" => 2048, "min" => 20, "type" => "string"}, "DeleteGatewayOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "RecurrenceInHours" => %{"max" => 24, "min" => 1, "type" => "integer"}, "Tapes" => %{"member" => %{"shape" => "Tape"}, "type" => "list"}, "ShutdownGatewayInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "TargetName" => %{"max" => 200, "min" => 1, "pattern" => "^[-\\.;a-z0-9]+$", "type" => "string"}, "Disks" => %{"member" => %{"shape" => "Disk"}, "type" => "list"}, "UpdateNFSFileShareOutput" => %{"members" => %{"FileShareARN" => %{"shape" => "FileShareARN"}}, "type" => "structure"}, "DeviceType" => %{"max" => 50, "min" => 2, "type" => "string"}, "StorageGatewayError" => %{"members" => %{"errorCode" => %{"shape" => "ErrorCode"}, "errorDetails" => %{"shape" => "errorDetails"}}, "type" => "structure"}, "DayOfWeek" => %{"max" => 6, "min" => 0, "type" => "integer"}, "CreatedDate" => %{"type" => "timestamp"}, "DescribeUploadBufferInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "CreateTapeWithBarcodeOutput" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}}, "type" => "structure"}, "DescribeSnapshotScheduleOutput" => %{"members" => %{"Description" => %{"shape" => "Description"}, "RecurrenceInHours" => %{"shape" => "RecurrenceInHours"}, "StartAt" => %{"shape" => "HourOfDay"}, "Timezone" => %{"shape" => "GatewayTimezone"}, "VolumeARN" => %{"shape" => "VolumeARN"}}, "type" => "structure"}, "DescribeUploadBufferOutput" => %{"members" => %{"DiskIds" => %{"shape" => "DiskIds"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "UploadBufferAllocatedInBytes" => %{"shape" => "long"}, "UploadBufferUsedInBytes" => %{"shape" => "long"}}, "type" => "structure"}, "boolean" => %{"type" => "boolean"}, "ChapSecret" => %{"max" => 100, "min" => 1, "type" => "string"}, "CreateSnapshotFromVolumeRecoveryPointOutput" => %{"members" => %{"SnapshotId" => %{"shape" => "SnapshotId"}, "VolumeARN" => %{"shape" => "VolumeARN"}, "VolumeRecoveryPointTime" => %{"shape" => "string"}}, "type" => "structure"}, "CancelRetrievalInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "TapeARN" => %{"shape" => "TapeARN"}}, "required" => ["GatewayARN", "TapeARN"], "type" => "structure"}, "FileShareInfo" => %{"members" => %{"FileShareARN" => %{"shape" => "FileShareARN"}, "FileShareId" => %{"shape" => "FileShareId"}, "FileShareStatus" => %{"shape" => "FileShareStatus"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "DescribeMaintenanceStartTimeOutput" => %{"members" => %{"DayOfWeek" => %{"shape" => "DayOfWeek"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "HourOfDay" => %{"shape" => "HourOfDay"}, "MinuteOfHour" => %{"shape" => "MinuteOfHour"}, "Timezone" => %{"shape" => "GatewayTimezone"}}, "type" => "structure"}, "VTLDeviceProductIdentifier" => %{"type" => "string"}, "ClientToken" => %{"max" => 100, "min" => 5, "type" => "string"}, "DescribeTapeArchivesOutput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "TapeArchives" => %{"shape" => "TapeArchives"}}, "type" => "structure"}, "DeleteBandwidthRateLimitInput" => %{"members" => %{"BandwidthType" => %{"shape" => "BandwidthType"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN", "BandwidthType"], "type" => "structure"}, "IPV4AddressCIDR" => %{"pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([0-9]|[1-2][0-9]|3[0-2]))?$", "type" => "string"}, "DescribeVTLDevicesInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}, "VTLDeviceARNs" => %{"shape" => "VTLDeviceARNs"}}, "required" => ["GatewayARN"], "type" => "structure"}, "BandwidthType" => %{"max" => 25, "min" => 3, "type" => "string"}, "CreateStorediSCSIVolumeOutput" => %{"members" => %{"TargetARN" => %{"shape" => "TargetARN"}, "VolumeARN" => %{"shape" => "VolumeARN"}, "VolumeSizeInBytes" => %{"shape" => "long"}}, "type" => "structure"}, "FileShareId" => %{"max" => 30, "min" => 12, "type" => "string"}, "FileShareARN" => %{"max" => 500, "min" => 50, "type" => "string"}, "CachediSCSIVolume" => %{"members" => %{"CreatedDate" => %{"shape" => "CreatedDate"}, "SourceSnapshotId" => %{"shape" => "SnapshotId"}, "VolumeARN" => %{"shape" => "VolumeARN"}, "VolumeId" => %{"shape" => "VolumeId"}, "VolumeProgress" => %{"shape" => "DoubleObject"}, "VolumeSizeInBytes" => %{"shape" => "long"}, "VolumeStatus" => %{"shape" => "VolumeStatus"}, "VolumeType" => %{"shape" => "VolumeType"}, "VolumeiSCSIAttributes" => %{"shape" => "VolumeiSCSIAttributes"}}, "type" => "structure"}, "NextUpdateAvailabilityDate" => %{"max" => 25, "min" => 1, "type" => "string"}, "DeviceiSCSIAttributes" => %{"members" => %{"ChapEnabled" => %{"shape" => "boolean"}, "NetworkInterfaceId" => %{"shape" => "NetworkInterfaceId"}, "NetworkInterfacePort" => %{"shape" => "integer"}, "TargetARN" => %{"shape" => "TargetARN"}}, "type" => "structure"}, "DescribeSnapshotScheduleInput" => %{"members" => %{"VolumeARN" => %{"shape" => "VolumeARN"}}, "required" => ["VolumeARN"], "type" => "structure"}, "VTLDeviceARN" => %{"max" => 500, "min" => 50, "type" => "string"}, "Gateways" => %{"member" => %{"shape" => "GatewayInfo"}, "type" => "list"}, "UpdateChapCredentialsOutput" => %{"members" => %{"InitiatorName" => %{"shape" => "IqnName"}, "TargetARN" => %{"shape" => "TargetARN"}}, "type" => "structure"}, "DescribeWorkingStorageOutput" => %{"members" => %{"DiskIds" => %{"shape" => "DiskIds"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "WorkingStorageAllocatedInBytes" => %{"shape" => "long"}, "WorkingStorageUsedInBytes" => %{"shape" => "long"}}, "type" => "structure"}, "NFSFileShareDefaults" => %{"members" => %{"DirectoryMode" => %{"shape" => "PermissionMode"}, "FileMode" => %{"shape" => "PermissionMode"}, "GroupId" => %{"shape" => "PermissionId"}, "OwnerId" => %{"shape" => "PermissionId"}}, "type" => "structure"}, "UpdateGatewayInformationOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "GatewayName" => %{"shape" => "string"}}, "type" => "structure"}, "RemoveTagsFromResourceInput" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "TagKeys" => %{"shape" => "TagKeys"}}, "required" => ["ResourceARN", "TagKeys"], "type" => "structure"}, "GatewayInfo" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "GatewayId" => %{"shape" => "GatewayId"}, "GatewayName" => %{"shape" => "string"}, "GatewayOperationalState" => %{"shape" => "GatewayOperationalState"}, "GatewayType" => %{"shape" => "GatewayType"}}, "type" => "structure"}, "TapeUsage" => %{"type" => "long"}, "ShutdownGatewayOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "RefreshCacheOutput" => %{"members" => %{"FileShareARN" => %{"shape" => "FileShareARN"}}, "type" => "structure"}, "AddTagsToResourceOutput" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}}, "type" => "structure"}, "LocationARN" => %{"max" => 310, "min" => 16, "type" => "string"}, "Description" => %{"max" => 255, "min" => 1, "type" => "string"}, "CreateSnapshotInput" => %{"members" => %{"SnapshotDescription" => %{"shape" => "SnapshotDescription"}, "VolumeARN" => %{"shape" => "VolumeARN"}}, "required" => ["VolumeARN", "SnapshotDescription"], "type" => "structure"}, "NetworkInterfaceId" => %{"pattern" => "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z", "type" => "string"}, "ChapInfo" => %{"members" => %{"InitiatorName" => %{"shape" => "IqnName"}, "SecretToAuthenticateInitiator" => %{"shape" => "ChapSecret"}, "SecretToAuthenticateTarget" => %{"shape" => "ChapSecret"}, "TargetARN" => %{"shape" => "TargetARN"}}, "type" => "structure"}, "UpdateChapCredentialsInput" => %{"members" => %{"InitiatorName" => %{"shape" => "IqnName"}, "SecretToAuthenticateInitiator" => %{"shape" => "ChapSecret"}, "SecretToAuthenticateTarget" => %{"shape" => "ChapSecret"}, "TargetARN" => %{"shape" => "TargetARN"}}, "required" => ["TargetARN", "SecretToAuthenticateInitiator", "InitiatorName"], "type" => "structure"}, "ErrorCode" => %{"enum" => ["ActivationKeyExpired", "ActivationKeyInvalid", "ActivationKeyNotFound", "GatewayInternalError", "GatewayNotConnected", "GatewayNotFound", "GatewayProxyNetworkConnectionBusy", "AuthenticationFailure", "BandwidthThrottleScheduleNotFound", "Blocked", "CannotExportSnapshot", "ChapCredentialNotFound", "DiskAlreadyAllocated", "DiskDoesNotExist", "DiskSizeGreaterThanVolumeMaxSize", "DiskSizeLessThanVolumeSize", "DiskSizeNotGigAligned", "DuplicateCertificateInfo", "DuplicateSchedule", "EndpointNotFound", "IAMNotSupported", "InitiatorInvalid", "InitiatorNotFound", "InternalError", "InvalidGateway", "InvalidEndpoint", "InvalidParameters", "InvalidSchedule", "LocalStorageLimitExceeded", "LunAlreadyAllocated ", "LunInvalid", "MaximumContentLengthExceeded", "MaximumTapeCartridgeCountExceeded", "MaximumVolumeCountExceeded", "NetworkConfigurationChanged", "NoDisksAvailable", "NotImplemented", "NotSupported", "OperationAborted", "OutdatedGateway", "ParametersNotImplemented", "RegionInvalid", "RequestTimeout", "ServiceUnavailable", "SnapshotDeleted", "SnapshotIdInvalid", "SnapshotInProgress", "SnapshotNotFound", "SnapshotScheduleNotFound", "StagingAreaFull", "StorageFailure", "TapeCartridgeNotFound", "TargetAlreadyExists", "TargetInvalid", "TargetNotFound", "UnauthorizedOperation", "VolumeAlreadyExists", "VolumeIdInvalid", "VolumeInUse", "VolumeNotFound", "VolumeNotReady"], "type" => "string"}, "GatewayARN" => %{"max" => 500, "min" => 50, "type" => "string"}, "Tape" => %{"members" => %{"Progress" => %{"shape" => "DoubleObject"}, "TapeARN" => %{"shape" => "TapeARN"}, "TapeBarcode" => %{"shape" => "TapeBarcode"}, "TapeCreatedDate" => %{"shape" => "Time"}, "TapeSizeInBytes" => %{"shape" => "TapeSize"}, "TapeStatus" => %{"shape" => "TapeStatus"}, "TapeUsedInBytes" => %{"shape" => "TapeUsage"}, "VTLDevice" => %{"shape" => "VTLDeviceARN"}}, "type" => "structure"}, "Path" => %{"type" => "string"}, "ResourceARN" => %{"max" => 500, "min" => 50, "type" => "string"}, "DescribeVTLDevicesOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "Marker" => %{"shape" => "Marker"}, "VTLDevices" => %{"shape" => "VTLDevices"}}, "type" => "structure"}, "DoubleObject" => %{"type" => "double"}, "double" => %{"type" => "double"}, "VTLDevices" => %{"member" => %{"shape" => "VTLDevice"}, "type" => "list"}, "StorediSCSIVolumes" => %{"member" => %{"shape" => "StorediSCSIVolume"}, "type" => "list"}, "DescribeChapCredentialsInput" => %{"members" => %{"TargetARN" => %{"shape" => "TargetARN"}}, "required" => ["TargetARN"], "type" => "structure"}, "SnapshotId" => %{"pattern" => "\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z", "type" => "string"}, "Tags" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "VTLDeviceType" => %{"type" => "string"}, "ActivateGatewayInput" => %{"members" => %{"ActivationKey" => %{"shape" => "ActivationKey"}, "GatewayName" => %{"shape" => "GatewayName"}, "GatewayRegion" => %{"shape" => "RegionId"}, "GatewayTimezone" => %{"shape" => "GatewayTimezone"}, "GatewayType" => %{"shape" => "GatewayType"}, "MediumChangerType" => %{"shape" => "MediumChangerType"}, "TapeDriveType" => %{"shape" => "TapeDriveType"}}, "required" => ["ActivationKey", "GatewayName", "GatewayTimezone", "GatewayRegion"], "type" => "structure"}, "MediumChangerType" => %{"max" => 50, "min" => 2, "type" => "string"}, "ListTagsForResourceOutput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "ResourceARN" => %{"shape" => "ResourceARN"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "RetrieveTapeArchiveInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "TapeARN" => %{"shape" => "TapeARN"}}, "required" => ["TapeARN", "GatewayARN"], "type" => "structure"}, "DescribeTapeArchivesInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}, "TapeARNs" => %{"shape" => "TapeARNs"}}, "type" => "structure"}, "VTLDeviceVendor" => %{"type" => "string"}, "InvalidGatewayRequestException" => %{"exception" => true, "members" => %{"error" => %{"shape" => "StorageGatewayError"}, "message" => %{"shape" => "string"}}, "type" => "structure"}, "DeleteChapCredentialsInput" => %{"members" => %{"InitiatorName" => %{"shape" => "IqnName"}, "TargetARN" => %{"shape" => "TargetARN"}}, "required" => ["TargetARN", "InitiatorName"], "type" => "structure"}, "ListTapesInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}, "TapeARNs" => %{"shape" => "TapeARNs"}}, "type" => "structure"}, "BandwidthUploadRateLimit" => %{"min" => 51200, "type" => "long"}, "string" => %{"type" => "string"}, "TapeArchives" => %{"member" => %{"shape" => "TapeArchive"}, "type" => "list"}, "DescribeTapesInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}, "TapeARNs" => %{"shape" => "TapeARNs"}}, "required" => ["GatewayARN"], "type" => "structure"}, "long" => %{"type" => "long"}, "TapeSize" => %{"type" => "long"}, "CachediSCSIVolumes" => %{"member" => %{"shape" => "CachediSCSIVolume"}, "type" => "list"}, "TapeBarcode" => %{"max" => 16, "min" => 7, "pattern" => "^[A-Z0-9]*$", "type" => "string"}, "VolumeStatus" => %{"max" => 50, "min" => 3, "type" => "string"}, "Initiator" => %{"max" => 50, "min" => 1, "type" => "string"}, "TagValue" => %{"max" => 256, "type" => "string"}, "TapeARNs" => %{"member" => %{"shape" => "TapeARN"}, "type" => "list"}, "UpdateMaintenanceStartTimeOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "FileShareStatus" => %{"max" => 50, "min" => 3, "type" => "string"}, "DescribeBandwidthRateLimitOutput" => %{"members" => %{"AverageDownloadRateLimitInBitsPerSec" => %{"shape" => "BandwidthDownloadRateLimit"}, "AverageUploadRateLimitInBitsPerSec" => %{"shape" => "BandwidthUploadRateLimit"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "UpdateVTLDeviceTypeOutput" => %{"members" => %{"VTLDeviceARN" => %{"shape" => "VTLDeviceARN"}}, "type" => "structure"}, "VolumeId" => %{"max" => 30, "min" => 12, "type" => "string"}, "FileShareARNList" => %{"max" => 10, "member" => %{"shape" => "FileShareARN"}, "min" => 1, "type" => "list"}, "VolumeInfos" => %{"member" => %{"shape" => "VolumeInfo"}, "type" => "list"}, "errorDetails" => %{"key" => %{"shape" => "string"}, "type" => "map", "value" => %{"shape" => "string"}}, "TargetARN" => %{"max" => 800, "min" => 50, "type" => "string"}, "DescribeNFSFileSharesOutput" => %{"members" => %{"NFSFileShareInfoList" => %{"shape" => "NFSFileShareInfoList"}}, "type" => "structure"}, "TapeArchiveStatus" => %{"type" => "string"}, "RetrieveTapeRecoveryPointInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "TapeARN" => %{"shape" => "TapeARN"}}, "required" => ["TapeARN", "GatewayARN"], "type" => "structure"}, "DescribeMaintenanceStartTimeInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "CreateCachediSCSIVolumeOutput" => %{"members" => %{"TargetARN" => %{"shape" => "TargetARN"}, "VolumeARN" => %{"shape" => "VolumeARN"}}, "type" => "structure"}, "UpdateSnapshotScheduleInput" => %{"members" => %{"Description" => %{"shape" => "Description"}, "RecurrenceInHours" => %{"shape" => "RecurrenceInHours"}, "StartAt" => %{"shape" => "HourOfDay"}, "VolumeARN" => %{"shape" => "VolumeARN"}}, "required" => ["VolumeARN", "StartAt", "RecurrenceInHours"], "type" => "structure"}, "TapeRecoveryPointStatus" => %{"type" => "string"}, "GatewayName" => %{"max" => 255, "min" => 2, "pattern" => "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$", "type" => "string"}, "TapeBarcodePrefix" => %{"max" => 4, "min" => 1, "pattern" => "^[A-Z]*$", "type" => "string"}, "VTLDeviceARNs" => %{"member" => %{"shape" => "VTLDeviceARN"}, "type" => "list"}, "TapeStatus" => %{"type" => "string"}, "TapeRecoveryPointInfos" => %{"member" => %{"shape" => "TapeRecoveryPointInfo"}, "type" => "list"}, "AddCacheInput" => %{"members" => %{"DiskIds" => %{"shape" => "DiskIds"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN", "DiskIds"], "type" => "structure"}, "DeleteTapeOutput" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}}, "type" => "structure"}, "InternalServerError" => %{"exception" => true, "members" => %{"error" => %{"shape" => "StorageGatewayError"}, "message" => %{"shape" => "string"}}, "type" => "structure"}, "DescribeCachediSCSIVolumesOutput" => %{"members" => %{"CachediSCSIVolumes" => %{"shape" => "CachediSCSIVolumes"}}, "type" => "structure"}, "DescribeCacheInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "CreateNFSFileShareInput" => %{"members" => %{"ClientList" => %{"shape" => "FileShareClientList"}, "ClientToken" => %{"shape" => "ClientToken"}, "DefaultStorageClass" => %{"shape" => "StorageClass"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "KMSEncrypted" => %{"shape" => "Boolean"}, "KMSKey" => %{"shape" => "KMSKey"}, "LocationARN" => %{"shape" => "LocationARN"}, "NFSFileShareDefaults" => %{"shape" => "NFSFileShareDefaults"}, "ReadOnly" => %{"shape" => "Boolean"}, "Role" => %{"shape" => "Role"}, "Squash" => %{"shape" => "Squash"}}, "required" => ["ClientToken", "GatewayARN", "Role", "LocationARN"], "type" => "structure"}, "DescribeGatewayInformationOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "GatewayId" => %{"shape" => "GatewayId"}, "GatewayName" => %{"shape" => "string"}, "GatewayNetworkInterfaces" => %{"shape" => "GatewayNetworkInterfaces"}, "GatewayState" => %{"shape" => "GatewayState"}, "GatewayTimezone" => %{"shape" => "GatewayTimezone"}, "GatewayType" => %{"shape" => "GatewayType"}, "LastSoftwareUpdate" => %{"shape" => "LastSoftwareUpdate"}, "NextUpdateAvailabilityDate" => %{"shape" => "NextUpdateAvailabilityDate"}}, "type" => "structure"}, "CreateCachediSCSIVolumeInput" => %{"members" => %{"ClientToken" => %{"shape" => "ClientToken"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "NetworkInterfaceId" => %{"shape" => "NetworkInterfaceId"}, "SnapshotId" => %{"shape" => "SnapshotId"}, "SourceVolumeARN" => %{"shape" => "VolumeARN"}, "TargetName" => %{"shape" => "TargetName"}, "VolumeSizeInBytes" => %{"shape" => "long"}}, "required" => ["GatewayARN", "VolumeSizeInBytes", "TargetName", "NetworkInterfaceId", "ClientToken"], "type" => "structure"}, "ListVolumesOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "Marker" => %{"shape" => "Marker"}, "VolumeInfos" => %{"shape" => "VolumeInfos"}}, "type" => "structure"}, "GatewayType" => %{"max" => 20, "min" => 2, "type" => "string"}, "DescribeGatewayInformationInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "DeleteBandwidthRateLimitOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "CreateNFSFileShareOutput" => %{"members" => %{"FileShareARN" => %{"shape" => "FileShareARN"}}, "type" => "structure"}, "UpdateGatewaySoftwareNowOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "VolumeARN" => %{"max" => 500, "min" => 50, "type" => "string"}, "AddUploadBufferInput" => %{"members" => %{"DiskIds" => %{"shape" => "DiskIds"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN", "DiskIds"], "type" => "structure"}, "StorageClass" => %{"max" => 20, "min" => 5, "type" => "string"}, "UpdateBandwidthRateLimitOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "ListGatewaysInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "FileShareInfoList" => %{"member" => %{"shape" => "FileShareInfo"}, "type" => "list"}, "DescribeTapesOutput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "Tapes" => %{"shape" => "Tapes"}}, "type" => "structure"}, "StartGatewayOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "UpdateSnapshotScheduleOutput" => %{"members" => %{"VolumeARN" => %{"shape" => "VolumeARN"}}, "type" => "structure"}, "DiskIds" => %{"member" => %{"shape" => "DiskId"}, "type" => "list"}, "RefreshCacheInput" => %{"members" => %{"FileShareARN" => %{"shape" => "FileShareARN"}}, "required" => ["FileShareARN"], "type" => "structure"}, "UpdateGatewaySoftwareNowInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "CreateTapeWithBarcodeInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "TapeBarcode" => %{"shape" => "TapeBarcode"}, "TapeSizeInBytes" => %{"shape" => "TapeSize"}}, "required" => ["GatewayARN", "TapeSizeInBytes", "TapeBarcode"], "type" => "structure"}, "VolumeARNs" => %{"member" => %{"shape" => "VolumeARN"}, "type" => "list"}, "ListVolumeInitiatorsInput" => %{"members" => %{"VolumeARN" => %{"shape" => "VolumeARN"}}, "required" => ["VolumeARN"], "type" => "structure"}, "DescribeChapCredentialsOutput" => %{"members" => %{"ChapCredentials" => %{"shape" => "ChapCredentials"}}, "type" => "structure"}, "DeleteSnapshotScheduleOutput" => %{"members" => %{"VolumeARN" => %{"shape" => "VolumeARN"}}, "type" => "structure"}, "DeleteSnapshotScheduleInput" => %{"members" => %{"VolumeARN" => %{"shape" => "VolumeARN"}}, "required" => ["VolumeARN"], "type" => "structure"}, "ServiceUnavailableError" => %{"exception" => true, "members" => %{"error" => %{"shape" => "StorageGatewayError"}, "message" => %{"shape" => "string"}}, "type" => "structure"}, "Marker" => %{"max" => 1000, "min" => 1, "type" => "string"}, "DisableGatewayOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "AddWorkingStorageOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "CreateStorediSCSIVolumeInput" => %{"members" => %{"DiskId" => %{"shape" => "DiskId"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "NetworkInterfaceId" => %{"shape" => "NetworkInterfaceId"}, "PreserveExistingData" => %{"shape" => "boolean"}, "SnapshotId" => %{"shape" => "SnapshotId"}, "TargetName" => %{"shape" => "TargetName"}}, "required" => ["GatewayARN", "DiskId", "PreserveExistingData", "TargetName", "NetworkInterfaceId"], "type" => "structure"}, "DeleteVolumeOutput" => %{"members" => %{"VolumeARN" => %{"shape" => "VolumeARN"}}, "type" => "structure"}, "GatewayId" => %{"max" => 30, "min" => 12, "type" => "string"}, "CreateTapesInput" => %{"members" => %{"ClientToken" => %{"shape" => "ClientToken"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "NumTapesToCreate" => %{"shape" => "NumTapesToCreate"}, "TapeBarcodePrefix" => %{"shape" => "TapeBarcodePrefix"}, "TapeSizeInBytes" => %{"shape" => "TapeSize"}}, "required" => ["GatewayARN", "TapeSizeInBytes", "ClientToken", "NumTapesToCreate", "TapeBarcodePrefix"], "type" => "structure"}, "StorediSCSIVolume" => %{"members" => %{"CreatedDate" => %{"shape" => "CreatedDate"}, "PreservedExistingData" => %{"shape" => "boolean"}, "SourceSnapshotId" => %{"shape" => "SnapshotId"}, "VolumeARN" => %{"shape" => "VolumeARN"}, "VolumeDiskId" => %{"shape" => "DiskId"}, "VolumeId" => %{"shape" => "VolumeId"}, "VolumeProgress" => %{"shape" => "DoubleObject"}, "VolumeSizeInBytes" => %{"shape" => "long"}, "VolumeStatus" => %{"shape" => "VolumeStatus"}, "VolumeType" => %{"shape" => "VolumeType"}, "VolumeiSCSIAttributes" => %{"shape" => "VolumeiSCSIAttributes"}}, "type" => "structure"}, "IqnName" => %{"max" => 255, "min" => 1, "pattern" => "[0-9a-z:.-]+", "type" => "string"}, "VolumeInfo" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "GatewayId" => %{"shape" => "GatewayId"}, "VolumeARN" => %{"shape" => "VolumeARN"}, "VolumeId" => %{"shape" => "VolumeId"}, "VolumeSizeInBytes" => %{"shape" => "long"}, "VolumeType" => %{"shape" => "VolumeType"}}, "type" => "structure"}, "RetrieveTapeRecoveryPointOutput" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}}, "type" => "structure"}, "ChapCredentials" => %{"member" => %{"shape" => "ChapInfo"}, "type" => "list"}, "GatewayState" => %{"max" => 25, "min" => 2, "type" => "string"}, "DescribeStorediSCSIVolumesOutput" => %{"members" => %{"StorediSCSIVolumes" => %{"shape" => "StorediSCSIVolumes"}}, "type" => "structure"}, "CancelArchivalInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "TapeARN" => %{"shape" => "TapeARN"}}, "required" => ["GatewayARN", "TapeARN"], "type" => "structure"}, "UpdateVTLDeviceTypeInput" => %{"members" => %{"DeviceType" => %{"shape" => "DeviceType"}, "VTLDeviceARN" => %{"shape" => "VTLDeviceARN"}}, "required" => ["VTLDeviceARN", "DeviceType"], "type" => "structure"}, "ListLocalDisksOutput" => %{"members" => %{"Disks" => %{"shape" => "Disks"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "ListVolumeRecoveryPointsOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "VolumeRecoveryPointInfos" => %{"shape" => "VolumeRecoveryPointInfos"}}, "type" => "structure"}, "DeleteGatewayInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "Time" => %{"type" => "timestamp"}, "ResetCacheOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "ListVolumeInitiatorsOutput" => %{"members" => %{"Initiators" => %{"shape" => "Initiators"}}, "type" => "structure"}, "DeleteTapeInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "TapeARN" => %{"shape" => "TapeARN"}}, "required" => ["GatewayARN", "TapeARN"], "type" => "structure"}, "Initiators" => %{"member" => %{"shape" => "Initiator"}, "type" => "list"}, "PermissionId" => %{"max" => 4294967294, "min" => 0, "type" => "long"}, "TapeRecoveryPointInfo" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}, "TapeRecoveryPointTime" => %{"shape" => "Time"}, "TapeSizeInBytes" => %{"shape" => "TapeSize"}, "TapeStatus" => %{"shape" => "TapeRecoveryPointStatus"}}, "type" => "structure"}, "VolumeType" => %{"max" => 100, "min" => 3, "type" => "string"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$", "type" => "string"}, "GatewayTimezone" => %{"max" => 10, "min" => 3, "type" => "string"}, "DiskAllocationType" => %{"max" => 100, "min" => 3, "type" => "string"}, "DescribeBandwidthRateLimitInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "UpdateBandwidthRateLimitInput" => %{"members" => %{"AverageDownloadRateLimitInBitsPerSec" => %{"shape" => "BandwidthDownloadRateLimit"}, "AverageUploadRateLimitInBitsPerSec" => %{"shape" => "BandwidthUploadRateLimit"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "VolumeRecoveryPointInfo" => %{"members" => %{"VolumeARN" => %{"shape" => "VolumeARN"}, "VolumeRecoveryPointTime" => %{"shape" => "string"}, "VolumeSizeInBytes" => %{"shape" => "long"}, "VolumeUsageInBytes" => %{"shape" => "long"}}, "type" => "structure"}, "ListLocalDisksInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "AddWorkingStorageInput" => %{"members" => %{"DiskIds" => %{"shape" => "DiskIds"}, "GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN", "DiskIds"], "type" => "structure"}, "DeleteFileShareInput" => %{"members" => %{"FileShareARN" => %{"shape" => "FileShareARN"}, "ForceDelete" => %{"shape" => "boolean"}}, "required" => ["FileShareARN"], "type" => "structure"}, "CreateTapesOutput" => %{"members" => %{"TapeARNs" => %{"shape" => "TapeARNs"}}, "type" => "structure"}, "TapeArchive" => %{"members" => %{"CompletionTime" => %{"shape" => "Time"}, "RetrievedTo" => %{"shape" => "GatewayARN"}, "TapeARN" => %{"shape" => "TapeARN"}, "TapeBarcode" => %{"shape" => "TapeBarcode"}, "TapeCreatedDate" => %{"shape" => "Time"}, "TapeSizeInBytes" => %{"shape" => "TapeSize"}, "TapeStatus" => %{"shape" => "TapeArchiveStatus"}, "TapeUsedInBytes" => %{"shape" => "TapeUsage"}}, "type" => "structure"}, "Squash" => %{"max" => 15, "min" => 5, "type" => "string"}, "SetLocalConsolePasswordOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "ActivateGatewayOutput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "type" => "structure"}, "DescribeWorkingStorageInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "DeleteVolumeInput" => %{"members" => %{"VolumeARN" => %{"shape" => "VolumeARN"}}, "required" => ["VolumeARN"], "type" => "structure"}, "ListGatewaysOutput" => %{"members" => %{"Gateways" => %{"shape" => "Gateways"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "UpdateGatewayInformationInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "GatewayName" => %{"shape" => "GatewayName"}, "GatewayTimezone" => %{"shape" => "GatewayTimezone"}}, "required" => ["GatewayARN"], "type" => "structure"}, "LastSoftwareUpdate" => %{"max" => 25, "min" => 1, "type" => "string"}, "TapeInfos" => %{"member" => %{"shape" => "TapeInfo"}, "type" => "list"}, "MinuteOfHour" => %{"max" => 59, "min" => 0, "type" => "integer"}, "KMSKey" => %{"max" => 2048, "min" => 20, "type" => "string"}, "CancelArchivalOutput" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}}, "type" => "structure"}, "TapeInfo" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "TapeARN" => %{"shape" => "TapeARN"}, "TapeBarcode" => %{"shape" => "TapeBarcode"}, "TapeSizeInBytes" => %{"shape" => "TapeSize"}, "TapeStatus" => %{"shape" => "TapeStatus"}}, "type" => "structure"}, "FileShareClientList" => %{"max" => 100, "member" => %{"shape" => "IPV4AddressCIDR"}, "min" => 1, "type" => "list"}, "RetrieveTapeArchiveOutput" => %{"members" => %{"TapeARN" => %{"shape" => "TapeARN"}}, "type" => "structure"}, "ListVolumesInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "Limit" => %{"shape" => "PositiveIntObject"}, "Marker" => %{"shape" => "Marker"}}, "type" => "structure"}, "PositiveIntObject" => %{"min" => 1, "type" => "integer"}, "ListTapesOutput" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "TapeInfos" => %{"shape" => "TapeInfos"}}, "type" => "structure"}, "integer" => %{"type" => "integer"}, "DiskId" => %{"max" => 300, "min" => 1, "type" => "string"}, "GatewayNetworkInterfaces" => %{"member" => %{"shape" => "NetworkInterface"}, "type" => "list"}, "VolumeRecoveryPointInfos" => %{"member" => %{"shape" => "VolumeRecoveryPointInfo"}, "type" => "list"}, "SetLocalConsolePasswordInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}, "LocalConsolePassword" => %{"shape" => "LocalConsolePassword"}}, "required" => ["GatewayARN", "LocalConsolePassword"], "type" => "structure"}, "VTLDevice" => %{"members" => %{"DeviceiSCSIAttributes" => %{"shape" => "DeviceiSCSIAttributes"}, "VTLDeviceARN" => %{"shape" => "VTLDeviceARN"}, "VTLDeviceProductIdentifier" => %{"shape" => "VTLDeviceProductIdentifier"}, "VTLDeviceType" => %{"shape" => "VTLDeviceType"}, "VTLDeviceVendor" => %{"shape" => "VTLDeviceVendor"}}, "type" => "structure"}, "NFSFileShareInfoList" => %{"member" => %{"shape" => "NFSFileShareInfo"}, "type" => "list"}, "ListVolumeRecoveryPointsInput" => %{"members" => %{"GatewayARN" => %{"shape" => "GatewayARN"}}, "required" => ["GatewayARN"], "type" => "structure"}, "DescribeNFSFileSharesInput" => %{"members" => %{"FileShareARNList" => %{"shape" => "FileShareARNList"}}, "required" => ["FileShareARNList"], "type" => "structure"}, "GatewayOperationalState" => %{"max" => 25, "min" => 2, "type" => "string"}, "VolumeiSCSIAttributes" => %{"members" => %{"ChapEnabled" => %{"shape" => "boolean"}, "LunNumber" => %{"shape" => "PositiveIntObject"}, "NetworkInterfaceId" => %{"shape" => "NetworkInterfaceId"}, "NetworkInterfacePort" => %{"shape" => "integer"}, "TargetARN" => %{"shape" => "TargetARN"}}, "type" => "structure"}, "TapeARN" => %{"max" => 500, "min" => 50, "pattern" => "^arn:(aws|aws-cn):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$", "type" => "string"}, "NetworkInterface" => %{"members" => %{"Ipv4Address" => %{"shape" => "string"}, "Ipv6Address" => %{"shape" => "string"}, "MacAddress" => %{"shape" => "string"}}, "type" => "structure"}, "DescribeCachediSCSIVolumesInput" => %{"members" => %{"VolumeARNs" => %{"shape" => "VolumeARNs"}}, "required" => ["VolumeARNs"], "type" => "structure"}, "NumTapesToCreate" => %{"max" => 10, "min" => 1, "type" => "integer"}, "UpdateMaintenanceStartTimeInput" => %{"members" => %{"DayOfWeek" => %{"shape" => "DayOfWeek"}, "GatewayARN" => %{"shape" => "GatewayARN"}, "HourOfDay" => %{"shape" => "HourOfDay"}, "MinuteOfHour" => %{"shape" => "MinuteOfHour"}}, "required" => ["GatewayARN", "HourOfDay", "MinuteOfHour", "DayOfWeek"], "type" => "structure"}}
  end
end