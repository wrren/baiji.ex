defmodule Baiji.CognitoSync do
  @moduledoc """
  Amazon Cognito Sync

  Amazon Cognito Sync provides an AWS service and client library that enable
  cross-device syncing of application-related user data. High-level client
  libraries are available for both iOS and Android. You can use these
  libraries to persist data locally so that it's available even if the device
  is offline. Developer credentials don't need to be stored on the mobile
  device to access the service. You can use Amazon Cognito to obtain a
  normalized user ID and credentials. User data is persisted in a dataset
  that can store up to 1 MB of key-value pairs, and you can have up to 20
  datasets per user identity.

  With Amazon Cognito Sync, the data stored for each identity is accessible
  only to credentials assigned to that identity. In order to use the Cognito
  Sync service, you need to make API calls using credentials retrieved with
  [Amazon Cognito Identity
  service](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html).

  If you want to use Cognito Sync in an Android or iOS application, you will
  probably want to make API calls via the AWS Mobile SDK. To learn more, see
  the [Developer Guide for
  Android](http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html)
  and the [Developer Guide for
  iOS](http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html).
  """
  
  @doc """
  Initiates a bulk publish of all existing datasets for an Identity Pool to
  the configured stream. Customers are limited to one successful bulk publish
  per 24 hours. Bulk publish is an asynchronous request, customers can see
  the status of the request via the GetBulkPublishDetails operation.

  This API can only be called with developer credentials. You cannot call
  this API with the temporary user credentials provided by Cognito Identity.
  """
  def bulk_publish(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/bulkpublish",
      input:            input,
      options:          options,
      action:           "BulkPublish",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :post,
      input_shape:      "BulkPublishRequest",
      output_shape:     "BulkPublishResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specific dataset. The dataset will be deleted permanently, and
  the action can't be undone. Datasets that this dataset was merged with will
  no longer report the merge. Any subsequent operation on this dataset will
  result in a ResourceNotFoundException.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials.
  """
  def delete_dataset(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
      input:            input,
      options:          options,
      action:           "DeleteDataset",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :delete,
      input_shape:      "DeleteDatasetRequest",
      output_shape:     "DeleteDatasetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets meta data about a dataset by identity and dataset name. With Amazon
  Cognito Sync, each identity has access only to its own data. Thus, the
  credentials used to make this API call need to have access to the identity
  data.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials. You should use Cognito Identity
  credentials to make this API call.
  """
  def describe_dataset(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
      input:            input,
      options:          options,
      action:           "DescribeDataset",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :get,
      input_shape:      "DescribeDatasetRequest",
      output_shape:     "DescribeDatasetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets usage details (for example, data storage) about a particular identity
  pool.

  This API can only be called with developer credentials. You cannot call
  this API with the temporary user credentials provided by Cognito Identity.
  """
  def describe_identity_pool_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}",
      input:            input,
      options:          options,
      action:           "DescribeIdentityPoolUsage",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :get,
      input_shape:      "DescribeIdentityPoolUsageRequest",
      output_shape:     "DescribeIdentityPoolUsageResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets usage information for an identity, including number of datasets and
  data usage.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials.
  """
  def describe_identity_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identities/{IdentityId}",
      input:            input,
      options:          options,
      action:           "DescribeIdentityUsage",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :get,
      input_shape:      "DescribeIdentityUsageRequest",
      output_shape:     "DescribeIdentityUsageResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get the status of the last BulkPublish operation for an identity pool.

  This API can only be called with developer credentials. You cannot call
  this API with the temporary user credentials provided by Cognito Identity.
  """
  def get_bulk_publish_details(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/getBulkPublishDetails",
      input:            input,
      options:          options,
      action:           "GetBulkPublishDetails",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :post,
      input_shape:      "GetBulkPublishDetailsRequest",
      output_shape:     "GetBulkPublishDetailsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets the events and the corresponding Lambda functions associated with an
  identity pool.

  This API can only be called with developer credentials. You cannot call
  this API with the temporary user credentials provided by Cognito Identity.
  """
  def get_cognito_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/events",
      input:            input,
      options:          options,
      action:           "GetCognitoEvents",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :get,
      input_shape:      "GetCognitoEventsRequest",
      output_shape:     "GetCognitoEventsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets the configuration settings of an identity pool.

  This API can only be called with developer credentials. You cannot call
  this API with the temporary user credentials provided by Cognito Identity.
  """
  def get_identity_pool_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/configuration",
      input:            input,
      options:          options,
      action:           "GetIdentityPoolConfiguration",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :get,
      input_shape:      "GetIdentityPoolConfigurationRequest",
      output_shape:     "GetIdentityPoolConfigurationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists datasets for an identity. With Amazon Cognito Sync, each identity has
  access only to its own data. Thus, the credentials used to make this API
  call need to have access to the identity data.

  ListDatasets can be called with temporary user credentials provided by
  Cognito Identity or with developer credentials. You should use the Cognito
  Identity credentials to make this API call.
  """
  def list_datasets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets",
      input:            input,
      options:          options,
      action:           "ListDatasets",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :get,
      input_shape:      "ListDatasetsRequest",
      output_shape:     "ListDatasetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets a list of identity pools registered with Cognito.

  ListIdentityPoolUsage can only be called with developer credentials. You
  cannot make this API call with the temporary user credentials provided by
  Cognito Identity.
  """
  def list_identity_pool_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools",
      input:            input,
      options:          options,
      action:           "ListIdentityPoolUsage",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :get,
      input_shape:      "ListIdentityPoolUsageRequest",
      output_shape:     "ListIdentityPoolUsageResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets paginated records, optionally changed after a particular sync count
  for a dataset and identity. With Amazon Cognito Sync, each identity has
  access only to its own data. Thus, the credentials used to make this API
  call need to have access to the identity data.

  ListRecords can be called with temporary user credentials provided by
  Cognito Identity or with developer credentials. You should use Cognito
  Identity credentials to make this API call.
  """
  def list_records(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records",
      input:            input,
      options:          options,
      action:           "ListRecords",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :get,
      input_shape:      "ListRecordsRequest",
      output_shape:     "ListRecordsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Registers a device to receive push sync notifications.

  This API can only be called with temporary credentials provided by Cognito
  Identity. You cannot call this API with developer credentials.
  """
  def register_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device",
      input:            input,
      options:          options,
      action:           "RegisterDevice",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :post,
      input_shape:      "RegisterDeviceRequest",
      output_shape:     "RegisterDeviceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets the AWS Lambda function for a given event type for an identity pool.
  This request only updates the key/value pair specified. Other key/values
  pairs are not updated. To remove a key value pair, pass a empty value for
  the particular key.

  This API can only be called with developer credentials. You cannot call
  this API with the temporary user credentials provided by Cognito Identity.
  """
  def set_cognito_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/events",
      input:            input,
      options:          options,
      action:           "SetCognitoEvents",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :post,
      input_shape:      "SetCognitoEventsRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets the necessary configuration for push sync.

  This API can only be called with developer credentials. You cannot call
  this API with the temporary user credentials provided by Cognito Identity.
  """
  def set_identity_pool_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/configuration",
      input:            input,
      options:          options,
      action:           "SetIdentityPoolConfiguration",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :post,
      input_shape:      "SetIdentityPoolConfigurationRequest",
      output_shape:     "SetIdentityPoolConfigurationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Subscribes to receive notifications when a dataset is modified by another
  device.

  This API can only be called with temporary credentials provided by Cognito
  Identity. You cannot call this API with developer credentials.
  """
  def subscribe_to_dataset(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}",
      input:            input,
      options:          options,
      action:           "SubscribeToDataset",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :post,
      input_shape:      "SubscribeToDatasetRequest",
      output_shape:     "SubscribeToDatasetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Unsubscribes from receiving notifications when a dataset is modified by
  another device.

  This API can only be called with temporary credentials provided by Cognito
  Identity. You cannot call this API with developer credentials.
  """
  def unsubscribe_from_dataset(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}",
      input:            input,
      options:          options,
      action:           "UnsubscribeFromDataset",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :delete,
      input_shape:      "UnsubscribeFromDatasetRequest",
      output_shape:     "UnsubscribeFromDatasetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Posts updates to records and adds and deletes records for a dataset and
  user.

  The sync count in the record patch is your last known sync count for that
  record. The server will reject an UpdateRecords request with a
  ResourceConflictException if you try to patch a record with a new value but
  a stale sync count.

  For example, if the sync count on the server is 5 for a key called
  highScore and you try and submit a new highScore with sync count of 4, the
  request will be rejected. To obtain the current sync count for a record,
  call ListRecords. On a successful update of the record, the response
  returns the new sync count for that record. You should present that sync
  count the next time you try to update that same record. When the record
  does not exist, specify the sync count as 0.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials.
  """
  def update_records(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-sync",
      endpoint:         "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
      input:            input,
      options:          options,
      action:           "UpdateRecords",
      
      endpoint_prefix:  "cognito-sync",
      type:             :json,
      version:          "2014-06-30",
      method:           :post,
      input_shape:      "UpdateRecordsRequest",
      output_shape:     "UpdateRecordsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"DescribeIdentityPoolUsageRequest" => %{"members" => %{"IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId"], "type" => "structure"}, "SetIdentityPoolConfigurationRequest" => %{"members" => %{"CognitoStreams" => %{"shape" => "CognitoStreams"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}, "PushSync" => %{"shape" => "PushSync"}}, "required" => ["IdentityPoolId"], "type" => "structure"}, "GetBulkPublishDetailsRequest" => %{"members" => %{"IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId"], "type" => "structure"}, "InvalidConfigurationException" => %{"error" => %{"code" => "InvalidConfiguration", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "InvalidParameterException" => %{"error" => %{"code" => "InvalidParameter", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "ListIdentityPoolUsageResponse" => %{"members" => %{"Count" => %{"shape" => "Integer"}, "IdentityPoolUsages" => %{"shape" => "IdentityPoolUsageList"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "StreamName" => %{"max" => 128, "min" => 1, "type" => "string"}, "SyncSessionToken" => %{"type" => "string"}, "RegisterDeviceRequest" => %{"members" => %{"IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}, "Platform" => %{"shape" => "Platform"}, "Token" => %{"shape" => "PushToken"}}, "required" => ["IdentityPoolId", "IdentityId", "Platform", "Token"], "type" => "structure"}, "UpdateRecordsResponse" => %{"members" => %{"Records" => %{"shape" => "RecordList"}}, "type" => "structure"}, "BulkPublishRequest" => %{"members" => %{"IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId"], "type" => "structure"}, "IdentityPoolUsageList" => %{"member" => %{"shape" => "IdentityPoolUsage"}, "type" => "list"}, "Record" => %{"members" => %{"DeviceLastModifiedDate" => %{"shape" => "Date"}, "Key" => %{"shape" => "RecordKey"}, "LastModifiedBy" => %{"shape" => "String"}, "LastModifiedDate" => %{"shape" => "Date"}, "SyncCount" => %{"shape" => "Long"}, "Value" => %{"shape" => "RecordValue"}}, "type" => "structure"}, "ClientContext" => %{"type" => "string"}, "LambdaFunctionArn" => %{"type" => "string"}, "MergedDatasetNameList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "GetBulkPublishDetailsResponse" => %{"members" => %{"BulkPublishCompleteTime" => %{"shape" => "Date"}, "BulkPublishStartTime" => %{"shape" => "Date"}, "BulkPublishStatus" => %{"shape" => "BulkPublishStatus"}, "FailureMessage" => %{"shape" => "String"}, "IdentityPoolId" => %{"shape" => "IdentityPoolId"}}, "type" => "structure"}, "GetCognitoEventsResponse" => %{"members" => %{"Events" => %{"shape" => "Events"}}, "type" => "structure"}, "ResourceConflictException" => %{"error" => %{"code" => "ResourceConflict", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "DuplicateRequestException" => %{"error" => %{"code" => "DuplicateRequest", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "Dataset" => %{"members" => %{"CreationDate" => %{"shape" => "Date"}, "DataStorage" => %{"shape" => "Long"}, "DatasetName" => %{"shape" => "DatasetName"}, "IdentityId" => %{"shape" => "IdentityId"}, "LastModifiedBy" => %{"shape" => "String"}, "LastModifiedDate" => %{"shape" => "Date"}, "NumRecords" => %{"shape" => "Long"}}, "type" => "structure"}, "DescribeIdentityUsageRequest" => %{"members" => %{"IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId", "IdentityId"], "type" => "structure"}, "TooManyRequestsException" => %{"error" => %{"code" => "TooManyRequests", "httpStatusCode" => 429, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "GetCognitoEventsRequest" => %{"members" => %{"IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId"], "type" => "structure"}, "RecordValue" => %{"max" => 1048575, "type" => "string"}, "LambdaThrottledException" => %{"error" => %{"code" => "LambdaThrottled", "httpStatusCode" => 429, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "CognitoEventType" => %{"type" => "string"}, "Operation" => %{"enum" => ["replace", "remove"], "type" => "string"}, "DatasetName" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9_.:-]+", "type" => "string"}, "DescribeIdentityUsageResponse" => %{"members" => %{"IdentityUsage" => %{"shape" => "IdentityUsage"}}, "type" => "structure"}, "Date" => %{"type" => "timestamp"}, "BulkPublishResponse" => %{"members" => %{"IdentityPoolId" => %{"shape" => "IdentityPoolId"}}, "type" => "structure"}, "IdentityId" => %{"max" => 55, "min" => 1, "pattern" => "[\\w-]+:[0-9a-f-]+", "type" => "string"}, "GetIdentityPoolConfigurationRequest" => %{"members" => %{"IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId"], "type" => "structure"}, "InternalErrorException" => %{"error" => %{"code" => "InternalError", "httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "GetIdentityPoolConfigurationResponse" => %{"members" => %{"CognitoStreams" => %{"shape" => "CognitoStreams"}, "IdentityPoolId" => %{"shape" => "IdentityPoolId"}, "PushSync" => %{"shape" => "PushSync"}}, "type" => "structure"}, "DatasetList" => %{"member" => %{"shape" => "Dataset"}, "type" => "list"}, "BulkPublishStatus" => %{"enum" => ["NOT_STARTED", "IN_PROGRESS", "FAILED", "SUCCEEDED"], "type" => "string"}, "UpdateRecordsRequest" => %{"members" => %{"ClientContext" => %{"location" => "header", "locationName" => "x-amz-Client-Context", "shape" => "ClientContext"}, "DatasetName" => %{"location" => "uri", "locationName" => "DatasetName", "shape" => "DatasetName"}, "DeviceId" => %{"shape" => "DeviceId"}, "IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}, "RecordPatches" => %{"shape" => "RecordPatchList"}, "SyncSessionToken" => %{"shape" => "SyncSessionToken"}}, "required" => ["IdentityPoolId", "IdentityId", "DatasetName", "SyncSessionToken"], "type" => "structure"}, "IdentityUsage" => %{"members" => %{"DataStorage" => %{"shape" => "Long"}, "DatasetCount" => %{"shape" => "Integer"}, "IdentityId" => %{"shape" => "IdentityId"}, "IdentityPoolId" => %{"shape" => "IdentityPoolId"}, "LastModifiedDate" => %{"shape" => "Date"}}, "type" => "structure"}, "Platform" => %{"enum" => ["APNS", "APNS_SANDBOX", "GCM", "ADM"], "type" => "string"}, "DeleteDatasetResponse" => %{"members" => %{"Dataset" => %{"shape" => "Dataset"}}, "type" => "structure"}, "IdentityPoolId" => %{"max" => 55, "min" => 1, "pattern" => "[\\w-]+:[0-9a-f-]+", "type" => "string"}, "SetIdentityPoolConfigurationResponse" => %{"members" => %{"CognitoStreams" => %{"shape" => "CognitoStreams"}, "IdentityPoolId" => %{"shape" => "IdentityPoolId"}, "PushSync" => %{"shape" => "PushSync"}}, "type" => "structure"}, "PushSync" => %{"members" => %{"ApplicationArns" => %{"shape" => "ApplicationArnList"}, "RoleArn" => %{"shape" => "AssumeRoleArn"}}, "type" => "structure"}, "ListRecordsRequest" => %{"members" => %{"DatasetName" => %{"location" => "uri", "locationName" => "DatasetName", "shape" => "DatasetName"}, "IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}, "LastSyncCount" => %{"location" => "querystring", "locationName" => "lastSyncCount", "shape" => "Long"}, "MaxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "IntegerString"}, "NextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "String"}, "SyncSessionToken" => %{"location" => "querystring", "locationName" => "syncSessionToken", "shape" => "SyncSessionToken"}}, "required" => ["IdentityPoolId", "IdentityId", "DatasetName"], "type" => "structure"}, "RecordKey" => %{"max" => 1024, "min" => 1, "type" => "string"}, "NotAuthorizedException" => %{"error" => %{"code" => "NotAuthorizedError", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "RecordPatch" => %{"members" => %{"DeviceLastModifiedDate" => %{"shape" => "Date"}, "Key" => %{"shape" => "RecordKey"}, "Op" => %{"shape" => "Operation"}, "SyncCount" => %{"shape" => "Long"}, "Value" => %{"shape" => "RecordValue"}}, "required" => ["Op", "Key", "SyncCount"], "type" => "structure"}, "AssumeRoleArn" => %{"max" => 2048, "min" => 20, "pattern" => "arn:aws:iam::\\d+:role/.*", "type" => "string"}, "UnsubscribeFromDatasetRequest" => %{"members" => %{"DatasetName" => %{"location" => "uri", "locationName" => "DatasetName", "shape" => "DatasetName"}, "DeviceId" => %{"location" => "uri", "locationName" => "DeviceId", "shape" => "DeviceId"}, "IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId", "IdentityId", "DatasetName", "DeviceId"], "type" => "structure"}, "DescribeIdentityPoolUsageResponse" => %{"members" => %{"IdentityPoolUsage" => %{"shape" => "IdentityPoolUsage"}}, "type" => "structure"}, "ListDatasetsResponse" => %{"members" => %{"Count" => %{"shape" => "Integer"}, "Datasets" => %{"shape" => "DatasetList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteDatasetRequest" => %{"members" => %{"DatasetName" => %{"location" => "uri", "locationName" => "DatasetName", "shape" => "DatasetName"}, "IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId", "IdentityId", "DatasetName"], "type" => "structure"}, "LimitExceededException" => %{"error" => %{"code" => "LimitExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "Long" => %{"type" => "long"}, "ListRecordsResponse" => %{"members" => %{"Count" => %{"shape" => "Integer"}, "DatasetDeletedAfterRequestedSyncCount" => %{"shape" => "Boolean"}, "DatasetExists" => %{"shape" => "Boolean"}, "DatasetSyncCount" => %{"shape" => "Long"}, "LastModifiedBy" => %{"shape" => "String"}, "MergedDatasetNames" => %{"shape" => "MergedDatasetNameList"}, "NextToken" => %{"shape" => "String"}, "Records" => %{"shape" => "RecordList"}, "SyncSessionToken" => %{"shape" => "String"}}, "type" => "structure"}, "PushToken" => %{"type" => "string"}, "ResourceNotFoundException" => %{"error" => %{"code" => "ResourceNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "SubscribeToDatasetResponse" => %{"members" => %{}, "type" => "structure"}, "InvalidLambdaFunctionOutputException" => %{"error" => %{"code" => "InvalidLambdaFunctionOutput", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "RecordList" => %{"member" => %{"shape" => "Record"}, "type" => "list"}, "DeviceId" => %{"max" => 256, "min" => 1, "type" => "string"}, "AlreadyStreamedException" => %{"error" => %{"code" => "AlreadyStreamed", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "required" => ["message"], "type" => "structure"}, "ExceptionMessage" => %{"type" => "string"}, "UnsubscribeFromDatasetResponse" => %{"members" => %{}, "type" => "structure"}, "IdentityPoolUsage" => %{"members" => %{"DataStorage" => %{"shape" => "Long"}, "IdentityPoolId" => %{"shape" => "IdentityPoolId"}, "LastModifiedDate" => %{"shape" => "Date"}, "SyncSessionsCount" => %{"shape" => "Long"}}, "type" => "structure"}, "DescribeDatasetResponse" => %{"members" => %{"Dataset" => %{"shape" => "Dataset"}}, "type" => "structure"}, "DescribeDatasetRequest" => %{"members" => %{"DatasetName" => %{"location" => "uri", "locationName" => "DatasetName", "shape" => "DatasetName"}, "IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId", "IdentityId", "DatasetName"], "type" => "structure"}, "SubscribeToDatasetRequest" => %{"members" => %{"DatasetName" => %{"location" => "uri", "locationName" => "DatasetName", "shape" => "DatasetName"}, "DeviceId" => %{"location" => "uri", "locationName" => "DeviceId", "shape" => "DeviceId"}, "IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId", "IdentityId", "DatasetName", "DeviceId"], "type" => "structure"}, "ListIdentityPoolUsageRequest" => %{"members" => %{"MaxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "IntegerString"}, "NextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "String"}}, "type" => "structure"}, "ListDatasetsRequest" => %{"members" => %{"IdentityId" => %{"location" => "uri", "locationName" => "IdentityId", "shape" => "IdentityId"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}, "MaxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "IntegerString"}, "NextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "String"}}, "required" => ["IdentityId", "IdentityPoolId"], "type" => "structure"}, "StreamingStatus" => %{"enum" => ["ENABLED", "DISABLED"], "type" => "string"}, "ApplicationArnList" => %{"member" => %{"shape" => "ApplicationArn"}, "type" => "list"}, "Events" => %{"key" => %{"shape" => "CognitoEventType"}, "max" => 1, "type" => "map", "value" => %{"shape" => "LambdaFunctionArn"}}, "Integer" => %{"type" => "integer"}, "IntegerString" => %{"type" => "integer"}, "RecordPatchList" => %{"member" => %{"shape" => "RecordPatch"}, "type" => "list"}, "ConcurrentModificationException" => %{"error" => %{"code" => "ConcurrentModification", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "required" => ["message"], "type" => "structure"}, "SetCognitoEventsRequest" => %{"members" => %{"Events" => %{"shape" => "Events"}, "IdentityPoolId" => %{"location" => "uri", "locationName" => "IdentityPoolId", "shape" => "IdentityPoolId"}}, "required" => ["IdentityPoolId", "Events"], "type" => "structure"}, "ApplicationArn" => %{"pattern" => "arn:aws:sns:[-0-9a-z]+:\\d+:app/[A-Z_]+/[a-zA-Z0-9_.-]+", "type" => "string"}, "RegisterDeviceResponse" => %{"members" => %{"DeviceId" => %{"shape" => "DeviceId"}}, "type" => "structure"}, "CognitoStreams" => %{"members" => %{"RoleArn" => %{"shape" => "AssumeRoleArn"}, "StreamName" => %{"shape" => "StreamName"}, "StreamingStatus" => %{"shape" => "StreamingStatus"}}, "type" => "structure"}}
  end
end