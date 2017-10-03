defmodule Baiji.CloudTrail do
  @moduledoc """
  AWS CloudTrail

  This is the CloudTrail API Reference. It provides descriptions of actions,
  data types, common parameters, and common errors for CloudTrail.

  CloudTrail is a web service that records AWS API calls for your AWS account
  and delivers log files to an Amazon S3 bucket. The recorded information
  includes the identity of the user, the start time of the AWS API call, the
  source IP address, the request parameters, and the response elements
  returned by the service.

  <note> As an alternative to the API, you can use one of the AWS SDKs, which
  consist of libraries and sample code for various programming languages and
  platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a
  convenient way to create programmatic access to AWSCloudTrail. For example,
  the SDKs take care of cryptographically signing requests, managing errors,
  and retrying requests automatically. For information about the AWS SDKs,
  including how to download and install them, see the [Tools for Amazon Web
  Services page](http://aws.amazon.com/tools/).

  </note> See the [AWS CloudTrail User
  Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
  for information about the data that is included with each AWS API call
  listed in the log files.
  """
  
  @doc """
  Adds one or more tags to a trail, up to a limit of 50. Tags must be unique
  per trail. Overwrites an existing tag's value when a new value is specified
  for an existing tag key. If you specify a key without a value, the tag will
  be created with the specified key and a value of null. You can tag a trail
  that applies to all regions only from the region in which the trail was
  created (that is, from its home region).
  """
  def add_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTags",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "AddTagsRequest",
      output_shape:     "AddTagsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a trail that specifies the settings for delivery of log data to an
  Amazon S3 bucket. A maximum of five trails can exist in a region,
  irrespective of the region in which they were created.
  """
  def create_trail(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateTrail",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "CreateTrailRequest",
      output_shape:     "CreateTrailResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a trail. This operation must be called from the region in which the
  trail was created. `DeleteTrail` cannot be called on the shadow trails
  (replicated trails in other regions) of a trail that is enabled in all
  regions.
  """
  def delete_trail(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTrail",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "DeleteTrailRequest",
      output_shape:     "DeleteTrailResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves settings for the trail associated with the current region for
  your account.
  """
  def describe_trails(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTrails",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "DescribeTrailsRequest",
      output_shape:     "DescribeTrailsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the settings for the event selectors that you configured for your
  trail. The information returned for your event selectors includes the
  following:

  <ul> <li> The S3 objects that you are logging for data events.

  </li> <li> If your event selector includes management events.

  </li> <li> If your event selector includes read-only events, write-only
  events, or all.

  </li> </ul> For more information, see [Logging Data and Management Events
  for Trails
  ](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html)
  in the *AWS CloudTrail User Guide*.
  """
  def get_event_selectors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetEventSelectors",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "GetEventSelectorsRequest",
      output_shape:     "GetEventSelectorsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a JSON-formatted list of information about the specified trail.
  Fields include information on delivery errors, Amazon SNS and Amazon S3
  errors, and start and stop logging times for each trail. This operation
  returns trail status from a single region. To return trail status from all
  regions, you must call the operation on each region.
  """
  def get_trail_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetTrailStatus",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "GetTrailStatusRequest",
      output_shape:     "GetTrailStatusResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns all public keys whose private keys were used to sign the digest
  files within the specified time range. The public key is needed to validate
  digest files that were signed with its corresponding private key.

  <note> CloudTrail uses different private/public key pairs per region. Each
  digest file is signed with a private key unique to its region. Therefore,
  when you validate a digest file from a particular region, you must look in
  the same region for its corresponding public key.

  </note>
  """
  def list_public_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPublicKeys",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "ListPublicKeysRequest",
      output_shape:     "ListPublicKeysResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the tags for the trail in the current region.
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTags",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "ListTagsRequest",
      output_shape:     "ListTagsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Looks up API activity events captured by CloudTrail that create, update, or
  delete resources in your account. Events for a region can be looked up for
  the times in which you had CloudTrail turned on in that region during the
  last seven days. Lookup supports the following attributes:

  <ul> <li> Event ID

  </li> <li> Event name

  </li> <li> Event source

  </li> <li> Resource name

  </li> <li> Resource type

  </li> <li> User name

  </li> </ul> All attributes are optional. The default number of results
  returned is 10, with a maximum of 50 possible. The response includes a
  token that you can use to get the next page of results.

  <important> The rate of lookup requests is limited to one per second per
  account. If this limit is exceeded, a throttling error occurs.

  </important> <important> Events that occurred during the selected time
  range will not be available for lookup if CloudTrail logging was not
  enabled when the events occurred.

  </important>
  """
  def lookup_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "LookupEvents",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "LookupEventsRequest",
      output_shape:     "LookupEventsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Configures an event selector for your trail. Use event selectors to specify
  whether you want your trail to log management and/or data events. When an
  event occurs in your account, CloudTrail evaluates the event selectors in
  all trails. For each trail, if the event matches any event selector, the
  trail processes and logs the event. If the event doesn't match any event
  selector, the trail doesn't log the event.

  Example

  <ol> <li> You create an event selector for a trail and specify that you
  want write-only events.

  </li> <li> The EC2 `GetConsoleOutput` and `RunInstances` API operations
  occur in your account.

  </li> <li> CloudTrail evaluates whether the events match your event
  selectors.

  </li> <li> The `RunInstances` is a write-only event and it matches your
  event selector. The trail logs the event.

  </li> <li> The `GetConsoleOutput` is a read-only event but it doesn't match
  your event selector. The trail doesn't log the event.

  </li> </ol> The `PutEventSelectors` operation must be called from the
  region in which the trail was created; otherwise, an
  `InvalidHomeRegionException` is thrown.

  You can configure up to five event selectors for each trail. For more
  information, see [Logging Data and Management Events for Trails
  ](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html)
  in the *AWS CloudTrail User Guide*.
  """
  def put_event_selectors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutEventSelectors",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "PutEventSelectorsRequest",
      output_shape:     "PutEventSelectorsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes the specified tags from a trail.
  """
  def remove_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTags",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "RemoveTagsRequest",
      output_shape:     "RemoveTagsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts the recording of AWS API calls and log file delivery for a trail.
  For a trail that is enabled in all regions, this operation must be called
  from the region in which the trail was created. This operation cannot be
  called on the shadow trails (replicated trails in other regions) of a trail
  that is enabled in all regions.
  """
  def start_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartLogging",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "StartLoggingRequest",
      output_shape:     "StartLoggingResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Suspends the recording of AWS API calls and log file delivery for the
  specified trail. Under most circumstances, there is no need to use this
  action. You can update a trail without stopping it first. This action is
  the only way to stop recording. For a trail enabled in all regions, this
  operation must be called from the region in which the trail was created, or
  an `InvalidHomeRegionException` will occur. This operation cannot be called
  on the shadow trails (replicated trails in other regions) of a trail
  enabled in all regions.
  """
  def stop_logging(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopLogging",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "StopLoggingRequest",
      output_shape:     "StopLoggingResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the settings that specify delivery of log files. Changes to a trail
  do not require stopping the CloudTrail service. Use this action to
  designate an existing bucket for log delivery. If the existing bucket has
  previously been a target for CloudTrail log files, an IAM policy exists for
  the bucket. `UpdateTrail` must be called from the region in which the trail
  was created; otherwise, an `InvalidHomeRegionException` is thrown.
  """
  def update_trail(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudtrail",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateTrail",
      
      target_prefix:    "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
      
      endpoint_prefix:  "cloudtrail",
      type:             :json,
      version:          "2013-11-01",
      method:           :post,
      input_shape:      "UpdateTrailRequest",
      output_shape:     "UpdateTrailResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"GetEventSelectorsResponse" => %{"members" => %{"EventSelectors" => %{"shape" => "EventSelectors"}, "TrailARN" => %{"shape" => "String"}}, "type" => "structure"}, "GetTrailStatusResponse" => %{"members" => %{"IsLogging" => %{"shape" => "Boolean"}, "LatestCloudWatchLogsDeliveryError" => %{"shape" => "String"}, "LatestCloudWatchLogsDeliveryTime" => %{"shape" => "Date"}, "LatestDeliveryAttemptSucceeded" => %{"shape" => "String"}, "LatestDeliveryAttemptTime" => %{"shape" => "String"}, "LatestDeliveryError" => %{"shape" => "String"}, "LatestDeliveryTime" => %{"shape" => "Date"}, "LatestDigestDeliveryError" => %{"shape" => "String"}, "LatestDigestDeliveryTime" => %{"shape" => "Date"}, "LatestNotificationAttemptSucceeded" => %{"shape" => "String"}, "LatestNotificationAttemptTime" => %{"shape" => "String"}, "LatestNotificationError" => %{"shape" => "String"}, "LatestNotificationTime" => %{"shape" => "Date"}, "StartLoggingTime" => %{"shape" => "Date"}, "StopLoggingTime" => %{"shape" => "Date"}, "TimeLoggingStarted" => %{"shape" => "String"}, "TimeLoggingStopped" => %{"shape" => "String"}}, "type" => "structure"}, "ResourceTagList" => %{"member" => %{"shape" => "ResourceTag"}, "type" => "list"}, "AddTagsResponse" => %{"members" => %{}, "type" => "structure"}, "StopLoggingResponse" => %{"members" => %{}, "type" => "structure"}, "StopLoggingRequest" => %{"members" => %{"Name" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "PublicKeyList" => %{"member" => %{"shape" => "PublicKey"}, "type" => "list"}, "ListPublicKeysRequest" => %{"members" => %{"EndTime" => %{"shape" => "Date"}, "NextToken" => %{"shape" => "String"}, "StartTime" => %{"shape" => "Date"}}, "type" => "structure"}, "ListTagsResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "ResourceTagList" => %{"shape" => "ResourceTagList"}}, "type" => "structure"}, "InvalidTagParameterException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LookupAttributesList" => %{"member" => %{"shape" => "LookupAttribute"}, "type" => "list"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateTrailResponse" => %{"members" => %{"CloudWatchLogsLogGroupArn" => %{"shape" => "String"}, "CloudWatchLogsRoleArn" => %{"shape" => "String"}, "IncludeGlobalServiceEvents" => %{"shape" => "Boolean"}, "IsMultiRegionTrail" => %{"shape" => "Boolean"}, "KmsKeyId" => %{"shape" => "String"}, "LogFileValidationEnabled" => %{"shape" => "Boolean"}, "Name" => %{"shape" => "String"}, "S3BucketName" => %{"shape" => "String"}, "S3KeyPrefix" => %{"shape" => "String"}, "SnsTopicARN" => %{"shape" => "String"}, "SnsTopicName" => %{"deprecated" => true, "shape" => "String"}, "TrailARN" => %{"shape" => "String"}}, "type" => "structure"}, "RemoveTagsRequest" => %{"members" => %{"ResourceId" => %{"shape" => "String"}, "TagsList" => %{"shape" => "TagsList"}}, "required" => ["ResourceId"], "type" => "structure"}, "InvalidSnsTopicNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InsufficientEncryptionPolicyException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DataResource" => %{"members" => %{"Type" => %{"shape" => "String"}, "Values" => %{"shape" => "DataResourceValues"}}, "type" => "structure"}, "DataResources" => %{"member" => %{"shape" => "DataResource"}, "type" => "list"}, "Resource" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "ResourceType" => %{"shape" => "String"}}, "type" => "structure"}, "Trail" => %{"members" => %{"CloudWatchLogsLogGroupArn" => %{"shape" => "String"}, "CloudWatchLogsRoleArn" => %{"shape" => "String"}, "HasCustomEventSelectors" => %{"shape" => "Boolean"}, "HomeRegion" => %{"shape" => "String"}, "IncludeGlobalServiceEvents" => %{"shape" => "Boolean"}, "IsMultiRegionTrail" => %{"shape" => "Boolean"}, "KmsKeyId" => %{"shape" => "String"}, "LogFileValidationEnabled" => %{"shape" => "Boolean"}, "Name" => %{"shape" => "String"}, "S3BucketName" => %{"shape" => "String"}, "S3KeyPrefix" => %{"shape" => "String"}, "SnsTopicARN" => %{"shape" => "String"}, "SnsTopicName" => %{"deprecated" => true, "shape" => "String"}, "TrailARN" => %{"shape" => "String"}}, "type" => "structure"}, "EventSelector" => %{"members" => %{"DataResources" => %{"shape" => "DataResources"}, "IncludeManagementEvents" => %{"shape" => "Boolean"}, "ReadWriteType" => %{"shape" => "ReadWriteType"}}, "type" => "structure"}, "DeleteTrailResponse" => %{"members" => %{}, "type" => "structure"}, "ListPublicKeysResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "PublicKeyList" => %{"shape" => "PublicKeyList"}}, "type" => "structure"}, "DeleteTrailRequest" => %{"members" => %{"Name" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "CreateTrailResponse" => %{"members" => %{"CloudWatchLogsLogGroupArn" => %{"shape" => "String"}, "CloudWatchLogsRoleArn" => %{"shape" => "String"}, "IncludeGlobalServiceEvents" => %{"shape" => "Boolean"}, "IsMultiRegionTrail" => %{"shape" => "Boolean"}, "KmsKeyId" => %{"shape" => "String"}, "LogFileValidationEnabled" => %{"shape" => "Boolean"}, "Name" => %{"shape" => "String"}, "S3BucketName" => %{"shape" => "String"}, "S3KeyPrefix" => %{"shape" => "String"}, "SnsTopicARN" => %{"shape" => "String"}, "SnsTopicName" => %{"deprecated" => true, "shape" => "String"}, "TrailARN" => %{"shape" => "String"}}, "type" => "structure"}, "TrailNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ListTagsRequest" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "ResourceIdList" => %{"shape" => "ResourceIdList"}}, "required" => ["ResourceIdList"], "type" => "structure"}, "CloudTrailARNInvalidException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PutEventSelectorsResponse" => %{"members" => %{"EventSelectors" => %{"shape" => "EventSelectors"}, "TrailARN" => %{"shape" => "String"}}, "type" => "structure"}, "InsufficientS3BucketPolicyException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TrailList" => %{"member" => %{"shape" => "Trail"}, "type" => "list"}, "S3BucketDoesNotExistException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GetEventSelectorsRequest" => %{"members" => %{"TrailName" => %{"shape" => "String"}}, "required" => ["TrailName"], "type" => "structure"}, "ResourceTag" => %{"members" => %{"ResourceId" => %{"shape" => "String"}, "TagsList" => %{"shape" => "TagsList"}}, "type" => "structure"}, "Date" => %{"type" => "timestamp"}, "ByteBuffer" => %{"type" => "blob"}, "DescribeTrailsResponse" => %{"members" => %{"trailList" => %{"shape" => "TrailList"}}, "type" => "structure"}, "LookupEventsRequest" => %{"members" => %{"EndTime" => %{"shape" => "Date"}, "LookupAttributes" => %{"shape" => "LookupAttributesList"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "StartTime" => %{"shape" => "Date"}}, "type" => "structure"}, "ReadWriteType" => %{"enum" => ["ReadOnly", "WriteOnly", "All"], "type" => "string"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "required" => ["Key"], "type" => "structure"}, "TagsLimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidCloudWatchLogsLogGroupArnException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UnsupportedOperationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "MaxResults" => %{"max" => 50, "min" => 1, "type" => "integer"}, "UpdateTrailRequest" => %{"members" => %{"CloudWatchLogsLogGroupArn" => %{"shape" => "String"}, "CloudWatchLogsRoleArn" => %{"shape" => "String"}, "EnableLogFileValidation" => %{"shape" => "Boolean"}, "IncludeGlobalServiceEvents" => %{"shape" => "Boolean"}, "IsMultiRegionTrail" => %{"shape" => "Boolean"}, "KmsKeyId" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "S3BucketName" => %{"shape" => "String"}, "S3KeyPrefix" => %{"shape" => "String"}, "SnsTopicName" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "KmsKeyNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "GetTrailStatusRequest" => %{"members" => %{"Name" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "PutEventSelectorsRequest" => %{"members" => %{"EventSelectors" => %{"shape" => "EventSelectors"}, "TrailName" => %{"shape" => "String"}}, "required" => ["TrailName", "EventSelectors"], "type" => "structure"}, "InvalidHomeRegionException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CreateTrailRequest" => %{"members" => %{"CloudWatchLogsLogGroupArn" => %{"shape" => "String"}, "CloudWatchLogsRoleArn" => %{"shape" => "String"}, "EnableLogFileValidation" => %{"shape" => "Boolean"}, "IncludeGlobalServiceEvents" => %{"shape" => "Boolean"}, "IsMultiRegionTrail" => %{"shape" => "Boolean"}, "KmsKeyId" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "S3BucketName" => %{"shape" => "String"}, "S3KeyPrefix" => %{"shape" => "String"}, "SnsTopicName" => %{"shape" => "String"}}, "required" => ["Name", "S3BucketName"], "type" => "structure"}, "MaximumNumberOfTrailsExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidMaxResultsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ResourceTypeNotSupportedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "EventSelectors" => %{"member" => %{"shape" => "EventSelector"}, "type" => "list"}, "StartLoggingResponse" => %{"members" => %{}, "type" => "structure"}, "LookupAttribute" => %{"members" => %{"AttributeKey" => %{"shape" => "LookupAttributeKey"}, "AttributeValue" => %{"shape" => "String"}}, "required" => ["AttributeKey", "AttributeValue"], "type" => "structure"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidS3PrefixException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DataResourceValues" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "InvalidEventSelectorsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "OperationNotPermittedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TagsList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "KmsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidTimeRangeException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidCloudWatchLogsRoleArnException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "LookupAttributeKey" => %{"enum" => ["EventId", "EventName", "Username", "ResourceType", "ResourceName", "EventSource"], "type" => "string"}, "TrailAlreadyExistsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidLookupAttributesException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CloudWatchLogsDeliveryUnavailableException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TrailNotProvidedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidParameterCombinationException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "KmsKeyDisabledException" => %{"deprecated" => true, "exception" => true, "members" => %{}, "type" => "structure"}, "AddTagsRequest" => %{"members" => %{"ResourceId" => %{"shape" => "String"}, "TagsList" => %{"shape" => "TagsList"}}, "required" => ["ResourceId"], "type" => "structure"}, "InvalidS3BucketNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeTrailsRequest" => %{"members" => %{"includeShadowTrails" => %{"shape" => "Boolean"}, "trailNameList" => %{"shape" => "TrailNameList"}}, "type" => "structure"}, "PublicKey" => %{"members" => %{"Fingerprint" => %{"shape" => "String"}, "ValidityEndTime" => %{"shape" => "Date"}, "ValidityStartTime" => %{"shape" => "Date"}, "Value" => %{"shape" => "ByteBuffer"}}, "type" => "structure"}, "RemoveTagsResponse" => %{"members" => %{}, "type" => "structure"}, "InvalidKmsKeyIdException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidTrailNameException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Event" => %{"members" => %{"CloudTrailEvent" => %{"shape" => "String"}, "EventId" => %{"shape" => "String"}, "EventName" => %{"shape" => "String"}, "EventSource" => %{"shape" => "String"}, "EventTime" => %{"shape" => "Date"}, "Resources" => %{"shape" => "ResourceList"}, "Username" => %{"shape" => "String"}}, "type" => "structure"}, "ResourceIdList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "LookupEventsResponse" => %{"members" => %{"Events" => %{"shape" => "EventsList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "NextToken" => %{"type" => "string"}, "TrailNameList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "InvalidTokenException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "EventsList" => %{"member" => %{"shape" => "Event"}, "type" => "list"}, "ResourceList" => %{"member" => %{"shape" => "Resource"}, "type" => "list"}, "InsufficientSnsTopicPolicyException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "StartLoggingRequest" => %{"members" => %{"Name" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}}
  end
end