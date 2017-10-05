defmodule Baiji.S3 do
  @moduledoc """

  """

  @doc """
  Deletes a metrics configuration (specified by the metrics configuration ID)
  from the bucket.
  """
  def delete_bucket_metrics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?metrics",
      input:            input,
      options:          options,
      action:           "DeleteBucketMetricsConfiguration",
      method:           :delete,
      input_shape:      "DeleteBucketMetricsConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns some or all (up to 1000) of the objects in a bucket. You can use
  the request parameters as selection criteria to return a subset of the
  objects in a bucket.
  """
  def list_objects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}",
      input:            input,
      options:          options,
      action:           "ListObjects",
      method:           :get,
      input_shape:      "ListObjectsRequest",
      output_shape:     "ListObjectsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the policy of a specified bucket.
  """
  def get_bucket_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?policy",
      input:            input,
      options:          options,
      action:           "GetBucketPolicy",
      method:           :get,
      input_shape:      "GetBucketPolicyRequest",
      output_shape:     "GetBucketPolicyOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the replication configuration of a bucket.
  """
  def get_bucket_replication(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?replication",
      input:            input,
      options:          options,
      action:           "GetBucketReplication",
      method:           :get,
      input_shape:      "GetBucketReplicationRequest",
      output_shape:     "GetBucketReplicationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the analytics configurations for the bucket.
  """
  def list_bucket_analytics_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?analytics",
      input:            input,
      options:          options,
      action:           "ListBucketAnalyticsConfigurations",
      method:           :get,
      input_shape:      "ListBucketAnalyticsConfigurationsRequest",
      output_shape:     "ListBucketAnalyticsConfigurationsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of inventory configurations for the bucket.
  """
  def list_bucket_inventory_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?inventory",
      input:            input,
      options:          options,
      action:           "ListBucketInventoryConfigurations",
      method:           :get,
      input_shape:      "ListBucketInventoryConfigurationsRequest",
      output_shape:     "ListBucketInventoryConfigurationsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the permissions on a bucket using access control lists (ACL).
  """
  def put_bucket_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?acl",
      input:            input,
      options:          options,
      action:           "PutBucketAcl",
      method:           :put,
      input_shape:      "PutBucketAclRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the metrics configurations for the bucket.
  """
  def list_bucket_metrics_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?metrics",
      input:            input,
      options:          options,
      action:           "ListBucketMetricsConfigurations",
      method:           :get,
      input_shape:      "ListBucketMetricsConfigurationsRequest",
      output_shape:     "ListBucketMetricsConfigurationsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the tag set associated with the bucket.
  """
  def get_bucket_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?tagging",
      input:            input,
      options:          options,
      action:           "GetBucketTagging",
      method:           :get,
      input_shape:      "GetBucketTaggingRequest",
      output_shape:     "GetBucketTaggingOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Restores an archived copy of an object back into Amazon S3
  """
  def restore_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}?restore",
      input:            input,
      options:          options,
      action:           "RestoreObject",
      method:           :post,
      input_shape:      "RestoreObjectRequest",
      output_shape:     "RestoreObjectOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the policy from the bucket.
  """
  def delete_bucket_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?policy",
      input:            input,
      options:          options,
      action:           "DeleteBucketPolicy",
      method:           :delete,
      input_shape:      "DeleteBucketPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Initiates a multipart upload and returns an upload ID.

  **Note:** After you initiate multipart upload and upload one or more parts,
  you must either complete or abort multipart upload in order to stop getting
  charged for storage of the uploaded parts. Only after you either complete
  or abort multipart upload, Amazon S3 frees up the parts storage and stops
  charging you for the parts storage.
  """
  def create_multipart_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}?uploads",
      input:            input,
      options:          options,
      action:           "CreateMultipartUpload",
      method:           :post,
      input_shape:      "CreateMultipartUploadRequest",
      output_shape:     "CreateMultipartUploadOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the tag-set of an object.
  """
  def get_object_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}?tagging",
      input:            input,
      options:          options,
      action:           "GetObjectTagging",
      method:           :get,
      input_shape:      "GetObjectTaggingRequest",
      output_shape:     "GetObjectTaggingOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds an inventory configuration (identified by the inventory ID) from the
  bucket.
  """
  def put_bucket_inventory_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?inventory",
      input:            input,
      options:          options,
      action:           "PutBucketInventoryConfiguration",
      method:           :put,
      input_shape:      "PutBucketInventoryConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated, see the PutBucketNotificationConfiguraiton operation.
  """
  def put_bucket_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?notification",
      input:            input,
      options:          options,
      action:           "PutBucketNotification",
      method:           :put,
      input_shape:      "PutBucketNotificationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Replaces a policy on a bucket. If the bucket already has a policy, the one
  in this request completely replaces it.
  """
  def put_bucket_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?policy",
      input:            input,
      options:          options,
      action:           "PutBucketPolicy",
      method:           :put,
      input_shape:      "PutBucketPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated, see the GetBucketNotificationConfiguration operation.
  """
  def get_bucket_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?notification",
      input:            input,
      options:          options,
      action:           "GetBucketNotification",
      method:           :get,
      input_shape:      "GetBucketNotificationConfigurationRequest",
      output_shape:     "NotificationConfigurationDeprecated",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the request payment configuration for a bucket. By default, the bucket
  owner pays for downloads from the bucket. This configuration parameter
  enables the bucket owner (only) to specify that the person requesting the
  download will be charged for the download. Documentation on requester pays
  buckets can be found at
  http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html
  """
  def put_bucket_request_payment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?requestPayment",
      input:            input,
      options:          options,
      action:           "PutBucketRequestPayment",
      method:           :put,
      input_shape:      "PutBucketRequestPaymentRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a metrics configuration (specified by the metrics configuration ID)
  from the bucket.
  """
  def get_bucket_metrics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?metrics",
      input:            input,
      options:          options,
      action:           "GetBucketMetricsConfiguration",
      method:           :get,
      input_shape:      "GetBucketMetricsConfigurationRequest",
      output_shape:     "GetBucketMetricsConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  uses the acl subresource to set the access control list (ACL) permissions
  for an object that already exists in a bucket
  """
  def put_object_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}?acl",
      input:            input,
      options:          options,
      action:           "PutObjectAcl",
      method:           :put,
      input_shape:      "PutObjectAclRequest",
      output_shape:     "PutObjectAclOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the versioning state of a bucket.
  """
  def get_bucket_versioning(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?versioning",
      input:            input,
      options:          options,
      action:           "GetBucketVersioning",
      method:           :get,
      input_shape:      "GetBucketVersioningRequest",
      output_shape:     "GetBucketVersioningOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets a metrics configuration (specified by the metrics configuration ID)
  for the bucket.
  """
  def put_bucket_metrics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?metrics",
      input:            input,
      options:          options,
      action:           "PutBucketMetricsConfiguration",
      method:           :put,
      input_shape:      "PutBucketMetricsConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the website configuration for a bucket.
  """
  def get_bucket_website(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?website",
      input:            input,
      options:          options,
      action:           "GetBucketWebsite",
      method:           :get,
      input_shape:      "GetBucketWebsiteRequest",
      output_shape:     "GetBucketWebsiteOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the lifecycle configuration from the bucket.
  """
  def delete_bucket_lifecycle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?lifecycle",
      input:            input,
      options:          options,
      action:           "DeleteBucketLifecycle",
      method:           :delete,
      input_shape:      "DeleteBucketLifecycleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns some or all (up to 1000) of the objects in a bucket. You can use
  the request parameters as selection criteria to return a subset of the
  objects in a bucket. Note: ListObjectsV2 is the revised List Objects API
  and we recommend you use this revised API for new application development.
  """
  def list_objects_v2(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?list-type=2",
      input:            input,
      options:          options,
      action:           "ListObjectsV2",
      method:           :get,
      input_shape:      "ListObjectsV2Request",
      output_shape:     "ListObjectsV2Output",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of all buckets owned by the authenticated sender of the
  request.
  """
  def list_buckets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListBuckets",
      method:           :get,
      input_shape:      "",
      output_shape:     "ListBucketsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the region the bucket resides in.
  """
  def get_bucket_location(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?location",
      input:            input,
      options:          options,
      action:           "GetBucketLocation",
      method:           :get,
      input_shape:      "GetBucketLocationRequest",
      output_shape:     "GetBucketLocationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the replication configuration from the bucket.
  """
  def delete_bucket_replication(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?replication",
      input:            input,
      options:          options,
      action:           "DeleteBucketReplication",
      method:           :delete,
      input_shape:      "DeleteBucketReplicationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the logging status of a bucket and the permissions users have to
  view and modify that status. To use GET, you must be the bucket owner.
  """
  def get_bucket_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?logging",
      input:            input,
      options:          options,
      action:           "GetBucketLogging",
      method:           :get,
      input_shape:      "GetBucketLoggingRequest",
      output_shape:     "GetBucketLoggingOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Completes a multipart upload by assembling previously uploaded parts.
  """
  def complete_multipart_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "CompleteMultipartUpload",
      method:           :post,
      input_shape:      "CompleteMultipartUploadRequest",
      output_shape:     "CompleteMultipartUploadOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the lifecycle configuration information set on the bucket.
  """
  def get_bucket_lifecycle_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?lifecycle",
      input:            input,
      options:          options,
      action:           "GetBucketLifecycleConfiguration",
      method:           :get,
      input_shape:      "GetBucketLifecycleConfigurationRequest",
      output_shape:     "GetBucketLifecycleConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds an object to a bucket.
  """
  def put_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "PutObject",
      method:           :put,
      input_shape:      "PutObjectRequest",
      output_shape:     "PutObjectOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the accelerate configuration of an existing bucket.
  """
  def put_bucket_accelerate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?accelerate",
      input:            input,
      options:          options,
      action:           "PutBucketAccelerateConfiguration",
      method:           :put,
      input_shape:      "PutBucketAccelerateConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated, see the GetBucketLifecycleConfiguration operation.
  """
  def get_bucket_lifecycle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?lifecycle",
      input:            input,
      options:          options,
      action:           "GetBucketLifecycle",
      method:           :get,
      input_shape:      "GetBucketLifecycleRequest",
      output_shape:     "GetBucketLifecycleOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Set the website configuration for a bucket.
  """
  def put_bucket_website(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?website",
      input:            input,
      options:          options,
      action:           "PutBucketWebsite",
      method:           :put,
      input_shape:      "PutBucketWebsiteRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the versioning state of an existing bucket. To set the versioning
  state, you must be the bucket owner.
  """
  def put_bucket_versioning(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?versioning",
      input:            input,
      options:          options,
      action:           "PutBucketVersioning",
      method:           :put,
      input_shape:      "PutBucketVersioningRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the null version (if there is one) of an object and inserts a
  delete marker, which becomes the latest version of the object. If there
  isn't a null version, Amazon S3 does not remove any objects.
  """
  def delete_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "DeleteObject",
      method:           :delete,
      input_shape:      "DeleteObjectRequest",
      output_shape:     "DeleteObjectOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns an inventory configuration (identified by the inventory ID) from
  the bucket.
  """
  def get_bucket_inventory_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?inventory",
      input:            input,
      options:          options,
      action:           "GetBucketInventoryConfiguration",
      method:           :get,
      input_shape:      "GetBucketInventoryConfigurationRequest",
      output_shape:     "GetBucketInventoryConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets an analytics configuration for the bucket (specified by the analytics
  configuration ID).
  """
  def put_bucket_analytics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?analytics",
      input:            input,
      options:          options,
      action:           "PutBucketAnalyticsConfiguration",
      method:           :put,
      input_shape:      "PutBucketAnalyticsConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Aborts a multipart upload.

  To verify that all parts have been removed, so you don't get charged for
  the part storage, you should call the List Parts operation and ensure the
  parts list is empty.
  """
  def abort_multipart_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "AbortMultipartUpload",
      method:           :delete,
      input_shape:      "AbortMultipartUploadRequest",
      output_shape:     "AbortMultipartUploadOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the tags for a bucket.
  """
  def put_bucket_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?tagging",
      input:            input,
      options:          options,
      action:           "PutBucketTagging",
      method:           :put,
      input_shape:      "PutBucketTaggingRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns metadata about all of the versions of objects in a bucket.
  """
  def list_object_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?versions",
      input:            input,
      options:          options,
      action:           "ListObjectVersions",
      method:           :get,
      input_shape:      "ListObjectVersionsRequest",
      output_shape:     "ListObjectVersionsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the accelerate configuration of a bucket.
  """
  def get_bucket_accelerate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?accelerate",
      input:            input,
      options:          options,
      action:           "GetBucketAccelerateConfiguration",
      method:           :get,
      input_shape:      "GetBucketAccelerateConfigurationRequest",
      output_shape:     "GetBucketAccelerateConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the bucket. All objects (including all object versions and Delete
  Markers) in the bucket must be deleted before the bucket itself can be
  deleted.
  """
  def delete_bucket(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}",
      input:            input,
      options:          options,
      action:           "DeleteBucket",
      method:           :delete,
      input_shape:      "DeleteBucketRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Return torrent files from a bucket.
  """
  def get_object_torrent(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}?torrent",
      input:            input,
      options:          options,
      action:           "GetObjectTorrent",
      method:           :get,
      input_shape:      "GetObjectTorrentRequest",
      output_shape:     "GetObjectTorrentOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  The HEAD operation retrieves metadata from an object without returning the
  object itself. This operation is useful if you're only interested in an
  object's metadata. To use HEAD, you must have READ access to the object.
  """
  def head_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "HeadObject",
      method:           :head,
      input_shape:      "HeadObjectRequest",
      output_shape:     "HeadObjectOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an inventory configuration (identified by the inventory ID) from
  the bucket.
  """
  def delete_bucket_inventory_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?inventory",
      input:            input,
      options:          options,
      action:           "DeleteBucketInventoryConfiguration",
      method:           :delete,
      input_shape:      "DeleteBucketInventoryConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the cors configuration information set for the bucket.
  """
  def delete_bucket_cors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?cors",
      input:            input,
      options:          options,
      action:           "DeleteBucketCors",
      method:           :delete,
      input_shape:      "DeleteBucketCorsRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the cors configuration for a bucket.
  """
  def put_bucket_cors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?cors",
      input:            input,
      options:          options,
      action:           "PutBucketCors",
      method:           :put,
      input_shape:      "PutBucketCorsRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an analytics configuration for the bucket (specified by the
  analytics configuration ID).
  """
  def delete_bucket_analytics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?analytics",
      input:            input,
      options:          options,
      action:           "DeleteBucketAnalyticsConfiguration",
      method:           :delete,
      input_shape:      "DeleteBucketAnalyticsConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the notification configuration of a bucket.
  """
  def get_bucket_notification_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?notification",
      input:            input,
      options:          options,
      action:           "GetBucketNotificationConfiguration",
      method:           :get,
      input_shape:      "GetBucketNotificationConfigurationRequest",
      output_shape:     "NotificationConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads a part in a multipart upload.

  **Note:** After you initiate multipart upload and upload one or more parts,
  you must either complete or abort multipart upload in order to stop getting
  charged for storage of the uploaded parts. Only after you either complete
  or abort multipart upload, Amazon S3 frees up the parts storage and stops
  charging you for the parts storage.
  """
  def upload_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "UploadPart",
      method:           :put,
      input_shape:      "UploadPartRequest",
      output_shape:     "UploadPartOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  This operation enables you to delete multiple objects from a bucket using a
  single HTTP request. You may specify up to 1000 keys.
  """
  def delete_objects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?delete",
      input:            input,
      options:          options,
      action:           "DeleteObjects",
      method:           :post,
      input_shape:      "DeleteObjectsRequest",
      output_shape:     "DeleteObjectsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new bucket.
  """
  def create_bucket(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}",
      input:            input,
      options:          options,
      action:           "CreateBucket",
      method:           :put,
      input_shape:      "CreateBucketRequest",
      output_shape:     "CreateBucketOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the cors configuration for the bucket.
  """
  def get_bucket_cors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?cors",
      input:            input,
      options:          options,
      action:           "GetBucketCors",
      method:           :get,
      input_shape:      "GetBucketCorsRequest",
      output_shape:     "GetBucketCorsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new replication configuration (or replaces an existing one, if
  present).
  """
  def put_bucket_replication(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?replication",
      input:            input,
      options:          options,
      action:           "PutBucketReplication",
      method:           :put,
      input_shape:      "PutBucketReplicationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the supplied tag-set to an object that already exists in a bucket
  """
  def put_object_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}?tagging",
      input:            input,
      options:          options,
      action:           "PutObjectTagging",
      method:           :put,
      input_shape:      "PutObjectTaggingRequest",
      output_shape:     "PutObjectTaggingOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a copy of an object that is already stored in Amazon S3.
  """
  def copy_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "CopyObject",
      method:           :put,
      input_shape:      "CopyObjectRequest",
      output_shape:     "CopyObjectOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Enables notifications of specified events for a bucket.
  """
  def put_bucket_notification_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?notification",
      input:            input,
      options:          options,
      action:           "PutBucketNotificationConfiguration",
      method:           :put,
      input_shape:      "PutBucketNotificationConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets an analytics configuration for the bucket (specified by the analytics
  configuration ID).
  """
  def get_bucket_analytics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?analytics",
      input:            input,
      options:          options,
      action:           "GetBucketAnalyticsConfiguration",
      method:           :get,
      input_shape:      "GetBucketAnalyticsConfigurationRequest",
      output_shape:     "GetBucketAnalyticsConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the request payment configuration of a bucket.
  """
  def get_bucket_request_payment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?requestPayment",
      input:            input,
      options:          options,
      action:           "GetBucketRequestPayment",
      method:           :get,
      input_shape:      "GetBucketRequestPaymentRequest",
      output_shape:     "GetBucketRequestPaymentOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the tag-set from an existing object.
  """
  def delete_object_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}?tagging",
      input:            input,
      options:          options,
      action:           "DeleteObjectTagging",
      method:           :delete,
      input_shape:      "DeleteObjectTaggingRequest",
      output_shape:     "DeleteObjectTaggingOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Set the logging parameters for a bucket and to specify permissions for who
  can view and modify the logging parameters. To set the logging status of a
  bucket, you must be the bucket owner.
  """
  def put_bucket_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?logging",
      input:            input,
      options:          options,
      action:           "PutBucketLogging",
      method:           :put,
      input_shape:      "PutBucketLoggingRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets lifecycle configuration for your bucket. If a lifecycle configuration
  exists, it replaces it.
  """
  def put_bucket_lifecycle_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?lifecycle",
      input:            input,
      options:          options,
      action:           "PutBucketLifecycleConfiguration",
      method:           :put,
      input_shape:      "PutBucketLifecycleConfigurationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the tags from the bucket.
  """
  def delete_bucket_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?tagging",
      input:            input,
      options:          options,
      action:           "DeleteBucketTagging",
      method:           :delete,
      input_shape:      "DeleteBucketTaggingRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  This operation lists in-progress multipart uploads.
  """
  def list_multipart_uploads(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?uploads",
      input:            input,
      options:          options,
      action:           "ListMultipartUploads",
      method:           :get,
      input_shape:      "ListMultipartUploadsRequest",
      output_shape:     "ListMultipartUploadsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the access control list (ACL) of an object.
  """
  def get_object_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}?acl",
      input:            input,
      options:          options,
      action:           "GetObjectAcl",
      method:           :get,
      input_shape:      "GetObjectAclRequest",
      output_shape:     "GetObjectAclOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the parts that have been uploaded for a specific multipart upload.
  """
  def list_parts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "ListParts",
      method:           :get,
      input_shape:      "ListPartsRequest",
      output_shape:     "ListPartsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated, see the PutBucketLifecycleConfiguration operation.
  """
  def put_bucket_lifecycle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?lifecycle",
      input:            input,
      options:          options,
      action:           "PutBucketLifecycle",
      method:           :put,
      input_shape:      "PutBucketLifecycleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads a part by copying data from an existing object as data source.
  """
  def upload_part_copy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "UploadPartCopy",
      method:           :put,
      input_shape:      "UploadPartCopyRequest",
      output_shape:     "UploadPartCopyOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves objects from Amazon S3.
  """
  def get_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}/{Key+}",
      input:            input,
      options:          options,
      action:           "GetObject",
      method:           :get,
      input_shape:      "GetObjectRequest",
      output_shape:     "GetObjectOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  This operation is useful to determine if a bucket exists and you have
  permission to access it.
  """
  def head_bucket(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}",
      input:            input,
      options:          options,
      action:           "HeadBucket",
      method:           :head,
      input_shape:      "HeadBucketRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  This operation removes the website configuration from the bucket.
  """
  def delete_bucket_website(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?website",
      input:            input,
      options:          options,
      action:           "DeleteBucketWebsite",
      method:           :delete,
      input_shape:      "DeleteBucketWebsiteRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the access control policy for the bucket.
  """
  def get_bucket_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/{Bucket}?acl",
      input:            input,
      options:          options,
      action:           "GetBucketAcl",
      method:           :get,
      input_shape:      "GetBucketAclRequest",
      output_shape:     "GetBucketAclOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "s3",
      endpoint_prefix:  "s3",
      type:             :rest_xml,
      version:          "2006-03-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"BucketLogsPermission" => %{"enum" => ["FULL_CONTROL", "READ", "WRITE"], "type" => "string"}, "ContentRange" => %{"type" => "string"}, "DeleteBucketInventoryConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "InventoryId"}}, "required" => ["Bucket", "Id"], "type" => "structure"}, "TagCount" => %{"type" => "integer"}, "CreateBucketOutput" => %{"members" => %{"Location" => %{"location" => "header", "locationName" => "Location", "shape" => "Location"}}, "type" => "structure"}, "GetBucketWebsiteOutput" => %{"members" => %{"ErrorDocument" => %{"shape" => "ErrorDocument"}, "IndexDocument" => %{"shape" => "IndexDocument"}, "RedirectAllRequestsTo" => %{"shape" => "RedirectAllRequestsTo"}, "RoutingRules" => %{"shape" => "RoutingRules"}}, "type" => "structure"}, "PutBucketTaggingRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "Tagging" => %{"locationName" => "Tagging", "shape" => "Tagging", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "Tagging", "required" => ["Bucket", "Tagging"], "type" => "structure"}, "PutObjectAclRequest" => %{"members" => %{"ACL" => %{"location" => "header", "locationName" => "x-amz-acl", "shape" => "ObjectCannedACL"}, "AccessControlPolicy" => %{"locationName" => "AccessControlPolicy", "shape" => "AccessControlPolicy", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "GrantFullControl" => %{"location" => "header", "locationName" => "x-amz-grant-full-control", "shape" => "GrantFullControl"}, "GrantRead" => %{"location" => "header", "locationName" => "x-amz-grant-read", "shape" => "GrantRead"}, "GrantReadACP" => %{"location" => "header", "locationName" => "x-amz-grant-read-acp", "shape" => "GrantReadACP"}, "GrantWrite" => %{"location" => "header", "locationName" => "x-amz-grant-write", "shape" => "GrantWrite"}, "GrantWriteACP" => %{"location" => "header", "locationName" => "x-amz-grant-write-acp", "shape" => "GrantWriteACP"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "payload" => "AccessControlPolicy", "required" => ["Bucket", "Key"], "type" => "structure"}, "Rules" => %{"flattened" => true, "member" => %{"shape" => "Rule"}, "type" => "list"}, "TopicConfiguration" => %{"members" => %{"Events" => %{"locationName" => "Event", "shape" => "EventList"}, "Filter" => %{"shape" => "NotificationConfigurationFilter"}, "Id" => %{"shape" => "NotificationId"}, "TopicArn" => %{"locationName" => "Topic", "shape" => "TopicArn"}}, "required" => ["TopicArn", "Events"], "type" => "structure"}, "PutBucketMetricsConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "MetricsId"}, "MetricsConfiguration" => %{"locationName" => "MetricsConfiguration", "shape" => "MetricsConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "MetricsConfiguration", "required" => ["Bucket", "Id", "MetricsConfiguration"], "type" => "structure"}, "TransitionStorageClass" => %{"enum" => ["GLACIER", "STANDARD_IA"], "type" => "string"}, "CompletedPartList" => %{"flattened" => true, "member" => %{"shape" => "CompletedPart"}, "type" => "list"}, "ResponseCacheControl" => %{"type" => "string"}, "Code" => %{"type" => "string"}, "KeyCount" => %{"type" => "integer"}, "HeadObjectRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "IfMatch" => %{"location" => "header", "locationName" => "If-Match", "shape" => "IfMatch"}, "IfModifiedSince" => %{"location" => "header", "locationName" => "If-Modified-Since", "shape" => "IfModifiedSince"}, "IfNoneMatch" => %{"location" => "header", "locationName" => "If-None-Match", "shape" => "IfNoneMatch"}, "IfUnmodifiedSince" => %{"location" => "header", "locationName" => "If-Unmodified-Since", "shape" => "IfUnmodifiedSince"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "PartNumber" => %{"location" => "querystring", "locationName" => "partNumber", "shape" => "PartNumber"}, "Range" => %{"location" => "header", "locationName" => "Range", "shape" => "Range"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key", "shape" => "SSECustomerKey"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "required" => ["Bucket", "Key"], "type" => "structure"}, "RestoreRequest" => %{"members" => %{"Days" => %{"shape" => "Days"}, "GlacierJobParameters" => %{"shape" => "GlacierJobParameters"}}, "required" => ["Days"], "type" => "structure"}, "InventoryDestination" => %{"members" => %{"S3BucketDestination" => %{"shape" => "InventoryS3BucketDestination"}}, "required" => ["S3BucketDestination"], "type" => "structure"}, "ExpiredObjectDeleteMarker" => %{"type" => "boolean"}, "Size" => %{"type" => "integer"}, "GetBucketTaggingOutput" => %{"members" => %{"TagSet" => %{"shape" => "TagSet"}}, "required" => ["TagSet"], "type" => "structure"}, "QueueConfigurationDeprecated" => %{"members" => %{"Event" => %{"deprecated" => true, "shape" => "Event"}, "Events" => %{"locationName" => "Event", "shape" => "EventList"}, "Id" => %{"shape" => "NotificationId"}, "Queue" => %{"shape" => "QueueArn"}}, "type" => "structure"}, "ListObjectsOutput" => %{"members" => %{"CommonPrefixes" => %{"shape" => "CommonPrefixList"}, "Contents" => %{"shape" => "ObjectList"}, "Delimiter" => %{"shape" => "Delimiter"}, "EncodingType" => %{"shape" => "EncodingType"}, "IsTruncated" => %{"shape" => "IsTruncated"}, "Marker" => %{"shape" => "Marker"}, "MaxKeys" => %{"shape" => "MaxKeys"}, "Name" => %{"shape" => "BucketName"}, "NextMarker" => %{"shape" => "NextMarker"}, "Prefix" => %{"shape" => "Prefix"}}, "type" => "structure"}, "CopySourceIfNoneMatch" => %{"type" => "string"}, "FilterRule" => %{"members" => %{"Name" => %{"shape" => "FilterRuleName"}, "Value" => %{"shape" => "FilterRuleValue"}}, "type" => "structure"}, "PutObjectTaggingRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "Tagging" => %{"locationName" => "Tagging", "shape" => "Tagging", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "payload" => "Tagging", "required" => ["Bucket", "Key", "Tagging"], "type" => "structure"}, "ListBucketAnalyticsConfigurationsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContinuationToken" => %{"location" => "querystring", "locationName" => "continuation-token", "shape" => "Token"}}, "required" => ["Bucket"], "type" => "structure"}, "LifecycleRuleAndOperator" => %{"members" => %{"Prefix" => %{"shape" => "Prefix"}, "Tags" => %{"flattened" => true, "locationName" => "Tag", "shape" => "TagSet"}}, "type" => "structure"}, "S3KeyFilter" => %{"members" => %{"FilterRules" => %{"locationName" => "FilterRule", "shape" => "FilterRuleList"}}, "type" => "structure"}, "ListObjectVersionsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Delimiter" => %{"location" => "querystring", "locationName" => "delimiter", "shape" => "Delimiter"}, "EncodingType" => %{"location" => "querystring", "locationName" => "encoding-type", "shape" => "EncodingType"}, "KeyMarker" => %{"location" => "querystring", "locationName" => "key-marker", "shape" => "KeyMarker"}, "MaxKeys" => %{"location" => "querystring", "locationName" => "max-keys", "shape" => "MaxKeys"}, "Prefix" => %{"location" => "querystring", "locationName" => "prefix", "shape" => "Prefix"}, "VersionIdMarker" => %{"location" => "querystring", "locationName" => "version-id-marker", "shape" => "VersionIdMarker"}}, "required" => ["Bucket"], "type" => "structure"}, "ReplicationStatus" => %{"enum" => ["COMPLETE", "PENDING", "FAILED", "REPLICA"], "type" => "string"}, "AllowedOrigins" => %{"flattened" => true, "member" => %{"shape" => "AllowedOrigin"}, "type" => "list"}, "DisplayName" => %{"type" => "string"}, "AbortIncompleteMultipartUpload" => %{"members" => %{"DaysAfterInitiation" => %{"shape" => "DaysAfterInitiation"}}, "type" => "structure"}, "NextMarker" => %{"type" => "string"}, "BucketLocationConstraint" => %{"enum" => ["EU", "eu-west-1", "us-west-1", "us-west-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1", "cn-north-1", "eu-central-1"], "type" => "string"}, "NoncurrentVersionTransitionList" => %{"flattened" => true, "member" => %{"shape" => "NoncurrentVersionTransition"}, "type" => "list"}, "GetBucketTaggingRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "Type" => %{"enum" => ["CanonicalUser", "AmazonCustomerByEmail", "Group"], "type" => "string"}, "DeleteBucketLifecycleRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "CopyObjectResult" => %{"members" => %{"ETag" => %{"shape" => "ETag"}, "LastModified" => %{"shape" => "LastModified"}}, "type" => "structure"}, "GetBucketInventoryConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "InventoryId"}}, "required" => ["Bucket", "Id"], "type" => "structure"}, "NextPartNumberMarker" => %{"type" => "integer"}, "TargetGrants" => %{"member" => %{"locationName" => "Grant", "shape" => "TargetGrant"}, "type" => "list"}, "UploadPartCopyRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "CopySource" => %{"location" => "header", "locationName" => "x-amz-copy-source", "shape" => "CopySource"}, "CopySourceIfMatch" => %{"location" => "header", "locationName" => "x-amz-copy-source-if-match", "shape" => "CopySourceIfMatch"}, "CopySourceIfModifiedSince" => %{"location" => "header", "locationName" => "x-amz-copy-source-if-modified-since", "shape" => "CopySourceIfModifiedSince"}, "CopySourceIfNoneMatch" => %{"location" => "header", "locationName" => "x-amz-copy-source-if-none-match", "shape" => "CopySourceIfNoneMatch"}, "CopySourceIfUnmodifiedSince" => %{"location" => "header", "locationName" => "x-amz-copy-source-if-unmodified-since", "shape" => "CopySourceIfUnmodifiedSince"}, "CopySourceRange" => %{"location" => "header", "locationName" => "x-amz-copy-source-range", "shape" => "CopySourceRange"}, "CopySourceSSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-copy-source-server-side-encryption-customer-algorithm", "shape" => "CopySourceSSECustomerAlgorithm"}, "CopySourceSSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-copy-source-server-side-encryption-customer-key", "shape" => "CopySourceSSECustomerKey"}, "CopySourceSSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-copy-source-server-side-encryption-customer-key-MD5", "shape" => "CopySourceSSECustomerKeyMD5"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "PartNumber" => %{"location" => "querystring", "locationName" => "partNumber", "shape" => "PartNumber"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key", "shape" => "SSECustomerKey"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "UploadId" => %{"location" => "querystring", "locationName" => "uploadId", "shape" => "MultipartUploadId"}}, "required" => ["Bucket", "CopySource", "Key", "PartNumber", "UploadId"], "type" => "structure"}, "GetBucketVersioningRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "CreationDate" => %{"type" => "timestamp"}, "MissingMeta" => %{"type" => "integer"}, "GetObjectAclOutput" => %{"members" => %{"Grants" => %{"locationName" => "AccessControlList", "shape" => "Grants"}, "Owner" => %{"shape" => "Owner"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}}, "type" => "structure"}, "Role" => %{"type" => "string"}, "InventoryFilter" => %{"members" => %{"Prefix" => %{"shape" => "Prefix"}}, "required" => ["Prefix"], "type" => "structure"}, "TopicConfigurationDeprecated" => %{"members" => %{"Event" => %{"deprecated" => true, "shape" => "Event"}, "Events" => %{"locationName" => "Event", "shape" => "EventList"}, "Id" => %{"shape" => "NotificationId"}, "Topic" => %{"shape" => "TopicArn"}}, "type" => "structure"}, "ExposeHeaders" => %{"flattened" => true, "member" => %{"shape" => "ExposeHeader"}, "type" => "list"}, "GetBucketReplicationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "MFADelete" => %{"enum" => ["Enabled", "Disabled"], "type" => "string"}, "ResponseContentDisposition" => %{"type" => "string"}, "GetBucketAccelerateConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "MetadataDirective" => %{"enum" => ["COPY", "REPLACE"], "type" => "string"}, "EventList" => %{"flattened" => true, "member" => %{"shape" => "Event"}, "type" => "list"}, "GetObjectTaggingOutput" => %{"members" => %{"TagSet" => %{"shape" => "TagSet"}, "VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}}, "required" => ["TagSet"], "type" => "structure"}, "LifecycleExpiration" => %{"members" => %{"Date" => %{"shape" => "Date"}, "Days" => %{"shape" => "Days"}, "ExpiredObjectDeleteMarker" => %{"shape" => "ExpiredObjectDeleteMarker"}}, "type" => "structure"}, "MultipartUpload" => %{"members" => %{"Initiated" => %{"shape" => "Initiated"}, "Initiator" => %{"shape" => "Initiator"}, "Key" => %{"shape" => "ObjectKey"}, "Owner" => %{"shape" => "Owner"}, "StorageClass" => %{"shape" => "StorageClass"}, "UploadId" => %{"shape" => "MultipartUploadId"}}, "type" => "structure"}, "ListPartsOutput" => %{"members" => %{"AbortDate" => %{"location" => "header", "locationName" => "x-amz-abort-date", "shape" => "AbortDate"}, "AbortRuleId" => %{"location" => "header", "locationName" => "x-amz-abort-rule-id", "shape" => "AbortRuleId"}, "Bucket" => %{"shape" => "BucketName"}, "Initiator" => %{"shape" => "Initiator"}, "IsTruncated" => %{"shape" => "IsTruncated"}, "Key" => %{"shape" => "ObjectKey"}, "MaxParts" => %{"shape" => "MaxParts"}, "NextPartNumberMarker" => %{"shape" => "NextPartNumberMarker"}, "Owner" => %{"shape" => "Owner"}, "PartNumberMarker" => %{"shape" => "PartNumberMarker"}, "Parts" => %{"locationName" => "Part", "shape" => "Parts"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "StorageClass" => %{"shape" => "StorageClass"}, "UploadId" => %{"shape" => "MultipartUploadId"}}, "type" => "structure"}, "WebsiteConfiguration" => %{"members" => %{"ErrorDocument" => %{"shape" => "ErrorDocument"}, "IndexDocument" => %{"shape" => "IndexDocument"}, "RedirectAllRequestsTo" => %{"shape" => "RedirectAllRequestsTo"}, "RoutingRules" => %{"shape" => "RoutingRules"}}, "type" => "structure"}, "CopySourceIfMatch" => %{"type" => "string"}, "CopySourceSSECustomerAlgorithm" => %{"type" => "string"}, "DeleteBucketAnalyticsConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "AnalyticsId"}}, "required" => ["Bucket", "Id"], "type" => "structure"}, "StorageClassAnalysisSchemaVersion" => %{"enum" => ["V_1"], "type" => "string"}, "QueueConfiguration" => %{"members" => %{"Events" => %{"locationName" => "Event", "shape" => "EventList"}, "Filter" => %{"shape" => "NotificationConfigurationFilter"}, "Id" => %{"shape" => "NotificationId"}, "QueueArn" => %{"locationName" => "Queue", "shape" => "QueueArn"}}, "required" => ["QueueArn", "Events"], "type" => "structure"}, "MetadataKey" => %{"type" => "string"}, "LastModified" => %{"type" => "timestamp"}, "AllowedHeaders" => %{"flattened" => true, "member" => %{"shape" => "AllowedHeader"}, "type" => "list"}, "Buckets" => %{"member" => %{"locationName" => "Bucket", "shape" => "Bucket"}, "type" => "list"}, "PutObjectAclOutput" => %{"members" => %{"RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}}, "type" => "structure"}, "Metadata" => %{"key" => %{"shape" => "MetadataKey"}, "type" => "map", "value" => %{"shape" => "MetadataValue"}}, "GrantRead" => %{"type" => "string"}, "IfNoneMatch" => %{"type" => "string"}, "RoutingRule" => %{"members" => %{"Condition" => %{"shape" => "Condition"}, "Redirect" => %{"shape" => "Redirect"}}, "required" => ["Redirect"], "type" => "structure"}, "LoggingEnabled" => %{"members" => %{"TargetBucket" => %{"shape" => "TargetBucket"}, "TargetGrants" => %{"shape" => "TargetGrants"}, "TargetPrefix" => %{"shape" => "TargetPrefix"}}, "type" => "structure"}, "CopySourceRange" => %{"type" => "string"}, "IfMatch" => %{"type" => "string"}, "PutBucketCorsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "CORSConfiguration" => %{"locationName" => "CORSConfiguration", "shape" => "CORSConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}}, "payload" => "CORSConfiguration", "required" => ["Bucket", "CORSConfiguration"], "type" => "structure"}, "PutObjectOutput" => %{"members" => %{"ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "ETag"}, "Expiration" => %{"location" => "header", "locationName" => "x-amz-expiration", "shape" => "Expiration"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}}, "type" => "structure"}, "BucketAlreadyExists" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PutBucketAclRequest" => %{"members" => %{"ACL" => %{"location" => "header", "locationName" => "x-amz-acl", "shape" => "BucketCannedACL"}, "AccessControlPolicy" => %{"locationName" => "AccessControlPolicy", "shape" => "AccessControlPolicy", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "GrantFullControl" => %{"location" => "header", "locationName" => "x-amz-grant-full-control", "shape" => "GrantFullControl"}, "GrantRead" => %{"location" => "header", "locationName" => "x-amz-grant-read", "shape" => "GrantRead"}, "GrantReadACP" => %{"location" => "header", "locationName" => "x-amz-grant-read-acp", "shape" => "GrantReadACP"}, "GrantWrite" => %{"location" => "header", "locationName" => "x-amz-grant-write", "shape" => "GrantWrite"}, "GrantWriteACP" => %{"location" => "header", "locationName" => "x-amz-grant-write-acp", "shape" => "GrantWriteACP"}}, "payload" => "AccessControlPolicy", "required" => ["Bucket"], "type" => "structure"}, "CommonPrefixList" => %{"flattened" => true, "member" => %{"shape" => "CommonPrefix"}, "type" => "list"}, "InventoryS3BucketDestination" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "Bucket" => %{"shape" => "BucketName"}, "Format" => %{"shape" => "InventoryFormat"}, "Prefix" => %{"shape" => "Prefix"}}, "required" => ["Bucket", "Format"], "type" => "structure"}, "RestoreObjectRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "RestoreRequest" => %{"locationName" => "RestoreRequest", "shape" => "RestoreRequest", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "payload" => "RestoreRequest", "required" => ["Bucket", "Key"], "type" => "structure"}, "HostName" => %{"type" => "string"}, "DeleteBucketRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "Days" => %{"type" => "integer"}, "LambdaFunctionArn" => %{"type" => "string"}, "Delete" => %{"members" => %{"Objects" => %{"locationName" => "Object", "shape" => "ObjectIdentifierList"}, "Quiet" => %{"shape" => "Quiet"}}, "required" => ["Objects"], "type" => "structure"}, "AccessControlPolicy" => %{"members" => %{"Grants" => %{"locationName" => "AccessControlList", "shape" => "Grants"}, "Owner" => %{"shape" => "Owner"}}, "type" => "structure"}, "CreateBucketRequest" => %{"members" => %{"ACL" => %{"location" => "header", "locationName" => "x-amz-acl", "shape" => "BucketCannedACL"}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "CreateBucketConfiguration" => %{"locationName" => "CreateBucketConfiguration", "shape" => "CreateBucketConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "GrantFullControl" => %{"location" => "header", "locationName" => "x-amz-grant-full-control", "shape" => "GrantFullControl"}, "GrantRead" => %{"location" => "header", "locationName" => "x-amz-grant-read", "shape" => "GrantRead"}, "GrantReadACP" => %{"location" => "header", "locationName" => "x-amz-grant-read-acp", "shape" => "GrantReadACP"}, "GrantWrite" => %{"location" => "header", "locationName" => "x-amz-grant-write", "shape" => "GrantWrite"}, "GrantWriteACP" => %{"location" => "header", "locationName" => "x-amz-grant-write-acp", "shape" => "GrantWriteACP"}}, "payload" => "CreateBucketConfiguration", "required" => ["Bucket"], "type" => "structure"}, "HttpRedirectCode" => %{"type" => "string"}, "GetBucketWebsiteRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "ObjectVersionId" => %{"type" => "string"}, "IsLatest" => %{"type" => "boolean"}, "PutBucketLifecycleRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "LifecycleConfiguration" => %{"locationName" => "LifecycleConfiguration", "shape" => "LifecycleConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "LifecycleConfiguration", "required" => ["Bucket"], "type" => "structure"}, "AccountId" => %{"type" => "string"}, "GetObjectTorrentOutput" => %{"members" => %{"Body" => %{"shape" => "Body", "streaming" => true}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}}, "payload" => "Body", "type" => "structure"}, "CompletedPart" => %{"members" => %{"ETag" => %{"shape" => "ETag"}, "PartNumber" => %{"shape" => "PartNumber"}}, "type" => "structure"}, "UploadPartCopyOutput" => %{"members" => %{"CopyPartResult" => %{"shape" => "CopyPartResult"}, "CopySourceVersionId" => %{"location" => "header", "locationName" => "x-amz-copy-source-version-id", "shape" => "CopySourceVersionId"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}}, "payload" => "CopyPartResult", "type" => "structure"}, "DeletedObjects" => %{"flattened" => true, "member" => %{"shape" => "DeletedObject"}, "type" => "list"}, "WebsiteRedirectLocation" => %{"type" => "string"}, "Errors" => %{"flattened" => true, "member" => %{"shape" => "Error"}, "type" => "list"}, "SSECustomerKey" => %{"sensitive" => true, "type" => "string"}, "MaxUploads" => %{"type" => "integer"}, "ResponseContentEncoding" => %{"type" => "string"}, "CopyPartResult" => %{"members" => %{"ETag" => %{"shape" => "ETag"}, "LastModified" => %{"shape" => "LastModified"}}, "type" => "structure"}, "NextVersionIdMarker" => %{"type" => "string"}, "RequestCharged" => %{"enum" => ["requester"], "type" => "string"}, "InventoryFormat" => %{"enum" => ["CSV"], "type" => "string"}, "CloudFunctionConfiguration" => %{"members" => %{"CloudFunction" => %{"shape" => "CloudFunction"}, "Event" => %{"deprecated" => true, "shape" => "Event"}, "Events" => %{"locationName" => "Event", "shape" => "EventList"}, "Id" => %{"shape" => "NotificationId"}, "InvocationRole" => %{"shape" => "CloudFunctionInvocationRole"}}, "type" => "structure"}, "GetBucketLifecycleRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "GetBucketRequestPaymentOutput" => %{"members" => %{"Payer" => %{"shape" => "Payer"}}, "type" => "structure"}, "VersionIdMarker" => %{"type" => "string"}, "ReplicationRules" => %{"flattened" => true, "member" => %{"shape" => "ReplicationRule"}, "type" => "list"}, "NextUploadIdMarker" => %{"type" => "string"}, "Token" => %{"type" => "string"}, "MetricsConfigurationList" => %{"flattened" => true, "member" => %{"shape" => "MetricsConfiguration"}, "type" => "list"}, "TaggingDirective" => %{"enum" => ["COPY", "REPLACE"], "type" => "string"}, "GetBucketMetricsConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "MetricsId"}}, "required" => ["Bucket", "Id"], "type" => "structure"}, "DeleteBucketCorsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "GetBucketLoggingOutput" => %{"members" => %{"LoggingEnabled" => %{"shape" => "LoggingEnabled"}}, "type" => "structure"}, "DeleteBucketMetricsConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "MetricsId"}}, "required" => ["Bucket", "Id"], "type" => "structure"}, "Parts" => %{"flattened" => true, "member" => %{"shape" => "Part"}, "type" => "list"}, "ObjectIdentifier" => %{"members" => %{"Key" => %{"shape" => "ObjectKey"}, "VersionId" => %{"shape" => "ObjectVersionId"}}, "required" => ["Key"], "type" => "structure"}, "MFADeleteStatus" => %{"enum" => ["Enabled", "Disabled"], "type" => "string"}, "GetBucketInventoryConfigurationOutput" => %{"members" => %{"InventoryConfiguration" => %{"shape" => "InventoryConfiguration"}}, "payload" => "InventoryConfiguration", "type" => "structure"}, "PartsCount" => %{"type" => "integer"}, "CORSRules" => %{"flattened" => true, "member" => %{"shape" => "CORSRule"}, "type" => "list"}, "MFA" => %{"type" => "string"}, "ListObjectVersionsOutput" => %{"members" => %{"CommonPrefixes" => %{"shape" => "CommonPrefixList"}, "DeleteMarkers" => %{"locationName" => "DeleteMarker", "shape" => "DeleteMarkers"}, "Delimiter" => %{"shape" => "Delimiter"}, "EncodingType" => %{"shape" => "EncodingType"}, "IsTruncated" => %{"shape" => "IsTruncated"}, "KeyMarker" => %{"shape" => "KeyMarker"}, "MaxKeys" => %{"shape" => "MaxKeys"}, "Name" => %{"shape" => "BucketName"}, "NextKeyMarker" => %{"shape" => "NextKeyMarker"}, "NextVersionIdMarker" => %{"shape" => "NextVersionIdMarker"}, "Prefix" => %{"shape" => "Prefix"}, "VersionIdMarker" => %{"shape" => "VersionIdMarker"}, "Versions" => %{"locationName" => "Version", "shape" => "ObjectVersionList"}}, "type" => "structure"}, "CacheControl" => %{"type" => "string"}, "MetricsFilter" => %{"members" => %{"And" => %{"shape" => "MetricsAndOperator"}, "Prefix" => %{"shape" => "Prefix"}, "Tag" => %{"shape" => "Tag"}}, "type" => "structure"}, "SSEKMSKeyId" => %{"sensitive" => true, "type" => "string"}, "CORSRule" => %{"members" => %{"AllowedHeaders" => %{"locationName" => "AllowedHeader", "shape" => "AllowedHeaders"}, "AllowedMethods" => %{"locationName" => "AllowedMethod", "shape" => "AllowedMethods"}, "AllowedOrigins" => %{"locationName" => "AllowedOrigin", "shape" => "AllowedOrigins"}, "ExposeHeaders" => %{"locationName" => "ExposeHeader", "shape" => "ExposeHeaders"}, "MaxAgeSeconds" => %{"shape" => "MaxAgeSeconds"}}, "required" => ["AllowedMethods", "AllowedOrigins"], "type" => "structure"}, "LifecycleRules" => %{"flattened" => true, "member" => %{"shape" => "LifecycleRule"}, "type" => "list"}, "ResponseContentLanguage" => %{"type" => "string"}, "PutBucketVersioningRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "MFA" => %{"location" => "header", "locationName" => "x-amz-mfa", "shape" => "MFA"}, "VersioningConfiguration" => %{"locationName" => "VersioningConfiguration", "shape" => "VersioningConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "VersioningConfiguration", "required" => ["Bucket", "VersioningConfiguration"], "type" => "structure"}, "Suffix" => %{"type" => "string"}, "Initiated" => %{"type" => "timestamp"}, "PutBucketAccelerateConfigurationRequest" => %{"members" => %{"AccelerateConfiguration" => %{"locationName" => "AccelerateConfiguration", "shape" => "AccelerateConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "payload" => "AccelerateConfiguration", "required" => ["Bucket", "AccelerateConfiguration"], "type" => "structure"}, "BucketAlreadyOwnedByYou" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GrantFullControl" => %{"type" => "string"}, "GrantReadACP" => %{"type" => "string"}, "Part" => %{"members" => %{"ETag" => %{"shape" => "ETag"}, "LastModified" => %{"shape" => "LastModified"}, "PartNumber" => %{"shape" => "PartNumber"}, "Size" => %{"shape" => "Size"}}, "type" => "structure"}, "CopySourceVersionId" => %{"type" => "string"}, "GetBucketLocationOutput" => %{"members" => %{"LocationConstraint" => %{"shape" => "BucketLocationConstraint"}}, "type" => "structure"}, "IfModifiedSince" => %{"type" => "timestamp"}, "Message" => %{"type" => "string"}, "Date" => %{"timestampFormat" => "iso8601", "type" => "timestamp"}, "NotificationConfigurationDeprecated" => %{"members" => %{"CloudFunctionConfiguration" => %{"shape" => "CloudFunctionConfiguration"}, "QueueConfiguration" => %{"shape" => "QueueConfigurationDeprecated"}, "TopicConfiguration" => %{"shape" => "TopicConfigurationDeprecated"}}, "type" => "structure"}, "GetBucketRequestPaymentRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "PutBucketWebsiteRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "WebsiteConfiguration" => %{"locationName" => "WebsiteConfiguration", "shape" => "WebsiteConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "WebsiteConfiguration", "required" => ["Bucket", "WebsiteConfiguration"], "type" => "structure"}, "StorageClassAnalysisDataExport" => %{"members" => %{"Destination" => %{"shape" => "AnalyticsExportDestination"}, "OutputSchemaVersion" => %{"shape" => "StorageClassAnalysisSchemaVersion"}}, "required" => ["OutputSchemaVersion", "Destination"], "type" => "structure"}, "AbortRuleId" => %{"type" => "string"}, "URI" => %{"type" => "string"}, "GrantWriteACP" => %{"type" => "string"}, "DeleteMarker" => %{"type" => "boolean"}, "InventoryFrequency" => %{"enum" => ["Daily", "Weekly"], "type" => "string"}, "IsEnabled" => %{"type" => "boolean"}, "InventoryConfiguration" => %{"members" => %{"Destination" => %{"shape" => "InventoryDestination"}, "Filter" => %{"shape" => "InventoryFilter"}, "Id" => %{"shape" => "InventoryId"}, "IncludedObjectVersions" => %{"shape" => "InventoryIncludedObjectVersions"}, "IsEnabled" => %{"shape" => "IsEnabled"}, "OptionalFields" => %{"shape" => "InventoryOptionalFields"}, "Schedule" => %{"shape" => "InventorySchedule"}}, "required" => ["Destination", "IsEnabled", "Id", "IncludedObjectVersions", "Schedule"], "type" => "structure"}, "NoSuchKey" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "BucketCannedACL" => %{"enum" => ["private", "public-read", "public-read-write", "authenticated-read"], "type" => "string"}, "BucketVersioningStatus" => %{"enum" => ["Enabled", "Suspended"], "type" => "string"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "ObjectKey"}, "Value" => %{"shape" => "Value"}}, "required" => ["Key", "Value"], "type" => "structure"}, "EmailAddress" => %{"type" => "string"}, "GetBucketMetricsConfigurationOutput" => %{"members" => %{"MetricsConfiguration" => %{"shape" => "MetricsConfiguration"}}, "payload" => "MetricsConfiguration", "type" => "structure"}, "ListObjectsV2Output" => %{"members" => %{"CommonPrefixes" => %{"shape" => "CommonPrefixList"}, "Contents" => %{"shape" => "ObjectList"}, "ContinuationToken" => %{"shape" => "Token"}, "Delimiter" => %{"shape" => "Delimiter"}, "EncodingType" => %{"shape" => "EncodingType"}, "IsTruncated" => %{"shape" => "IsTruncated"}, "KeyCount" => %{"shape" => "KeyCount"}, "MaxKeys" => %{"shape" => "MaxKeys"}, "Name" => %{"shape" => "BucketName"}, "NextContinuationToken" => %{"shape" => "NextToken"}, "Prefix" => %{"shape" => "Prefix"}, "StartAfter" => %{"shape" => "StartAfter"}}, "type" => "structure"}, "RequestPaymentConfiguration" => %{"members" => %{"Payer" => %{"shape" => "Payer"}}, "required" => ["Payer"], "type" => "structure"}, "BucketLoggingStatus" => %{"members" => %{"LoggingEnabled" => %{"shape" => "LoggingEnabled"}}, "type" => "structure"}, "SSECustomerAlgorithm" => %{"type" => "string"}, "PutObjectTaggingOutput" => %{"members" => %{"VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}}, "type" => "structure"}, "ObjectVersionStorageClass" => %{"enum" => ["STANDARD"], "type" => "string"}, "LifecycleConfiguration" => %{"members" => %{"Rules" => %{"locationName" => "Rule", "shape" => "Rules"}}, "required" => ["Rules"], "type" => "structure"}, "NotificationConfigurationFilter" => %{"members" => %{"Key" => %{"locationName" => "S3Key", "shape" => "S3KeyFilter"}}, "type" => "structure"}, "DeleteMarkerEntry" => %{"members" => %{"IsLatest" => %{"shape" => "IsLatest"}, "Key" => %{"shape" => "ObjectKey"}, "LastModified" => %{"shape" => "LastModified"}, "Owner" => %{"shape" => "Owner"}, "VersionId" => %{"shape" => "ObjectVersionId"}}, "type" => "structure"}, "GetBucketVersioningOutput" => %{"members" => %{"MFADelete" => %{"locationName" => "MfaDelete", "shape" => "MFADeleteStatus"}, "Status" => %{"shape" => "BucketVersioningStatus"}}, "type" => "structure"}, "ListObjectsV2Request" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContinuationToken" => %{"location" => "querystring", "locationName" => "continuation-token", "shape" => "Token"}, "Delimiter" => %{"location" => "querystring", "locationName" => "delimiter", "shape" => "Delimiter"}, "EncodingType" => %{"location" => "querystring", "locationName" => "encoding-type", "shape" => "EncodingType"}, "FetchOwner" => %{"location" => "querystring", "locationName" => "fetch-owner", "shape" => "FetchOwner"}, "MaxKeys" => %{"location" => "querystring", "locationName" => "max-keys", "shape" => "MaxKeys"}, "Prefix" => %{"location" => "querystring", "locationName" => "prefix", "shape" => "Prefix"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "StartAfter" => %{"location" => "querystring", "locationName" => "start-after", "shape" => "StartAfter"}}, "required" => ["Bucket"], "type" => "structure"}, "GetObjectOutput" => %{"members" => %{"AcceptRanges" => %{"location" => "header", "locationName" => "accept-ranges", "shape" => "AcceptRanges"}, "Body" => %{"shape" => "Body", "streaming" => true}, "CacheControl" => %{"location" => "header", "locationName" => "Cache-Control", "shape" => "CacheControl"}, "ContentDisposition" => %{"location" => "header", "locationName" => "Content-Disposition", "shape" => "ContentDisposition"}, "ContentEncoding" => %{"location" => "header", "locationName" => "Content-Encoding", "shape" => "ContentEncoding"}, "ContentLanguage" => %{"location" => "header", "locationName" => "Content-Language", "shape" => "ContentLanguage"}, "ContentLength" => %{"location" => "header", "locationName" => "Content-Length", "shape" => "ContentLength"}, "ContentRange" => %{"location" => "header", "locationName" => "Content-Range", "shape" => "ContentRange"}, "ContentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "ContentType"}, "DeleteMarker" => %{"location" => "header", "locationName" => "x-amz-delete-marker", "shape" => "DeleteMarker"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "ETag"}, "Expiration" => %{"location" => "header", "locationName" => "x-amz-expiration", "shape" => "Expiration"}, "Expires" => %{"location" => "header", "locationName" => "Expires", "shape" => "Expires"}, "LastModified" => %{"location" => "header", "locationName" => "Last-Modified", "shape" => "LastModified"}, "Metadata" => %{"location" => "headers", "locationName" => "x-amz-meta-", "shape" => "Metadata"}, "MissingMeta" => %{"location" => "header", "locationName" => "x-amz-missing-meta", "shape" => "MissingMeta"}, "PartsCount" => %{"location" => "header", "locationName" => "x-amz-mp-parts-count", "shape" => "PartsCount"}, "ReplicationStatus" => %{"location" => "header", "locationName" => "x-amz-replication-status", "shape" => "ReplicationStatus"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "Restore" => %{"location" => "header", "locationName" => "x-amz-restore", "shape" => "Restore"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "StorageClass" => %{"location" => "header", "locationName" => "x-amz-storage-class", "shape" => "StorageClass"}, "TagCount" => %{"location" => "header", "locationName" => "x-amz-tagging-count", "shape" => "TagCount"}, "VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}, "WebsiteRedirectLocation" => %{"location" => "header", "locationName" => "x-amz-website-redirect-location", "shape" => "WebsiteRedirectLocation"}}, "payload" => "Body", "type" => "structure"}, "CloudFunction" => %{"type" => "string"}, "ObjectIdentifierList" => %{"flattened" => true, "member" => %{"shape" => "ObjectIdentifier"}, "type" => "list"}, "CompleteMultipartUploadOutput" => %{"members" => %{"Bucket" => %{"shape" => "BucketName"}, "ETag" => %{"shape" => "ETag"}, "Expiration" => %{"location" => "header", "locationName" => "x-amz-expiration", "shape" => "Expiration"}, "Key" => %{"shape" => "ObjectKey"}, "Location" => %{"shape" => "Location"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}}, "type" => "structure"}, "Condition" => %{"members" => %{"HttpErrorCodeReturnedEquals" => %{"shape" => "HttpErrorCodeReturnedEquals"}, "KeyPrefixEquals" => %{"shape" => "KeyPrefixEquals"}}, "type" => "structure"}, "LambdaFunctionConfigurationList" => %{"flattened" => true, "member" => %{"shape" => "LambdaFunctionConfiguration"}, "type" => "list"}, "ListBucketAnalyticsConfigurationsOutput" => %{"members" => %{"AnalyticsConfigurationList" => %{"locationName" => "AnalyticsConfiguration", "shape" => "AnalyticsConfigurationList"}, "ContinuationToken" => %{"shape" => "Token"}, "IsTruncated" => %{"shape" => "IsTruncated"}, "NextContinuationToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "CopySource" => %{"pattern" => "\\/.+\\/.+", "type" => "string"}, "KeyMarker" => %{"type" => "string"}, "HttpErrorCodeReturnedEquals" => %{"type" => "string"}, "RedirectAllRequestsTo" => %{"members" => %{"HostName" => %{"shape" => "HostName"}, "Protocol" => %{"shape" => "Protocol"}}, "required" => ["HostName"], "type" => "structure"}, "LifecycleRuleFilter" => %{"members" => %{"And" => %{"shape" => "LifecycleRuleAndOperator"}, "Prefix" => %{"shape" => "Prefix"}, "Tag" => %{"shape" => "Tag"}}, "type" => "structure"}, "ListBucketMetricsConfigurationsOutput" => %{"members" => %{"ContinuationToken" => %{"shape" => "Token"}, "IsTruncated" => %{"shape" => "IsTruncated"}, "MetricsConfigurationList" => %{"locationName" => "MetricsConfiguration", "shape" => "MetricsConfigurationList"}, "NextContinuationToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "LambdaFunctionConfiguration" => %{"members" => %{"Events" => %{"locationName" => "Event", "shape" => "EventList"}, "Filter" => %{"shape" => "NotificationConfigurationFilter"}, "Id" => %{"shape" => "NotificationId"}, "LambdaFunctionArn" => %{"locationName" => "CloudFunction", "shape" => "LambdaFunctionArn"}}, "required" => ["LambdaFunctionArn", "Events"], "type" => "structure"}, "ResponseContentType" => %{"type" => "string"}, "ExposeHeader" => %{"type" => "string"}, "ResponseExpires" => %{"type" => "timestamp"}, "GetBucketLoggingRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "CopyObjectOutput" => %{"members" => %{"CopyObjectResult" => %{"shape" => "CopyObjectResult"}, "CopySourceVersionId" => %{"location" => "header", "locationName" => "x-amz-copy-source-version-id", "shape" => "CopySourceVersionId"}, "Expiration" => %{"location" => "header", "locationName" => "x-amz-expiration", "shape" => "Expiration"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}}, "payload" => "CopyObjectResult", "type" => "structure"}, "GetBucketLocationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "ReplaceKeyWith" => %{"type" => "string"}, "PutBucketRequestPaymentRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "RequestPaymentConfiguration" => %{"locationName" => "RequestPaymentConfiguration", "shape" => "RequestPaymentConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "RequestPaymentConfiguration", "required" => ["Bucket", "RequestPaymentConfiguration"], "type" => "structure"}, "Tier" => %{"enum" => ["Standard", "Bulk", "Expedited"], "type" => "string"}, "GlacierJobParameters" => %{"members" => %{"Tier" => %{"shape" => "Tier"}}, "required" => ["Tier"], "type" => "structure"}, "Initiator" => %{"members" => %{"DisplayName" => %{"shape" => "DisplayName"}, "ID" => %{"shape" => "ID"}}, "type" => "structure"}, "ObjectVersionList" => %{"flattened" => true, "member" => %{"shape" => "ObjectVersion"}, "type" => "list"}, "Owner" => %{"members" => %{"DisplayName" => %{"shape" => "DisplayName"}, "ID" => %{"shape" => "ID"}}, "type" => "structure"}, "UploadPartOutput" => %{"members" => %{"ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "ETag"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}}, "type" => "structure"}, "IndexDocument" => %{"members" => %{"Suffix" => %{"shape" => "Suffix"}}, "required" => ["Suffix"], "type" => "structure"}, "GetBucketCorsOutput" => %{"members" => %{"CORSRules" => %{"locationName" => "CORSRule", "shape" => "CORSRules"}}, "type" => "structure"}, "MultipartUploadList" => %{"flattened" => true, "member" => %{"shape" => "MultipartUpload"}, "type" => "list"}, "Object" => %{"members" => %{"ETag" => %{"shape" => "ETag"}, "Key" => %{"shape" => "ObjectKey"}, "LastModified" => %{"shape" => "LastModified"}, "Owner" => %{"shape" => "Owner"}, "Size" => %{"shape" => "Size"}, "StorageClass" => %{"shape" => "ObjectStorageClass"}}, "type" => "structure"}, "AnalyticsId" => %{"type" => "string"}, "BucketLifecycleConfiguration" => %{"members" => %{"Rules" => %{"locationName" => "Rule", "shape" => "LifecycleRules"}}, "required" => ["Rules"], "type" => "structure"}, "AnalyticsS3ExportFileFormat" => %{"enum" => ["CSV"], "type" => "string"}, "PutBucketLoggingRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "BucketLoggingStatus" => %{"locationName" => "BucketLoggingStatus", "shape" => "BucketLoggingStatus", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}}, "payload" => "BucketLoggingStatus", "required" => ["Bucket", "BucketLoggingStatus"], "type" => "structure"}, "GetBucketAccelerateConfigurationOutput" => %{"members" => %{"Status" => %{"shape" => "BucketAccelerateStatus"}}, "type" => "structure"}, "Policy" => %{"type" => "string"}, "GetObjectRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "IfMatch" => %{"location" => "header", "locationName" => "If-Match", "shape" => "IfMatch"}, "IfModifiedSince" => %{"location" => "header", "locationName" => "If-Modified-Since", "shape" => "IfModifiedSince"}, "IfNoneMatch" => %{"location" => "header", "locationName" => "If-None-Match", "shape" => "IfNoneMatch"}, "IfUnmodifiedSince" => %{"location" => "header", "locationName" => "If-Unmodified-Since", "shape" => "IfUnmodifiedSince"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "PartNumber" => %{"location" => "querystring", "locationName" => "partNumber", "shape" => "PartNumber"}, "Range" => %{"location" => "header", "locationName" => "Range", "shape" => "Range"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "ResponseCacheControl" => %{"location" => "querystring", "locationName" => "response-cache-control", "shape" => "ResponseCacheControl"}, "ResponseContentDisposition" => %{"location" => "querystring", "locationName" => "response-content-disposition", "shape" => "ResponseContentDisposition"}, "ResponseContentEncoding" => %{"location" => "querystring", "locationName" => "response-content-encoding", "shape" => "ResponseContentEncoding"}, "ResponseContentLanguage" => %{"location" => "querystring", "locationName" => "response-content-language", "shape" => "ResponseContentLanguage"}, "ResponseContentType" => %{"location" => "querystring", "locationName" => "response-content-type", "shape" => "ResponseContentType"}, "ResponseExpires" => %{"location" => "querystring", "locationName" => "response-expires", "shape" => "ResponseExpires"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key", "shape" => "SSECustomerKey"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "required" => ["Bucket", "Key"], "type" => "structure"}, "DeleteObjectsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Delete" => %{"locationName" => "Delete", "shape" => "Delete", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "MFA" => %{"location" => "header", "locationName" => "x-amz-mfa", "shape" => "MFA"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}}, "payload" => "Delete", "required" => ["Bucket", "Delete"], "type" => "structure"}, "TransitionList" => %{"flattened" => true, "member" => %{"shape" => "Transition"}, "type" => "list"}, "Range" => %{"type" => "string"}, "GetBucketLifecycleConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "HeadObjectOutput" => %{"members" => %{"AcceptRanges" => %{"location" => "header", "locationName" => "accept-ranges", "shape" => "AcceptRanges"}, "CacheControl" => %{"location" => "header", "locationName" => "Cache-Control", "shape" => "CacheControl"}, "ContentDisposition" => %{"location" => "header", "locationName" => "Content-Disposition", "shape" => "ContentDisposition"}, "ContentEncoding" => %{"location" => "header", "locationName" => "Content-Encoding", "shape" => "ContentEncoding"}, "ContentLanguage" => %{"location" => "header", "locationName" => "Content-Language", "shape" => "ContentLanguage"}, "ContentLength" => %{"location" => "header", "locationName" => "Content-Length", "shape" => "ContentLength"}, "ContentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "ContentType"}, "DeleteMarker" => %{"location" => "header", "locationName" => "x-amz-delete-marker", "shape" => "DeleteMarker"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "ETag"}, "Expiration" => %{"location" => "header", "locationName" => "x-amz-expiration", "shape" => "Expiration"}, "Expires" => %{"location" => "header", "locationName" => "Expires", "shape" => "Expires"}, "LastModified" => %{"location" => "header", "locationName" => "Last-Modified", "shape" => "LastModified"}, "Metadata" => %{"location" => "headers", "locationName" => "x-amz-meta-", "shape" => "Metadata"}, "MissingMeta" => %{"location" => "header", "locationName" => "x-amz-missing-meta", "shape" => "MissingMeta"}, "PartsCount" => %{"location" => "header", "locationName" => "x-amz-mp-parts-count", "shape" => "PartsCount"}, "ReplicationStatus" => %{"location" => "header", "locationName" => "x-amz-replication-status", "shape" => "ReplicationStatus"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "Restore" => %{"location" => "header", "locationName" => "x-amz-restore", "shape" => "Restore"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "StorageClass" => %{"location" => "header", "locationName" => "x-amz-storage-class", "shape" => "StorageClass"}, "VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}, "WebsiteRedirectLocation" => %{"location" => "header", "locationName" => "x-amz-website-redirect-location", "shape" => "WebsiteRedirectLocation"}}, "type" => "structure"}, "TargetPrefix" => %{"type" => "string"}, "DaysAfterInitiation" => %{"type" => "integer"}, "AccelerateConfiguration" => %{"members" => %{"Status" => %{"shape" => "BucketAccelerateStatus"}}, "type" => "structure"}, "Payer" => %{"enum" => ["Requester", "BucketOwner"], "type" => "string"}, "ObjectKey" => %{"min" => 1, "type" => "string"}, "StartAfter" => %{"type" => "string"}, "ContentType" => %{"type" => "string"}, "IsTruncated" => %{"type" => "boolean"}, "ContentMD5" => %{"type" => "string"}, "GetBucketCorsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "AllowedOrigin" => %{"type" => "string"}, "GetBucketNotificationConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "TargetBucket" => %{"type" => "string"}, "InventoryConfigurationList" => %{"flattened" => true, "member" => %{"shape" => "InventoryConfiguration"}, "type" => "list"}, "GetObjectAclRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "required" => ["Bucket", "Key"], "type" => "structure"}, "MaxParts" => %{"type" => "integer"}, "InventoryOptionalField" => %{"enum" => ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus"], "type" => "string"}, "DeleteObjectTaggingOutput" => %{"members" => %{"VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}}, "type" => "structure"}, "CompletedMultipartUpload" => %{"members" => %{"Parts" => %{"locationName" => "Part", "shape" => "CompletedPartList"}}, "type" => "structure"}, "InventoryOptionalFields" => %{"member" => %{"locationName" => "Field", "shape" => "InventoryOptionalField"}, "type" => "list"}, "DeleteObjectOutput" => %{"members" => %{"DeleteMarker" => %{"location" => "header", "locationName" => "x-amz-delete-marker", "shape" => "DeleteMarker"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "VersionId" => %{"location" => "header", "locationName" => "x-amz-version-id", "shape" => "ObjectVersionId"}}, "type" => "structure"}, "Location" => %{"type" => "string"}, "FilterRuleValue" => %{"type" => "string"}, "DeleteBucketWebsiteRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "CopySourceIfUnmodifiedSince" => %{"type" => "timestamp"}, "MetadataValue" => %{"type" => "string"}, "AnalyticsConfigurationList" => %{"flattened" => true, "member" => %{"shape" => "AnalyticsConfiguration"}, "type" => "list"}, "BucketName" => %{"type" => "string"}, "CompleteMultipartUploadRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "MultipartUpload" => %{"locationName" => "CompleteMultipartUpload", "shape" => "CompletedMultipartUpload", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "UploadId" => %{"location" => "querystring", "locationName" => "uploadId", "shape" => "MultipartUploadId"}}, "payload" => "MultipartUpload", "required" => ["Bucket", "Key", "UploadId"], "type" => "structure"}, "TopicConfigurationList" => %{"flattened" => true, "member" => %{"shape" => "TopicConfiguration"}, "type" => "list"}, "MaxKeys" => %{"type" => "integer"}, "NoSuchUpload" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "QueueArn" => %{"type" => "string"}, "ListBucketsOutput" => %{"members" => %{"Buckets" => %{"shape" => "Buckets"}, "Owner" => %{"shape" => "Owner"}}, "type" => "structure"}, "Value" => %{"type" => "string"}, "DeleteObjectRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "MFA" => %{"location" => "header", "locationName" => "x-amz-mfa", "shape" => "MFA"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "required" => ["Bucket", "Key"], "type" => "structure"}, "RoutingRules" => %{"member" => %{"locationName" => "RoutingRule", "shape" => "RoutingRule"}, "type" => "list"}, "TargetGrant" => %{"members" => %{"Grantee" => %{"shape" => "Grantee"}, "Permission" => %{"shape" => "BucketLogsPermission"}}, "type" => "structure"}, "DeleteBucketReplicationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "GetObjectTaggingRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "required" => ["Bucket", "Key"], "type" => "structure"}, "ObjectList" => %{"flattened" => true, "member" => %{"shape" => "Object"}, "type" => "list"}, "PutBucketReplicationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "ReplicationConfiguration" => %{"locationName" => "ReplicationConfiguration", "shape" => "ReplicationConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "ReplicationConfiguration", "required" => ["Bucket", "ReplicationConfiguration"], "type" => "structure"}, "StorageClass" => %{"enum" => ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"], "type" => "string"}, "GetObjectTorrentRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}}, "required" => ["Bucket", "Key"], "type" => "structure"}, "GetBucketReplicationOutput" => %{"members" => %{"ReplicationConfiguration" => %{"shape" => "ReplicationConfiguration"}}, "payload" => "ReplicationConfiguration", "type" => "structure"}, "CopyObjectRequest" => %{"members" => %{"CopySourceIfNoneMatch" => %{"location" => "header", "locationName" => "x-amz-copy-source-if-none-match", "shape" => "CopySourceIfNoneMatch"}, "MetadataDirective" => %{"location" => "header", "locationName" => "x-amz-metadata-directive", "shape" => "MetadataDirective"}, "CopySourceIfMatch" => %{"location" => "header", "locationName" => "x-amz-copy-source-if-match", "shape" => "CopySourceIfMatch"}, "CopySourceSSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-copy-source-server-side-encryption-customer-algorithm", "shape" => "CopySourceSSECustomerAlgorithm"}, "Metadata" => %{"location" => "headers", "locationName" => "x-amz-meta-", "shape" => "Metadata"}, "GrantRead" => %{"location" => "header", "locationName" => "x-amz-grant-read", "shape" => "GrantRead"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "WebsiteRedirectLocation" => %{"location" => "header", "locationName" => "x-amz-website-redirect-location", "shape" => "WebsiteRedirectLocation"}, "SSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key", "shape" => "SSECustomerKey"}, "TaggingDirective" => %{"location" => "header", "locationName" => "x-amz-tagging-directive", "shape" => "TaggingDirective"}, "CacheControl" => %{"location" => "header", "locationName" => "Cache-Control", "shape" => "CacheControl"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "GrantFullControl" => %{"location" => "header", "locationName" => "x-amz-grant-full-control", "shape" => "GrantFullControl"}, "GrantReadACP" => %{"location" => "header", "locationName" => "x-amz-grant-read-acp", "shape" => "GrantReadACP"}, "GrantWriteACP" => %{"location" => "header", "locationName" => "x-amz-grant-write-acp", "shape" => "GrantWriteACP"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "CopySource" => %{"location" => "header", "locationName" => "x-amz-copy-source", "shape" => "CopySource"}, "ContentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "ContentType"}, "ACL" => %{"location" => "header", "locationName" => "x-amz-acl", "shape" => "ObjectCannedACL"}, "CopySourceIfUnmodifiedSince" => %{"location" => "header", "locationName" => "x-amz-copy-source-if-unmodified-since", "shape" => "CopySourceIfUnmodifiedSince"}, "StorageClass" => %{"location" => "header", "locationName" => "x-amz-storage-class", "shape" => "StorageClass"}, "Tagging" => %{"location" => "header", "locationName" => "x-amz-tagging", "shape" => "TaggingHeader"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentEncoding" => %{"location" => "header", "locationName" => "Content-Encoding", "shape" => "ContentEncoding"}, "ContentDisposition" => %{"location" => "header", "locationName" => "Content-Disposition", "shape" => "ContentDisposition"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "CopySourceSSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-copy-source-server-side-encryption-customer-key", "shape" => "CopySourceSSECustomerKey"}, "CopySourceSSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-copy-source-server-side-encryption-customer-key-MD5", "shape" => "CopySourceSSECustomerKeyMD5"}, "Expires" => %{"location" => "header", "locationName" => "Expires", "shape" => "Expires"}, "ContentLanguage" => %{"location" => "header", "locationName" => "Content-Language", "shape" => "ContentLanguage"}, "CopySourceIfModifiedSince" => %{"location" => "header", "locationName" => "x-amz-copy-source-if-modified-since", "shape" => "CopySourceIfModifiedSince"}}, "required" => ["Bucket", "CopySource", "Key"], "type" => "structure"}, "EncodingType" => %{"enum" => ["url"], "type" => "string"}, "Transition" => %{"members" => %{"Date" => %{"shape" => "Date"}, "Days" => %{"shape" => "Days"}, "StorageClass" => %{"shape" => "TransitionStorageClass"}}, "type" => "structure"}, "AcceptRanges" => %{"type" => "string"}, "Tagging" => %{"members" => %{"TagSet" => %{"shape" => "TagSet"}}, "required" => ["TagSet"], "type" => "structure"}, "UploadPartRequest" => %{"members" => %{"Body" => %{"shape" => "Body", "streaming" => true}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentLength" => %{"location" => "header", "locationName" => "Content-Length", "shape" => "ContentLength"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "PartNumber" => %{"location" => "querystring", "locationName" => "partNumber", "shape" => "PartNumber"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key", "shape" => "SSECustomerKey"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "UploadId" => %{"location" => "querystring", "locationName" => "uploadId", "shape" => "MultipartUploadId"}}, "payload" => "Body", "required" => ["Bucket", "Key", "PartNumber", "UploadId"], "type" => "structure"}, "ServerSideEncryption" => %{"enum" => ["AES256", "aws:kms"], "type" => "string"}, "NoSuchBucket" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Protocol" => %{"enum" => ["http", "https"], "type" => "string"}, "InventorySchedule" => %{"members" => %{"Frequency" => %{"shape" => "InventoryFrequency"}}, "required" => ["Frequency"], "type" => "structure"}, "ObjectAlreadyInActiveTierError" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Bucket" => %{"members" => %{"CreationDate" => %{"shape" => "CreationDate"}, "Name" => %{"shape" => "BucketName"}}, "type" => "structure"}, "PutObjectRequest" => %{"members" => %{"ACL" => %{"location" => "header", "locationName" => "x-amz-acl", "shape" => "ObjectCannedACL"}, "Body" => %{"shape" => "Body", "streaming" => true}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "CacheControl" => %{"location" => "header", "locationName" => "Cache-Control", "shape" => "CacheControl"}, "ContentDisposition" => %{"location" => "header", "locationName" => "Content-Disposition", "shape" => "ContentDisposition"}, "ContentEncoding" => %{"location" => "header", "locationName" => "Content-Encoding", "shape" => "ContentEncoding"}, "ContentLanguage" => %{"location" => "header", "locationName" => "Content-Language", "shape" => "ContentLanguage"}, "ContentLength" => %{"location" => "header", "locationName" => "Content-Length", "shape" => "ContentLength"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "ContentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "ContentType"}, "Expires" => %{"location" => "header", "locationName" => "Expires", "shape" => "Expires"}, "GrantFullControl" => %{"location" => "header", "locationName" => "x-amz-grant-full-control", "shape" => "GrantFullControl"}, "GrantRead" => %{"location" => "header", "locationName" => "x-amz-grant-read", "shape" => "GrantRead"}, "GrantReadACP" => %{"location" => "header", "locationName" => "x-amz-grant-read-acp", "shape" => "GrantReadACP"}, "GrantWriteACP" => %{"location" => "header", "locationName" => "x-amz-grant-write-acp", "shape" => "GrantWriteACP"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "Metadata" => %{"location" => "headers", "locationName" => "x-amz-meta-", "shape" => "Metadata"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key", "shape" => "SSECustomerKey"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "StorageClass" => %{"location" => "header", "locationName" => "x-amz-storage-class", "shape" => "StorageClass"}, "Tagging" => %{"location" => "header", "locationName" => "x-amz-tagging", "shape" => "TaggingHeader"}, "WebsiteRedirectLocation" => %{"location" => "header", "locationName" => "x-amz-website-redirect-location", "shape" => "WebsiteRedirectLocation"}}, "payload" => "Body", "required" => ["Bucket", "Key"], "type" => "structure"}, "ContentEncoding" => %{"type" => "string"}, "AbortDate" => %{"type" => "timestamp"}, "ContentDisposition" => %{"type" => "string"}, "CommonPrefix" => %{"members" => %{"Prefix" => %{"shape" => "Prefix"}}, "type" => "structure"}, "ReplicationRule" => %{"members" => %{"Destination" => %{"shape" => "Destination"}, "ID" => %{"shape" => "ID"}, "Prefix" => %{"shape" => "Prefix"}, "Status" => %{"shape" => "ReplicationRuleStatus"}}, "required" => ["Prefix", "Status", "Destination"], "type" => "structure"}, "ErrorDocument" => %{"members" => %{"Key" => %{"shape" => "ObjectKey"}}, "required" => ["Key"], "type" => "structure"}, "Marker" => %{"type" => "string"}, "RequestPayer" => %{"enum" => ["requester"], "type" => "string"}, "DeleteObjectTaggingRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "VersionId" => %{"location" => "querystring", "locationName" => "versionId", "shape" => "ObjectVersionId"}}, "required" => ["Bucket", "Key"], "type" => "structure"}, "RestoreObjectOutput" => %{"members" => %{"RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}}, "type" => "structure"}, "ContentLength" => %{"type" => "long"}, "PutBucketLifecycleConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "LifecycleConfiguration" => %{"locationName" => "LifecycleConfiguration", "shape" => "BucketLifecycleConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "LifecycleConfiguration", "required" => ["Bucket"], "type" => "structure"}, "Error" => %{"members" => %{"Code" => %{"shape" => "Code"}, "Key" => %{"shape" => "ObjectKey"}, "Message" => %{"shape" => "Message"}, "VersionId" => %{"shape" => "ObjectVersionId"}}, "type" => "structure"}, "PartNumber" => %{"type" => "integer"}, "AbortMultipartUploadOutput" => %{"members" => %{"RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}}, "type" => "structure"}, "Delimiter" => %{"type" => "string"}, "Redirect" => %{"members" => %{"HostName" => %{"shape" => "HostName"}, "HttpRedirectCode" => %{"shape" => "HttpRedirectCode"}, "Protocol" => %{"shape" => "Protocol"}, "ReplaceKeyPrefixWith" => %{"shape" => "ReplaceKeyPrefixWith"}, "ReplaceKeyWith" => %{"shape" => "ReplaceKeyWith"}}, "type" => "structure"}, "MetricsConfiguration" => %{"members" => %{"Filter" => %{"shape" => "MetricsFilter"}, "Id" => %{"shape" => "MetricsId"}}, "required" => ["Id"], "type" => "structure"}, "PutBucketInventoryConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "InventoryId"}, "InventoryConfiguration" => %{"locationName" => "InventoryConfiguration", "shape" => "InventoryConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "InventoryConfiguration", "required" => ["Bucket", "Id", "InventoryConfiguration"], "type" => "structure"}, "ObjectStorageClass" => %{"enum" => ["STANDARD", "REDUCED_REDUNDANCY", "GLACIER"], "type" => "string"}, "ExpirationStatus" => %{"enum" => ["Enabled", "Disabled"], "type" => "string"}, "AllowedHeader" => %{"type" => "string"}, "MetricsAndOperator" => %{"members" => %{"Prefix" => %{"shape" => "Prefix"}, "Tags" => %{"flattened" => true, "locationName" => "Tag", "shape" => "TagSet"}}, "type" => "structure"}, "Quiet" => %{"type" => "boolean"}, "ReplicationRuleStatus" => %{"enum" => ["Enabled", "Disabled"], "type" => "string"}, "SSECustomerKeyMD5" => %{"type" => "string"}, "Prefix" => %{"type" => "string"}, "Grantee" => %{"members" => %{"DisplayName" => %{"shape" => "DisplayName"}, "EmailAddress" => %{"shape" => "EmailAddress"}, "ID" => %{"shape" => "ID"}, "Type" => %{"locationName" => "xsi:type", "shape" => "Type", "xmlAttribute" => true}, "URI" => %{"shape" => "URI"}}, "required" => ["Type"], "type" => "structure", "xmlNamespace" => %{"prefix" => "xsi", "uri" => "http://www.w3.org/2001/XMLSchema-instance"}}, "GetBucketLifecycleOutput" => %{"members" => %{"Rules" => %{"locationName" => "Rule", "shape" => "Rules"}}, "type" => "structure"}, "AnalyticsExportDestination" => %{"members" => %{"S3BucketDestination" => %{"shape" => "AnalyticsS3BucketDestination"}}, "required" => ["S3BucketDestination"], "type" => "structure"}, "KeyPrefixEquals" => %{"type" => "string"}, "ListMultipartUploadsOutput" => %{"members" => %{"Bucket" => %{"shape" => "BucketName"}, "CommonPrefixes" => %{"shape" => "CommonPrefixList"}, "Delimiter" => %{"shape" => "Delimiter"}, "EncodingType" => %{"shape" => "EncodingType"}, "IsTruncated" => %{"shape" => "IsTruncated"}, "KeyMarker" => %{"shape" => "KeyMarker"}, "MaxUploads" => %{"shape" => "MaxUploads"}, "NextKeyMarker" => %{"shape" => "NextKeyMarker"}, "NextUploadIdMarker" => %{"shape" => "NextUploadIdMarker"}, "Prefix" => %{"shape" => "Prefix"}, "UploadIdMarker" => %{"shape" => "UploadIdMarker"}, "Uploads" => %{"locationName" => "Upload", "shape" => "MultipartUploadList"}}, "type" => "structure"}, "Restore" => %{"type" => "string"}, "Destination" => %{"members" => %{"Bucket" => %{"shape" => "BucketName"}, "StorageClass" => %{"shape" => "StorageClass"}}, "required" => ["Bucket"], "type" => "structure"}, "InventoryId" => %{"type" => "string"}, "FilterRuleName" => %{"enum" => ["prefix", "suffix"], "type" => "string"}, "TagSet" => %{"member" => %{"locationName" => "Tag", "shape" => "Tag"}, "type" => "list"}, "GetBucketPolicyRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "MaxAgeSeconds" => %{"type" => "integer"}, "Expiration" => %{"type" => "string"}, "CopySourceSSECustomerKey" => %{"sensitive" => true, "type" => "string"}, "AnalyticsAndOperator" => %{"members" => %{"Prefix" => %{"shape" => "Prefix"}, "Tags" => %{"flattened" => true, "locationName" => "Tag", "shape" => "TagSet"}}, "type" => "structure"}, "AbortMultipartUploadRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "UploadId" => %{"location" => "querystring", "locationName" => "uploadId", "shape" => "MultipartUploadId"}}, "required" => ["Bucket", "Key", "UploadId"], "type" => "structure"}, "CreateMultipartUploadOutput" => %{"members" => %{"AbortDate" => %{"location" => "header", "locationName" => "x-amz-abort-date", "shape" => "AbortDate"}, "AbortRuleId" => %{"location" => "header", "locationName" => "x-amz-abort-rule-id", "shape" => "AbortRuleId"}, "Bucket" => %{"locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"shape" => "ObjectKey"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "UploadId" => %{"shape" => "MultipartUploadId"}}, "type" => "structure"}, "ListObjectsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Delimiter" => %{"location" => "querystring", "locationName" => "delimiter", "shape" => "Delimiter"}, "EncodingType" => %{"location" => "querystring", "locationName" => "encoding-type", "shape" => "EncodingType"}, "Marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "Marker"}, "MaxKeys" => %{"location" => "querystring", "locationName" => "max-keys", "shape" => "MaxKeys"}, "Prefix" => %{"location" => "querystring", "locationName" => "prefix", "shape" => "Prefix"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}}, "required" => ["Bucket"], "type" => "structure"}, "Rule" => %{"members" => %{"AbortIncompleteMultipartUpload" => %{"shape" => "AbortIncompleteMultipartUpload"}, "Expiration" => %{"shape" => "LifecycleExpiration"}, "ID" => %{"shape" => "ID"}, "NoncurrentVersionExpiration" => %{"shape" => "NoncurrentVersionExpiration"}, "NoncurrentVersionTransition" => %{"shape" => "NoncurrentVersionTransition"}, "Prefix" => %{"shape" => "Prefix"}, "Status" => %{"shape" => "ExpirationStatus"}, "Transition" => %{"shape" => "Transition"}}, "required" => ["Prefix", "Status"], "type" => "structure"}, "CORSConfiguration" => %{"members" => %{"CORSRules" => %{"locationName" => "CORSRule", "shape" => "CORSRules"}}, "required" => ["CORSRules"], "type" => "structure"}, "PutBucketPolicyRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "Policy" => %{"shape" => "Policy"}}, "payload" => "Policy", "required" => ["Bucket", "Policy"], "type" => "structure"}, "VersioningConfiguration" => %{"members" => %{"MFADelete" => %{"locationName" => "MfaDelete", "shape" => "MFADelete"}, "Status" => %{"shape" => "BucketVersioningStatus"}}, "type" => "structure"}, "FetchOwner" => %{"type" => "boolean"}, "AllowedMethods" => %{"flattened" => true, "member" => %{"shape" => "AllowedMethod"}, "type" => "list"}, "GetBucketLifecycleConfigurationOutput" => %{"members" => %{"Rules" => %{"locationName" => "Rule", "shape" => "LifecycleRules"}}, "type" => "structure"}, "NoncurrentVersionTransition" => %{"members" => %{"NoncurrentDays" => %{"shape" => "Days"}, "StorageClass" => %{"shape" => "TransitionStorageClass"}}, "type" => "structure"}, "MultipartUploadId" => %{"type" => "string"}, "GetBucketAnalyticsConfigurationOutput" => %{"members" => %{"AnalyticsConfiguration" => %{"shape" => "AnalyticsConfiguration"}}, "payload" => "AnalyticsConfiguration", "type" => "structure"}, "CopySourceSSECustomerKeyMD5" => %{"type" => "string"}, "IfUnmodifiedSince" => %{"type" => "timestamp"}, "MetricsId" => %{"type" => "string"}, "ListBucketInventoryConfigurationsOutput" => %{"members" => %{"ContinuationToken" => %{"shape" => "Token"}, "InventoryConfigurationList" => %{"locationName" => "InventoryConfiguration", "shape" => "InventoryConfigurationList"}, "IsTruncated" => %{"shape" => "IsTruncated"}, "NextContinuationToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DeleteMarkerVersionId" => %{"type" => "string"}, "DeleteObjectsOutput" => %{"members" => %{"Deleted" => %{"shape" => "DeletedObjects"}, "Errors" => %{"locationName" => "Error", "shape" => "Errors"}, "RequestCharged" => %{"location" => "header", "locationName" => "x-amz-request-charged", "shape" => "RequestCharged"}}, "type" => "structure"}, "Grant" => %{"members" => %{"Grantee" => %{"shape" => "Grantee"}, "Permission" => %{"shape" => "Permission"}}, "type" => "structure"}, "Body" => %{"type" => "blob"}, "ObjectVersion" => %{"members" => %{"ETag" => %{"shape" => "ETag"}, "IsLatest" => %{"shape" => "IsLatest"}, "Key" => %{"shape" => "ObjectKey"}, "LastModified" => %{"shape" => "LastModified"}, "Owner" => %{"shape" => "Owner"}, "Size" => %{"shape" => "Size"}, "StorageClass" => %{"shape" => "ObjectVersionStorageClass"}, "VersionId" => %{"shape" => "ObjectVersionId"}}, "type" => "structure"}, "GetBucketPolicyOutput" => %{"members" => %{"Policy" => %{"shape" => "Policy"}}, "payload" => "Policy", "type" => "structure"}, "Event" => %{"enum" => ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"], "type" => "string"}, "ID" => %{"type" => "string"}, "Permission" => %{"enum" => ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"], "type" => "string"}, "Expires" => %{"type" => "timestamp"}, "ContentLanguage" => %{"type" => "string"}, "ListMultipartUploadsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Delimiter" => %{"location" => "querystring", "locationName" => "delimiter", "shape" => "Delimiter"}, "EncodingType" => %{"location" => "querystring", "locationName" => "encoding-type", "shape" => "EncodingType"}, "KeyMarker" => %{"location" => "querystring", "locationName" => "key-marker", "shape" => "KeyMarker"}, "MaxUploads" => %{"location" => "querystring", "locationName" => "max-uploads", "shape" => "MaxUploads"}, "Prefix" => %{"location" => "querystring", "locationName" => "prefix", "shape" => "Prefix"}, "UploadIdMarker" => %{"location" => "querystring", "locationName" => "upload-id-marker", "shape" => "UploadIdMarker"}}, "required" => ["Bucket"], "type" => "structure"}, "FilterRuleList" => %{"flattened" => true, "member" => %{"shape" => "FilterRule"}, "type" => "list"}, "ListBucketInventoryConfigurationsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContinuationToken" => %{"location" => "querystring", "locationName" => "continuation-token", "shape" => "Token"}}, "required" => ["Bucket"], "type" => "structure"}, "BucketAccelerateStatus" => %{"enum" => ["Enabled", "Suspended"], "type" => "string"}, "ETag" => %{"type" => "string"}, "GetBucketAclOutput" => %{"members" => %{"Grants" => %{"locationName" => "AccessControlList", "shape" => "Grants"}, "Owner" => %{"shape" => "Owner"}}, "type" => "structure"}, "NoncurrentVersionExpiration" => %{"members" => %{"NoncurrentDays" => %{"shape" => "Days"}}, "type" => "structure"}, "LifecycleRule" => %{"members" => %{"AbortIncompleteMultipartUpload" => %{"shape" => "AbortIncompleteMultipartUpload"}, "Expiration" => %{"shape" => "LifecycleExpiration"}, "Filter" => %{"shape" => "LifecycleRuleFilter"}, "ID" => %{"shape" => "ID"}, "NoncurrentVersionExpiration" => %{"shape" => "NoncurrentVersionExpiration"}, "NoncurrentVersionTransitions" => %{"locationName" => "NoncurrentVersionTransition", "shape" => "NoncurrentVersionTransitionList"}, "Prefix" => %{"deprecated" => true, "shape" => "Prefix"}, "Status" => %{"shape" => "ExpirationStatus"}, "Transitions" => %{"locationName" => "Transition", "shape" => "TransitionList"}}, "required" => ["Status"], "type" => "structure"}, "ListBucketMetricsConfigurationsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContinuationToken" => %{"location" => "querystring", "locationName" => "continuation-token", "shape" => "Token"}}, "required" => ["Bucket"], "type" => "structure"}, "DeletedObject" => %{"members" => %{"DeleteMarker" => %{"shape" => "DeleteMarker"}, "DeleteMarkerVersionId" => %{"shape" => "DeleteMarkerVersionId"}, "Key" => %{"shape" => "ObjectKey"}, "VersionId" => %{"shape" => "ObjectVersionId"}}, "type" => "structure"}, "GetBucketAnalyticsConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "AnalyticsId"}}, "required" => ["Bucket", "Id"], "type" => "structure"}, "UploadIdMarker" => %{"type" => "string"}, "AnalyticsFilter" => %{"members" => %{"And" => %{"shape" => "AnalyticsAndOperator"}, "Prefix" => %{"shape" => "Prefix"}, "Tag" => %{"shape" => "Tag"}}, "type" => "structure"}, "GetBucketAclRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "DeleteBucketTaggingRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "Grants" => %{"member" => %{"locationName" => "Grant", "shape" => "Grant"}, "type" => "list"}, "NextKeyMarker" => %{"type" => "string"}, "AllowedMethod" => %{"type" => "string"}, "DeleteMarkers" => %{"flattened" => true, "member" => %{"shape" => "DeleteMarkerEntry"}, "type" => "list"}, "ListPartsRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "MaxParts" => %{"location" => "querystring", "locationName" => "max-parts", "shape" => "MaxParts"}, "PartNumberMarker" => %{"location" => "querystring", "locationName" => "part-number-marker", "shape" => "PartNumberMarker"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "UploadId" => %{"location" => "querystring", "locationName" => "uploadId", "shape" => "MultipartUploadId"}}, "required" => ["Bucket", "Key", "UploadId"], "type" => "structure"}, "NotificationConfiguration" => %{"members" => %{"LambdaFunctionConfigurations" => %{"locationName" => "CloudFunctionConfiguration", "shape" => "LambdaFunctionConfigurationList"}, "QueueConfigurations" => %{"locationName" => "QueueConfiguration", "shape" => "QueueConfigurationList"}, "TopicConfigurations" => %{"locationName" => "TopicConfiguration", "shape" => "TopicConfigurationList"}}, "type" => "structure"}, "PutBucketNotificationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "ContentMD5" => %{"location" => "header", "locationName" => "Content-MD5", "shape" => "ContentMD5"}, "NotificationConfiguration" => %{"locationName" => "NotificationConfiguration", "shape" => "NotificationConfigurationDeprecated", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "NotificationConfiguration", "required" => ["Bucket", "NotificationConfiguration"], "type" => "structure"}, "StorageClassAnalysis" => %{"members" => %{"DataExport" => %{"shape" => "StorageClassAnalysisDataExport"}}, "type" => "structure"}, "AnalyticsS3BucketDestination" => %{"members" => %{"Bucket" => %{"shape" => "BucketName"}, "BucketAccountId" => %{"shape" => "AccountId"}, "Format" => %{"shape" => "AnalyticsS3ExportFileFormat"}, "Prefix" => %{"shape" => "Prefix"}}, "required" => ["Format", "Bucket"], "type" => "structure"}, "TopicArn" => %{"type" => "string"}, "ReplicationConfiguration" => %{"members" => %{"Role" => %{"shape" => "Role"}, "Rules" => %{"locationName" => "Rule", "shape" => "ReplicationRules"}}, "required" => ["Role", "Rules"], "type" => "structure"}, "CloudFunctionInvocationRole" => %{"type" => "string"}, "NextToken" => %{"type" => "string"}, "CreateBucketConfiguration" => %{"members" => %{"LocationConstraint" => %{"shape" => "BucketLocationConstraint"}}, "type" => "structure"}, "TaggingHeader" => %{"type" => "string"}, "NotificationId" => %{"type" => "string"}, "PutBucketAnalyticsConfigurationRequest" => %{"members" => %{"AnalyticsConfiguration" => %{"locationName" => "AnalyticsConfiguration", "shape" => "AnalyticsConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "Id" => %{"location" => "querystring", "locationName" => "id", "shape" => "AnalyticsId"}}, "payload" => "AnalyticsConfiguration", "required" => ["Bucket", "Id", "AnalyticsConfiguration"], "type" => "structure"}, "PutBucketNotificationConfigurationRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "NotificationConfiguration" => %{"locationName" => "NotificationConfiguration", "shape" => "NotificationConfiguration", "xmlNamespace" => %{"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}}}, "payload" => "NotificationConfiguration", "required" => ["Bucket", "NotificationConfiguration"], "type" => "structure"}, "AnalyticsConfiguration" => %{"members" => %{"Filter" => %{"shape" => "AnalyticsFilter"}, "Id" => %{"shape" => "AnalyticsId"}, "StorageClassAnalysis" => %{"shape" => "StorageClassAnalysis"}}, "required" => ["Id", "StorageClassAnalysis"], "type" => "structure"}, "HeadBucketRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "CopySourceIfModifiedSince" => %{"type" => "timestamp"}, "QueueConfigurationList" => %{"flattened" => true, "member" => %{"shape" => "QueueConfiguration"}, "type" => "list"}, "ObjectNotInActiveTierError" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PartNumberMarker" => %{"type" => "integer"}, "DeleteBucketPolicyRequest" => %{"members" => %{"Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}}, "required" => ["Bucket"], "type" => "structure"}, "ReplaceKeyPrefixWith" => %{"type" => "string"}, "InventoryIncludedObjectVersions" => %{"enum" => ["All", "Current"], "type" => "string"}, "GrantWrite" => %{"type" => "string"}, "CreateMultipartUploadRequest" => %{"members" => %{"ACL" => %{"location" => "header", "locationName" => "x-amz-acl", "shape" => "ObjectCannedACL"}, "Bucket" => %{"location" => "uri", "locationName" => "Bucket", "shape" => "BucketName"}, "CacheControl" => %{"location" => "header", "locationName" => "Cache-Control", "shape" => "CacheControl"}, "ContentDisposition" => %{"location" => "header", "locationName" => "Content-Disposition", "shape" => "ContentDisposition"}, "ContentEncoding" => %{"location" => "header", "locationName" => "Content-Encoding", "shape" => "ContentEncoding"}, "ContentLanguage" => %{"location" => "header", "locationName" => "Content-Language", "shape" => "ContentLanguage"}, "ContentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "ContentType"}, "Expires" => %{"location" => "header", "locationName" => "Expires", "shape" => "Expires"}, "GrantFullControl" => %{"location" => "header", "locationName" => "x-amz-grant-full-control", "shape" => "GrantFullControl"}, "GrantRead" => %{"location" => "header", "locationName" => "x-amz-grant-read", "shape" => "GrantRead"}, "GrantReadACP" => %{"location" => "header", "locationName" => "x-amz-grant-read-acp", "shape" => "GrantReadACP"}, "GrantWriteACP" => %{"location" => "header", "locationName" => "x-amz-grant-write-acp", "shape" => "GrantWriteACP"}, "Key" => %{"location" => "uri", "locationName" => "Key", "shape" => "ObjectKey"}, "Metadata" => %{"location" => "headers", "locationName" => "x-amz-meta-", "shape" => "Metadata"}, "RequestPayer" => %{"location" => "header", "locationName" => "x-amz-request-payer", "shape" => "RequestPayer"}, "SSECustomerAlgorithm" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-algorithm", "shape" => "SSECustomerAlgorithm"}, "SSECustomerKey" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key", "shape" => "SSECustomerKey"}, "SSECustomerKeyMD5" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-customer-key-MD5", "shape" => "SSECustomerKeyMD5"}, "SSEKMSKeyId" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption-aws-kms-key-id", "shape" => "SSEKMSKeyId"}, "ServerSideEncryption" => %{"location" => "header", "locationName" => "x-amz-server-side-encryption", "shape" => "ServerSideEncryption"}, "StorageClass" => %{"location" => "header", "locationName" => "x-amz-storage-class", "shape" => "StorageClass"}, "Tagging" => %{"location" => "header", "locationName" => "x-amz-tagging", "shape" => "TaggingHeader"}, "WebsiteRedirectLocation" => %{"location" => "header", "locationName" => "x-amz-website-redirect-location", "shape" => "WebsiteRedirectLocation"}}, "required" => ["Bucket", "Key"], "type" => "structure"}, "ObjectCannedACL" => %{"enum" => ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"], "type" => "string"}}
  end
end