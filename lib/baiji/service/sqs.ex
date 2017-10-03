defmodule Baiji.SQS do
  @moduledoc """
  Welcome to the *Amazon Simple Queue Service API Reference*.

  Amazon Simple Queue Service (Amazon SQS) is a reliable, highly-scalable
  hosted queue for storing messages as they travel between applications or
  microservices. Amazon SQS moves data between distributed application
  components and helps you decouple these components.

  <note> [Standard
  queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/standard-queues.html)
  are available in all regions. [FIFO
  queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html)
  are available in US West (Oregon) and US East (Ohio).

  </note> You can use [AWS SDKs](http://aws.amazon.com/tools/#sdk) to access
  Amazon SQS using your favorite programming language. The SDKs perform tasks
  such as the following automatically:

  <ul> <li> Cryptographically sign your service requests

  </li> <li> Retry requests

  </li> <li> Handle error responses

  </li> </ul> **Additional Information**

  <ul> <li> [Amazon SQS Product Page](http://aws.amazon.com/sqs/)

  </li> <li> *Amazon SQS Developer Guide*

  <ul> <li> [Making API
  Requests](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/MakingRequestsArticle.html)

  </li> <li> [Using Amazon SQS Message
  Attributes](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html)

  </li> <li> [Using Amazon SQS Dead Letter
  Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)

  </li> </ul> </li> <li> *Amazon Web Services General Reference*

  <ul> <li> [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region)

  </li> </ul> </li> </ul>
  """

  @doc """
  Adds a permission to a queue for a specific
  [principal](http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P).
  This allows sharing access to the queue.

  When you create a queue, you have full control access rights for the queue.
  Only you, the owner of the queue, can grant or deny permissions to the
  queue. For more information about these permissions, see [Shared
  Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html)
  in the *Amazon SQS Developer Guide*.

  <note> `AddPermission` writes an Amazon-SQS-generated policy. If you want
  to write your own policy, use ` `SetQueueAttributes` ` to upload your
  policy. For more information about writing your own policy, see [Using The
  Access Policy
  Language](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AccessPolicyLanguage.html)
  in the *Amazon SQS Developer Guide*.

  Some actions take lists of parameters. These lists are specified using the
  `param.n` notation. Values of `n` are integers starting from 1. For
  example, a parameter list with two elements looks like this:

  `&amp;Attribute.1=this`

  `&amp;Attribute.2=that`

  </note>
  """
  def add_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddPermission",
      method:           :post,
      input_shape:      "AddPermissionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes the visibility timeout of a specified message in a queue to a new
  value. The maximum allowed timeout value is 12 hours. Thus, you can't
  extend the timeout of a message in an existing queue to more than a total
  visibility timeout of 12 hours. For more information, see [Visibility
  Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
  in the *Amazon SQS Developer Guide*.

  For example, you have a message and with the default visibility timeout of
  5 minutes. After 3 minutes, you call `ChangeMessageVisiblity` with a
  timeout of 10 minutes. At that time, the timeout for the message is
  extended by 10 minutes beyond the time of the `ChangeMessageVisibility`
  action. This results in a total visibility timeout of 13 minutes. You can
  continue to call the `ChangeMessageVisibility` to extend the visibility
  timeout to a maximum of 12 hours. If you try to extend the visibility
  timeout beyond 12 hours, your request is rejected.

  A message is considered to be *in flight* after it's received from a queue
  by a consumer, but not yet deleted from the queue.

  For standard queues, there can be a maximum of 120,000 inflight messages
  per queue. If you reach this limit, Amazon SQS returns the `OverLimit`
  error message. To avoid reaching the limit, you should delete messages from
  the queue after they're processed. You can also increase the number of
  queues you use to process your messages.

  For FIFO queues, there can be a maximum of 20,000 inflight messages per
  queue. If you reach this limit, Amazon SQS returns no error messages.

  <important> If you attempt to set the `VisibilityTimeout` to a value
  greater than the maximum time left, Amazon SQS returns an error. Amazon SQS
  doesn't automatically recalculate and increase the timeout to the maximum
  remaining time.

  Unlike with a queue, when you change the visibility timeout for a specific
  message the timeout value is applied immediately but isn't saved in memory
  for that message. If you don't delete a message after it is received, the
  visibility timeout for the message reverts to the original timeout value
  (not to the value you set using the `ChangeMessageVisibility` action) the
  next time the message is received.

  </important>
  """
  def change_message_visibility(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ChangeMessageVisibility",
      method:           :post,
      input_shape:      "ChangeMessageVisibilityRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes the visibility timeout of multiple messages. This is a batch
  version of ` `ChangeMessageVisibility`.` The result of the action on each
  message is reported individually in the response. You can send up to 10 `
  `ChangeMessageVisibility` ` requests with each
  `ChangeMessageVisibilityBatch` action.

  <important> Because the batch request can result in a combination of
  successful and unsuccessful actions, you should check for batch errors even
  when the call returns an HTTP status code of `200`.

  </important> <note> Some actions take lists of parameters. These lists are
  specified using the `param.n` notation. Values of `n` are integers starting
  from 1. For example, a parameter list with two elements looks like this:

  `&amp;Attribute.1=this`

  `&amp;Attribute.2=that`

  </note>
  """
  def change_message_visibility_batch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ChangeMessageVisibilityBatch",
      method:           :post,
      input_shape:      "ChangeMessageVisibilityBatchRequest",
      output_shape:     "ChangeMessageVisibilityBatchResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new standard or FIFO queue. You can pass one or more attributes
  in the request. Keep the following caveats in mind:

  <ul> <li> If you don't specify the `FifoQueue` attribute, Amazon SQS
  creates a standard queue.

  <note> You can't change the queue type after you create it and you can't
  convert an existing standard queue into a FIFO queue. You must either
  create a new FIFO queue for your application or delete your existing
  standard queue and recreate it as a FIFO queue. For more information, see [
  Moving From a Standard Queue to a FIFO
  Queue](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving)
  in the *Amazon SQS Developer Guide*.

  </note> </li> <li> If you don't provide a value for an attribute, the queue
  is created with the default value for the attribute.

  </li> <li> If you delete a queue, you must wait at least 60 seconds before
  creating a queue with the same name.

  </li> </ul> To successfully create a new queue, you must provide a queue
  name that adheres to the [limits related to
  queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html)
  and is unique within the scope of your queues.

  To get the queue URL, use the ` `GetQueueUrl` ` action. ` `GetQueueUrl` `
  requires only the `QueueName` parameter. be aware of existing queue names:

  <ul> <li> If you provide the name of an existing queue along with the exact
  names and values of all the queue's attributes, `CreateQueue` returns the
  queue URL for the existing queue.

  </li> <li> If the queue name, attribute names, or attribute values don't
  match an existing queue, `CreateQueue` returns an error.

  </li> </ul> <note> Some actions take lists of parameters. These lists are
  specified using the `param.n` notation. Values of `n` are integers starting
  from 1. For example, a parameter list with two elements looks like this:

  `&amp;Attribute.1=this`

  `&amp;Attribute.2=that`

  </note>
  """
  def create_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateQueue",
      method:           :post,
      input_shape:      "CreateQueueRequest",
      output_shape:     "CreateQueueResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified message from the specified queue. You specify the
  message by using the message's *receipt handle* and not the *MessageId* you
  receive when you send the message. Even if the message is locked by another
  reader due to the visibility timeout setting, it is still deleted from the
  queue. If you leave a message in the queue for longer than the queue's
  configured retention period, Amazon SQS automatically deletes the message.

  <note> The receipt handle is associated with a specific instance of
  receiving the message. If you receive a message more than once, the receipt
  handle you get each time you receive the message is different. If you don't
  provide the most recently received receipt handle for the message when you
  use the `DeleteMessage` action, the request succeeds, but the message might
  not be deleted.

  For standard queues, it is possible to receive a message even after you
  delete it. This might happen on rare occasions if one of the servers
  storing a copy of the message is unavailable when you send the request to
  delete the message. The copy remains on the server and might be returned to
  you on a subsequent receive request. You should ensure that your
  application is idempotent, so that receiving a message more than once does
  not cause issues.

  </note>
  """
  def delete_message(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteMessage",
      method:           :post,
      input_shape:      "DeleteMessageRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes up to ten messages from the specified queue. This is a batch
  version of ` `DeleteMessage`.` The result of the action on each message is
  reported individually in the response.

  <important> Because the batch request can result in a combination of
  successful and unsuccessful actions, you should check for batch errors even
  when the call returns an HTTP status code of `200`.

  </important> <note> Some actions take lists of parameters. These lists are
  specified using the `param.n` notation. Values of `n` are integers starting
  from 1. For example, a parameter list with two elements looks like this:

  `&amp;Attribute.1=this`

  `&amp;Attribute.2=that`

  </note>
  """
  def delete_message_batch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteMessageBatch",
      method:           :post,
      input_shape:      "DeleteMessageBatchRequest",
      output_shape:     "DeleteMessageBatchResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the queue specified by the `QueueUrl`, even if the queue is empty.
  If the specified queue doesn't exist, Amazon SQS returns a successful
  response.

  <important> Be careful with the `DeleteQueue` action: When you delete a
  queue, any messages in the queue are no longer available.

  </important> When you delete a queue, the deletion process takes up to 60
  seconds. Requests you send involving that queue during the 60 seconds might
  succeed. For example, a ` `SendMessage` ` request might succeed, but after
  60 seconds the queue and the message you sent no longer exist.

  When you delete a queue, you must wait at least 60 seconds before creating
  a queue with the same name.
  """
  def delete_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteQueue",
      method:           :post,
      input_shape:      "DeleteQueueRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets attributes for the specified queue.

  <note> To determine whether a queue is
  [FIFO](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html),
  you can check whether `QueueName` ends with the `.fifo` suffix.

  </note> <note> Some actions take lists of parameters. These lists are
  specified using the `param.n` notation. Values of `n` are integers starting
  from 1. For example, a parameter list with two elements looks like this:

  `&amp;Attribute.1=this`

  `&amp;Attribute.2=that`

  </note>
  """
  def get_queue_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetQueueAttributes",
      method:           :post,
      input_shape:      "GetQueueAttributesRequest",
      output_shape:     "GetQueueAttributesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the URL of an existing queue. This action provides a simple way to
  retrieve the URL of an Amazon SQS queue.

  To access a queue that belongs to another AWS account, use the
  `QueueOwnerAWSAccountId` parameter to specify the account ID of the queue's
  owner. The queue's owner must grant you permission to access the queue. For
  more information about shared queue access, see ` `AddPermission` ` or see
  [Shared
  Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html)
  in the *Amazon SQS Developer Guide*.
  """
  def get_queue_url(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetQueueUrl",
      method:           :post,
      input_shape:      "GetQueueUrlRequest",
      output_shape:     "GetQueueUrlResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of your queues that have the `RedrivePolicy` queue attribute
  configured with a dead letter queue.

  For more information about using dead letter queues, see [Using Amazon SQS
  Dead Letter
  Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
  in the *Amazon SQS Developer Guide*.
  """
  def list_dead_letter_source_queues(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDeadLetterSourceQueues",
      method:           :post,
      input_shape:      "ListDeadLetterSourceQueuesRequest",
      output_shape:     "ListDeadLetterSourceQueuesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of your queues. The maximum number of queues that can be
  returned is 1,000. If you specify a value for the optional
  `QueueNamePrefix` parameter, only queues with a name that begins with the
  specified value are returned.
  """
  def list_queues(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListQueues",
      method:           :post,
      input_shape:      "ListQueuesRequest",
      output_shape:     "ListQueuesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the messages in a queue specified by the `QueueURL` parameter.

  <important> When you use the `PurgeQueue` action, you can't retrieve a
  message deleted from a queue.

  </important> When you purge a queue, the message deletion process takes up
  to 60 seconds. All messages sent to the queue before calling the
  `PurgeQueue` action are deleted. Messages sent to the queue while it is
  being purged might be deleted. While the queue is being purged, messages
  sent to the queue before `PurgeQueue` is called might be received, but are
  deleted within the next minute.
  """
  def purge_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PurgeQueue",
      method:           :post,
      input_shape:      "PurgeQueueRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves one or more messages (up to 10), from the specified queue. Using
  the `WaitTimeSeconds` parameter enables long-poll support. For more
  information, see [Amazon SQS Long
  Polling](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html)
  in the *Amazon SQS Developer Guide*.

  Short poll is the default behavior where a weighted random set of machines
  is sampled on a `ReceiveMessage` call. Thus, only the messages on the
  sampled machines are returned. If the number of messages in the queue is
  small (fewer than 1,000), you most likely get fewer messages than you
  requested per `ReceiveMessage` call. If the number of messages in the queue
  is extremely small, you might not receive any messages in a particular
  `ReceiveMessage` response. If this happens, repeat the request.

  For each message returned, the response includes the following:

  <ul> <li> The message body.

  </li> <li> An MD5 digest of the message body. For information about MD5,
  see [RFC1321](https://www.ietf.org/rfc/rfc1321.txt).

  </li> <li> The `MessageId` you received when you sent the message to the
  queue.

  </li> <li> The receipt handle.

  </li> <li> The message attributes.

  </li> <li> An MD5 digest of the message attributes.

  </li> </ul> The receipt handle is the identifier you must provide when
  deleting the message. For more information, see [Queue and Message
  Identifiers](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html)
  in the *Amazon SQS Developer Guide*.

  You can provide the `VisibilityTimeout` parameter in your request. The
  parameter is applied to the messages that Amazon SQS returns in the
  response. If you don't include the parameter, the overall visibility
  timeout for the queue is used for the returned messages. For more
  information, see [Visibility
  Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
  in the *Amazon SQS Developer Guide*.

  A message that isn't deleted or a message whose visibility isn't extended
  before the visibility timeout expires counts as a failed receive. Depending
  on the configuration of the queue, the message might be sent to the dead
  letter queue.

  <note> In the future, new attributes might be added. If you write code that
  calls this action, we recommend that you structure your code so that it can
  handle new attributes gracefully.

  </note>
  """
  def receive_message(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ReceiveMessage",
      method:           :post,
      input_shape:      "ReceiveMessageRequest",
      output_shape:     "ReceiveMessageResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Revokes any permissions in the queue policy that matches the specified
  `Label` parameter. Only the owner of the queue can remove permissions.
  """
  def remove_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemovePermission",
      method:           :post,
      input_shape:      "RemovePermissionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Delivers a message to the specified queue.

  <important> A message can include only XML, JSON, and unformatted text. The
  following Unicode characters are allowed:

  `#x9` | `#xA` | `#xD` | `#x20` to `#xD7FF` | `#xE000` to `#xFFFD` |
  `#x10000` to `#x10FFFF`

  Any characters not included in this list will be rejected. For more
  information, see the [W3C specification for
  characters](http://www.w3.org/TR/REC-xml/#charsets).

  </important>
  """
  def send_message(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SendMessage",
      method:           :post,
      input_shape:      "SendMessageRequest",
      output_shape:     "SendMessageResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Delivers up to ten messages to the specified queue. This is a batch version
  of ` `SendMessage`.` For a FIFO queue, multiple messages within a single
  batch are enqueued in the order they are sent.

  The result of sending each message is reported individually in the
  response. Because the batch request can result in a combination of
  successful and unsuccessful actions, you should check for batch errors even
  when the call returns an HTTP status code of `200`.

  The maximum allowed individual message size and the maximum total payload
  size (the sum of the individual lengths of all of the batched messages) are
  both 256 KB (262,144 bytes).

  <important> A message can include only XML, JSON, and unformatted text. The
  following Unicode characters are allowed:

  `#x9` | `#xA` | `#xD` | `#x20` to `#xD7FF` | `#xE000` to `#xFFFD` |
  `#x10000` to `#x10FFFF`

  Any characters not included in this list will be rejected. For more
  information, see the [W3C specification for
  characters](http://www.w3.org/TR/REC-xml/#charsets).

  </important> If you don't specify the `DelaySeconds` parameter for an
  entry, Amazon SQS uses the default value for the queue.

  <note> Some actions take lists of parameters. These lists are specified
  using the `param.n` notation. Values of `n` are integers starting from 1.
  For example, a parameter list with two elements looks like this:

  `&amp;Attribute.1=this`

  `&amp;Attribute.2=that`

  </note>
  """
  def send_message_batch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SendMessageBatch",
      method:           :post,
      input_shape:      "SendMessageBatchRequest",
      output_shape:     "SendMessageBatchResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the value of one or more queue attributes. When you change a queue's
  attributes, the change can take up to 60 seconds for most of the attributes
  to propagate throughout the Amazon SQS system. Changes made to the
  `MessageRetentionPeriod` attribute can take up to 15 minutes.

  <note> In the future, new attributes might be added. If you write code that
  calls this action, we recommend that you structure your code so that it can
  handle new attributes gracefully.

  </note>
  """
  def set_queue_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetQueueAttributes",
      method:           :post,
      input_shape:      "SetQueueAttributesRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "sqs",
      target_prefix:    nil,
      endpoint_prefix:  "sqs",
      type:             :xml,
      version:          "2012-11-05",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"BinaryList" => %{"member" => %{"locationName" => "BinaryListValue", "shape" => "Binary"}, "type" => "list"}, "DeleteMessageBatchResultEntry" => %{"members" => %{"Id" => %{"shape" => "String"}}, "required" => ["Id"], "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "MessageSystemAttributeMap" => %{"flattened" => true, "key" => %{"locationName" => "Name", "shape" => "MessageSystemAttributeName"}, "locationName" => "Attribute", "type" => "map", "value" => %{"locationName" => "Value", "shape" => "String"}}, "QueueAttributeName" => %{"enum" => ["All", "Policy", "VisibilityTimeout", "MaximumMessageSize", "MessageRetentionPeriod", "ApproximateNumberOfMessages", "ApproximateNumberOfMessagesNotVisible", "CreatedTimestamp", "LastModifiedTimestamp", "QueueArn", "ApproximateNumberOfMessagesDelayed", "DelaySeconds", "ReceiveMessageWaitTimeSeconds", "RedrivePolicy", "FifoQueue", "ContentBasedDeduplication", "KmsMasterKeyId", "KmsDataKeyReusePeriodSeconds"], "type" => "string"}, "ChangeMessageVisibilityRequest" => %{"members" => %{"QueueUrl" => %{"shape" => "String"}, "ReceiptHandle" => %{"shape" => "String"}, "VisibilityTimeout" => %{"shape" => "Integer"}}, "required" => ["QueueUrl", "ReceiptHandle", "VisibilityTimeout"], "type" => "structure"}, "QueueDoesNotExist" => %{"error" => %{"code" => "AWS.SimpleQueueService.NonExistentQueue", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SendMessageBatchRequestEntryList" => %{"flattened" => true, "member" => %{"locationName" => "SendMessageBatchRequestEntry", "shape" => "SendMessageBatchRequestEntry"}, "type" => "list"}, "ListQueuesResult" => %{"members" => %{"QueueUrls" => %{"shape" => "QueueUrlList"}}, "type" => "structure"}, "GetQueueAttributesResult" => %{"members" => %{"Attributes" => %{"locationName" => "Attribute", "shape" => "QueueAttributeMap"}}, "type" => "structure"}, "AddPermissionRequest" => %{"members" => %{"AWSAccountIds" => %{"shape" => "AWSAccountIdList"}, "Actions" => %{"shape" => "ActionNameList"}, "Label" => %{"shape" => "String"}, "QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl", "Label", "AWSAccountIds", "Actions"], "type" => "structure"}, "ChangeMessageVisibilityBatchRequestEntryList" => %{"flattened" => true, "member" => %{"locationName" => "ChangeMessageVisibilityBatchRequestEntry", "shape" => "ChangeMessageVisibilityBatchRequestEntry"}, "type" => "list"}, "ListDeadLetterSourceQueuesResult" => %{"members" => %{"queueUrls" => %{"shape" => "QueueUrlList"}}, "required" => ["queueUrls"], "type" => "structure"}, "ListDeadLetterSourceQueuesRequest" => %{"members" => %{"QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl"], "type" => "structure"}, "SendMessageBatchResult" => %{"members" => %{"Failed" => %{"shape" => "BatchResultErrorEntryList"}, "Successful" => %{"shape" => "SendMessageBatchResultEntryList"}}, "required" => ["Successful", "Failed"], "type" => "structure"}, "StringList" => %{"member" => %{"locationName" => "StringListValue", "shape" => "String"}, "type" => "list"}, "AWSAccountIdList" => %{"flattened" => true, "member" => %{"locationName" => "AWSAccountId", "shape" => "String"}, "type" => "list"}, "UnsupportedOperation" => %{"error" => %{"code" => "AWS.SimpleQueueService.UnsupportedOperation", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "QueueUrlList" => %{"flattened" => true, "member" => %{"locationName" => "QueueUrl", "shape" => "String"}, "type" => "list"}, "SendMessageBatchResultEntryList" => %{"flattened" => true, "member" => %{"locationName" => "SendMessageBatchResultEntry", "shape" => "SendMessageBatchResultEntry"}, "type" => "list"}, "GetQueueUrlResult" => %{"members" => %{"QueueUrl" => %{"shape" => "String"}}, "type" => "structure"}, "BatchEntryIdsNotDistinct" => %{"error" => %{"code" => "AWS.SimpleQueueService.BatchEntryIdsNotDistinct", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "QueueNameExists" => %{"error" => %{"code" => "QueueAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SendMessageRequest" => %{"members" => %{"DelaySeconds" => %{"shape" => "Integer"}, "MessageAttributes" => %{"locationName" => "MessageAttribute", "shape" => "MessageBodyAttributeMap"}, "MessageBody" => %{"shape" => "String"}, "MessageDeduplicationId" => %{"shape" => "String"}, "MessageGroupId" => %{"shape" => "String"}, "QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl", "MessageBody"], "type" => "structure"}, "MessageAttributeName" => %{"type" => "string"}, "ChangeMessageVisibilityBatchResult" => %{"members" => %{"Failed" => %{"shape" => "BatchResultErrorEntryList"}, "Successful" => %{"shape" => "ChangeMessageVisibilityBatchResultEntryList"}}, "required" => ["Successful", "Failed"], "type" => "structure"}, "InvalidMessageContents" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Message" => %{"members" => %{"Attributes" => %{"locationName" => "Attribute", "shape" => "MessageSystemAttributeMap"}, "Body" => %{"shape" => "String"}, "MD5OfBody" => %{"shape" => "String"}, "MD5OfMessageAttributes" => %{"shape" => "String"}, "MessageAttributes" => %{"locationName" => "MessageAttribute", "shape" => "MessageBodyAttributeMap"}, "MessageId" => %{"shape" => "String"}, "ReceiptHandle" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteMessageRequest" => %{"members" => %{"QueueUrl" => %{"shape" => "String"}, "ReceiptHandle" => %{"shape" => "String"}}, "required" => ["QueueUrl", "ReceiptHandle"], "type" => "structure"}, "InvalidBatchEntryId" => %{"error" => %{"code" => "AWS.SimpleQueueService.InvalidBatchEntryId", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SendMessageBatchResultEntry" => %{"members" => %{"Id" => %{"shape" => "String"}, "MD5OfMessageAttributes" => %{"shape" => "String"}, "MD5OfMessageBody" => %{"shape" => "String"}, "MessageId" => %{"shape" => "String"}, "SequenceNumber" => %{"shape" => "String"}}, "required" => ["Id", "MessageId", "MD5OfMessageBody"], "type" => "structure"}, "EmptyBatchRequest" => %{"error" => %{"code" => "AWS.SimpleQueueService.EmptyBatchRequest", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "MessageSystemAttributeName" => %{"enum" => ["SenderId", "SentTimestamp", "ApproximateReceiveCount", "ApproximateFirstReceiveTimestamp", "SequenceNumber", "MessageDeduplicationId", "MessageGroupId"], "type" => "string"}, "GetQueueAttributesRequest" => %{"members" => %{"AttributeNames" => %{"shape" => "AttributeNameList"}, "QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl"], "type" => "structure"}, "SendMessageResult" => %{"members" => %{"MD5OfMessageAttributes" => %{"shape" => "String"}, "MD5OfMessageBody" => %{"shape" => "String"}, "MessageId" => %{"shape" => "String"}, "SequenceNumber" => %{"shape" => "String"}}, "type" => "structure"}, "ChangeMessageVisibilityBatchResultEntry" => %{"members" => %{"Id" => %{"shape" => "String"}}, "required" => ["Id"], "type" => "structure"}, "BatchRequestTooLong" => %{"error" => %{"code" => "AWS.SimpleQueueService.BatchRequestTooLong", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ReceiptHandleIsInvalid" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PurgeQueueRequest" => %{"members" => %{"QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl"], "type" => "structure"}, "InvalidIdFormat" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteMessageBatchResult" => %{"members" => %{"Failed" => %{"shape" => "BatchResultErrorEntryList"}, "Successful" => %{"shape" => "DeleteMessageBatchResultEntryList"}}, "required" => ["Successful", "Failed"], "type" => "structure"}, "QueueDeletedRecently" => %{"error" => %{"code" => "AWS.SimpleQueueService.QueueDeletedRecently", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "MessageAttributeValue" => %{"members" => %{"BinaryListValues" => %{"flattened" => true, "locationName" => "BinaryListValue", "shape" => "BinaryList"}, "BinaryValue" => %{"shape" => "Binary"}, "DataType" => %{"shape" => "String"}, "StringListValues" => %{"flattened" => true, "locationName" => "StringListValue", "shape" => "StringList"}, "StringValue" => %{"shape" => "String"}}, "required" => ["DataType"], "type" => "structure"}, "BatchResultErrorEntryList" => %{"flattened" => true, "member" => %{"locationName" => "BatchResultErrorEntry", "shape" => "BatchResultErrorEntry"}, "type" => "list"}, "ListQueuesRequest" => %{"members" => %{"QueueNamePrefix" => %{"shape" => "String"}}, "type" => "structure"}, "ChangeMessageVisibilityBatchRequest" => %{"members" => %{"Entries" => %{"shape" => "ChangeMessageVisibilityBatchRequestEntryList"}, "QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl", "Entries"], "type" => "structure"}, "BatchResultErrorEntry" => %{"members" => %{"Code" => %{"shape" => "String"}, "Id" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}, "SenderFault" => %{"shape" => "Boolean"}}, "required" => ["Id", "SenderFault", "Code"], "type" => "structure"}, "DeleteMessageBatchRequest" => %{"members" => %{"Entries" => %{"shape" => "DeleteMessageBatchRequestEntryList"}, "QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl", "Entries"], "type" => "structure"}, "DeleteMessageBatchRequestEntryList" => %{"flattened" => true, "member" => %{"locationName" => "DeleteMessageBatchRequestEntry", "shape" => "DeleteMessageBatchRequestEntry"}, "type" => "list"}, "CreateQueueResult" => %{"members" => %{"QueueUrl" => %{"shape" => "String"}}, "type" => "structure"}, "GetQueueUrlRequest" => %{"members" => %{"QueueName" => %{"shape" => "String"}, "QueueOwnerAWSAccountId" => %{"shape" => "String"}}, "required" => ["QueueName"], "type" => "structure"}, "DeleteMessageBatchResultEntryList" => %{"flattened" => true, "member" => %{"locationName" => "DeleteMessageBatchResultEntry", "shape" => "DeleteMessageBatchResultEntry"}, "type" => "list"}, "MessageList" => %{"flattened" => true, "member" => %{"locationName" => "Message", "shape" => "Message"}, "type" => "list"}, "TooManyEntriesInBatchRequest" => %{"error" => %{"code" => "AWS.SimpleQueueService.TooManyEntriesInBatchRequest", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Binary" => %{"type" => "blob"}, "RemovePermissionRequest" => %{"members" => %{"Label" => %{"shape" => "String"}, "QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl", "Label"], "type" => "structure"}, "ChangeMessageVisibilityBatchResultEntryList" => %{"flattened" => true, "member" => %{"locationName" => "ChangeMessageVisibilityBatchResultEntry", "shape" => "ChangeMessageVisibilityBatchResultEntry"}, "type" => "list"}, "PurgeQueueInProgress" => %{"error" => %{"code" => "AWS.SimpleQueueService.PurgeQueueInProgress", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "CreateQueueRequest" => %{"members" => %{"Attributes" => %{"locationName" => "Attribute", "shape" => "QueueAttributeMap"}, "QueueName" => %{"shape" => "String"}}, "required" => ["QueueName"], "type" => "structure"}, "AttributeNameList" => %{"flattened" => true, "member" => %{"locationName" => "AttributeName", "shape" => "QueueAttributeName"}, "type" => "list"}, "DeleteMessageBatchRequestEntry" => %{"members" => %{"Id" => %{"shape" => "String"}, "ReceiptHandle" => %{"shape" => "String"}}, "required" => ["Id", "ReceiptHandle"], "type" => "structure"}, "InvalidAttributeName" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ActionNameList" => %{"flattened" => true, "member" => %{"locationName" => "ActionName", "shape" => "String"}, "type" => "list"}, "OverLimit" => %{"error" => %{"code" => "OverLimit", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "MessageNotInflight" => %{"error" => %{"code" => "AWS.SimpleQueueService.MessageNotInflight", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ReceiveMessageRequest" => %{"members" => %{"AttributeNames" => %{"shape" => "AttributeNameList"}, "MaxNumberOfMessages" => %{"shape" => "Integer"}, "MessageAttributeNames" => %{"shape" => "MessageAttributeNameList"}, "QueueUrl" => %{"shape" => "String"}, "ReceiveRequestAttemptId" => %{"shape" => "String"}, "VisibilityTimeout" => %{"shape" => "Integer"}, "WaitTimeSeconds" => %{"shape" => "Integer"}}, "required" => ["QueueUrl"], "type" => "structure"}, "SendMessageBatchRequest" => %{"members" => %{"Entries" => %{"shape" => "SendMessageBatchRequestEntryList"}, "QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl", "Entries"], "type" => "structure"}, "QueueAttributeMap" => %{"flattened" => true, "key" => %{"locationName" => "Name", "shape" => "QueueAttributeName"}, "locationName" => "Attribute", "type" => "map", "value" => %{"locationName" => "Value", "shape" => "String"}}, "Integer" => %{"type" => "integer"}, "MessageAttributeNameList" => %{"flattened" => true, "member" => %{"locationName" => "MessageAttributeName", "shape" => "MessageAttributeName"}, "type" => "list"}, "ReceiveMessageResult" => %{"members" => %{"Messages" => %{"shape" => "MessageList"}}, "type" => "structure"}, "SendMessageBatchRequestEntry" => %{"members" => %{"DelaySeconds" => %{"shape" => "Integer"}, "Id" => %{"shape" => "String"}, "MessageAttributes" => %{"locationName" => "MessageAttribute", "shape" => "MessageBodyAttributeMap"}, "MessageBody" => %{"shape" => "String"}, "MessageDeduplicationId" => %{"shape" => "String"}, "MessageGroupId" => %{"shape" => "String"}}, "required" => ["Id", "MessageBody"], "type" => "structure"}, "DeleteQueueRequest" => %{"members" => %{"QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl"], "type" => "structure"}, "MessageBodyAttributeMap" => %{"flattened" => true, "key" => %{"locationName" => "Name", "shape" => "String"}, "type" => "map", "value" => %{"locationName" => "Value", "shape" => "MessageAttributeValue"}}, "SetQueueAttributesRequest" => %{"members" => %{"Attributes" => %{"locationName" => "Attribute", "shape" => "QueueAttributeMap"}, "QueueUrl" => %{"shape" => "String"}}, "required" => ["QueueUrl", "Attributes"], "type" => "structure"}, "ChangeMessageVisibilityBatchRequestEntry" => %{"members" => %{"Id" => %{"shape" => "String"}, "ReceiptHandle" => %{"shape" => "String"}, "VisibilityTimeout" => %{"shape" => "Integer"}}, "required" => ["Id", "ReceiptHandle"], "type" => "structure"}}
  end
end