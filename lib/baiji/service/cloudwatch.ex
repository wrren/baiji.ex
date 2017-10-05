defmodule Baiji.CloudWatch do
  @moduledoc """
  Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and the
  applications you run on AWS in real time. You can use CloudWatch to collect
  and track metrics, which are the variables you want to measure for your
  resources and applications.

  CloudWatch alarms send notifications or automatically change the resources
  you are monitoring based on rules that you define. For example, you can
  monitor the CPU usage and disk reads and writes of your Amazon EC2
  instances. Then, use this data to determine whether you should launch
  additional instances to handle increased load. You can also use this data
  to stop under-used instances to save money.

  In addition to monitoring the built-in metrics that come with AWS, you can
  monitor your own custom metrics. With CloudWatch, you gain system-wide
  visibility into resource utilization, application performance, and
  operational health.
  """

  @doc """
  Deletes the specified alarms. In the event of an error, no alarms are
  deleted.
  """
  def delete_alarms(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteAlarms",
      method:           :post,
      input_shape:      "DeleteAlarmsInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes all dashboards that you specify. You may specify up to 100
  dashboards to delete. If there is an error during this call, no dashboards
  are deleted.
  """
  def delete_dashboards(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDashboards",
      method:           :post,
      input_shape:      "DeleteDashboardsInput",
      output_shape:     "DeleteDashboardsOutput",
      output_wrapper:   "DeleteDashboardsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the history for the specified alarm. You can filter the results
  by date range or item type. If an alarm name is not specified, the
  histories for all alarms are returned.

  CloudWatch retains the history of an alarm even if you delete the alarm.
  """
  def describe_alarm_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAlarmHistory",
      method:           :post,
      input_shape:      "DescribeAlarmHistoryInput",
      output_shape:     "DescribeAlarmHistoryOutput",
      output_wrapper:   "DescribeAlarmHistoryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the specified alarms. If no alarms are specified, all alarms are
  returned. Alarms can be retrieved by using only a prefix for the alarm
  name, the alarm state, or a prefix for any action.
  """
  def describe_alarms(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAlarms",
      method:           :post,
      input_shape:      "DescribeAlarmsInput",
      output_shape:     "DescribeAlarmsOutput",
      output_wrapper:   "DescribeAlarmsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the alarms for the specified metric. To filter the results,
  specify a statistic, period, or unit.
  """
  def describe_alarms_for_metric(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAlarmsForMetric",
      method:           :post,
      input_shape:      "DescribeAlarmsForMetricInput",
      output_shape:     "DescribeAlarmsForMetricOutput",
      output_wrapper:   "DescribeAlarmsForMetricResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disables the actions for the specified alarms. When an alarm's actions are
  disabled, the alarm actions do not execute when the alarm state changes.
  """
  def disable_alarm_actions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisableAlarmActions",
      method:           :post,
      input_shape:      "DisableAlarmActionsInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Enables the actions for the specified alarms.
  """
  def enable_alarm_actions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "EnableAlarmActions",
      method:           :post,
      input_shape:      "EnableAlarmActionsInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Displays the details of the dashboard that you specify.

  To copy an existing dashboard, use `GetDashboard`, and then use the data
  returned within `DashboardBody` as the template for the new dashboard when
  you call `PutDashboard` to create the copy.
  """
  def get_dashboard(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDashboard",
      method:           :post,
      input_shape:      "GetDashboardInput",
      output_shape:     "GetDashboardOutput",
      output_wrapper:   "GetDashboardResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets statistics for the specified metric.

  The maximum number of data points returned from a single call is 1,440. If
  you request more than 1,440 data points, CloudWatch returns an error. To
  reduce the number of data points, you can narrow the specified time range
  and make multiple requests across adjacent time ranges, or you can increase
  the specified period. Data points are not returned in chronological order.

  CloudWatch aggregates data points based on the length of the period that
  you specify. For example, if you request statistics with a one-hour period,
  CloudWatch aggregates all data points with time stamps that fall within
  each one-hour period. Therefore, the number of values aggregated by
  CloudWatch is larger than the number of data points returned.

  CloudWatch needs raw data points to calculate percentile statistics. If you
  publish data using a statistic set instead, you can only retrieve
  percentile statistics for this data if one of the following conditions is
  true:

  <ul> <li> The SampleCount value of the statistic set is 1.

  </li> <li> The Min and the Max values of the statistic set are equal.

  </li> </ul> Amazon CloudWatch retains metric data as follows:

  <ul> <li> Data points with a period of less than 60 seconds are available
  for 3 hours. These data points are high-resolution metrics and are
  available only for custom metrics that have been defined with a
  `StorageResolution` of 1.

  </li> <li> Data points with a period of 60 seconds (1-minute) are available
  for 15 days.

  </li> <li> Data points with a period of 300 seconds (5-minute) are
  available for 63 days.

  </li> <li> Data points with a period of 3600 seconds (1 hour) are available
  for 455 days (15 months).

  </li> </ul> Data points that are initially published with a shorter period
  are aggregated together for long-term storage. For example, if you collect
  data using a period of 1 minute, the data remains available for 15 days
  with 1-minute resolution. After 15 days, this data is still available, but
  is aggregated and retrievable only with a resolution of 5 minutes. After 63
  days, the data is further aggregated and is available with a resolution of
  1 hour.

  CloudWatch started retaining 5-minute and 1-hour metric data as of July 9,
  2016.

  For information about metrics and dimensions supported by AWS services, see
  the [Amazon CloudWatch Metrics and Dimensions
  Reference](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html)
  in the *Amazon CloudWatch User Guide*.
  """
  def get_metric_statistics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetMetricStatistics",
      method:           :post,
      input_shape:      "GetMetricStatisticsInput",
      output_shape:     "GetMetricStatisticsOutput",
      output_wrapper:   "GetMetricStatisticsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of the dashboards for your account. If you include
  `DashboardNamePrefix`, only those dashboards with names starting with the
  prefix are listed. Otherwise, all dashboards in your account are listed.
  """
  def list_dashboards(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDashboards",
      method:           :post,
      input_shape:      "ListDashboardsInput",
      output_shape:     "ListDashboardsOutput",
      output_wrapper:   "ListDashboardsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  List the specified metrics. You can use the returned metrics with
  `GetMetricStatistics` to obtain statistical data.

  Up to 500 results are returned for any one call. To retrieve additional
  results, use the returned token with subsequent calls.

  After you create a metric, allow up to fifteen minutes before the metric
  appears. Statistics about the metric, however, are available sooner using
  `GetMetricStatistics`.
  """
  def list_metrics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListMetrics",
      method:           :post,
      input_shape:      "ListMetricsInput",
      output_shape:     "ListMetricsOutput",
      output_wrapper:   "ListMetricsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a dashboard if it does not already exist, or updates an existing
  dashboard. If you update a dashboard, the entire contents are replaced with
  what you specify here.

  You can have up to 500 dashboards per account. All dashboards in your
  account are global, not region-specific.

  A simple way to create a dashboard using `PutDashboard` is to copy an
  existing dashboard. To copy an existing dashboard using the console, you
  can load the dashboard and then use the View/edit source command in the
  Actions menu to display the JSON block for that dashboard. Another way to
  copy a dashboard is to use `GetDashboard`, and then use the data returned
  within `DashboardBody` as the template for the new dashboard when you call
  `PutDashboard`.

  When you create a dashboard with `PutDashboard`, a good practice is to add
  a text widget at the top of the dashboard with a message that the dashboard
  was created by script and should not be changed in the console. This
  message could also point console users to the location of the
  `DashboardBody` script or the CloudFormation template used to create the
  dashboard.
  """
  def put_dashboard(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutDashboard",
      method:           :post,
      input_shape:      "PutDashboardInput",
      output_shape:     "PutDashboardOutput",
      output_wrapper:   "PutDashboardResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates or updates an alarm and associates it with the specified metric.
  Optionally, this operation can associate one or more Amazon SNS resources
  with the alarm.

  When this operation creates an alarm, the alarm state is immediately set to
  `INSUFFICIENT_DATA`. The alarm is evaluated and its state is set
  appropriately. Any actions associated with the state are then executed.

  When you update an existing alarm, its state is left unchanged, but the
  update completely overwrites the previous configuration of the alarm.

  If you are an IAM user, you must have Amazon EC2 permissions for some
  operations:

  <ul> <li> `ec2:DescribeInstanceStatus` and `ec2:DescribeInstances` for all
  alarms on EC2 instance status metrics

  </li> <li> `ec2:StopInstances` for alarms with stop actions

  </li> <li> `ec2:TerminateInstances` for alarms with terminate actions

  </li> <li> `ec2:DescribeInstanceRecoveryAttribute` and
  `ec2:RecoverInstances` for alarms with recover actions

  </li> </ul> If you have read/write permissions for Amazon CloudWatch but
  not for Amazon EC2, you can still create an alarm, but the stop or
  terminate actions are not performed. However, if you are later granted the
  required permissions, the alarm actions that you created earlier are
  performed.

  If you are using an IAM role (for example, an EC2 instance profile), you
  cannot stop or terminate the instance using alarm actions. However, you can
  still see the alarm state and perform any other actions such as Amazon SNS
  notifications or Auto Scaling policies.

  If you are using temporary security credentials granted using AWS STS, you
  cannot stop or terminate an EC2 instance using alarm actions.

  You must create at least one stop, terminate, or reboot alarm using either
  the Amazon EC2 or CloudWatch consoles to create the **EC2ActionsAccess**
  IAM role. After this IAM role is created, you can create stop, terminate,
  or reboot alarms using a command-line interface or API.
  """
  def put_metric_alarm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutMetricAlarm",
      method:           :post,
      input_shape:      "PutMetricAlarmInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Publishes metric data points to Amazon CloudWatch. CloudWatch associates
  the data points with the specified metric. If the specified metric does not
  exist, CloudWatch creates the metric. When CloudWatch creates a metric, it
  can take up to fifteen minutes for the metric to appear in calls to
  `ListMetrics`.

  Each `PutMetricData` request is limited to 40 KB in size for HTTP POST
  requests.

  Although the `Value` parameter accepts numbers of type `Double`, CloudWatch
  rejects values that are either too small or too large. Values must be in
  the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360
  (Base 2). In addition, special values (for example, NaN, +Infinity,
  -Infinity) are not supported.

  You can use up to 10 dimensions per metric to further clarify what data the
  metric collects. For more information about specifying dimensions, see
  [Publishing
  Metrics](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)
  in the *Amazon CloudWatch User Guide*.

  Data points with time stamps from 24 hours ago or longer can take at least
  48 hours to become available for `GetMetricStatistics` from the time they
  are submitted.

  CloudWatch needs raw data points to calculate percentile statistics. If you
  publish data using a statistic set instead, you can only retrieve
  percentile statistics for this data if one of the following conditions is
  true:

  <ul> <li> The SampleCount value of the statistic set is 1

  </li> <li> The Min and the Max values of the statistic set are equal

  </li> </ul>
  """
  def put_metric_data(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutMetricData",
      method:           :post,
      input_shape:      "PutMetricDataInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Temporarily sets the state of an alarm for testing purposes. When the
  updated state differs from the previous value, the action configured for
  the appropriate state is invoked. For example, if your alarm is configured
  to send an Amazon SNS message when an alarm is triggered, temporarily
  changing the alarm state to `ALARM` sends an SNS message. The alarm returns
  to its actual state (often within seconds). Because the alarm state change
  happens quickly, it is typically only visible in the alarm's **History**
  tab in the Amazon CloudWatch console or through `DescribeAlarmHistory`.
  """
  def set_alarm_state(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetAlarmState",
      method:           :post,
      input_shape:      "SetAlarmStateInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "monitoring",
      endpoint_prefix:  "monitoring",
      type:             :xml,
      version:          "2010-08-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"Statistic" => %{"enum" => ["SampleCount", "Average", "Sum", "Minimum", "Maximum"], "type" => "string"}, "HistoryItemType" => %{"enum" => ["ConfigurationUpdate", "StateUpdate", "Action"], "type" => "string"}, "PutMetricDataInput" => %{"members" => %{"MetricData" => %{"shape" => "MetricData"}, "Namespace" => %{"shape" => "Namespace"}}, "required" => ["Namespace", "MetricData"], "type" => "structure"}, "Size" => %{"type" => "long"}, "DimensionValue" => %{"max" => 255, "min" => 1, "type" => "string"}, "StatisticSet" => %{"members" => %{"Maximum" => %{"shape" => "DatapointValue"}, "Minimum" => %{"shape" => "DatapointValue"}, "SampleCount" => %{"shape" => "DatapointValue"}, "Sum" => %{"shape" => "DatapointValue"}}, "required" => ["SampleCount", "Sum", "Minimum", "Maximum"], "type" => "structure"}, "ResourceNotFound" => %{"error" => %{"code" => "ResourceNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Dimensions" => %{"max" => 10, "member" => %{"shape" => "Dimension"}, "type" => "list"}, "DimensionName" => %{"max" => 255, "min" => 1, "type" => "string"}, "DimensionFilters" => %{"max" => 10, "member" => %{"shape" => "DimensionFilter"}, "type" => "list"}, "ErrorMessage" => %{"max" => 255, "min" => 1, "type" => "string"}, "StandardUnit" => %{"enum" => ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"], "type" => "string"}, "ListDashboardsOutput" => %{"members" => %{"DashboardEntries" => %{"shape" => "DashboardEntries"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "LastModified" => %{"type" => "timestamp"}, "DeleteDashboardsOutput" => %{"members" => %{}, "type" => "structure"}, "DisableAlarmActionsInput" => %{"members" => %{"AlarmNames" => %{"shape" => "AlarmNames"}}, "required" => ["AlarmNames"], "type" => "structure"}, "InternalServiceFault" => %{"error" => %{"code" => "InternalServiceError", "httpStatusCode" => 500}, "exception" => true, "members" => %{"Message" => %{"shape" => "FaultDescription"}}, "type" => "structure", "xmlOrder" => ["Message"]}, "InvalidParameterValueException" => %{"error" => %{"code" => "InvalidParameterValue", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "AwsQueryErrorMessage"}}, "type" => "structure"}, "PutDashboardOutput" => %{"members" => %{"DashboardValidationMessages" => %{"shape" => "DashboardValidationMessages"}}, "type" => "structure"}, "DashboardNamePrefix" => %{"type" => "string"}, "InvalidNextToken" => %{"error" => %{"code" => "InvalidNextToken", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListMetricsInput" => %{"members" => %{"Dimensions" => %{"shape" => "DimensionFilters"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "Namespace"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "AlarmArn" => %{"max" => 1600, "min" => 1, "type" => "string"}, "Statistics" => %{"max" => 5, "member" => %{"shape" => "Statistic"}, "min" => 1, "type" => "list"}, "StateReasonData" => %{"max" => 4000, "min" => 0, "type" => "string"}, "DeleteDashboardsInput" => %{"members" => %{"DashboardNames" => %{"shape" => "DashboardNames"}}, "type" => "structure"}, "ActionsEnabled" => %{"type" => "boolean"}, "Datapoint" => %{"members" => %{"Average" => %{"shape" => "DatapointValue"}, "ExtendedStatistics" => %{"shape" => "DatapointValueMap"}, "Maximum" => %{"shape" => "DatapointValue"}, "Minimum" => %{"shape" => "DatapointValue"}, "SampleCount" => %{"shape" => "DatapointValue"}, "Sum" => %{"shape" => "DatapointValue"}, "Timestamp" => %{"shape" => "Timestamp"}, "Unit" => %{"shape" => "StandardUnit"}}, "type" => "structure", "xmlOrder" => ["Timestamp", "SampleCount", "Average", "Sum", "Minimum", "Maximum", "Unit", "ExtendedStatistics"]}, "DashboardInvalidInputError" => %{"error" => %{"code" => "InvalidParameterInput", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"dashboardValidationMessages" => %{"shape" => "DashboardValidationMessages"}, "message" => %{"shape" => "DashboardErrorMessage"}}, "type" => "structure"}, "DescribeAlarmsInput" => %{"members" => %{"ActionPrefix" => %{"shape" => "ActionPrefix"}, "AlarmNamePrefix" => %{"shape" => "AlarmNamePrefix"}, "AlarmNames" => %{"shape" => "AlarmNames"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "NextToken"}, "StateValue" => %{"shape" => "StateValue"}}, "type" => "structure"}, "Message" => %{"type" => "string"}, "ListDashboardsInput" => %{"members" => %{"DashboardNamePrefix" => %{"shape" => "DashboardNamePrefix"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "StateReason" => %{"max" => 1023, "min" => 0, "type" => "string"}, "PutMetricAlarmInput" => %{"members" => %{"ActionsEnabled" => %{"shape" => "ActionsEnabled"}, "AlarmActions" => %{"shape" => "ResourceList"}, "AlarmDescription" => %{"shape" => "AlarmDescription"}, "AlarmName" => %{"shape" => "AlarmName"}, "ComparisonOperator" => %{"shape" => "ComparisonOperator"}, "Dimensions" => %{"shape" => "Dimensions"}, "EvaluateLowSampleCountPercentile" => %{"shape" => "EvaluateLowSampleCountPercentile"}, "EvaluationPeriods" => %{"shape" => "EvaluationPeriods"}, "ExtendedStatistic" => %{"shape" => "ExtendedStatistic"}, "InsufficientDataActions" => %{"shape" => "ResourceList"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "Namespace"}, "OKActions" => %{"shape" => "ResourceList"}, "Period" => %{"shape" => "Period"}, "Statistic" => %{"shape" => "Statistic"}, "Threshold" => %{"shape" => "Threshold"}, "TreatMissingData" => %{"shape" => "TreatMissingData"}, "Unit" => %{"shape" => "StandardUnit"}}, "required" => ["AlarmName", "MetricName", "Namespace", "Period", "EvaluationPeriods", "Threshold", "ComparisonOperator"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "MetricDatum" => %{"members" => %{"Dimensions" => %{"shape" => "Dimensions"}, "MetricName" => %{"shape" => "MetricName"}, "StatisticValues" => %{"shape" => "StatisticSet"}, "StorageResolution" => %{"shape" => "StorageResolution"}, "Timestamp" => %{"shape" => "Timestamp"}, "Unit" => %{"shape" => "StandardUnit"}, "Value" => %{"shape" => "DatapointValue"}}, "required" => ["MetricName"], "type" => "structure"}, "LimitExceededFault" => %{"error" => %{"code" => "LimitExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DashboardNames" => %{"member" => %{"shape" => "DashboardName"}, "type" => "list"}, "DescribeAlarmHistoryOutput" => %{"members" => %{"AlarmHistoryItems" => %{"shape" => "AlarmHistoryItems"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "MetricLabel" => %{"type" => "string"}, "StateValue" => %{"enum" => ["OK", "ALARM", "INSUFFICIENT_DATA"], "type" => "string"}, "MetricName" => %{"max" => 255, "min" => 1, "type" => "string"}, "Metrics" => %{"member" => %{"shape" => "Metric"}, "type" => "list"}, "MaxRecords" => %{"max" => 100, "min" => 1, "type" => "integer"}, "MetricData" => %{"member" => %{"shape" => "MetricDatum"}, "type" => "list"}, "DescribeAlarmsOutput" => %{"members" => %{"MetricAlarms" => %{"shape" => "MetricAlarms"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "HistorySummary" => %{"max" => 255, "min" => 1, "type" => "string"}, "ExtendedStatistics" => %{"max" => 10, "member" => %{"shape" => "ExtendedStatistic"}, "min" => 1, "type" => "list"}, "AlarmNamePrefix" => %{"max" => 255, "min" => 1, "type" => "string"}, "Dimension" => %{"members" => %{"Name" => %{"shape" => "DimensionName"}, "Value" => %{"shape" => "DimensionValue"}}, "required" => ["Name", "Value"], "type" => "structure", "xmlOrder" => ["Name", "Value"]}, "DashboardValidationMessages" => %{"member" => %{"shape" => "DashboardValidationMessage"}, "type" => "list"}, "DashboardEntries" => %{"member" => %{"shape" => "DashboardEntry"}, "type" => "list"}, "MissingRequiredParameterException" => %{"error" => %{"code" => "MissingParameter", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "AwsQueryErrorMessage"}}, "type" => "structure"}, "InvalidFormatFault" => %{"error" => %{"code" => "InvalidFormat", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "FaultDescription" => %{"type" => "string"}, "DescribeAlarmsForMetricInput" => %{"members" => %{"Dimensions" => %{"shape" => "Dimensions"}, "ExtendedStatistic" => %{"shape" => "ExtendedStatistic"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "Namespace"}, "Period" => %{"shape" => "Period"}, "Statistic" => %{"shape" => "Statistic"}, "Unit" => %{"shape" => "StandardUnit"}}, "required" => ["MetricName", "Namespace"], "type" => "structure"}, "ComparisonOperator" => %{"enum" => ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"], "type" => "string"}, "EnableAlarmActionsInput" => %{"members" => %{"AlarmNames" => %{"shape" => "AlarmNames"}}, "required" => ["AlarmNames"], "type" => "structure"}, "Datapoints" => %{"member" => %{"shape" => "Datapoint"}, "type" => "list"}, "Threshold" => %{"type" => "double"}, "StorageResolution" => %{"min" => 1, "type" => "integer"}, "EvaluateLowSampleCountPercentile" => %{"max" => 255, "min" => 1, "type" => "string"}, "DeleteAlarmsInput" => %{"members" => %{"AlarmNames" => %{"shape" => "AlarmNames"}}, "required" => ["AlarmNames"], "type" => "structure"}, "AwsQueryErrorMessage" => %{"type" => "string"}, "MetricAlarm" => %{"members" => %{"ActionsEnabled" => %{"shape" => "ActionsEnabled"}, "AlarmActions" => %{"shape" => "ResourceList"}, "AlarmArn" => %{"shape" => "AlarmArn"}, "AlarmConfigurationUpdatedTimestamp" => %{"shape" => "Timestamp"}, "AlarmDescription" => %{"shape" => "AlarmDescription"}, "AlarmName" => %{"shape" => "AlarmName"}, "ComparisonOperator" => %{"shape" => "ComparisonOperator"}, "Dimensions" => %{"shape" => "Dimensions"}, "EvaluateLowSampleCountPercentile" => %{"shape" => "EvaluateLowSampleCountPercentile"}, "EvaluationPeriods" => %{"shape" => "EvaluationPeriods"}, "ExtendedStatistic" => %{"shape" => "ExtendedStatistic"}, "InsufficientDataActions" => %{"shape" => "ResourceList"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "Namespace"}, "OKActions" => %{"shape" => "ResourceList"}, "Period" => %{"shape" => "Period"}, "StateReason" => %{"shape" => "StateReason"}, "StateReasonData" => %{"shape" => "StateReasonData"}, "StateUpdatedTimestamp" => %{"shape" => "Timestamp"}, "StateValue" => %{"shape" => "StateValue"}, "Statistic" => %{"shape" => "Statistic"}, "Threshold" => %{"shape" => "Threshold"}, "TreatMissingData" => %{"shape" => "TreatMissingData"}, "Unit" => %{"shape" => "StandardUnit"}}, "type" => "structure", "xmlOrder" => ["AlarmName", "AlarmArn", "AlarmDescription", "AlarmConfigurationUpdatedTimestamp", "ActionsEnabled", "OKActions", "AlarmActions", "InsufficientDataActions", "StateValue", "StateReason", "StateReasonData", "StateUpdatedTimestamp", "MetricName", "Namespace", "Statistic", "Dimensions", "Period", "Unit", "EvaluationPeriods", "Threshold", "ComparisonOperator", "ExtendedStatistic", "TreatMissingData", "EvaluateLowSampleCountPercentile"]}, "DashboardName" => %{"type" => "string"}, "Period" => %{"min" => 1, "type" => "integer"}, "ExtendedStatistic" => %{"pattern" => "p(\\d{1,2}(\\.\\d{0,2})?|100)", "type" => "string"}, "Metric" => %{"members" => %{"Dimensions" => %{"shape" => "Dimensions"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "Namespace"}}, "type" => "structure", "xmlOrder" => ["Namespace", "MetricName", "Dimensions"]}, "DashboardEntry" => %{"members" => %{"DashboardArn" => %{"shape" => "DashboardArn"}, "DashboardName" => %{"shape" => "DashboardName"}, "LastModified" => %{"shape" => "LastModified"}, "Size" => %{"shape" => "Size"}}, "type" => "structure"}, "InvalidParameterCombinationException" => %{"error" => %{"code" => "InvalidParameterCombination", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "AwsQueryErrorMessage"}}, "type" => "structure"}, "ActionPrefix" => %{"max" => 1024, "min" => 1, "type" => "string"}, "HistoryData" => %{"max" => 4095, "min" => 1, "type" => "string"}, "SetAlarmStateInput" => %{"members" => %{"AlarmName" => %{"shape" => "AlarmName"}, "StateReason" => %{"shape" => "StateReason"}, "StateReasonData" => %{"shape" => "StateReasonData"}, "StateValue" => %{"shape" => "StateValue"}}, "required" => ["AlarmName", "StateValue", "StateReason"], "type" => "structure"}, "AlarmName" => %{"max" => 255, "min" => 1, "type" => "string"}, "EvaluationPeriods" => %{"min" => 1, "type" => "integer"}, "AlarmHistoryItems" => %{"member" => %{"shape" => "AlarmHistoryItem"}, "type" => "list"}, "GetDashboardOutput" => %{"members" => %{"DashboardArn" => %{"shape" => "DashboardArn"}, "DashboardBody" => %{"shape" => "DashboardBody"}, "DashboardName" => %{"shape" => "DashboardName"}}, "type" => "structure"}, "DimensionFilter" => %{"members" => %{"Name" => %{"shape" => "DimensionName"}, "Value" => %{"shape" => "DimensionValue"}}, "required" => ["Name"], "type" => "structure"}, "MetricAlarms" => %{"member" => %{"shape" => "MetricAlarm"}, "type" => "list"}, "DashboardValidationMessage" => %{"members" => %{"DataPath" => %{"shape" => "DataPath"}, "Message" => %{"shape" => "Message"}}, "type" => "structure"}, "DashboardErrorMessage" => %{"type" => "string"}, "DashboardArn" => %{"type" => "string"}, "GetMetricStatisticsOutput" => %{"members" => %{"Datapoints" => %{"shape" => "Datapoints"}, "Label" => %{"shape" => "MetricLabel"}}, "type" => "structure"}, "Namespace" => %{"max" => 255, "min" => 1, "pattern" => "[^:].*", "type" => "string"}, "ListMetricsOutput" => %{"members" => %{"Metrics" => %{"shape" => "Metrics"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure", "xmlOrder" => ["Metrics", "NextToken"]}, "DataPath" => %{"type" => "string"}, "DatapointValueMap" => %{"key" => %{"shape" => "ExtendedStatistic"}, "type" => "map", "value" => %{"shape" => "DatapointValue"}}, "AlarmNames" => %{"max" => 100, "member" => %{"shape" => "AlarmName"}, "type" => "list"}, "DescribeAlarmsForMetricOutput" => %{"members" => %{"MetricAlarms" => %{"shape" => "MetricAlarms"}}, "type" => "structure"}, "GetMetricStatisticsInput" => %{"members" => %{"Dimensions" => %{"shape" => "Dimensions"}, "EndTime" => %{"shape" => "Timestamp"}, "ExtendedStatistics" => %{"shape" => "ExtendedStatistics"}, "MetricName" => %{"shape" => "MetricName"}, "Namespace" => %{"shape" => "Namespace"}, "Period" => %{"shape" => "Period"}, "StartTime" => %{"shape" => "Timestamp"}, "Statistics" => %{"shape" => "Statistics"}, "Unit" => %{"shape" => "StandardUnit"}}, "required" => ["Namespace", "MetricName", "StartTime", "EndTime", "Period"], "type" => "structure"}, "ResourceName" => %{"max" => 1024, "min" => 1, "type" => "string"}, "AlarmHistoryItem" => %{"members" => %{"AlarmName" => %{"shape" => "AlarmName"}, "HistoryData" => %{"shape" => "HistoryData"}, "HistoryItemType" => %{"shape" => "HistoryItemType"}, "HistorySummary" => %{"shape" => "HistorySummary"}, "Timestamp" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "DescribeAlarmHistoryInput" => %{"members" => %{"AlarmName" => %{"shape" => "AlarmName"}, "EndDate" => %{"shape" => "Timestamp"}, "HistoryItemType" => %{"shape" => "HistoryItemType"}, "MaxRecords" => %{"shape" => "MaxRecords"}, "NextToken" => %{"shape" => "NextToken"}, "StartDate" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "PutDashboardInput" => %{"members" => %{"DashboardBody" => %{"shape" => "DashboardBody"}, "DashboardName" => %{"shape" => "DashboardName"}}, "type" => "structure"}, "AlarmDescription" => %{"max" => 1024, "min" => 0, "type" => "string"}, "NextToken" => %{"max" => 1024, "min" => 0, "type" => "string"}, "DashboardNotFoundError" => %{"error" => %{"code" => "ResourceNotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "DashboardErrorMessage"}}, "type" => "structure"}, "GetDashboardInput" => %{"members" => %{"DashboardName" => %{"shape" => "DashboardName"}}, "type" => "structure"}, "DatapointValue" => %{"type" => "double"}, "TreatMissingData" => %{"max" => 255, "min" => 1, "type" => "string"}, "ResourceList" => %{"max" => 5, "member" => %{"shape" => "ResourceName"}, "type" => "list"}, "DashboardBody" => %{"type" => "string"}}
  end
end