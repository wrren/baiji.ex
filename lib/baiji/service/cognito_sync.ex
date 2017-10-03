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
      method:           :post
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
      method:           :delete
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
      method:           :get
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
      method:           :get
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
      method:           :get
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
      method:           :post
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
      method:           :get
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
      method:           :get
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
      method:           :get
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
      method:           :get
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
      method:           :get
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :post
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
      method:           :delete
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
      method:           :post
    }
  end
  
end