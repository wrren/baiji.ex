defmodule Baiji.DynamodbStreams do
  @moduledoc """
  Amazon DynamoDB

  Amazon DynamoDB Streams provides API actions for accessing streams and
  processing stream records. To learn more about application development with
  Streams, see [Capturing Table Activity with DynamoDB
  Streams](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html)
  in the Amazon DynamoDB Developer Guide.
  """

  @doc """
  Returns information about a stream, including the current status of the
  stream, its Amazon Resource Name (ARN), the composition of its shards, and
  its corresponding DynamoDB table.

  <note> You can call `DescribeStream` at a maximum rate of 10 times per
  second.

  </note> Each shard in the stream has a `SequenceNumberRange` associated
  with it. If the `SequenceNumberRange` has a `StartingSequenceNumber` but no
  `EndingSequenceNumber`, then the shard is still open (able to receive more
  stream records). If both `StartingSequenceNumber` and
  `EndingSequenceNumber` are present, then that shard is closed and can no
  longer receive more data.
  """
  def describe_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStream",
      method:           :post,
      input_shape:      "DescribeStreamInput",
      output_shape:     "DescribeStreamOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the stream records from a given shard.

  Specify a shard iterator using the `ShardIterator` parameter. The shard
  iterator specifies the position in the shard from which you want to start
  reading stream records sequentially. If there are no stream records
  available in the portion of the shard that the iterator points to,
  `GetRecords` returns an empty list. Note that it might take multiple calls
  to get to a portion of the shard that contains stream records.

  <note> `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream
  records, whichever comes first.

  </note>
  """
  def get_records(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetRecords",
      method:           :post,
      input_shape:      "GetRecordsInput",
      output_shape:     "GetRecordsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a shard iterator. A shard iterator provides information about how
  to retrieve the stream records from within a shard. Use the shard iterator
  in a subsequent `GetRecords` request to read the stream records from the
  shard.

  <note> A shard iterator expires 15 minutes after it is returned to the
  requester.

  </note>
  """
  def get_shard_iterator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetShardIterator",
      method:           :post,
      input_shape:      "GetShardIteratorInput",
      output_shape:     "GetShardIteratorOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns an array of stream ARNs associated with the current account and
  endpoint. If the `TableName` parameter is present, then `ListStreams` will
  return only the streams ARNs for that table.

  <note> You can call `ListStreams` at a maximum rate of 5 times per second.

  </note>
  """
  def list_streams(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListStreams",
      method:           :post,
      input_shape:      "ListStreamsInput",
      output_shape:     "ListStreamsOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "streams.dynamodb",
      target_prefix:    "DynamoDBStreams_20120810",
      endpoint_prefix:  "streams.dynamodb",
      type:             :json,
      version:          "2012-08-10",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"StringSetAttributeValue" => %{"member" => %{"shape" => "StringAttributeValue"}, "type" => "list"}, "GetShardIteratorInput" => %{"members" => %{"SequenceNumber" => %{"shape" => "SequenceNumber"}, "ShardId" => %{"shape" => "ShardId"}, "ShardIteratorType" => %{"shape" => "ShardIteratorType"}, "StreamArn" => %{"shape" => "StreamArn"}}, "required" => ["StreamArn", "ShardId", "ShardIteratorType"], "type" => "structure"}, "ShardIteratorType" => %{"enum" => ["TRIM_HORIZON", "LATEST", "AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER"], "type" => "string"}, "StreamViewType" => %{"enum" => ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"], "type" => "string"}, "KeyType" => %{"enum" => ["HASH", "RANGE"], "type" => "string"}, "TrimmedDataAccessException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "PositiveLongObject" => %{"min" => 1, "type" => "long"}, "StringAttributeValue" => %{"type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "AttributeName" => %{"max" => 65535, "type" => "string"}, "GetShardIteratorOutput" => %{"members" => %{"ShardIterator" => %{"shape" => "ShardIterator"}}, "type" => "structure"}, "StreamRecord" => %{"members" => %{"ApproximateCreationDateTime" => %{"shape" => "Date"}, "Keys" => %{"shape" => "AttributeMap"}, "NewImage" => %{"shape" => "AttributeMap"}, "OldImage" => %{"shape" => "AttributeMap"}, "SequenceNumber" => %{"shape" => "SequenceNumber"}, "SizeBytes" => %{"shape" => "PositiveLongObject"}, "StreamViewType" => %{"shape" => "StreamViewType"}}, "type" => "structure"}, "Record" => %{"members" => %{"awsRegion" => %{"shape" => "String"}, "dynamodb" => %{"shape" => "StreamRecord"}, "eventID" => %{"shape" => "String"}, "eventName" => %{"shape" => "OperationType"}, "eventSource" => %{"shape" => "String"}, "eventVersion" => %{"shape" => "String"}, "userIdentity" => %{"shape" => "Identity"}}, "type" => "structure"}, "TableName" => %{"max" => 255, "min" => 3, "pattern" => "[a-zA-Z0-9_.-]+", "type" => "string"}, "GetRecordsInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveIntegerObject"}, "ShardIterator" => %{"shape" => "ShardIterator"}}, "required" => ["ShardIterator"], "type" => "structure"}, "PositiveIntegerObject" => %{"min" => 1, "type" => "integer"}, "StreamDescription" => %{"members" => %{"CreationRequestDateTime" => %{"shape" => "Date"}, "KeySchema" => %{"shape" => "KeySchema"}, "LastEvaluatedShardId" => %{"shape" => "ShardId"}, "Shards" => %{"shape" => "ShardDescriptionList"}, "StreamArn" => %{"shape" => "StreamArn"}, "StreamLabel" => %{"shape" => "String"}, "StreamStatus" => %{"shape" => "StreamStatus"}, "StreamViewType" => %{"shape" => "StreamViewType"}, "TableName" => %{"shape" => "TableName"}}, "type" => "structure"}, "BinaryAttributeValue" => %{"type" => "blob"}, "SequenceNumberRange" => %{"members" => %{"EndingSequenceNumber" => %{"shape" => "SequenceNumber"}, "StartingSequenceNumber" => %{"shape" => "SequenceNumber"}}, "type" => "structure"}, "ShardIterator" => %{"max" => 2048, "min" => 1, "type" => "string"}, "Date" => %{"type" => "timestamp"}, "MapAttributeValue" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "Identity" => %{"members" => %{"PrincipalId" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "ListStreamsOutput" => %{"members" => %{"LastEvaluatedStreamArn" => %{"shape" => "StreamArn"}, "Streams" => %{"shape" => "StreamList"}}, "type" => "structure"}, "ShardDescriptionList" => %{"member" => %{"shape" => "Shard"}, "type" => "list"}, "NumberAttributeValue" => %{"type" => "string"}, "NumberSetAttributeValue" => %{"member" => %{"shape" => "NumberAttributeValue"}, "type" => "list"}, "ListStreamsInput" => %{"members" => %{"ExclusiveStartStreamArn" => %{"shape" => "StreamArn"}, "Limit" => %{"shape" => "PositiveIntegerObject"}, "TableName" => %{"shape" => "TableName"}}, "type" => "structure"}, "KeySchemaAttributeName" => %{"max" => 255, "min" => 1, "type" => "string"}, "StreamArn" => %{"max" => 1024, "min" => 37, "type" => "string"}, "LimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InternalServerError" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Stream" => %{"members" => %{"StreamArn" => %{"shape" => "StreamArn"}, "StreamLabel" => %{"shape" => "String"}, "TableName" => %{"shape" => "TableName"}}, "type" => "structure"}, "OperationType" => %{"enum" => ["INSERT", "MODIFY", "REMOVE"], "type" => "string"}, "DescribeStreamOutput" => %{"members" => %{"StreamDescription" => %{"shape" => "StreamDescription"}}, "type" => "structure"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "BooleanAttributeValue" => %{"type" => "boolean"}, "DescribeStreamInput" => %{"members" => %{"ExclusiveStartShardId" => %{"shape" => "ShardId"}, "Limit" => %{"shape" => "PositiveIntegerObject"}, "StreamArn" => %{"shape" => "StreamArn"}}, "required" => ["StreamArn"], "type" => "structure"}, "RecordList" => %{"member" => %{"shape" => "Record"}, "type" => "list"}, "StreamStatus" => %{"enum" => ["ENABLING", "ENABLED", "DISABLING", "DISABLED"], "type" => "string"}, "ListAttributeValue" => %{"member" => %{"shape" => "AttributeValue"}, "type" => "list"}, "AttributeMap" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "GetRecordsOutput" => %{"members" => %{"NextShardIterator" => %{"shape" => "ShardIterator"}, "Records" => %{"shape" => "RecordList"}}, "type" => "structure"}, "AttributeValue" => %{"members" => %{"B" => %{"shape" => "BinaryAttributeValue"}, "BOOL" => %{"shape" => "BooleanAttributeValue"}, "BS" => %{"shape" => "BinarySetAttributeValue"}, "L" => %{"shape" => "ListAttributeValue"}, "M" => %{"shape" => "MapAttributeValue"}, "N" => %{"shape" => "NumberAttributeValue"}, "NS" => %{"shape" => "NumberSetAttributeValue"}, "NULL" => %{"shape" => "NullAttributeValue"}, "S" => %{"shape" => "StringAttributeValue"}, "SS" => %{"shape" => "StringSetAttributeValue"}}, "type" => "structure"}, "ShardId" => %{"max" => 65, "min" => 28, "type" => "string"}, "StreamList" => %{"member" => %{"shape" => "Stream"}, "type" => "list"}, "Shard" => %{"members" => %{"ParentShardId" => %{"shape" => "ShardId"}, "SequenceNumberRange" => %{"shape" => "SequenceNumberRange"}, "ShardId" => %{"shape" => "ShardId"}}, "type" => "structure"}, "ExpiredIteratorException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "BinarySetAttributeValue" => %{"member" => %{"shape" => "BinaryAttributeValue"}, "type" => "list"}, "KeySchema" => %{"max" => 2, "member" => %{"shape" => "KeySchemaElement"}, "min" => 1, "type" => "list"}, "SequenceNumber" => %{"max" => 40, "min" => 21, "type" => "string"}, "NullAttributeValue" => %{"type" => "boolean"}, "KeySchemaElement" => %{"members" => %{"AttributeName" => %{"shape" => "KeySchemaAttributeName"}, "KeyType" => %{"shape" => "KeyType"}}, "required" => ["AttributeName", "KeyType"], "type" => "structure"}}
  end
end