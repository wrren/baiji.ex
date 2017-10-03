defmodule Baiji.XRay do
  @moduledoc """
  AWS X-Ray provides APIs for managing debug traces and retrieving service
  maps and other data created by processing those traces.
  """

  @doc """
  Retrieves a list of traces specified by ID. Each trace is a collection of
  segment documents that originates from a single request. Use
  `GetTraceSummaries` to get a list of trace IDs.
  """
  def batch_get_traces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/Traces",
      input:            input,
      options:          options,
      action:           "BatchGetTraces",
      method:           :post,
      input_shape:      "BatchGetTracesRequest",
      output_shape:     "BatchGetTracesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a document that describes services that process incoming
  requests, and downstream services that they call as a result. Root services
  process incoming requests and make calls to downstream services. Root
  services are applications that use the AWS X-Ray SDK. Downstream services
  can be other applications, AWS resources, HTTP web APIs, or SQL databases.
  """
  def get_service_graph(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/ServiceGraph",
      input:            input,
      options:          options,
      action:           "GetServiceGraph",
      method:           :post,
      input_shape:      "GetServiceGraphRequest",
      output_shape:     "GetServiceGraphResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a service graph for one or more specific trace IDs.
  """
  def get_trace_graph(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/TraceGraph",
      input:            input,
      options:          options,
      action:           "GetTraceGraph",
      method:           :post,
      input_shape:      "GetTraceGraphRequest",
      output_shape:     "GetTraceGraphResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves IDs and metadata for traces available for a specified time frame
  using an optional filter. To get the full traces, pass the trace IDs to
  `BatchGetTraces`.

  A filter expression can target traced requests that hit specific service
  nodes or edges, have errors, or come from a known user. For example, the
  following filter expression targets traces that pass through
  `api.example.com`:

  `service("api.example.com")`

  This filter expression finds traces that have an annotation named `account`
  with the value `12345`:

  `annotation.account = "12345"`

  For a full list of indexed fields and keywords that you can use in filter
  expressions, see [Using Filter
  Expressions](http://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html)
  in the *AWS X-Ray Developer Guide*.
  """
  def get_trace_summaries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/TraceSummaries",
      input:            input,
      options:          options,
      action:           "GetTraceSummaries",
      method:           :post,
      input_shape:      "GetTraceSummariesRequest",
      output_shape:     "GetTraceSummariesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used by the AWS X-Ray daemon to upload telemetry.
  """
  def put_telemetry_records(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/TelemetryRecords",
      input:            input,
      options:          options,
      action:           "PutTelemetryRecords",
      method:           :post,
      input_shape:      "PutTelemetryRecordsRequest",
      output_shape:     "PutTelemetryRecordsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment
  documents and sends them to the X-Ray daemon, which uploads them in
  batches. A segment document can be a completed segment, an in-progress
  segment, or an array of subsegments.

  Segments must include the following fields. For the full segment document
  schema, see [AWS X-Ray Segment
  Documents](http://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html)
  in the *AWS X-Ray Developer Guide*.

  <p class="title"> **Required Segment Document Fields**

  <ul> <li> `name` - The name of the service that handled the request.

  </li> <li> `id` - A 64-bit identifier for the segment, unique among
  segments in the same trace, in 16 hexadecimal digits.

  </li> <li> `trace_id` - A unique identifier that connects all segments and
  subsegments originating from a single client request.

  </li> <li> `start_time` - Time the segment or subsegment was created, in
  floating point seconds in epoch time, accurate to milliseconds. For
  example, `1480615200.010` or `1.480615200010E9`.

  </li> <li> `end_time` - Time the segment or subsegment was closed. For
  example, `1480615200.090` or `1.480615200090E9`. Specify either an
  `end_time` or `in_progress`.

  </li> <li> `in_progress` - Set to `true` instead of specifying an
  `end_time` to record that a segment has been started, but is not complete.
  Send an in progress segment when your application receives a request that
  will take a long time to serve, to trace the fact that the request was
  received. When the response is sent, send the complete segment to overwrite
  the in-progress segment.

  </li> </ul> A `trace_id` consists of three numbers separated by hyphens.
  For example, 1-58406520-a006649127e371903a2de979. This includes:

  <p class="title"> **Trace ID Format**

  <ul> <li> The version number, i.e. `1`.

  </li> <li> The time of the original request, in Unix epoch time, in 8
  hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch
  time is `1480615200` seconds, or `58406520` in hexadecimal.

  </li> <li> A 96-bit identifier for the trace, globally unique, in 24
  hexadecimal digits.

  </li> </ul>
  """
  def put_trace_segments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/TraceSegments",
      input:            input,
      options:          options,
      action:           "PutTraceSegments",
      method:           :post,
      input_shape:      "PutTraceSegmentsRequest",
      output_shape:     "PutTraceSegmentsResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "xray",
      target_prefix:    nil,
      endpoint_prefix:  "xray",
      type:             :rest_json,
      version:          "2016-04-12",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"PutTelemetryRecordsResult" => %{"members" => %{}, "type" => "structure"}, "ServiceIds" => %{"member" => %{"shape" => "ServiceId"}, "type" => "list"}, "ValuesWithServiceIds" => %{"member" => %{"shape" => "ValueWithServiceIds"}, "type" => "list"}, "TraceSegmentDocument" => %{"type" => "string"}, "String" => %{"type" => "string"}, "ErrorStatistics" => %{"members" => %{"OtherCount" => %{"shape" => "NullableLong"}, "ThrottleCount" => %{"shape" => "NullableLong"}, "TotalCount" => %{"shape" => "NullableLong"}}, "type" => "structure"}, "UnprocessedTraceIdList" => %{"member" => %{"shape" => "TraceId"}, "type" => "list"}, "Service" => %{"members" => %{"AccountId" => %{"shape" => "String"}, "DurationHistogram" => %{"shape" => "Histogram"}, "Edges" => %{"shape" => "EdgeList"}, "EndTime" => %{"shape" => "Timestamp"}, "Name" => %{"shape" => "String"}, "Names" => %{"shape" => "ServiceNames"}, "ReferenceId" => %{"shape" => "NullableInteger"}, "ResponseTimeHistogram" => %{"shape" => "Histogram"}, "Root" => %{"shape" => "NullableBoolean"}, "StartTime" => %{"shape" => "Timestamp"}, "State" => %{"shape" => "String"}, "SummaryStatistics" => %{"shape" => "ServiceStatistics"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "ServiceStatistics" => %{"members" => %{"ErrorStatistics" => %{"shape" => "ErrorStatistics"}, "FaultStatistics" => %{"shape" => "FaultStatistics"}, "OkCount" => %{"shape" => "NullableLong"}, "TotalCount" => %{"shape" => "NullableLong"}, "TotalResponseTime" => %{"shape" => "NullableDouble"}}, "type" => "structure"}, "TraceIdList" => %{"member" => %{"shape" => "TraceId"}, "type" => "list"}, "FaultStatistics" => %{"members" => %{"OtherCount" => %{"shape" => "NullableLong"}, "TotalCount" => %{"shape" => "NullableLong"}}, "type" => "structure"}, "BackendConnectionErrors" => %{"members" => %{"ConnectionRefusedCount" => %{"shape" => "NullableInteger"}, "HTTPCode4XXCount" => %{"shape" => "NullableInteger"}, "HTTPCode5XXCount" => %{"shape" => "NullableInteger"}, "OtherCount" => %{"shape" => "NullableInteger"}, "TimeoutCount" => %{"shape" => "NullableInteger"}, "UnknownHostCount" => %{"shape" => "NullableInteger"}}, "type" => "structure"}, "SegmentList" => %{"member" => %{"shape" => "Segment"}, "type" => "list"}, "TraceSegmentDocumentList" => %{"member" => %{"shape" => "TraceSegmentDocument"}, "type" => "list"}, "Trace" => %{"members" => %{"Duration" => %{"shape" => "NullableDouble"}, "Id" => %{"shape" => "TraceId"}, "Segments" => %{"shape" => "SegmentList"}}, "type" => "structure"}, "TelemetryRecord" => %{"members" => %{"BackendConnectionErrors" => %{"shape" => "BackendConnectionErrors"}, "SegmentsReceivedCount" => %{"shape" => "NullableInteger"}, "SegmentsRejectedCount" => %{"shape" => "NullableInteger"}, "SegmentsSentCount" => %{"shape" => "NullableInteger"}, "SegmentsSpilloverCount" => %{"shape" => "NullableInteger"}, "Timestamp" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "HistogramEntry" => %{"members" => %{"Count" => %{"shape" => "Integer"}, "Value" => %{"shape" => "Double"}}, "type" => "structure"}, "NullableInteger" => %{"type" => "integer"}, "GetTraceGraphResult" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "Services" => %{"shape" => "ServiceList"}}, "type" => "structure"}, "TraceSummary" => %{"members" => %{"Annotations" => %{"shape" => "Annotations"}, "Duration" => %{"shape" => "NullableDouble"}, "HasError" => %{"shape" => "NullableBoolean"}, "HasFault" => %{"shape" => "NullableBoolean"}, "HasThrottle" => %{"shape" => "NullableBoolean"}, "Http" => %{"shape" => "Http"}, "Id" => %{"shape" => "TraceId"}, "IsPartial" => %{"shape" => "NullableBoolean"}, "ResponseTime" => %{"shape" => "NullableDouble"}, "ServiceIds" => %{"shape" => "ServiceIds"}, "Users" => %{"shape" => "TraceUsers"}}, "type" => "structure"}, "EdgeStatistics" => %{"members" => %{"ErrorStatistics" => %{"shape" => "ErrorStatistics"}, "FaultStatistics" => %{"shape" => "FaultStatistics"}, "OkCount" => %{"shape" => "NullableLong"}, "TotalCount" => %{"shape" => "NullableLong"}, "TotalResponseTime" => %{"shape" => "NullableDouble"}}, "type" => "structure"}, "FilterExpression" => %{"max" => 2000, "min" => 0, "type" => "string"}, "SegmentDocument" => %{"min" => 1, "type" => "string"}, "Histogram" => %{"member" => %{"shape" => "HistogramEntry"}, "type" => "list"}, "AnnotationValue" => %{"members" => %{"BooleanValue" => %{"shape" => "NullableBoolean"}, "NumberValue" => %{"shape" => "NullableDouble"}, "StringValue" => %{"shape" => "String"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "SegmentId" => %{"max" => 16, "min" => 16, "type" => "string"}, "UnprocessedTraceSegment" => %{"members" => %{"ErrorCode" => %{"shape" => "String"}, "Id" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}, "TraceUsers" => %{"member" => %{"shape" => "TraceUser"}, "type" => "list"}, "Alias" => %{"members" => %{"Name" => %{"shape" => "String"}, "Names" => %{"shape" => "AliasNames"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "GetServiceGraphRequest" => %{"members" => %{"EndTime" => %{"shape" => "Timestamp"}, "NextToken" => %{"shape" => "String"}, "StartTime" => %{"shape" => "Timestamp"}}, "required" => ["StartTime", "EndTime"], "type" => "structure"}, "NullableBoolean" => %{"type" => "boolean"}, "ValueWithServiceIds" => %{"members" => %{"AnnotationValue" => %{"shape" => "AnnotationValue"}, "ServiceIds" => %{"shape" => "ServiceIds"}}, "type" => "structure"}, "GetTraceSummariesRequest" => %{"members" => %{"EndTime" => %{"shape" => "Timestamp"}, "FilterExpression" => %{"shape" => "FilterExpression"}, "NextToken" => %{"shape" => "String"}, "Sampling" => %{"shape" => "NullableBoolean"}, "StartTime" => %{"shape" => "Timestamp"}}, "required" => ["StartTime", "EndTime"], "type" => "structure"}, "Double" => %{"type" => "double"}, "NullableLong" => %{"type" => "long"}, "ServiceId" => %{"members" => %{"AccountId" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Names" => %{"shape" => "ServiceNames"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "PutTelemetryRecordsRequest" => %{"members" => %{"EC2InstanceId" => %{"shape" => "String"}, "Hostname" => %{"shape" => "String"}, "ResourceARN" => %{"shape" => "String"}, "TelemetryRecords" => %{"shape" => "TelemetryRecordList"}}, "required" => ["TelemetryRecords"], "type" => "structure"}, "InvalidRequestException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AnnotationKey" => %{"type" => "string"}, "ServiceList" => %{"member" => %{"shape" => "Service"}, "type" => "list"}, "BatchGetTracesResult" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "Traces" => %{"shape" => "TraceList"}, "UnprocessedTraceIds" => %{"shape" => "UnprocessedTraceIdList"}}, "type" => "structure"}, "TraceList" => %{"member" => %{"shape" => "Trace"}, "type" => "list"}, "GetTraceGraphRequest" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "TraceIds" => %{"shape" => "TraceIdList"}}, "required" => ["TraceIds"], "type" => "structure"}, "PutTraceSegmentsResult" => %{"members" => %{"UnprocessedTraceSegments" => %{"shape" => "UnprocessedTraceSegmentList"}}, "type" => "structure"}, "Segment" => %{"members" => %{"Document" => %{"shape" => "SegmentDocument"}, "Id" => %{"shape" => "SegmentId"}}, "type" => "structure"}, "EdgeList" => %{"member" => %{"shape" => "Edge"}, "type" => "list"}, "ThrottledException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{}, "type" => "structure"}, "Edge" => %{"members" => %{"Aliases" => %{"shape" => "AliasList"}, "EndTime" => %{"shape" => "Timestamp"}, "ReferenceId" => %{"shape" => "NullableInteger"}, "ResponseTimeHistogram" => %{"shape" => "Histogram"}, "StartTime" => %{"shape" => "Timestamp"}, "SummaryStatistics" => %{"shape" => "EdgeStatistics"}}, "type" => "structure"}, "TraceUser" => %{"members" => %{"ServiceIds" => %{"shape" => "ServiceIds"}, "UserName" => %{"shape" => "String"}}, "type" => "structure"}, "Annotations" => %{"key" => %{"shape" => "AnnotationKey"}, "type" => "map", "value" => %{"shape" => "ValuesWithServiceIds"}}, "AliasList" => %{"member" => %{"shape" => "Alias"}, "type" => "list"}, "NullableDouble" => %{"type" => "double"}, "TraceSummaryList" => %{"member" => %{"shape" => "TraceSummary"}, "type" => "list"}, "Http" => %{"members" => %{"ClientIp" => %{"shape" => "String"}, "HttpMethod" => %{"shape" => "String"}, "HttpStatus" => %{"shape" => "NullableInteger"}, "HttpURL" => %{"shape" => "String"}, "UserAgent" => %{"shape" => "String"}}, "type" => "structure"}, "GetServiceGraphResult" => %{"members" => %{"EndTime" => %{"shape" => "Timestamp"}, "NextToken" => %{"shape" => "String"}, "Services" => %{"shape" => "ServiceList"}, "StartTime" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "GetTraceSummariesResult" => %{"members" => %{"ApproximateTime" => %{"shape" => "Timestamp"}, "NextToken" => %{"shape" => "String"}, "TraceSummaries" => %{"shape" => "TraceSummaryList"}, "TracesProcessedCount" => %{"shape" => "NullableLong"}}, "type" => "structure"}, "UnprocessedTraceSegmentList" => %{"member" => %{"shape" => "UnprocessedTraceSegment"}, "type" => "list"}, "TraceId" => %{"max" => 35, "min" => 35, "type" => "string"}, "Integer" => %{"type" => "integer"}, "TelemetryRecordList" => %{"member" => %{"shape" => "TelemetryRecord"}, "type" => "list"}, "PutTraceSegmentsRequest" => %{"members" => %{"TraceSegmentDocuments" => %{"shape" => "TraceSegmentDocumentList"}}, "required" => ["TraceSegmentDocuments"], "type" => "structure"}, "ServiceNames" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "AliasNames" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "BatchGetTracesRequest" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "TraceIds" => %{"shape" => "TraceIdList"}}, "required" => ["TraceIds"], "type" => "structure"}}
  end
end