defmodule Baiji.MobileAnalytics do
  @moduledoc """
  Amazon Mobile Analytics is a service for collecting, visualizing, and
  understanding app usage data at scale.
  """
  
  @doc """
  The PutEvents operation records one or more events. You can have up to
  1,500 unique custom events per app, any combination of up to 40 attributes
  and metrics per custom event, and any number of attribute or metric values.
  """
  def put_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "mobileanalytics",
      endpoint:         "/2014-06-05/events",
      input:            input,
      options:          options,
      action:           "PutEvents",
      
      endpoint_prefix:  "mobileanalytics",
      type:             :rest_json,
      version:          "2014-06-05",
      method:           :post,
      input_shape:      "PutEventsInput",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"BadRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "Double" => %{"type" => "double"}, "Event" => %{"members" => %{"attributes" => %{"shape" => "MapOfStringToString"}, "eventType" => %{"shape" => "String50Chars"}, "metrics" => %{"shape" => "MapOfStringToNumber"}, "session" => %{"shape" => "Session"}, "timestamp" => %{"shape" => "ISO8601Timestamp"}, "version" => %{"shape" => "String10Chars"}}, "required" => ["eventType", "timestamp"], "type" => "structure"}, "EventListDefinition" => %{"member" => %{"shape" => "Event"}, "type" => "list"}, "ISO8601Timestamp" => %{"type" => "string"}, "Long" => %{"type" => "long"}, "MapOfStringToNumber" => %{"key" => %{"shape" => "String50Chars"}, "max" => 50, "min" => 0, "type" => "map", "value" => %{"shape" => "Double"}}, "MapOfStringToString" => %{"key" => %{"shape" => "String50Chars"}, "max" => 50, "min" => 0, "type" => "map", "value" => %{"shape" => "String0to1000Chars"}}, "PutEventsInput" => %{"members" => %{"clientContext" => %{"location" => "header", "locationName" => "x-amz-Client-Context", "shape" => "String"}, "clientContextEncoding" => %{"location" => "header", "locationName" => "x-amz-Client-Context-Encoding", "shape" => "String"}, "events" => %{"shape" => "EventListDefinition"}}, "required" => ["events", "clientContext"], "type" => "structure"}, "Session" => %{"members" => %{"duration" => %{"shape" => "Long"}, "id" => %{"shape" => "String50Chars"}, "startTimestamp" => %{"shape" => "ISO8601Timestamp"}, "stopTimestamp" => %{"shape" => "ISO8601Timestamp"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "String0to1000Chars" => %{"max" => 1000, "min" => 0, "type" => "string"}, "String10Chars" => %{"max" => 10, "min" => 1, "type" => "string"}, "String50Chars" => %{"max" => 50, "min" => 1, "type" => "string"}}
  end
end