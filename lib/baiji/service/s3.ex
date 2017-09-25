defmodule Baiji.S3 do
  @moduledoc """

  """
  
  @doc """
  Deletes a metrics configuration (specified by the metrics configuration ID)
  from the bucket.
  """
  def delete_bucket_metrics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketMetricsConfiguration",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Returns some or all (up to 1000) of the objects in a bucket. You can use
  the request parameters as selection criteria to return a subset of the
  objects in a bucket.
  """
  def list_objects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListObjects",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns the policy of a specified bucket.
  """
  def get_bucket_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketPolicy",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns the replication configuration of a bucket.
  """
  def get_bucket_replication(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketReplication",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Lists the analytics configurations for the bucket.
  """
  def list_bucket_analytics_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListBucketAnalyticsConfigurations",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns a list of inventory configurations for the bucket.
  """
  def list_bucket_inventory_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListBucketInventoryConfigurations",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Sets the permissions on a bucket using access control lists (ACL).
  """
  def put_bucket_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketAcl",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Lists the metrics configurations for the bucket.
  """
  def list_bucket_metrics_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListBucketMetricsConfigurations",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns the tag set associated with the bucket.
  """
  def get_bucket_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketTagging",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Restores an archived copy of an object back into Amazon S3
  """
  def restore_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RestoreObject",
      type:     :rest_xml,
      method:   :post
    }
  end
  
  @doc """
  Deletes the policy from the bucket.
  """
  def delete_bucket_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketPolicy",
      type:     :rest_xml,
      method:   :delete
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
      input:    input,
      options:  options,
      action:   "CreateMultipartUpload",
      type:     :rest_xml,
      method:   :post
    }
  end
  
  @doc """
  Returns the tag-set of an object.
  """
  def get_object_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetObjectTagging",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Adds an inventory configuration (identified by the inventory ID) from the
  bucket.
  """
  def put_bucket_inventory_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketInventoryConfiguration",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Deprecated, see the PutBucketNotificationConfiguraiton operation.
  """
  def put_bucket_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketNotification",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Replaces a policy on a bucket. If the bucket already has a policy, the one
  in this request completely replaces it.
  """
  def put_bucket_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketPolicy",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Deprecated, see the GetBucketNotificationConfiguration operation.
  """
  def get_bucket_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketNotification",
      type:     :rest_xml,
      method:   :get
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
      input:    input,
      options:  options,
      action:   "PutBucketRequestPayment",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Gets a metrics configuration (specified by the metrics configuration ID)
  from the bucket.
  """
  def get_bucket_metrics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketMetricsConfiguration",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  uses the acl subresource to set the access control list (ACL) permissions
  for an object that already exists in a bucket
  """
  def put_object_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutObjectAcl",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Returns the versioning state of a bucket.
  """
  def get_bucket_versioning(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketVersioning",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Sets a metrics configuration (specified by the metrics configuration ID)
  for the bucket.
  """
  def put_bucket_metrics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketMetricsConfiguration",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Returns the website configuration for a bucket.
  """
  def get_bucket_website(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketWebsite",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Deletes the lifecycle configuration from the bucket.
  """
  def delete_bucket_lifecycle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketLifecycle",
      type:     :rest_xml,
      method:   :delete
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
      input:    input,
      options:  options,
      action:   "ListObjectsV2",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns a list of all buckets owned by the authenticated sender of the
  request.
  """
  def list_buckets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListBuckets",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns the region the bucket resides in.
  """
  def get_bucket_location(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketLocation",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Deletes the replication configuration from the bucket.
  """
  def delete_bucket_replication(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketReplication",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Returns the logging status of a bucket and the permissions users have to
  view and modify that status. To use GET, you must be the bucket owner.
  """
  def get_bucket_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketLogging",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Completes a multipart upload by assembling previously uploaded parts.
  """
  def complete_multipart_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CompleteMultipartUpload",
      type:     :rest_xml,
      method:   :post
    }
  end
  
  @doc """
  Returns the lifecycle configuration information set on the bucket.
  """
  def get_bucket_lifecycle_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketLifecycleConfiguration",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Adds an object to a bucket.
  """
  def put_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutObject",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Sets the accelerate configuration of an existing bucket.
  """
  def put_bucket_accelerate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketAccelerateConfiguration",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Deprecated, see the GetBucketLifecycleConfiguration operation.
  """
  def get_bucket_lifecycle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketLifecycle",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Set the website configuration for a bucket.
  """
  def put_bucket_website(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketWebsite",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Sets the versioning state of an existing bucket. To set the versioning
  state, you must be the bucket owner.
  """
  def put_bucket_versioning(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketVersioning",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Removes the null version (if there is one) of an object and inserts a
  delete marker, which becomes the latest version of the object. If there
  isn't a null version, Amazon S3 does not remove any objects.
  """
  def delete_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteObject",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Returns an inventory configuration (identified by the inventory ID) from
  the bucket.
  """
  def get_bucket_inventory_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketInventoryConfiguration",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Sets an analytics configuration for the bucket (specified by the analytics
  configuration ID).
  """
  def put_bucket_analytics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketAnalyticsConfiguration",
      type:     :rest_xml,
      method:   :put
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
      input:    input,
      options:  options,
      action:   "AbortMultipartUpload",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Sets the tags for a bucket.
  """
  def put_bucket_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketTagging",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Returns metadata about all of the versions of objects in a bucket.
  """
  def list_object_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListObjectVersions",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns the accelerate configuration of a bucket.
  """
  def get_bucket_accelerate_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketAccelerateConfiguration",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Deletes the bucket. All objects (including all object versions and Delete
  Markers) in the bucket must be deleted before the bucket itself can be
  deleted.
  """
  def delete_bucket(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucket",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Return torrent files from a bucket.
  """
  def get_object_torrent(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetObjectTorrent",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  The HEAD operation retrieves metadata from an object without returning the
  object itself. This operation is useful if you're only interested in an
  object's metadata. To use HEAD, you must have READ access to the object.
  """
  def head_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "HeadObject",
      type:     :rest_xml,
      method:   :head
    }
  end
  
  @doc """
  Deletes an inventory configuration (identified by the inventory ID) from
  the bucket.
  """
  def delete_bucket_inventory_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketInventoryConfiguration",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Deletes the cors configuration information set for the bucket.
  """
  def delete_bucket_cors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketCors",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Sets the cors configuration for a bucket.
  """
  def put_bucket_cors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketCors",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Deletes an analytics configuration for the bucket (specified by the
  analytics configuration ID).
  """
  def delete_bucket_analytics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketAnalyticsConfiguration",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Returns the notification configuration of a bucket.
  """
  def get_bucket_notification_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketNotificationConfiguration",
      type:     :rest_xml,
      method:   :get
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
      input:    input,
      options:  options,
      action:   "UploadPart",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  This operation enables you to delete multiple objects from a bucket using a
  single HTTP request. You may specify up to 1000 keys.
  """
  def delete_objects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteObjects",
      type:     :rest_xml,
      method:   :post
    }
  end
  
  @doc """
  Creates a new bucket.
  """
  def create_bucket(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateBucket",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Returns the cors configuration for the bucket.
  """
  def get_bucket_cors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketCors",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Creates a new replication configuration (or replaces an existing one, if
  present).
  """
  def put_bucket_replication(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketReplication",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Sets the supplied tag-set to an object that already exists in a bucket
  """
  def put_object_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutObjectTagging",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Creates a copy of an object that is already stored in Amazon S3.
  """
  def copy_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CopyObject",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Enables notifications of specified events for a bucket.
  """
  def put_bucket_notification_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketNotificationConfiguration",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Gets an analytics configuration for the bucket (specified by the analytics
  configuration ID).
  """
  def get_bucket_analytics_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketAnalyticsConfiguration",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns the request payment configuration of a bucket.
  """
  def get_bucket_request_payment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketRequestPayment",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Removes the tag-set from an existing object.
  """
  def delete_object_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteObjectTagging",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Set the logging parameters for a bucket and to specify permissions for who
  can view and modify the logging parameters. To set the logging status of a
  bucket, you must be the bucket owner.
  """
  def put_bucket_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketLogging",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Sets lifecycle configuration for your bucket. If a lifecycle configuration
  exists, it replaces it.
  """
  def put_bucket_lifecycle_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketLifecycleConfiguration",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Deletes the tags from the bucket.
  """
  def delete_bucket_tagging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketTagging",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  This operation lists in-progress multipart uploads.
  """
  def list_multipart_uploads(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListMultipartUploads",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Returns the access control list (ACL) of an object.
  """
  def get_object_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetObjectAcl",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Lists the parts that have been uploaded for a specific multipart upload.
  """
  def list_parts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListParts",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  Deprecated, see the PutBucketLifecycleConfiguration operation.
  """
  def put_bucket_lifecycle(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutBucketLifecycle",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Uploads a part by copying data from an existing object as data source.
  """
  def upload_part_copy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UploadPartCopy",
      type:     :rest_xml,
      method:   :put
    }
  end
  
  @doc """
  Retrieves objects from Amazon S3.
  """
  def get_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetObject",
      type:     :rest_xml,
      method:   :get
    }
  end
  
  @doc """
  This operation is useful to determine if a bucket exists and you have
  permission to access it.
  """
  def head_bucket(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "HeadBucket",
      type:     :rest_xml,
      method:   :head
    }
  end
  
  @doc """
  This operation removes the website configuration from the bucket.
  """
  def delete_bucket_website(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBucketWebsite",
      type:     :rest_xml,
      method:   :delete
    }
  end
  
  @doc """
  Gets the access control policy for the bucket.
  """
  def get_bucket_acl(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetBucketAcl",
      type:     :rest_xml,
      method:   :get
    }
  end
  
end