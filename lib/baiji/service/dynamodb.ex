defmodule Baiji.DynamoDB do
  @moduledoc """
  Amazon DynamoDB

  Amazon DynamoDB is a fully managed NoSQL database service that provides
  fast and predictable performance with seamless scalability. DynamoDB lets
  you offload the administrative burdens of operating and scaling a
  distributed database, so that you don't have to worry about hardware
  provisioning, setup and configuration, replication, software patching, or
  cluster scaling.

  With DynamoDB, you can create database tables that can store and retrieve
  any amount of data, and serve any level of request traffic. You can scale
  up or scale down your tables' throughput capacity without downtime or
  performance degradation, and use the AWS Management Console to monitor
  resource utilization and performance metrics.

  DynamoDB automatically spreads the data and traffic for your tables over a
  sufficient number of servers to handle your throughput and storage
  requirements, while maintaining consistent and fast performance. All of
  your data is stored on solid state disks (SSDs) and automatically
  replicated across multiple Availability Zones in an AWS region, providing
  built-in high availability and data durability.
  """

  @doc """
  The `BatchGetItem` operation returns the attributes of one or more items
  from one or more tables. You identify requested items by primary key.

  A single operation can retrieve up to 16 MB of data, which can contain as
  many as 100 items. `BatchGetItem` will return a partial result if the
  response size limit is exceeded, the table's provisioned throughput is
  exceeded, or an internal processing failure occurs. If a partial result is
  returned, the operation returns a value for `UnprocessedKeys`. You can use
  this value to retry the operation starting with the next item to get.

  <important> If you request more than 100 items `BatchGetItem` will return a
  `ValidationException` with the message "Too many items requested for the
  BatchGetItem call".

  </important> For example, if you ask to retrieve 100 items, but each
  individual item is 300 KB in size, the system returns 52 items (so as not
  to exceed the 16 MB limit). It also returns an appropriate
  `UnprocessedKeys` value so you can get the next page of results. If
  desired, your application can include its own logic to assemble the pages
  of results into one data set.

  If *none* of the items can be processed due to insufficient provisioned
  throughput on all of the tables in the request, then `BatchGetItem` will
  return a `ProvisionedThroughputExceededException`. If *at least one* of the
  items is successfully processed, then `BatchGetItem` completes
  successfully, while returning the keys of the unread items in
  `UnprocessedKeys`.

  <important> If DynamoDB returns any unprocessed items, you should retry the
  batch operation on those items. However, *we strongly recommend that you
  use an exponential backoff algorithm*. If you retry the batch operation
  immediately, the underlying read or write requests can still fail due to
  throttling on the individual tables. If you delay the batch operation using
  exponential backoff, the individual requests in the batch are much more
  likely to succeed.

  For more information, see [Batch Operations and Error
  Handling](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations)
  in the *Amazon DynamoDB Developer Guide*.

  </important> By default, `BatchGetItem` performs eventually consistent
  reads on every table in the request. If you want strongly consistent reads
  instead, you can set `ConsistentRead` to `true` for any or all tables.

  In order to minimize response latency, `BatchGetItem` retrieves items in
  parallel.

  When designing your application, keep in mind that DynamoDB does not return
  items in any particular order. To help parse the response by item, include
  the primary key values for the items in your request in the
  `ProjectionExpression` parameter.

  If a requested item does not exist, it is not returned in the result.
  Requests for nonexistent items consume the minimum read capacity units
  according to the type of read. For more information, see [Capacity Units
  Calculations](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def batch_get_item(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchGetItem",
      method:           :post,
      input_shape:      "BatchGetItemInput",
      output_shape:     "BatchGetItemOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `BatchWriteItem` operation puts or deletes multiple items in one or
  more tables. A single call to `BatchWriteItem` can write up to 16 MB of
  data, which can comprise as many as 25 put or delete requests. Individual
  items to be written can be as large as 400 KB.

  <note> `BatchWriteItem` cannot update items. To update items, use the
  `UpdateItem` action.

  </note> The individual `PutItem` and `DeleteItem` operations specified in
  `BatchWriteItem` are atomic; however `BatchWriteItem` as a whole is not. If
  any requested operations fail because the table's provisioned throughput is
  exceeded or an internal processing failure occurs, the failed operations
  are returned in the `UnprocessedItems` response parameter. You can
  investigate and optionally resend the requests. Typically, you would call
  `BatchWriteItem` in a loop. Each iteration would check for unprocessed
  items and submit a new `BatchWriteItem` request with those unprocessed
  items until all items have been processed.

  Note that if *none* of the items can be processed due to insufficient
  provisioned throughput on all of the tables in the request, then
  `BatchWriteItem` will return a `ProvisionedThroughputExceededException`.

  <important> If DynamoDB returns any unprocessed items, you should retry the
  batch operation on those items. However, *we strongly recommend that you
  use an exponential backoff algorithm*. If you retry the batch operation
  immediately, the underlying read or write requests can still fail due to
  throttling on the individual tables. If you delay the batch operation using
  exponential backoff, the individual requests in the batch are much more
  likely to succeed.

  For more information, see [Batch Operations and Error
  Handling](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations)
  in the *Amazon DynamoDB Developer Guide*.

  </important> With `BatchWriteItem`, you can efficiently write or delete
  large amounts of data, such as from Amazon Elastic MapReduce (EMR), or copy
  data from another database into DynamoDB. In order to improve performance
  with these large-scale operations, `BatchWriteItem` does not behave in the
  same way as individual `PutItem` and `DeleteItem` calls would. For example,
  you cannot specify conditions on individual put and delete requests, and
  `BatchWriteItem` does not return deleted items in the response.

  If you use a programming language that supports concurrency, you can use
  threads to write items in parallel. Your application must include the
  necessary logic to manage the threads. With languages that don't support
  threading, you must update or delete the specified items one at a time. In
  both situations, `BatchWriteItem` performs the specified put and delete
  operations in parallel, giving you the power of the thread pool approach
  without having to introduce complexity into your application.

  Parallel processing reduces latency, but each specified put and delete
  request consumes the same number of write capacity units whether it is
  processed in parallel or not. Delete operations on nonexistent items
  consume one write capacity unit.

  If one or more of the following is true, DynamoDB rejects the entire batch
  write operation:

  <ul> <li> One or more tables specified in the `BatchWriteItem` request does
  not exist.

  </li> <li> Primary key attributes specified on an item in the request do
  not match those in the corresponding table's primary key schema.

  </li> <li> You try to perform multiple operations on the same item in the
  same `BatchWriteItem` request. For example, you cannot put and delete the
  same item in the same `BatchWriteItem` request.

  </li> <li> There are more than 25 requests in the batch.

  </li> <li> Any individual item in a batch exceeds 400 KB.

  </li> <li> The total request size exceeds 16 MB.

  </li> </ul>
  """
  def batch_write_item(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchWriteItem",
      method:           :post,
      input_shape:      "BatchWriteItemInput",
      output_shape:     "BatchWriteItemOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `CreateTable` operation adds a new table to your account. In an AWS
  account, table names must be unique within each region. That is, you can
  have two tables with same name if you create the tables in different
  regions.

  `CreateTable` is an asynchronous operation. Upon receiving a `CreateTable`
  request, DynamoDB immediately returns a response with a `TableStatus` of
  `CREATING`. After the table is created, DynamoDB sets the `TableStatus` to
  `ACTIVE`. You can perform read and write operations only on an `ACTIVE`
  table.

  You can optionally define secondary indexes on the new table, as part of
  the `CreateTable` operation. If you want to create multiple tables with
  secondary indexes on them, you must create the tables sequentially. Only
  one table with secondary indexes can be in the `CREATING` state at any
  given time.

  You can use the `DescribeTable` action to check the table status.
  """
  def create_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateTable",
      method:           :post,
      input_shape:      "CreateTableInput",
      output_shape:     "CreateTableOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a single item in a table by primary key. You can perform a
  conditional delete operation that deletes the item if it exists, or if it
  has an expected attribute value.

  In addition to deleting an item, you can also return the item's attribute
  values in the same operation, using the `ReturnValues` parameter.

  Unless you specify conditions, the `DeleteItem` is an idempotent operation;
  running it multiple times on the same item or attribute does *not* result
  in an error response.

  Conditional deletes are useful for deleting items only if specific
  conditions are met. If those conditions are met, DynamoDB performs the
  delete. Otherwise, the item is not deleted.
  """
  def delete_item(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteItem",
      method:           :post,
      input_shape:      "DeleteItemInput",
      output_shape:     "DeleteItemOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `DeleteTable` operation deletes a table and all of its items. After a
  `DeleteTable` request, the specified table is in the `DELETING` state until
  DynamoDB completes the deletion. If the table is in the `ACTIVE` state, you
  can delete it. If a table is in `CREATING` or `UPDATING` states, then
  DynamoDB returns a `ResourceInUseException`. If the specified table does
  not exist, DynamoDB returns a `ResourceNotFoundException`. If table is
  already in the `DELETING` state, no error is returned.

  <note> DynamoDB might continue to accept data read and write operations,
  such as `GetItem` and `PutItem`, on a table in the `DELETING` state until
  the table deletion is complete.

  </note> When you delete a table, any indexes on that table are also
  deleted.

  If you have DynamoDB Streams enabled on the table, then the corresponding
  stream on that table goes into the `DISABLED` state, and the stream is
  automatically deleted after 24 hours.

  Use the `DescribeTable` action to check the status of the table.
  """
  def delete_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTable",
      method:           :post,
      input_shape:      "DeleteTableInput",
      output_shape:     "DeleteTableOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the current provisioned-capacity limits for your AWS account in a
  region, both for the region as a whole and for any one DynamoDB table that
  you create there.

  When you establish an AWS account, the account has initial limits on the
  maximum read capacity units and write capacity units that you can provision
  across all of your DynamoDB tables in a given region. Also, there are
  per-table limits that apply when you create a table there. For more
  information, see
  [Limits](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
  page in the *Amazon DynamoDB Developer Guide*.

  Although you can increase these limits by filing a case at [AWS Support
  Center](https://console.aws.amazon.com/support/home#/), obtaining the
  increase is not instantaneous. The `DescribeLimits` action lets you write
  code to compare the capacity you are currently using to those limits
  imposed by your account so that you have enough time to apply for an
  increase before you hit a limit.

  For example, you could use one of the AWS SDKs to do the following:

  <ol> <li> Call `DescribeLimits` for a particular region to obtain your
  current account limits on provisioned capacity there.

  </li> <li> Create a variable to hold the aggregate read capacity units
  provisioned for all your tables in that region, and one to hold the
  aggregate write capacity units. Zero them both.

  </li> <li> Call `ListTables` to obtain a list of all your DynamoDB tables.

  </li> <li> For each table name listed by `ListTables`, do the following:

  <ul> <li> Call `DescribeTable` with the table name.

  </li> <li> Use the data returned by `DescribeTable` to add the read
  capacity units and write capacity units provisioned for the table itself to
  your variables.

  </li> <li> If the table has one or more global secondary indexes (GSIs),
  loop over these GSIs and add their provisioned capacity values to your
  variables as well.

  </li> </ul> </li> <li> Report the account limits for that region returned
  by `DescribeLimits`, along with the total current provisioned capacity
  levels you have calculated.

  </li> </ol> This will let you see whether you are getting close to your
  account-level limits.

  The per-table limits apply only when you are creating a new table. They
  restrict the sum of the provisioned capacity of the new table itself and
  all its global secondary indexes.

  For existing tables and their GSIs, DynamoDB will not let you increase
  provisioned capacity extremely rapidly, but the only upper limit that
  applies is that the aggregate provisioned capacity over all your tables and
  GSIs cannot exceed either of the per-account limits.

  <note> `DescribeLimits` should only be called periodically. You can expect
  throttling errors if you call it more than once in a minute.

  </note> The `DescribeLimits` Request element has no content.
  """
  def describe_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLimits",
      method:           :post,
      input_shape:      "DescribeLimitsInput",
      output_shape:     "DescribeLimitsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the table, including the current status of the
  table, when it was created, the primary key schema, and any indexes on the
  table.

  <note> If you issue a `DescribeTable` request immediately after a
  `CreateTable` request, DynamoDB might return a `ResourceNotFoundException`.
  This is because `DescribeTable` uses an eventually consistent query, and
  the metadata for your table might not be available at that moment. Wait for
  a few seconds, and then try the `DescribeTable` request again.

  </note>
  """
  def describe_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTable",
      method:           :post,
      input_shape:      "DescribeTableInput",
      output_shape:     "DescribeTableOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gives a description of the Time to Live (TTL) status on the specified
  table.
  """
  def describe_time_to_live(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTimeToLive",
      method:           :post,
      input_shape:      "DescribeTimeToLiveInput",
      output_shape:     "DescribeTimeToLiveOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `GetItem` operation returns a set of attributes for the item with the
  given primary key. If there is no matching item, `GetItem` does not return
  any data and there will be no `Item` element in the response.

  `GetItem` provides an eventually consistent read by default. If your
  application requires a strongly consistent read, set `ConsistentRead` to
  `true`. Although a strongly consistent read might take more time than an
  eventually consistent read, it always returns the last updated value.
  """
  def get_item(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetItem",
      method:           :post,
      input_shape:      "GetItemInput",
      output_shape:     "GetItemOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns an array of table names associated with the current account and
  endpoint. The output from `ListTables` is paginated, with each page
  returning a maximum of 100 table names.
  """
  def list_tables(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTables",
      method:           :post,
      input_shape:      "ListTablesInput",
      output_shape:     "ListTablesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  List all tags on an Amazon DynamoDB resource. You can call
  ListTagsOfResource up to 10 times per second, per account.

  For an overview on tagging DynamoDB resources, see [Tagging for
  DynamoDB](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def list_tags_of_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTagsOfResource",
      method:           :post,
      input_shape:      "ListTagsOfResourceInput",
      output_shape:     "ListTagsOfResourceOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new item, or replaces an old item with a new item. If an item
  that has the same primary key as the new item already exists in the
  specified table, the new item completely replaces the existing item. You
  can perform a conditional put operation (add a new item if one with the
  specified primary key doesn't exist), or replace an existing item if it has
  certain attribute values. You can return the item's attribute values in the
  same operation, using the `ReturnValues` parameter.

  <important> This topic provides general information about the `PutItem`
  API.

  For information on how to call the `PutItem` API using the AWS SDK in
  specific languages, see the following:

  <ul> <li> [ PutItem in the AWS Command Line Interface
  ](http://docs.aws.amazon.com/goto/aws-cli/dynamodb-2012-08-10/PutItem)

  </li> <li> [ PutItem in the AWS SDK for .NET
  ](http://docs.aws.amazon.com/goto/DotNetSDKV3/dynamodb-2012-08-10/PutItem)

  </li> <li> [ PutItem in the AWS SDK for C++
  ](http://docs.aws.amazon.com/goto/SdkForCpp/dynamodb-2012-08-10/PutItem)

  </li> <li> [ PutItem in the AWS SDK for Go
  ](http://docs.aws.amazon.com/goto/SdkForGoV1/dynamodb-2012-08-10/PutItem)

  </li> <li> [ PutItem in the AWS SDK for Java
  ](http://docs.aws.amazon.com/goto/SdkForJava/dynamodb-2012-08-10/PutItem)

  </li> <li> [ PutItem in the AWS SDK for JavaScript
  ](http://docs.aws.amazon.com/goto/AWSJavaScriptSDK/dynamodb-2012-08-10/PutItem)

  </li> <li> [ PutItem in the AWS SDK for PHP V3
  ](http://docs.aws.amazon.com/goto/SdkForPHPV3/dynamodb-2012-08-10/PutItem)

  </li> <li> [ PutItem in the AWS SDK for Python
  ](http://docs.aws.amazon.com/goto/boto3/dynamodb-2012-08-10/PutItem)

  </li> <li> [ PutItem in the AWS SDK for Ruby V2
  ](http://docs.aws.amazon.com/goto/SdkForRubyV2/dynamodb-2012-08-10/PutItem)

  </li> </ul> </important> When you add an item, the primary key attribute(s)
  are the only required attributes. Attribute values cannot be null. String
  and Binary type attributes must have lengths greater than zero. Set type
  attributes cannot be empty. Requests with empty values will be rejected
  with a `ValidationException` exception.

  <note> To prevent a new item from replacing an existing item, use a
  conditional expression that contains the `attribute_not_exists` function
  with the name of the attribute being used as the partition key for the
  table. Since every record must contain that attribute, the
  `attribute_not_exists` function will only succeed if no matching item
  exists.

  </note> For more information about `PutItem`, see [Working with
  Items](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def put_item(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutItem",
      method:           :post,
      input_shape:      "PutItemInput",
      output_shape:     "PutItemOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `Query` operation finds items based on primary key values. You can
  query any table or secondary index that has a composite primary key (a
  partition key and a sort key).

  Use the `KeyConditionExpression` parameter to provide a specific value for
  the partition key. The `Query` operation will return all of the items from
  the table or index with that partition key value. You can optionally narrow
  the scope of the `Query` operation by specifying a sort key value and a
  comparison operator in `KeyConditionExpression`. To further refine the
  `Query` results, you can optionally provide a `FilterExpression`. A
  `FilterExpression` determines which items within the results should be
  returned to you. All of the other results are discarded.

  A `Query` operation always returns a result set. If no matching items are
  found, the result set will be empty. Queries that do not return results
  consume the minimum number of read capacity units for that type of read
  operation.

  <note> DynamoDB calculates the number of read capacity units consumed based
  on item size, not on the amount of data that is returned to an application.
  The number of capacity units consumed will be the same whether you request
  all of the attributes (the default behavior) or just some of them (using a
  projection expression). The number will also be the same whether or not you
  use a `FilterExpression`.

  </note> `Query` results are always sorted by the sort key value. If the
  data type of the sort key is Number, the results are returned in numeric
  order; otherwise, the results are returned in order of UTF-8 bytes. By
  default, the sort order is ascending. To reverse the order, set the
  `ScanIndexForward` parameter to false.

  A single `Query` operation will read up to the maximum number of items set
  (if using the `Limit` parameter) or a maximum of 1 MB of data and then
  apply any filtering to the results using `FilterExpression`. If
  `LastEvaluatedKey` is present in the response, you will need to paginate
  the result set. For more information, see [Paginating the
  Results](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination)
  in the *Amazon DynamoDB Developer Guide*.

  `FilterExpression` is applied after a `Query` finishes, but before the
  results are returned. A `FilterExpression` cannot contain partition key or
  sort key attributes. You need to specify those attributes in the
  `KeyConditionExpression`.

  <note> A `Query` operation can return an empty result set and a
  `LastEvaluatedKey` if all the items read for the page of results are
  filtered out.

  </note> You can query a table, a local secondary index, or a global
  secondary index. For a query on a table or on a local secondary index, you
  can set the `ConsistentRead` parameter to `true` and obtain a strongly
  consistent result. Global secondary indexes support eventually consistent
  reads only, so do not specify `ConsistentRead` when querying a global
  secondary index.
  """
  def query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "Query",
      method:           :post,
      input_shape:      "QueryInput",
      output_shape:     "QueryOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `Scan` operation returns one or more items and item attributes by
  accessing every item in a table or a secondary index. To have DynamoDB
  return fewer items, you can provide a `FilterExpression` operation.

  If the total number of scanned items exceeds the maximum data set size
  limit of 1 MB, the scan stops and results are returned to the user as a
  `LastEvaluatedKey` value to continue the scan in a subsequent operation.
  The results also include the number of items exceeding the limit. A scan
  can result in no table data meeting the filter criteria.

  A single `Scan` operation will read up to the maximum number of items set
  (if using the `Limit` parameter) or a maximum of 1 MB of data and then
  apply any filtering to the results using `FilterExpression`. If
  `LastEvaluatedKey` is present in the response, you will need to paginate
  the result set. For more information, see [Paginating the
  Results](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination)
  in the *Amazon DynamoDB Developer Guide*.

  `Scan` operations proceed sequentially; however, for faster performance on
  a large table or secondary index, applications can request a parallel
  `Scan` operation by providing the `Segment` and `TotalSegments` parameters.
  For more information, see [Parallel
  Scan](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan)
  in the *Amazon DynamoDB Developer Guide*.

  `Scan` uses eventually consistent reads when accessing the data in a table;
  therefore, the result set might not include the changes to data in the
  table immediately before the operation began. If you need a consistent copy
  of the data, as of the time that the `Scan` begins, you can set the
  `ConsistentRead` parameter to `true`.
  """
  def scan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "Scan",
      method:           :post,
      input_shape:      "ScanInput",
      output_shape:     "ScanOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associate a set of tags with an Amazon DynamoDB resource. You can then
  activate these user-defined tags so that they appear on the Billing and
  Cost Management console for cost allocation tracking. You can call
  TagResource up to 5 times per second, per account.

  For an overview on tagging DynamoDB resources, see [Tagging for
  DynamoDB](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "TagResource",
      method:           :post,
      input_shape:      "TagResourceInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the association of tags from an Amazon DynamoDB resource. You can
  call UntagResource up to 5 times per second, per account.

  For an overview on tagging DynamoDB resources, see [Tagging for
  DynamoDB](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UntagResource",
      method:           :post,
      input_shape:      "UntagResourceInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Edits an existing item's attributes, or adds a new item to the table if it
  does not already exist. You can put, delete, or add attribute values. You
  can also perform a conditional update on an existing item (insert a new
  attribute name-value pair if it doesn't exist, or replace an existing
  name-value pair if it has certain expected attribute values).

  You can also return the item's attribute values in the same `UpdateItem`
  operation using the `ReturnValues` parameter.
  """
  def update_item(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateItem",
      method:           :post,
      input_shape:      "UpdateItemInput",
      output_shape:     "UpdateItemOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the provisioned throughput settings, global secondary indexes, or
  DynamoDB Streams settings for a given table.

  You can only perform one of the following operations at once:

  <ul> <li> Modify the provisioned throughput settings of the table.

  </li> <li> Enable or disable Streams on the table.

  </li> <li> Remove a global secondary index from the table.

  </li> <li> Create a new global secondary index on the table. Once the index
  begins backfilling, you can use `UpdateTable` to perform other operations.

  </li> </ul> `UpdateTable` is an asynchronous operation; while it is
  executing, the table status changes from `ACTIVE` to `UPDATING`. While it
  is `UPDATING`, you cannot issue another `UpdateTable` request. When the
  table returns to the `ACTIVE` state, the `UpdateTable` operation is
  complete.
  """
  def update_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateTable",
      method:           :post,
      input_shape:      "UpdateTableInput",
      output_shape:     "UpdateTableOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  The UpdateTimeToLive method will enable or disable TTL for the specified
  table. A successful `UpdateTimeToLive` call returns the current
  `TimeToLiveSpecification`; it may take up to one hour for the change to
  fully process. Any additional `UpdateTimeToLive` calls for the same table
  during this one hour duration result in a `ValidationException`.

  TTL compares the current time in epoch time format to the time stored in
  the TTL attribute of an item. If the epoch time value stored in the
  attribute is less than the current time, the item is marked as expired and
  subsequently deleted.

  <note> The epoch time format is the number of seconds elapsed since
  12:00:00 AM January 1st, 1970 UTC.

  </note> DynamoDB deletes expired items on a best-effort basis to ensure
  availability of throughput for other data operations.

  <important> DynamoDB typically deletes expired items within two days of
  expiration. The exact duration within which an item gets deleted after
  expiration is specific to the nature of the workload. Items that have
  expired and not been deleted will still show up in reads, queries, and
  scans.

  </important> As items are deleted, they are removed from any Local
  Secondary Index and Global Secondary Index immediately in the same
  eventually consistent way as a standard delete operation.

  For more information, see [Time To
  Live](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html)
  in the Amazon DynamoDB Developer Guide.
  """
  def update_time_to_live(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateTimeToLive",
      method:           :post,
      input_shape:      "UpdateTimeToLiveInput",
      output_shape:     "UpdateTimeToLiveOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "dynamodb",
      target_prefix:    "DynamoDB_20120810",
      endpoint_prefix:  "dynamodb",
      type:             :json,
      version:          "2012-08-10",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"KeyList" => %{"max" => 100, "member" => %{"shape" => "Key"}, "min" => 1, "type" => "list"}, "PutRequest" => %{"members" => %{"Item" => %{"shape" => "PutItemInputAttributeMap"}}, "required" => ["Item"], "type" => "structure"}, "StreamEnabled" => %{"type" => "boolean"}, "AttributeDefinition" => %{"members" => %{"AttributeName" => %{"shape" => "KeySchemaAttributeName"}, "AttributeType" => %{"shape" => "ScalarAttributeType"}}, "required" => ["AttributeName", "AttributeType"], "type" => "structure"}, "StringSetAttributeValue" => %{"member" => %{"shape" => "StringAttributeValue"}, "type" => "list"}, "AttributeValueUpdate" => %{"members" => %{"Action" => %{"shape" => "AttributeAction"}, "Value" => %{"shape" => "AttributeValue"}}, "type" => "structure"}, "UpdateTableInput" => %{"members" => %{"AttributeDefinitions" => %{"shape" => "AttributeDefinitions"}, "GlobalSecondaryIndexUpdates" => %{"shape" => "GlobalSecondaryIndexUpdateList"}, "ProvisionedThroughput" => %{"shape" => "ProvisionedThroughput"}, "StreamSpecification" => %{"shape" => "StreamSpecification"}, "TableName" => %{"shape" => "TableName"}}, "required" => ["TableName"], "type" => "structure"}, "ProvisionedThroughputExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ItemCollectionMetrics" => %{"members" => %{"ItemCollectionKey" => %{"shape" => "ItemCollectionKeyAttributeMap"}, "SizeEstimateRangeGB" => %{"shape" => "ItemCollectionSizeEstimateRange"}}, "type" => "structure"}, "QueryOutput" => %{"members" => %{"ConsumedCapacity" => %{"shape" => "ConsumedCapacity"}, "Count" => %{"shape" => "Integer"}, "Items" => %{"shape" => "ItemList"}, "LastEvaluatedKey" => %{"shape" => "Key"}, "ScannedCount" => %{"shape" => "Integer"}}, "type" => "structure"}, "TagKeyList" => %{"member" => %{"shape" => "TagKeyString"}, "type" => "list"}, "ScanTotalSegments" => %{"max" => 1000000, "min" => 1, "type" => "integer"}, "DeleteItemOutput" => %{"members" => %{"Attributes" => %{"shape" => "AttributeMap"}, "ConsumedCapacity" => %{"shape" => "ConsumedCapacity"}, "ItemCollectionMetrics" => %{"shape" => "ItemCollectionMetrics"}}, "type" => "structure"}, "TableDescription" => %{"members" => %{"AttributeDefinitions" => %{"shape" => "AttributeDefinitions"}, "CreationDateTime" => %{"shape" => "Date"}, "GlobalSecondaryIndexes" => %{"shape" => "GlobalSecondaryIndexDescriptionList"}, "ItemCount" => %{"shape" => "Long"}, "KeySchema" => %{"shape" => "KeySchema"}, "LatestStreamArn" => %{"shape" => "StreamArn"}, "LatestStreamLabel" => %{"shape" => "String"}, "LocalSecondaryIndexes" => %{"shape" => "LocalSecondaryIndexDescriptionList"}, "ProvisionedThroughput" => %{"shape" => "ProvisionedThroughputDescription"}, "StreamSpecification" => %{"shape" => "StreamSpecification"}, "TableArn" => %{"shape" => "String"}, "TableName" => %{"shape" => "TableName"}, "TableSizeBytes" => %{"shape" => "Long"}, "TableStatus" => %{"shape" => "TableStatus"}}, "type" => "structure"}, "StreamViewType" => %{"enum" => ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"], "type" => "string"}, "AttributeDefinitions" => %{"member" => %{"shape" => "AttributeDefinition"}, "type" => "list"}, "KeyType" => %{"enum" => ["HASH", "RANGE"], "type" => "string"}, "QueryInput" => %{"members" => %{"AttributesToGet" => %{"shape" => "AttributeNameList"}, "ConditionalOperator" => %{"shape" => "ConditionalOperator"}, "ConsistentRead" => %{"shape" => "ConsistentRead"}, "ExclusiveStartKey" => %{"shape" => "Key"}, "ExpressionAttributeNames" => %{"shape" => "ExpressionAttributeNameMap"}, "ExpressionAttributeValues" => %{"shape" => "ExpressionAttributeValueMap"}, "FilterExpression" => %{"shape" => "ConditionExpression"}, "IndexName" => %{"shape" => "IndexName"}, "KeyConditionExpression" => %{"shape" => "KeyExpression"}, "KeyConditions" => %{"shape" => "KeyConditions"}, "Limit" => %{"shape" => "PositiveIntegerObject"}, "ProjectionExpression" => %{"shape" => "ProjectionExpression"}, "QueryFilter" => %{"shape" => "FilterConditionMap"}, "ReturnConsumedCapacity" => %{"shape" => "ReturnConsumedCapacity"}, "ScanIndexForward" => %{"shape" => "BooleanObject"}, "Select" => %{"shape" => "Select"}, "TableName" => %{"shape" => "TableName"}}, "required" => ["TableName"], "type" => "structure"}, "String" => %{"type" => "string"}, "GlobalSecondaryIndexList" => %{"member" => %{"shape" => "GlobalSecondaryIndex"}, "type" => "list"}, "UpdateTableOutput" => %{"members" => %{"TableDescription" => %{"shape" => "TableDescription"}}, "type" => "structure"}, "CreateTableOutput" => %{"members" => %{"TableDescription" => %{"shape" => "TableDescription"}}, "type" => "structure"}, "ProjectionType" => %{"enum" => ["ALL", "KEYS_ONLY", "INCLUDE"], "type" => "string"}, "PositiveLongObject" => %{"min" => 1, "type" => "long"}, "ConditionExpression" => %{"type" => "string"}, "DeleteRequest" => %{"members" => %{"Key" => %{"shape" => "Key"}}, "required" => ["Key"], "type" => "structure"}, "StringAttributeValue" => %{"type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "ExpressionAttributeValueVariable" => %{"type" => "string"}, "TableStatus" => %{"enum" => ["CREATING", "UPDATING", "DELETING", "ACTIVE"], "type" => "string"}, "ScalarAttributeType" => %{"enum" => ["S", "N", "B"], "type" => "string"}, "AttributeUpdates" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValueUpdate"}}, "AttributeName" => %{"max" => 65535, "type" => "string"}, "GlobalSecondaryIndex" => %{"members" => %{"IndexName" => %{"shape" => "IndexName"}, "KeySchema" => %{"shape" => "KeySchema"}, "Projection" => %{"shape" => "Projection"}, "ProvisionedThroughput" => %{"shape" => "ProvisionedThroughput"}}, "required" => ["IndexName", "KeySchema", "Projection", "ProvisionedThroughput"], "type" => "structure"}, "ReturnConsumedCapacity" => %{"enum" => ["INDEXES", "TOTAL", "NONE"], "type" => "string"}, "PutItemInput" => %{"members" => %{"ConditionExpression" => %{"shape" => "ConditionExpression"}, "ConditionalOperator" => %{"shape" => "ConditionalOperator"}, "Expected" => %{"shape" => "ExpectedAttributeMap"}, "ExpressionAttributeNames" => %{"shape" => "ExpressionAttributeNameMap"}, "ExpressionAttributeValues" => %{"shape" => "ExpressionAttributeValueMap"}, "Item" => %{"shape" => "PutItemInputAttributeMap"}, "ReturnConsumedCapacity" => %{"shape" => "ReturnConsumedCapacity"}, "ReturnItemCollectionMetrics" => %{"shape" => "ReturnItemCollectionMetrics"}, "ReturnValues" => %{"shape" => "ReturnValue"}, "TableName" => %{"shape" => "TableName"}}, "required" => ["TableName", "Item"], "type" => "structure"}, "DeleteGlobalSecondaryIndexAction" => %{"members" => %{"IndexName" => %{"shape" => "IndexName"}}, "required" => ["IndexName"], "type" => "structure"}, "UpdateGlobalSecondaryIndexAction" => %{"members" => %{"IndexName" => %{"shape" => "IndexName"}, "ProvisionedThroughput" => %{"shape" => "ProvisionedThroughput"}}, "required" => ["IndexName", "ProvisionedThroughput"], "type" => "structure"}, "BatchWriteItemInput" => %{"members" => %{"RequestItems" => %{"shape" => "BatchWriteItemRequestMap"}, "ReturnConsumedCapacity" => %{"shape" => "ReturnConsumedCapacity"}, "ReturnItemCollectionMetrics" => %{"shape" => "ReturnItemCollectionMetrics"}}, "required" => ["RequestItems"], "type" => "structure"}, "ItemCollectionSizeEstimateRange" => %{"member" => %{"shape" => "ItemCollectionSizeEstimateBound"}, "type" => "list"}, "DescribeLimitsInput" => %{"members" => %{}, "type" => "structure"}, "BatchGetRequestMap" => %{"key" => %{"shape" => "TableName"}, "max" => 100, "min" => 1, "type" => "map", "value" => %{"shape" => "KeysAndAttributes"}}, "ListTagsOfResourceInput" => %{"members" => %{"NextToken" => %{"shape" => "NextTokenString"}, "ResourceArn" => %{"shape" => "ResourceArnString"}}, "required" => ["ResourceArn"], "type" => "structure"}, "TableName" => %{"max" => 255, "min" => 3, "pattern" => "[a-zA-Z0-9_.-]+", "type" => "string"}, "BatchWriteItemRequestMap" => %{"key" => %{"shape" => "TableName"}, "max" => 25, "min" => 1, "type" => "map", "value" => %{"shape" => "WriteRequests"}}, "TimeToLiveEnabled" => %{"type" => "boolean"}, "ResourceInUseException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "BatchGetItemOutput" => %{"members" => %{"ConsumedCapacity" => %{"shape" => "ConsumedCapacityMultiple"}, "Responses" => %{"shape" => "BatchGetResponseMap"}, "UnprocessedKeys" => %{"shape" => "BatchGetRequestMap"}}, "type" => "structure"}, "SecondaryIndexesCapacityMap" => %{"key" => %{"shape" => "IndexName"}, "type" => "map", "value" => %{"shape" => "Capacity"}}, "ExpressionAttributeNameMap" => %{"key" => %{"shape" => "ExpressionAttributeNameVariable"}, "type" => "map", "value" => %{"shape" => "AttributeName"}}, "GlobalSecondaryIndexUpdateList" => %{"member" => %{"shape" => "GlobalSecondaryIndexUpdate"}, "type" => "list"}, "PositiveIntegerObject" => %{"min" => 1, "type" => "integer"}, "Key" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "PutItemOutput" => %{"members" => %{"Attributes" => %{"shape" => "AttributeMap"}, "ConsumedCapacity" => %{"shape" => "ConsumedCapacity"}, "ItemCollectionMetrics" => %{"shape" => "ItemCollectionMetrics"}}, "type" => "structure"}, "NonKeyAttributeNameList" => %{"max" => 20, "member" => %{"shape" => "NonKeyAttributeName"}, "min" => 1, "type" => "list"}, "UpdateExpression" => %{"type" => "string"}, "ConsistentRead" => %{"type" => "boolean"}, "WriteRequests" => %{"max" => 25, "member" => %{"shape" => "WriteRequest"}, "min" => 1, "type" => "list"}, "BooleanObject" => %{"type" => "boolean"}, "BinaryAttributeValue" => %{"type" => "blob"}, "GetItemInput" => %{"members" => %{"AttributesToGet" => %{"shape" => "AttributeNameList"}, "ConsistentRead" => %{"shape" => "ConsistentRead"}, "ExpressionAttributeNames" => %{"shape" => "ExpressionAttributeNameMap"}, "Key" => %{"shape" => "Key"}, "ProjectionExpression" => %{"shape" => "ProjectionExpression"}, "ReturnConsumedCapacity" => %{"shape" => "ReturnConsumedCapacity"}, "TableName" => %{"shape" => "TableName"}}, "required" => ["TableName", "Key"], "type" => "structure"}, "ScanSegment" => %{"max" => 999999, "min" => 0, "type" => "integer"}, "ProvisionedThroughputDescription" => %{"members" => %{"LastDecreaseDateTime" => %{"shape" => "Date"}, "LastIncreaseDateTime" => %{"shape" => "Date"}, "NumberOfDecreasesToday" => %{"shape" => "PositiveLongObject"}, "ReadCapacityUnits" => %{"shape" => "PositiveLongObject"}, "WriteCapacityUnits" => %{"shape" => "PositiveLongObject"}}, "type" => "structure"}, "AttributeAction" => %{"enum" => ["ADD", "PUT", "DELETE"], "type" => "string"}, "IndexName" => %{"max" => 255, "min" => 3, "pattern" => "[a-zA-Z0-9_.-]+", "type" => "string"}, "DescribeLimitsOutput" => %{"members" => %{"AccountMaxReadCapacityUnits" => %{"shape" => "PositiveLongObject"}, "AccountMaxWriteCapacityUnits" => %{"shape" => "PositiveLongObject"}, "TableMaxReadCapacityUnits" => %{"shape" => "PositiveLongObject"}, "TableMaxWriteCapacityUnits" => %{"shape" => "PositiveLongObject"}}, "type" => "structure"}, "NonKeyAttributeName" => %{"max" => 255, "min" => 1, "type" => "string"}, "ScanInput" => %{"members" => %{"AttributesToGet" => %{"shape" => "AttributeNameList"}, "ConditionalOperator" => %{"shape" => "ConditionalOperator"}, "ConsistentRead" => %{"shape" => "ConsistentRead"}, "ExclusiveStartKey" => %{"shape" => "Key"}, "ExpressionAttributeNames" => %{"shape" => "ExpressionAttributeNameMap"}, "ExpressionAttributeValues" => %{"shape" => "ExpressionAttributeValueMap"}, "FilterExpression" => %{"shape" => "ConditionExpression"}, "IndexName" => %{"shape" => "IndexName"}, "Limit" => %{"shape" => "PositiveIntegerObject"}, "ProjectionExpression" => %{"shape" => "ProjectionExpression"}, "ReturnConsumedCapacity" => %{"shape" => "ReturnConsumedCapacity"}, "ScanFilter" => %{"shape" => "FilterConditionMap"}, "Segment" => %{"shape" => "ScanSegment"}, "Select" => %{"shape" => "Select"}, "TableName" => %{"shape" => "TableName"}, "TotalSegments" => %{"shape" => "ScanTotalSegments"}}, "required" => ["TableName"], "type" => "structure"}, "Capacity" => %{"members" => %{"CapacityUnits" => %{"shape" => "ConsumedCapacityUnits"}}, "type" => "structure"}, "ExpressionAttributeValueMap" => %{"key" => %{"shape" => "ExpressionAttributeValueVariable"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "DeleteTableInput" => %{"members" => %{"TableName" => %{"shape" => "TableName"}}, "required" => ["TableName"], "type" => "structure"}, "ListTablesInputLimit" => %{"max" => 100, "min" => 1, "type" => "integer"}, "ReturnItemCollectionMetrics" => %{"enum" => ["SIZE", "NONE"], "type" => "string"}, "Date" => %{"type" => "timestamp"}, "ItemCollectionSizeLimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKeyString"}, "Value" => %{"shape" => "TagValueString"}}, "required" => ["Key", "Value"], "type" => "structure"}, "DeleteItemInput" => %{"members" => %{"ConditionExpression" => %{"shape" => "ConditionExpression"}, "ConditionalOperator" => %{"shape" => "ConditionalOperator"}, "Expected" => %{"shape" => "ExpectedAttributeMap"}, "ExpressionAttributeNames" => %{"shape" => "ExpressionAttributeNameMap"}, "ExpressionAttributeValues" => %{"shape" => "ExpressionAttributeValueMap"}, "Key" => %{"shape" => "Key"}, "ReturnConsumedCapacity" => %{"shape" => "ReturnConsumedCapacity"}, "ReturnItemCollectionMetrics" => %{"shape" => "ReturnItemCollectionMetrics"}, "ReturnValues" => %{"shape" => "ReturnValue"}, "TableName" => %{"shape" => "TableName"}}, "required" => ["TableName", "Key"], "type" => "structure"}, "MapAttributeValue" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "Select" => %{"enum" => ["ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES", "COUNT"], "type" => "string"}, "Condition" => %{"members" => %{"AttributeValueList" => %{"shape" => "AttributeValueList"}, "ComparisonOperator" => %{"shape" => "ComparisonOperator"}}, "required" => ["ComparisonOperator"], "type" => "structure"}, "DescribeTimeToLiveInput" => %{"members" => %{"TableName" => %{"shape" => "TableName"}}, "required" => ["TableName"], "type" => "structure"}, "BatchGetResponseMap" => %{"key" => %{"shape" => "TableName"}, "type" => "map", "value" => %{"shape" => "ItemList"}}, "Backfilling" => %{"type" => "boolean"}, "KeyConditions" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "Condition"}}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "CreateTableInput" => %{"members" => %{"AttributeDefinitions" => %{"shape" => "AttributeDefinitions"}, "GlobalSecondaryIndexes" => %{"shape" => "GlobalSecondaryIndexList"}, "KeySchema" => %{"shape" => "KeySchema"}, "LocalSecondaryIndexes" => %{"shape" => "LocalSecondaryIndexList"}, "ProvisionedThroughput" => %{"shape" => "ProvisionedThroughput"}, "StreamSpecification" => %{"shape" => "StreamSpecification"}, "TableName" => %{"shape" => "TableName"}}, "required" => ["AttributeDefinitions", "TableName", "KeySchema", "ProvisionedThroughput"], "type" => "structure"}, "NumberAttributeValue" => %{"type" => "string"}, "NumberSetAttributeValue" => %{"member" => %{"shape" => "NumberAttributeValue"}, "type" => "list"}, "KeySchemaAttributeName" => %{"max" => 255, "min" => 1, "type" => "string"}, "ItemCollectionMetricsPerTable" => %{"key" => %{"shape" => "TableName"}, "type" => "map", "value" => %{"shape" => "ItemCollectionMetricsMultiple"}}, "BatchWriteItemOutput" => %{"members" => %{"ConsumedCapacity" => %{"shape" => "ConsumedCapacityMultiple"}, "ItemCollectionMetrics" => %{"shape" => "ItemCollectionMetricsPerTable"}, "UnprocessedItems" => %{"shape" => "BatchWriteItemRequestMap"}}, "type" => "structure"}, "DescribeTimeToLiveOutput" => %{"members" => %{"TimeToLiveDescription" => %{"shape" => "TimeToLiveDescription"}}, "type" => "structure"}, "KeyExpression" => %{"type" => "string"}, "ScanOutput" => %{"members" => %{"ConsumedCapacity" => %{"shape" => "ConsumedCapacity"}, "Count" => %{"shape" => "Integer"}, "Items" => %{"shape" => "ItemList"}, "LastEvaluatedKey" => %{"shape" => "Key"}, "ScannedCount" => %{"shape" => "Integer"}}, "type" => "structure"}, "StreamArn" => %{"max" => 1024, "min" => 37, "type" => "string"}, "ReturnValue" => %{"enum" => ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"], "type" => "string"}, "GlobalSecondaryIndexUpdate" => %{"members" => %{"Create" => %{"shape" => "CreateGlobalSecondaryIndexAction"}, "Delete" => %{"shape" => "DeleteGlobalSecondaryIndexAction"}, "Update" => %{"shape" => "UpdateGlobalSecondaryIndexAction"}}, "type" => "structure"}, "IndexStatus" => %{"enum" => ["CREATING", "UPDATING", "DELETING", "ACTIVE"], "type" => "string"}, "ListTagsOfResourceOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextTokenString"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InternalServerError" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ItemCollectionKeyAttributeMap" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "Long" => %{"type" => "long"}, "BatchGetItemInput" => %{"members" => %{"RequestItems" => %{"shape" => "BatchGetRequestMap"}, "ReturnConsumedCapacity" => %{"shape" => "ReturnConsumedCapacity"}}, "required" => ["RequestItems"], "type" => "structure"}, "ComparisonOperator" => %{"enum" => ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"], "type" => "string"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PutItemInputAttributeMap" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "DeleteTableOutput" => %{"members" => %{"TableDescription" => %{"shape" => "TableDescription"}}, "type" => "structure"}, "UpdateItemOutput" => %{"members" => %{"Attributes" => %{"shape" => "AttributeMap"}, "ConsumedCapacity" => %{"shape" => "ConsumedCapacity"}, "ItemCollectionMetrics" => %{"shape" => "ItemCollectionMetrics"}}, "type" => "structure"}, "BooleanAttributeValue" => %{"type" => "boolean"}, "TimeToLiveSpecification" => %{"members" => %{"AttributeName" => %{"shape" => "TimeToLiveAttributeName"}, "Enabled" => %{"shape" => "TimeToLiveEnabled"}}, "required" => ["Enabled", "AttributeName"], "type" => "structure"}, "ListTablesInput" => %{"members" => %{"ExclusiveStartTableName" => %{"shape" => "TableName"}, "Limit" => %{"shape" => "ListTablesInputLimit"}}, "type" => "structure"}, "DescribeTableInput" => %{"members" => %{"TableName" => %{"shape" => "TableName"}}, "required" => ["TableName"], "type" => "structure"}, "UpdateTimeToLiveOutput" => %{"members" => %{"TimeToLiveSpecification" => %{"shape" => "TimeToLiveSpecification"}}, "type" => "structure"}, "WriteRequest" => %{"members" => %{"DeleteRequest" => %{"shape" => "DeleteRequest"}, "PutRequest" => %{"shape" => "PutRequest"}}, "type" => "structure"}, "ListAttributeValue" => %{"member" => %{"shape" => "AttributeValue"}, "type" => "list"}, "ItemList" => %{"member" => %{"shape" => "AttributeMap"}, "type" => "list"}, "ConsumedCapacityUnits" => %{"type" => "double"}, "GlobalSecondaryIndexDescription" => %{"members" => %{"Backfilling" => %{"shape" => "Backfilling"}, "IndexArn" => %{"shape" => "String"}, "IndexName" => %{"shape" => "IndexName"}, "IndexSizeBytes" => %{"shape" => "Long"}, "IndexStatus" => %{"shape" => "IndexStatus"}, "ItemCount" => %{"shape" => "Long"}, "KeySchema" => %{"shape" => "KeySchema"}, "Projection" => %{"shape" => "Projection"}, "ProvisionedThroughput" => %{"shape" => "ProvisionedThroughputDescription"}}, "type" => "structure"}, "ExpectedAttributeValue" => %{"members" => %{"AttributeValueList" => %{"shape" => "AttributeValueList"}, "ComparisonOperator" => %{"shape" => "ComparisonOperator"}, "Exists" => %{"shape" => "BooleanObject"}, "Value" => %{"shape" => "AttributeValue"}}, "type" => "structure"}, "ItemCollectionSizeEstimateBound" => %{"type" => "double"}, "ProvisionedThroughput" => %{"members" => %{"ReadCapacityUnits" => %{"shape" => "PositiveLongObject"}, "WriteCapacityUnits" => %{"shape" => "PositiveLongObject"}}, "required" => ["ReadCapacityUnits", "WriteCapacityUnits"], "type" => "structure"}, "StreamSpecification" => %{"members" => %{"StreamEnabled" => %{"shape" => "StreamEnabled"}, "StreamViewType" => %{"shape" => "StreamViewType"}}, "type" => "structure"}, "ExpressionAttributeNameVariable" => %{"type" => "string"}, "LocalSecondaryIndexDescriptionList" => %{"member" => %{"shape" => "LocalSecondaryIndexDescription"}, "type" => "list"}, "TimeToLiveAttributeName" => %{"max" => 255, "min" => 1, "type" => "string"}, "ConditionalCheckFailedException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "AttributeValueList" => %{"member" => %{"shape" => "AttributeValue"}, "type" => "list"}, "ListTablesOutput" => %{"members" => %{"LastEvaluatedTableName" => %{"shape" => "TableName"}, "TableNames" => %{"shape" => "TableNameList"}}, "type" => "structure"}, "LocalSecondaryIndex" => %{"members" => %{"IndexName" => %{"shape" => "IndexName"}, "KeySchema" => %{"shape" => "KeySchema"}, "Projection" => %{"shape" => "Projection"}}, "required" => ["IndexName", "KeySchema", "Projection"], "type" => "structure"}, "UntagResourceInput" => %{"members" => %{"ResourceArn" => %{"shape" => "ResourceArnString"}, "TagKeys" => %{"shape" => "TagKeyList"}}, "required" => ["ResourceArn", "TagKeys"], "type" => "structure"}, "AttributeMap" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "CreateGlobalSecondaryIndexAction" => %{"members" => %{"IndexName" => %{"shape" => "IndexName"}, "KeySchema" => %{"shape" => "KeySchema"}, "Projection" => %{"shape" => "Projection"}, "ProvisionedThroughput" => %{"shape" => "ProvisionedThroughput"}}, "required" => ["IndexName", "KeySchema", "Projection", "ProvisionedThroughput"], "type" => "structure"}, "ConsumedCapacity" => %{"members" => %{"CapacityUnits" => %{"shape" => "ConsumedCapacityUnits"}, "GlobalSecondaryIndexes" => %{"shape" => "SecondaryIndexesCapacityMap"}, "LocalSecondaryIndexes" => %{"shape" => "SecondaryIndexesCapacityMap"}, "Table" => %{"shape" => "Capacity"}, "TableName" => %{"shape" => "TableName"}}, "type" => "structure"}, "KeysAndAttributes" => %{"members" => %{"AttributesToGet" => %{"shape" => "AttributeNameList"}, "ConsistentRead" => %{"shape" => "ConsistentRead"}, "ExpressionAttributeNames" => %{"shape" => "ExpressionAttributeNameMap"}, "Keys" => %{"shape" => "KeyList"}, "ProjectionExpression" => %{"shape" => "ProjectionExpression"}}, "required" => ["Keys"], "type" => "structure"}, "AttributeNameList" => %{"member" => %{"shape" => "AttributeName"}, "min" => 1, "type" => "list"}, "AttributeValue" => %{"members" => %{"B" => %{"shape" => "BinaryAttributeValue"}, "BOOL" => %{"shape" => "BooleanAttributeValue"}, "BS" => %{"shape" => "BinarySetAttributeValue"}, "L" => %{"shape" => "ListAttributeValue"}, "M" => %{"shape" => "MapAttributeValue"}, "N" => %{"shape" => "NumberAttributeValue"}, "NS" => %{"shape" => "NumberSetAttributeValue"}, "NULL" => %{"shape" => "NullAttributeValue"}, "S" => %{"shape" => "StringAttributeValue"}, "SS" => %{"shape" => "StringSetAttributeValue"}}, "type" => "structure"}, "ExpectedAttributeMap" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "ExpectedAttributeValue"}}, "ResourceArnString" => %{"max" => 1283, "min" => 1, "type" => "string"}, "LocalSecondaryIndexDescription" => %{"members" => %{"IndexArn" => %{"shape" => "String"}, "IndexName" => %{"shape" => "IndexName"}, "IndexSizeBytes" => %{"shape" => "Long"}, "ItemCount" => %{"shape" => "Long"}, "KeySchema" => %{"shape" => "KeySchema"}, "Projection" => %{"shape" => "Projection"}}, "type" => "structure"}, "TimeToLiveDescription" => %{"members" => %{"AttributeName" => %{"shape" => "TimeToLiveAttributeName"}, "TimeToLiveStatus" => %{"shape" => "TimeToLiveStatus"}}, "type" => "structure"}, "FilterConditionMap" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "Condition"}}, "GlobalSecondaryIndexDescriptionList" => %{"member" => %{"shape" => "GlobalSecondaryIndexDescription"}, "type" => "list"}, "TagKeyString" => %{"max" => 128, "min" => 1, "type" => "string"}, "LocalSecondaryIndexList" => %{"member" => %{"shape" => "LocalSecondaryIndex"}, "type" => "list"}, "UpdateTimeToLiveInput" => %{"members" => %{"TableName" => %{"shape" => "TableName"}, "TimeToLiveSpecification" => %{"shape" => "TimeToLiveSpecification"}}, "required" => ["TableName", "TimeToLiveSpecification"], "type" => "structure"}, "TableNameList" => %{"member" => %{"shape" => "TableName"}, "type" => "list"}, "GetItemOutput" => %{"members" => %{"ConsumedCapacity" => %{"shape" => "ConsumedCapacity"}, "Item" => %{"shape" => "AttributeMap"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "ItemCollectionMetricsMultiple" => %{"member" => %{"shape" => "ItemCollectionMetrics"}, "type" => "list"}, "ConditionalOperator" => %{"enum" => ["AND", "OR"], "type" => "string"}, "BinarySetAttributeValue" => %{"member" => %{"shape" => "BinaryAttributeValue"}, "type" => "list"}, "TimeToLiveStatus" => %{"enum" => ["ENABLING", "DISABLING", "ENABLED", "DISABLED"], "type" => "string"}, "KeySchema" => %{"max" => 2, "member" => %{"shape" => "KeySchemaElement"}, "min" => 1, "type" => "list"}, "TagValueString" => %{"max" => 256, "min" => 0, "type" => "string"}, "ProjectionExpression" => %{"type" => "string"}, "NullAttributeValue" => %{"type" => "boolean"}, "UpdateItemInput" => %{"members" => %{"AttributeUpdates" => %{"shape" => "AttributeUpdates"}, "ConditionExpression" => %{"shape" => "ConditionExpression"}, "ConditionalOperator" => %{"shape" => "ConditionalOperator"}, "Expected" => %{"shape" => "ExpectedAttributeMap"}, "ExpressionAttributeNames" => %{"shape" => "ExpressionAttributeNameMap"}, "ExpressionAttributeValues" => %{"shape" => "ExpressionAttributeValueMap"}, "Key" => %{"shape" => "Key"}, "ReturnConsumedCapacity" => %{"shape" => "ReturnConsumedCapacity"}, "ReturnItemCollectionMetrics" => %{"shape" => "ReturnItemCollectionMetrics"}, "ReturnValues" => %{"shape" => "ReturnValue"}, "TableName" => %{"shape" => "TableName"}, "UpdateExpression" => %{"shape" => "UpdateExpression"}}, "required" => ["TableName", "Key"], "type" => "structure"}, "KeySchemaElement" => %{"members" => %{"AttributeName" => %{"shape" => "KeySchemaAttributeName"}, "KeyType" => %{"shape" => "KeyType"}}, "required" => ["AttributeName", "KeyType"], "type" => "structure"}, "Projection" => %{"members" => %{"NonKeyAttributes" => %{"shape" => "NonKeyAttributeNameList"}, "ProjectionType" => %{"shape" => "ProjectionType"}}, "type" => "structure"}, "ConsumedCapacityMultiple" => %{"member" => %{"shape" => "ConsumedCapacity"}, "type" => "list"}, "DescribeTableOutput" => %{"members" => %{"Table" => %{"shape" => "TableDescription"}}, "type" => "structure"}, "TagResourceInput" => %{"members" => %{"ResourceArn" => %{"shape" => "ResourceArnString"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceArn", "Tags"], "type" => "structure"}, "NextTokenString" => %{"type" => "string"}}
  end
end