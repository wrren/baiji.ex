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
      service:        "xray",
      endpoint:       "/Traces",
      input:          input,
      options:        options,
      action:         "BatchGetTraces",
      
      type:           :rest_json,
      version:        "2016-04-12",
      method:         :post
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
      service:        "xray",
      endpoint:       "/ServiceGraph",
      input:          input,
      options:        options,
      action:         "GetServiceGraph",
      
      type:           :rest_json,
      version:        "2016-04-12",
      method:         :post
    }
  end
  
  @doc """
  Retrieves a service graph for one or more specific trace IDs.
  """
  def get_trace_graph(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "xray",
      endpoint:       "/TraceGraph",
      input:          input,
      options:        options,
      action:         "GetTraceGraph",
      
      type:           :rest_json,
      version:        "2016-04-12",
      method:         :post
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
      service:        "xray",
      endpoint:       "/TraceSummaries",
      input:          input,
      options:        options,
      action:         "GetTraceSummaries",
      
      type:           :rest_json,
      version:        "2016-04-12",
      method:         :post
    }
  end
  
  @doc """
  Used by the AWS X-Ray daemon to upload telemetry.
  """
  def put_telemetry_records(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "xray",
      endpoint:       "/TelemetryRecords",
      input:          input,
      options:        options,
      action:         "PutTelemetryRecords",
      
      type:           :rest_json,
      version:        "2016-04-12",
      method:         :post
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
      service:        "xray",
      endpoint:       "/TraceSegments",
      input:          input,
      options:        options,
      action:         "PutTraceSegments",
      
      type:           :rest_json,
      version:        "2016-04-12",
      method:         :post
    }
  end
  
end