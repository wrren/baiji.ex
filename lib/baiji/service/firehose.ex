defmodule Baiji.Firehose do
  @moduledoc """
  Amazon Kinesis Firehose API Reference

  Amazon Kinesis Firehose is a fully managed service that delivers real-time
  streaming data to destinations such as Amazon Simple Storage Service
  (Amazon S3), Amazon Elasticsearch Service (Amazon ES), and Amazon Redshift.
  """

  @doc """
  Creates a delivery stream.

  By default, you can create up to 20 delivery streams per region.

  This is an asynchronous operation that immediately returns. The initial
  status of the delivery stream is `CREATING`. After the delivery stream is
  created, its status is `ACTIVE` and it now accepts data. Attempts to send
  data to a delivery stream that is not in the `ACTIVE` state cause an
  exception. To check the state of a delivery stream, use
  `DescribeDeliveryStream`.

  A Kinesis Firehose delivery stream can be configured to receive records
  directly from providers using `PutRecord` or `PutRecordBatch`, or it can be
  configured to use an existing Kinesis stream as its source. To specify a
  Kinesis stream as input, set the `DeliveryStreamType` parameter to
  `KinesisStreamAsSource`, and provide the Kinesis stream ARN and role ARN in
  the `KinesisStreamSourceConfiguration` parameter.

  A delivery stream is configured with a single destination: Amazon S3,
  Amazon ES, or Amazon Redshift. You must specify only one of the following
  destination configuration parameters:
  **ExtendedS3DestinationConfiguration**, **S3DestinationConfiguration**,
  **ElasticsearchDestinationConfiguration**, or
  **RedshiftDestinationConfiguration**.

  When you specify **S3DestinationConfiguration**, you can also provide the
  following optional values: **BufferingHints**, **EncryptionConfiguration**,
  and **CompressionFormat**. By default, if no **BufferingHints** value is
  provided, Kinesis Firehose buffers data up to 5 MB or for 5 minutes,
  whichever condition is satisfied first. Note that **BufferingHints** is a
  hint, so there are some cases where the service cannot adhere to these
  conditions strictly; for example, record boundaries are such that the size
  is a little over or under the configured buffering size. By default, no
  encryption is performed. We strongly recommend that you enable encryption
  to ensure secure data storage in Amazon S3.

  A few notes about Amazon Redshift as a destination:

  <ul> <li> An Amazon Redshift destination requires an S3 bucket as
  intermediate location, as Kinesis Firehose first delivers data to S3 and
  then uses `COPY` syntax to load data into an Amazon Redshift table. This is
  specified in the **RedshiftDestinationConfiguration.S3Configuration**
  parameter.

  </li> <li> The compression formats `SNAPPY` or `ZIP` cannot be specified in
  **RedshiftDestinationConfiguration.S3Configuration** because the Amazon
  Redshift `COPY` operation that reads from the S3 bucket doesn't support
  these compression formats.

  </li> <li> We strongly recommend that you use the user name and password
  you provide exclusively with Kinesis Firehose, and that the permissions for
  the account are restricted for Amazon Redshift `INSERT` permissions.

  </li> </ul> Kinesis Firehose assumes the IAM role that is configured as
  part of the destination. The role should allow the Kinesis Firehose
  principal to assume the role, and the role should have permissions that
  allow the service to deliver the data. For more information, see [Amazon S3
  Bucket
  Access](http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3)
  in the *Amazon Kinesis Firehose Developer Guide*.
  """
  def create_delivery_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDeliveryStream",
      method:           :post,
      input_shape:      "CreateDeliveryStreamInput",
      output_shape:     "CreateDeliveryStreamOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a delivery stream and its data.

  You can delete a delivery stream only if it is in `ACTIVE` or `DELETING`
  state, and not in the `CREATING` state. While the deletion request is in
  process, the delivery stream is in the `DELETING` state.

  To check the state of a delivery stream, use `DescribeDeliveryStream`.

  While the delivery stream is `DELETING` state, the service may continue to
  accept the records, but the service doesn't make any guarantees with
  respect to delivering the data. Therefore, as a best practice, you should
  first stop any applications that are sending records before deleting a
  delivery stream.
  """
  def delete_delivery_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDeliveryStream",
      method:           :post,
      input_shape:      "DeleteDeliveryStreamInput",
      output_shape:     "DeleteDeliveryStreamOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the specified delivery stream and gets the status. For example,
  after your delivery stream is created, call `DescribeDeliveryStream` to see
  if the delivery stream is `ACTIVE` and therefore ready for data to be sent
  to it.
  """
  def describe_delivery_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDeliveryStream",
      method:           :post,
      input_shape:      "DescribeDeliveryStreamInput",
      output_shape:     "DescribeDeliveryStreamOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def get_kinesis_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetKinesisStream",
      method:           :post,
      input_shape:      "GetKinesisStreamInput",
      output_shape:     "GetKinesisStreamOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists your delivery streams.

  The number of delivery streams might be too large to return using a single
  call to `ListDeliveryStreams`. You can limit the number of delivery streams
  returned, using the **Limit** parameter. To determine whether there are
  more delivery streams to list, check the value of
  **HasMoreDeliveryStreams** in the output. If there are more delivery
  streams to list, you can request them by specifying the name of the last
  delivery stream returned in the call in the
  **ExclusiveStartDeliveryStreamName** parameter of a subsequent call.
  """
  def list_delivery_streams(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDeliveryStreams",
      method:           :post,
      input_shape:      "ListDeliveryStreamsInput",
      output_shape:     "ListDeliveryStreamsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Writes a single data record into an Amazon Kinesis Firehose delivery
  stream. To write multiple data records into a delivery stream, use
  `PutRecordBatch`. Applications using these operations are referred to as
  producers.

  By default, each delivery stream can take in up to 2,000 transactions per
  second, 5,000 records per second, or 5 MB per second. Note that if you use
  `PutRecord` and `PutRecordBatch`, the limits are an aggregate across these
  two operations for each delivery stream. For more information about limits
  and how to request an increase, see [Amazon Kinesis Firehose
  Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).

  You must specify the name of the delivery stream and the data record when
  using `PutRecord`. The data record consists of a data blob that can be up
  to 1,000 KB in size, and any kind of data, for example, a segment from a
  log file, geographic location data, website clickstream data, and so on.

  Kinesis Firehose buffers records before delivering them to the destination.
  To disambiguate the data blobs at the destination, a common solution is to
  use delimiters in the data, such as a newline (`\n`) or some other
  character unique within the data. This allows the consumer application to
  parse individual data items when reading the data from the destination.

  The `PutRecord` operation returns a **RecordId**, which is a unique string
  assigned to each record. Producer applications can use this ID for purposes
  such as auditability and investigation.

  If the `PutRecord` operation throws a **ServiceUnavailableException**, back
  off and retry. If the exception persists, it is possible that the
  throughput limits have been exceeded for the delivery stream.

  Data records sent to Kinesis Firehose are stored for 24 hours from the time
  they are added to a delivery stream as it attempts to send the records to
  the destination. If the destination is unreachable for more than 24 hours,
  the data is no longer available.
  """
  def put_record(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutRecord",
      method:           :post,
      input_shape:      "PutRecordInput",
      output_shape:     "PutRecordOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Writes multiple data records into a delivery stream in a single call, which
  can achieve higher throughput per producer than when writing single
  records. To write single data records into a delivery stream, use
  `PutRecord`. Applications using these operations are referred to as
  producers.

  By default, each delivery stream can take in up to 2,000 transactions per
  second, 5,000 records per second, or 5 MB per second. If you use
  `PutRecord` and `PutRecordBatch`, the limits are an aggregate across these
  two operations for each delivery stream. For more information about limits,
  see [Amazon Kinesis Firehose
  Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).

  Each `PutRecordBatch` request supports up to 500 records. Each record in
  the request can be as large as 1,000 KB (before 64-bit encoding), up to a
  limit of 4 MB for the entire request. These limits cannot be changed.

  You must specify the name of the delivery stream and the data record when
  using `PutRecord`. The data record consists of a data blob that can be up
  to 1,000 KB in size, and any kind of data. For example, it could be a
  segment from a log file, geographic location data, web site clickstream
  data, and so on.

  Kinesis Firehose buffers records before delivering them to the destination.
  To disambiguate the data blobs at the destination, a common solution is to
  use delimiters in the data, such as a newline (`\n`) or some other
  character unique within the data. This allows the consumer application to
  parse individual data items when reading the data from the destination.

  The `PutRecordBatch` response includes a count of failed records,
  **FailedPutCount**, and an array of responses, **RequestResponses**. Each
  entry in the **RequestResponses** array provides additional information
  about the processed record. It directly correlates with a record in the
  request array using the same ordering, from the top to the bottom. The
  response array always includes the same number of records as the request
  array. **RequestResponses** includes both successfully and unsuccessfully
  processed records. Kinesis Firehose attempts to process all records in each
  `PutRecordBatch` request. A single record failure does not stop the
  processing of subsequent records.

  A successfully processed record includes a **RecordId** value, which is
  unique for the record. An unsuccessfully processed record includes
  **ErrorCode** and **ErrorMessage** values. **ErrorCode** reflects the type
  of error, and is one of the following values: `ServiceUnavailable` or
  `InternalFailure`. **ErrorMessage** provides more detailed information
  about the error.

  If there is an internal server error or a timeout, the write might have
  completed or it might have failed. If **FailedPutCount** is greater than 0,
  retry the request, resending only those records that might have failed
  processing. This minimizes the possible duplicate records and also reduces
  the total bytes sent (and corresponding charges). We recommend that you
  handle any duplicates at the destination.

  If `PutRecordBatch` throws **ServiceUnavailableException**, back off and
  retry. If the exception persists, it is possible that the throughput limits
  have been exceeded for the delivery stream.

  Data records sent to Kinesis Firehose are stored for 24 hours from the time
  they are added to a delivery stream as it attempts to send the records to
  the destination. If the destination is unreachable for more than 24 hours,
  the data is no longer available.
  """
  def put_record_batch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutRecordBatch",
      method:           :post,
      input_shape:      "PutRecordBatchInput",
      output_shape:     "PutRecordBatchOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the specified destination of the specified delivery stream.

  You can use this operation to change the destination type (for example, to
  replace the Amazon S3 destination with Amazon Redshift) or change the
  parameters associated with a destination (for example, to change the bucket
  name of the Amazon S3 destination). The update might not occur immediately.
  The target delivery stream remains active while the configurations are
  updated, so data writes to the delivery stream can continue during this
  process. The updated configurations are usually effective within a few
  minutes.

  Note that switching between Amazon ES and other services is not supported.
  For an Amazon ES destination, you can only update to another Amazon ES
  destination.

  If the destination type is the same, Kinesis Firehose merges the
  configuration parameters specified with the destination configuration that
  already exists on the delivery stream. If any of the parameters are not
  specified in the call, the existing values are retained. For example, in
  the Amazon S3 destination, if `EncryptionConfiguration` is not specified,
  then the existing `EncryptionConfiguration` is maintained on the
  destination.

  If the destination type is not the same, for example, changing the
  destination from Amazon S3 to Amazon Redshift, Kinesis Firehose does not
  merge any parameters. In this case, all parameters must be specified.

  Kinesis Firehose uses **CurrentDeliveryStreamVersionId** to avoid race
  conditions and conflicting merges. This is a required field, and the
  service updates the configuration only if the existing configuration has a
  version ID that matches. After the update is applied successfully, the
  version ID is updated, and can be retrieved using `DescribeDeliveryStream`.
  Use the new version ID to set **CurrentDeliveryStreamVersionId** in the
  next call.
  """
  def update_destination(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDestination",
      method:           :post,
      input_shape:      "UpdateDestinationInput",
      output_shape:     "UpdateDestinationOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "firehose",
      target_prefix:    "Firehose_20150804",
      endpoint_prefix:  "firehose",
      type:             :json,
      version:          "2015-08-04",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"SourceDescription" => %{"members" => %{"KinesisStreamSourceDescription" => %{"shape" => "KinesisStreamSourceDescription"}}, "type" => "structure"}, "GetKinesisStreamOutput" => %{"members" => %{"CredentialsForReadingKinesisStream" => %{"shape" => "SessionCredentials"}, "KinesisStreamARN" => %{"shape" => "KinesisStreamARN"}}, "type" => "structure"}, "LogGroupName" => %{"type" => "string"}, "ElasticsearchIndexRotationPeriod" => %{"enum" => ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"], "type" => "string"}, "PutRecordBatchResponseEntryList" => %{"max" => 500, "member" => %{"shape" => "PutRecordBatchResponseEntry"}, "min" => 1, "type" => "list"}, "UpdateDestinationInput" => %{"members" => %{"CurrentDeliveryStreamVersionId" => %{"shape" => "DeliveryStreamVersionId"}, "DeliveryStreamName" => %{"shape" => "DeliveryStreamName"}, "DestinationId" => %{"shape" => "DestinationId"}, "ElasticsearchDestinationUpdate" => %{"shape" => "ElasticsearchDestinationUpdate"}, "ExtendedS3DestinationUpdate" => %{"shape" => "ExtendedS3DestinationUpdate"}, "RedshiftDestinationUpdate" => %{"shape" => "RedshiftDestinationUpdate"}, "S3DestinationUpdate" => %{"deprecated" => true, "shape" => "S3DestinationUpdate"}}, "required" => ["DeliveryStreamName", "CurrentDeliveryStreamVersionId", "DestinationId"], "type" => "structure"}, "CopyOptions" => %{"type" => "string"}, "DeliveryStartTimestamp" => %{"type" => "timestamp"}, "DeliveryStreamName" => %{"max" => 64, "min" => 1, "pattern" => "[a-zA-Z0-9_.-]+", "type" => "string"}, "RedshiftDestinationConfiguration" => %{"members" => %{"CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "ClusterJDBCURL" => %{"shape" => "ClusterJDBCURL"}, "CopyCommand" => %{"shape" => "CopyCommand"}, "Password" => %{"shape" => "Password"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RetryOptions" => %{"shape" => "RedshiftRetryOptions"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3BackupConfiguration" => %{"shape" => "S3DestinationConfiguration"}, "S3BackupMode" => %{"shape" => "RedshiftS3BackupMode"}, "S3Configuration" => %{"shape" => "S3DestinationConfiguration"}, "Username" => %{"shape" => "Username"}}, "required" => ["RoleARN", "ClusterJDBCURL", "CopyCommand", "Username", "Password", "S3Configuration"], "type" => "structure"}, "S3BackupMode" => %{"enum" => ["Disabled", "Enabled"], "type" => "string"}, "DeleteDeliveryStreamOutput" => %{"members" => %{}, "type" => "structure"}, "ProcessorParameterList" => %{"member" => %{"shape" => "ProcessorParameter"}, "type" => "list"}, "ErrorMessage" => %{"type" => "string"}, "PutRecordOutput" => %{"members" => %{"RecordId" => %{"shape" => "PutResponseRecordId"}}, "required" => ["RecordId"], "type" => "structure"}, "ProcessorParameterName" => %{"enum" => ["LambdaArn", "NumberOfRetries"], "type" => "string"}, "ElasticsearchIndexName" => %{"max" => 80, "min" => 1, "type" => "string"}, "DeliveryStreamDescription" => %{"members" => %{"CreateTimestamp" => %{"shape" => "Timestamp"}, "DeliveryStreamARN" => %{"shape" => "DeliveryStreamARN"}, "DeliveryStreamName" => %{"shape" => "DeliveryStreamName"}, "DeliveryStreamStatus" => %{"shape" => "DeliveryStreamStatus"}, "DeliveryStreamType" => %{"shape" => "DeliveryStreamType"}, "Destinations" => %{"shape" => "DestinationDescriptionList"}, "HasMoreDestinations" => %{"shape" => "BooleanObject"}, "LastUpdateTimestamp" => %{"shape" => "Timestamp"}, "Source" => %{"shape" => "SourceDescription"}, "VersionId" => %{"shape" => "DeliveryStreamVersionId"}}, "required" => ["DeliveryStreamName", "DeliveryStreamARN", "DeliveryStreamStatus", "DeliveryStreamType", "VersionId", "Destinations", "HasMoreDestinations"], "type" => "structure"}, "PutResponseRecordId" => %{"min" => 1, "type" => "string"}, "DeliveryStreamStatus" => %{"enum" => ["CREATING", "DELETING", "ACTIVE"], "type" => "string"}, "CreateDeliveryStreamInput" => %{"members" => %{"DeliveryStreamName" => %{"shape" => "DeliveryStreamName"}, "DeliveryStreamType" => %{"shape" => "DeliveryStreamType"}, "ElasticsearchDestinationConfiguration" => %{"shape" => "ElasticsearchDestinationConfiguration"}, "ExtendedS3DestinationConfiguration" => %{"shape" => "ExtendedS3DestinationConfiguration"}, "KinesisStreamSourceConfiguration" => %{"shape" => "KinesisStreamSourceConfiguration"}, "RedshiftDestinationConfiguration" => %{"shape" => "RedshiftDestinationConfiguration"}, "S3DestinationConfiguration" => %{"deprecated" => true, "shape" => "S3DestinationConfiguration"}}, "required" => ["DeliveryStreamName"], "type" => "structure"}, "ClusterJDBCURL" => %{"min" => 1, "pattern" => "jdbc:(redshift|postgresql)://((?!-)[A-Za-z0-9-]{1,63}(?<!-)\\.)+redshift\\.amazonaws\\.com:\\d{1,5}/[a-zA-Z0-9_$]+", "type" => "string"}, "EncryptionConfiguration" => %{"members" => %{"KMSEncryptionConfig" => %{"shape" => "KMSEncryptionConfig"}, "NoEncryptionConfig" => %{"shape" => "NoEncryptionConfig"}}, "type" => "structure"}, "Record" => %{"members" => %{"Data" => %{"shape" => "Data"}}, "required" => ["Data"], "type" => "structure"}, "NonNegativeIntegerObject" => %{"min" => 0, "type" => "integer"}, "DeliveryStreamVersionId" => %{"max" => 50, "min" => 1, "pattern" => "[0-9]+", "type" => "string"}, "ResourceInUseException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PutRecordInput" => %{"members" => %{"DeliveryStreamName" => %{"shape" => "DeliveryStreamName"}, "Record" => %{"shape" => "Record"}}, "required" => ["DeliveryStreamName", "Record"], "type" => "structure"}, "ElasticsearchRetryDurationInSeconds" => %{"max" => 7200, "min" => 0, "type" => "integer"}, "ServiceUnavailableException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PutRecordBatchInput" => %{"members" => %{"DeliveryStreamName" => %{"shape" => "DeliveryStreamName"}, "Records" => %{"shape" => "PutRecordBatchRequestEntryList"}}, "required" => ["DeliveryStreamName", "Records"], "type" => "structure"}, "NoEncryptionConfig" => %{"enum" => ["NoEncryption"], "type" => "string"}, "ProcessingConfiguration" => %{"members" => %{"Enabled" => %{"shape" => "BooleanObject"}, "Processors" => %{"shape" => "ProcessorList"}}, "type" => "structure"}, "BooleanObject" => %{"type" => "boolean"}, "ExtendedS3DestinationUpdate" => %{"members" => %{"BucketARN" => %{"shape" => "BucketARN"}, "BufferingHints" => %{"shape" => "BufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "CompressionFormat" => %{"shape" => "CompressionFormat"}, "EncryptionConfiguration" => %{"shape" => "EncryptionConfiguration"}, "Prefix" => %{"shape" => "Prefix"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3BackupMode" => %{"shape" => "S3BackupMode"}, "S3BackupUpdate" => %{"shape" => "S3DestinationUpdate"}}, "type" => "structure"}, "ElasticsearchBufferingHints" => %{"members" => %{"IntervalInSeconds" => %{"shape" => "ElasticsearchBufferingIntervalInSeconds"}, "SizeInMBs" => %{"shape" => "ElasticsearchBufferingSizeInMBs"}}, "type" => "structure"}, "RoleARN" => %{"max" => 512, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "ElasticsearchTypeName" => %{"max" => 100, "min" => 1, "type" => "string"}, "ExtendedS3DestinationConfiguration" => %{"members" => %{"BucketARN" => %{"shape" => "BucketARN"}, "BufferingHints" => %{"shape" => "BufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "CompressionFormat" => %{"shape" => "CompressionFormat"}, "EncryptionConfiguration" => %{"shape" => "EncryptionConfiguration"}, "Prefix" => %{"shape" => "Prefix"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3BackupConfiguration" => %{"shape" => "S3DestinationConfiguration"}, "S3BackupMode" => %{"shape" => "S3BackupMode"}}, "required" => ["RoleARN", "BucketARN"], "type" => "structure"}, "GetKinesisStreamInput" => %{"members" => %{"DeliveryStreamARN" => %{"shape" => "DeliveryStreamARN"}}, "required" => ["DeliveryStreamARN"], "type" => "structure"}, "KinesisStreamSourceDescription" => %{"members" => %{"DeliveryStartTimestamp" => %{"shape" => "DeliveryStartTimestamp"}, "KinesisStreamARN" => %{"shape" => "KinesisStreamARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "ErrorCode" => %{"type" => "string"}, "IntervalInSeconds" => %{"max" => 900, "min" => 60, "type" => "integer"}, "RedshiftS3BackupMode" => %{"enum" => ["Disabled", "Enabled"], "type" => "string"}, "ProcessorList" => %{"member" => %{"shape" => "Processor"}, "type" => "list"}, "S3DestinationConfiguration" => %{"members" => %{"BucketARN" => %{"shape" => "BucketARN"}, "BufferingHints" => %{"shape" => "BufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "CompressionFormat" => %{"shape" => "CompressionFormat"}, "EncryptionConfiguration" => %{"shape" => "EncryptionConfiguration"}, "Prefix" => %{"shape" => "Prefix"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["RoleARN", "BucketARN"], "type" => "structure"}, "ElasticsearchRetryOptions" => %{"members" => %{"DurationInSeconds" => %{"shape" => "ElasticsearchRetryDurationInSeconds"}}, "type" => "structure"}, "DeliveryStreamARN" => %{"max" => 512, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "CompressionFormat" => %{"enum" => ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy"], "type" => "string"}, "DestinationId" => %{"max" => 100, "min" => 1, "type" => "string"}, "DestinationDescription" => %{"members" => %{"DestinationId" => %{"shape" => "DestinationId"}, "ElasticsearchDestinationDescription" => %{"shape" => "ElasticsearchDestinationDescription"}, "ExtendedS3DestinationDescription" => %{"shape" => "ExtendedS3DestinationDescription"}, "RedshiftDestinationDescription" => %{"shape" => "RedshiftDestinationDescription"}, "S3DestinationDescription" => %{"shape" => "S3DestinationDescription"}}, "required" => ["DestinationId"], "type" => "structure"}, "SessionToken" => %{"type" => "string"}, "Timestamp" => %{"type" => "timestamp"}, "InvalidStreamTypeException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}, "source" => %{"shape" => "FirehoseSource"}}, "type" => "structure"}, "DescribeDeliveryStreamInputLimit" => %{"max" => 10000, "min" => 1, "type" => "integer"}, "DeleteDeliveryStreamInput" => %{"members" => %{"DeliveryStreamName" => %{"shape" => "DeliveryStreamName"}}, "required" => ["DeliveryStreamName"], "type" => "structure"}, "BucketARN" => %{"max" => 2048, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "LogStreamName" => %{"type" => "string"}, "ProcessorType" => %{"enum" => ["Lambda"], "type" => "string"}, "S3DestinationDescription" => %{"members" => %{"BucketARN" => %{"shape" => "BucketARN"}, "BufferingHints" => %{"shape" => "BufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "CompressionFormat" => %{"shape" => "CompressionFormat"}, "EncryptionConfiguration" => %{"shape" => "EncryptionConfiguration"}, "Prefix" => %{"shape" => "Prefix"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["RoleARN", "BucketARN", "BufferingHints", "CompressionFormat", "EncryptionConfiguration"], "type" => "structure"}, "InvalidArgumentException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateDeliveryStreamOutput" => %{"members" => %{"DeliveryStreamARN" => %{"shape" => "DeliveryStreamARN"}}, "type" => "structure"}, "SizeInMBs" => %{"max" => 128, "min" => 1, "type" => "integer"}, "ProcessorParameterValue" => %{"max" => 512, "min" => 1, "type" => "string"}, "LimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PutRecordBatchOutput" => %{"members" => %{"FailedPutCount" => %{"shape" => "NonNegativeIntegerObject"}, "RequestResponses" => %{"shape" => "PutRecordBatchResponseEntryList"}}, "required" => ["FailedPutCount", "RequestResponses"], "type" => "structure"}, "KMSEncryptionConfig" => %{"members" => %{"AWSKMSKeyARN" => %{"shape" => "AWSKMSKeyARN"}}, "required" => ["AWSKMSKeyARN"], "type" => "structure"}, "DeliveryStreamType" => %{"enum" => ["DirectPut", "KinesisStreamAsSource"], "type" => "string"}, "Processor" => %{"members" => %{"Parameters" => %{"shape" => "ProcessorParameterList"}, "Type" => %{"shape" => "ProcessorType"}}, "required" => ["Type"], "type" => "structure"}, "S3DestinationUpdate" => %{"members" => %{"BucketARN" => %{"shape" => "BucketARN"}, "BufferingHints" => %{"shape" => "BufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "CompressionFormat" => %{"shape" => "CompressionFormat"}, "EncryptionConfiguration" => %{"shape" => "EncryptionConfiguration"}, "Prefix" => %{"shape" => "Prefix"}, "RoleARN" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "KinesisStreamSourceConfiguration" => %{"members" => %{"KinesisStreamARN" => %{"shape" => "KinesisStreamARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["KinesisStreamARN", "RoleARN"], "type" => "structure"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DeliveryStreamNameList" => %{"member" => %{"shape" => "DeliveryStreamName"}, "type" => "list"}, "RedshiftRetryDurationInSeconds" => %{"max" => 7200, "min" => 0, "type" => "integer"}, "DataTableName" => %{"min" => 1, "type" => "string"}, "Password" => %{"min" => 6, "sensitive" => true, "type" => "string"}, "ElasticsearchS3BackupMode" => %{"enum" => ["FailedDocumentsOnly", "AllDocuments"], "type" => "string"}, "CloudWatchLoggingOptions" => %{"members" => %{"Enabled" => %{"shape" => "BooleanObject"}, "LogGroupName" => %{"shape" => "LogGroupName"}, "LogStreamName" => %{"shape" => "LogStreamName"}}, "type" => "structure"}, "CopyCommand" => %{"members" => %{"CopyOptions" => %{"shape" => "CopyOptions"}, "DataTableColumns" => %{"shape" => "DataTableColumns"}, "DataTableName" => %{"shape" => "DataTableName"}}, "required" => ["DataTableName"], "type" => "structure"}, "ProcessorParameter" => %{"members" => %{"ParameterName" => %{"shape" => "ProcessorParameterName"}, "ParameterValue" => %{"shape" => "ProcessorParameterValue"}}, "required" => ["ParameterName", "ParameterValue"], "type" => "structure"}, "AccessKeyId" => %{"type" => "string"}, "DataTableColumns" => %{"type" => "string"}, "BufferingHints" => %{"members" => %{"IntervalInSeconds" => %{"shape" => "IntervalInSeconds"}, "SizeInMBs" => %{"shape" => "SizeInMBs"}}, "type" => "structure"}, "Prefix" => %{"type" => "string"}, "ElasticsearchBufferingSizeInMBs" => %{"max" => 100, "min" => 1, "type" => "integer"}, "Data" => %{"max" => 1024000, "min" => 0, "type" => "blob"}, "UpdateDestinationOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeDeliveryStreamInput" => %{"members" => %{"DeliveryStreamName" => %{"shape" => "DeliveryStreamName"}, "ExclusiveStartDestinationId" => %{"shape" => "DestinationId"}, "Limit" => %{"shape" => "DescribeDeliveryStreamInputLimit"}}, "required" => ["DeliveryStreamName"], "type" => "structure"}, "ElasticsearchDestinationDescription" => %{"members" => %{"BufferingHints" => %{"shape" => "ElasticsearchBufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "DomainARN" => %{"shape" => "ElasticsearchDomainARN"}, "IndexName" => %{"shape" => "ElasticsearchIndexName"}, "IndexRotationPeriod" => %{"shape" => "ElasticsearchIndexRotationPeriod"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RetryOptions" => %{"shape" => "ElasticsearchRetryOptions"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3BackupMode" => %{"shape" => "ElasticsearchS3BackupMode"}, "S3DestinationDescription" => %{"shape" => "S3DestinationDescription"}, "TypeName" => %{"shape" => "ElasticsearchTypeName"}}, "type" => "structure"}, "FirehoseSource" => %{"type" => "string"}, "SessionCredentials" => %{"members" => %{"AccessKeyId" => %{"shape" => "AccessKeyId"}, "Expiration" => %{"shape" => "Timestamp"}, "SecretAccessKey" => %{"shape" => "SecretAccessKey"}, "SessionToken" => %{"shape" => "SessionToken"}}, "required" => ["AccessKeyId", "SecretAccessKey", "SessionToken", "Expiration"], "type" => "structure"}, "ListDeliveryStreamsInput" => %{"members" => %{"DeliveryStreamType" => %{"shape" => "DeliveryStreamType"}, "ExclusiveStartDeliveryStreamName" => %{"shape" => "DeliveryStreamName"}, "Limit" => %{"shape" => "ListDeliveryStreamsInputLimit"}}, "type" => "structure"}, "PutRecordBatchResponseEntry" => %{"members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "ErrorMessage" => %{"shape" => "ErrorMessage"}, "RecordId" => %{"shape" => "PutResponseRecordId"}}, "type" => "structure"}, "DestinationDescriptionList" => %{"member" => %{"shape" => "DestinationDescription"}, "type" => "list"}, "AWSKMSKeyARN" => %{"max" => 512, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "DescribeDeliveryStreamOutput" => %{"members" => %{"DeliveryStreamDescription" => %{"shape" => "DeliveryStreamDescription"}}, "required" => ["DeliveryStreamDescription"], "type" => "structure"}, "KinesisStreamARN" => %{"max" => 512, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "ListDeliveryStreamsOutput" => %{"members" => %{"DeliveryStreamNames" => %{"shape" => "DeliveryStreamNameList"}, "HasMoreDeliveryStreams" => %{"shape" => "BooleanObject"}}, "required" => ["DeliveryStreamNames", "HasMoreDeliveryStreams"], "type" => "structure"}, "ExtendedS3DestinationDescription" => %{"members" => %{"BucketARN" => %{"shape" => "BucketARN"}, "BufferingHints" => %{"shape" => "BufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "CompressionFormat" => %{"shape" => "CompressionFormat"}, "EncryptionConfiguration" => %{"shape" => "EncryptionConfiguration"}, "Prefix" => %{"shape" => "Prefix"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3BackupDescription" => %{"shape" => "S3DestinationDescription"}, "S3BackupMode" => %{"shape" => "S3BackupMode"}}, "required" => ["RoleARN", "BucketARN", "BufferingHints", "CompressionFormat", "EncryptionConfiguration"], "type" => "structure"}, "ElasticsearchDestinationUpdate" => %{"members" => %{"BufferingHints" => %{"shape" => "ElasticsearchBufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "DomainARN" => %{"shape" => "ElasticsearchDomainARN"}, "IndexName" => %{"shape" => "ElasticsearchIndexName"}, "IndexRotationPeriod" => %{"shape" => "ElasticsearchIndexRotationPeriod"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RetryOptions" => %{"shape" => "ElasticsearchRetryOptions"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3Update" => %{"shape" => "S3DestinationUpdate"}, "TypeName" => %{"shape" => "ElasticsearchTypeName"}}, "type" => "structure"}, "ElasticsearchDomainARN" => %{"max" => 512, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "RedshiftDestinationUpdate" => %{"members" => %{"CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "ClusterJDBCURL" => %{"shape" => "ClusterJDBCURL"}, "CopyCommand" => %{"shape" => "CopyCommand"}, "Password" => %{"shape" => "Password"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RetryOptions" => %{"shape" => "RedshiftRetryOptions"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3BackupMode" => %{"shape" => "RedshiftS3BackupMode"}, "S3BackupUpdate" => %{"shape" => "S3DestinationUpdate"}, "S3Update" => %{"shape" => "S3DestinationUpdate"}, "Username" => %{"shape" => "Username"}}, "type" => "structure"}, "RedshiftRetryOptions" => %{"members" => %{"DurationInSeconds" => %{"shape" => "RedshiftRetryDurationInSeconds"}}, "type" => "structure"}, "Username" => %{"min" => 1, "sensitive" => true, "type" => "string"}, "SecretAccessKey" => %{"type" => "string"}, "ListDeliveryStreamsInputLimit" => %{"max" => 10000, "min" => 1, "type" => "integer"}, "ConcurrentModificationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PutRecordBatchRequestEntryList" => %{"max" => 500, "member" => %{"shape" => "Record"}, "min" => 1, "type" => "list"}, "RedshiftDestinationDescription" => %{"members" => %{"CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "ClusterJDBCURL" => %{"shape" => "ClusterJDBCURL"}, "CopyCommand" => %{"shape" => "CopyCommand"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RetryOptions" => %{"shape" => "RedshiftRetryOptions"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3BackupDescription" => %{"shape" => "S3DestinationDescription"}, "S3BackupMode" => %{"shape" => "RedshiftS3BackupMode"}, "S3DestinationDescription" => %{"shape" => "S3DestinationDescription"}, "Username" => %{"shape" => "Username"}}, "required" => ["RoleARN", "ClusterJDBCURL", "CopyCommand", "Username", "S3DestinationDescription"], "type" => "structure"}, "ElasticsearchBufferingIntervalInSeconds" => %{"max" => 900, "min" => 60, "type" => "integer"}, "ElasticsearchDestinationConfiguration" => %{"members" => %{"BufferingHints" => %{"shape" => "ElasticsearchBufferingHints"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "DomainARN" => %{"shape" => "ElasticsearchDomainARN"}, "IndexName" => %{"shape" => "ElasticsearchIndexName"}, "IndexRotationPeriod" => %{"shape" => "ElasticsearchIndexRotationPeriod"}, "ProcessingConfiguration" => %{"shape" => "ProcessingConfiguration"}, "RetryOptions" => %{"shape" => "ElasticsearchRetryOptions"}, "RoleARN" => %{"shape" => "RoleARN"}, "S3BackupMode" => %{"shape" => "ElasticsearchS3BackupMode"}, "S3Configuration" => %{"shape" => "S3DestinationConfiguration"}, "TypeName" => %{"shape" => "ElasticsearchTypeName"}}, "required" => ["RoleARN", "DomainARN", "IndexName", "TypeName", "S3Configuration"], "type" => "structure"}}
  end
end