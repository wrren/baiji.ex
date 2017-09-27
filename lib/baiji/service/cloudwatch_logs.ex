defmodule Baiji.CloudwatchLogs do
  @moduledoc """
  You can use Amazon CloudWatch Logs to monitor, store, and access your log
  files from Amazon EC2 instances, AWS CloudTrail, or other sources. You can
  then retrieve the associated log data from CloudWatch Logs using the
  CloudWatch console, CloudWatch Logs commands in the AWS CLI, CloudWatch
  Logs API, or CloudWatch Logs SDK.

  You can use CloudWatch Logs to:

  <ul> <li> **Monitor logs from EC2 instances in real-time**: You can use
  CloudWatch Logs to monitor applications and systems using log data. For
  example, CloudWatch Logs can track the number of errors that occur in your
  application logs and send you a notification whenever the rate of errors
  exceeds a threshold that you specify. CloudWatch Logs uses your log data
  for monitoring; so, no code changes are required. For example, you can
  monitor application logs for specific literal terms (such as
  "NullReferenceException") or count the number of occurrences of a literal
  term at a particular position in log data (such as "404" status codes in an
  Apache access log). When the term you are searching for is found,
  CloudWatch Logs reports the data to a CloudWatch metric that you specify.

  </li> <li> **Monitor AWS CloudTrail logged events**: You can create alarms
  in CloudWatch and receive notifications of particular API activity as
  captured by CloudTrail and use the notification to perform troubleshooting.

  </li> <li> **Archive log data**: You can use CloudWatch Logs to store your
  log data in highly durable storage. You can change the log retention
  setting so that any log events older than this setting are automatically
  deleted. The CloudWatch Logs agent makes it easy to quickly send both
  rotated and non-rotated log data off of a host and into the log service.
  You can then access the raw log data when you need it.

  </li> </ul>
  """
  
  @doc """
  Cancels the specified export task.

  The task must be in the `PENDING` or `RUNNING` state.
  """
  def cancel_export_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CancelExportTask",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an export task, which allows you to efficiently export data from a
  log group to an Amazon S3 bucket.

  This is an asynchronous call. If all the required information is provided,
  this operation initiates an export task and responds with the ID of the
  task. After the task has started, you can use `DescribeExportTasks` to get
  the status of the export task. Each account can only have one active
  (`RUNNING` or `PENDING`) export task at a time. To cancel an export task,
  use `CancelExportTask`.

  You can export logs from multiple log groups or multiple time ranges to the
  same S3 bucket. To separate out log data for each export task, you can
  specify a prefix to be used as the Amazon S3 key prefix for all exported
  objects.
  """
  def create_export_task(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateExportTask",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a log group with the specified name.

  You can create up to 5000 log groups per account.

  You must use the following guidelines when naming a log group:

  <ul> <li> Log group names must be unique within a region for an AWS
  account.

  </li> <li> Log group names can be between 1 and 512 characters long.

  </li> <li> Log group names consist of the following characters: a-z, A-Z,
  0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).

  </li> </ul>
  """
  def create_log_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateLogGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a log stream for the specified log group.

  There is no limit on the number of log streams that you can create for a
  log group.

  You must use the following guidelines when naming a log stream:

  <ul> <li> Log stream names must be unique within the log group.

  </li> <li> Log stream names can be between 1 and 512 characters long.

  </li> <li> The ':' (colon) and '*' (asterisk) characters are not allowed.

  </li> </ul>
  """
  def create_log_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateLogStream",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified destination, and eventually disables all the
  subscription filters that publish to it. This operation does not delete the
  physical resource encapsulated by the destination.
  """
  def delete_destination(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteDestination",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified log group and permanently deletes all the archived
  log events associated with the log group.
  """
  def delete_log_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteLogGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified log stream and permanently deletes all the archived
  log events associated with the log stream.
  """
  def delete_log_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteLogStream",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified metric filter.
  """
  def delete_metric_filter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteMetricFilter",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a resource policy from this account. This revokes the access of the
  identities in that policy to put log events to this account.
  """
  def delete_resource_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteResourcePolicy",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified retention policy.

  Log events do not expire if they belong to log groups without a retention
  policy.
  """
  def delete_retention_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteRetentionPolicy",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified subscription filter.
  """
  def delete_subscription_filter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteSubscriptionFilter",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all your destinations. The results are ASCII-sorted by destination
  name.
  """
  def describe_destinations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeDestinations",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the specified export tasks. You can list all your export tasks or
  filter the results based on task ID or task status.
  """
  def describe_export_tasks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeExportTasks",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the specified log groups. You can list all your log groups or filter
  the results by prefix. The results are ASCII-sorted by log group name.
  """
  def describe_log_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeLogGroups",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the log streams for the specified log group. You can list all the log
  streams or filter the results by prefix. You can also control how the
  results are ordered.

  This operation has a limit of five transactions per second, after which
  transactions are throttled.
  """
  def describe_log_streams(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeLogStreams",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the specified metric filters. You can list all the metric filters or
  filter the results by log name, prefix, metric name, and metric namespace.
  The results are ASCII-sorted by filter name.
  """
  def describe_metric_filters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeMetricFilters",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the resource policies in this account.
  """
  def describe_resource_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeResourcePolicies",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the subscription filters for the specified log group. You can list
  all the subscription filters or filter the results by prefix. The results
  are ASCII-sorted by filter name.
  """
  def describe_subscription_filters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeSubscriptionFilters",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists log events from the specified log group. You can list all the log
  events or filter the results using a filter pattern, a time range, and the
  name of the log stream.

  By default, this operation returns as many log events as can fit in 1 MB
  (up to 10,000 log events), or all the events found within the time range
  that you specify. If the results include a token, then there are more log
  events available, and you can get additional results by specifying the
  token in a subsequent call.
  """
  def filter_log_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "FilterLogEvents",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists log events from the specified log stream. You can list all the log
  events or filter using a time range.

  By default, this operation returns as many log events as can fit in a
  response size of 1 MB (up to 10,000 log events). You can get additional log
  events by specifying one of the tokens in a subsequent call.
  """
  def get_log_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetLogEvents",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the tags for the specified log group.

  To add tags, use `TagLogGroup`. To remove tags, use `UntagLogGroup`.
  """
  def list_tags_log_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListTagsLogGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates or updates a destination. A destination encapsulates a physical
  resource (such as an Amazon Kinesis stream) and enables you to subscribe to
  a real-time stream of log events for a different account, ingested using
  `PutLogEvents`. Currently, the only supported physical resource is a
  Kinesis stream belonging to the same account as the destination.

  Through an access policy, a destination controls what is written to its
  Kinesis stream. By default, `PutDestination` does not set any access policy
  with the destination, which means a cross-account user cannot call
  `PutSubscriptionFilter` against this destination. To enable this, the
  destination owner must call `PutDestinationPolicy` after `PutDestination`.
  """
  def put_destination(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutDestination",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates or updates an access policy associated with an existing
  destination. An access policy is an [IAM policy
  document](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html)
  that is used to authorize claims to register a subscription filter against
  a given destination.
  """
  def put_destination_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutDestinationPolicy",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Uploads a batch of log events to the specified log stream.

  You must include the sequence token obtained from the response of the
  previous call. An upload in a newly created log stream does not require a
  sequence token. You can also get the sequence token using
  `DescribeLogStreams`. If you call `PutLogEvents` twice within a narrow time
  period using the same value for `sequenceToken`, both calls may be
  successful, or one may be rejected.

  The batch of events must satisfy the following constraints:

  <ul> <li> The maximum batch size is 1,048,576 bytes, and this size is
  calculated as the sum of all event messages in UTF-8, plus 26 bytes for
  each log event.

  </li> <li> None of the log events in the batch can be more than 2 hours in
  the future.

  </li> <li> None of the log events in the batch can be older than 14 days or
  the retention period of the log group.

  </li> <li> The log events in the batch must be in chronological ordered by
  their time stamp (the time the event occurred, expressed as the number of
  milliseconds after Jan 1, 1970 00:00:00 UTC).

  </li> <li> The maximum number of log events in a batch is 10,000.

  </li> <li> A batch of log events in a single request cannot span more than
  24 hours. Otherwise, the operation fails.

  </li> </ul>
  """
  def put_log_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutLogEvents",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates or updates a metric filter and associates it with the specified log
  group. Metric filters allow you to configure rules to extract metric data
  from log events ingested through `PutLogEvents`.

  The maximum number of metric filters that can be associated with a log
  group is 100.
  """
  def put_metric_filter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutMetricFilter",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates or updates a resource policy allowing other AWS services to put log
  events to this account, such as Amazon Route 53. An account can have up to
  50 resource policies per region.
  """
  def put_resource_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutResourcePolicy",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Sets the retention of the specified log group. A retention policy allows
  you to configure the number of days for which to retain log events in the
  specified log group.
  """
  def put_retention_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutRetentionPolicy",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates or updates a subscription filter and associates it with the
  specified log group. Subscription filters allow you to subscribe to a
  real-time stream of log events ingested through `PutLogEvents` and have
  them delivered to a specific destination. Currently, the supported
  destinations are:

  <ul> <li> An Amazon Kinesis stream belonging to the same account as the
  subscription filter, for same-account delivery.

  </li> <li> A logical destination that belongs to a different account, for
  cross-account delivery.

  </li> <li> An Amazon Kinesis Firehose delivery stream that belongs to the
  same account as the subscription filter, for same-account delivery.

  </li> <li> An AWS Lambda function that belongs to the same account as the
  subscription filter, for same-account delivery.

  </li> </ul> There can only be one subscription filter associated with a log
  group. If you are updating an existing filter, you must specify the correct
  name in `filterName`. Otherwise, the call fails because you cannot
  associate a second filter with a log group.
  """
  def put_subscription_filter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutSubscriptionFilter",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Adds or updates the specified tags for the specified log group.

  To list the tags for a log group, use `ListTagsLogGroup`. To remove tags,
  use `UntagLogGroup`.

  For more information about tags, see [Tag Log Groups in Amazon CloudWatch
  Logs](http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/log-group-tagging.html)
  in the *Amazon CloudWatch Logs User Guide*.
  """
  def tag_log_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "TagLogGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Tests the filter pattern of a metric filter against a sample of log event
  messages. You can use this operation to validate the correctness of a
  metric filter pattern.
  """
  def test_metric_filter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "TestMetricFilter",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Removes the specified tags from the specified log group.

  To list the tags for a log group, use `ListTagsLogGroup`. To add tags, use
  `UntagLogGroup`.
  """
  def untag_log_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UntagLogGroup",
      type:     :json,
      method:   :post
    }
  end
  
end