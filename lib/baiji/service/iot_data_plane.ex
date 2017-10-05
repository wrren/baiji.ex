defmodule Baiji.IotDataPlane do
  @moduledoc """
  AWS IoT

  AWS IoT-Data enables secure, bi-directional communication between
  Internet-connected things (such as sensors, actuators, embedded devices, or
  smart appliances) and the AWS cloud. It implements a broker for
  applications and things to publish messages over HTTP (Publish) and
  retrieve, update, and delete thing shadows. A thing shadow is a persistent
  representation of your things and their state in the AWS cloud.
  """

  @doc """
  Deletes the thing shadow for the specified thing.

  For more information, see
  [DeleteThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html)
  in the *AWS IoT Developer Guide*.
  """
  def delete_thing_shadow(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}/shadow",
      input:            input,
      options:          options,
      action:           "DeleteThingShadow",
      method:           :delete,
      input_shape:      "DeleteThingShadowRequest",
      output_shape:     "DeleteThingShadowResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the thing shadow for the specified thing.

  For more information, see
  [GetThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html)
  in the *AWS IoT Developer Guide*.
  """
  def get_thing_shadow(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}/shadow",
      input:            input,
      options:          options,
      action:           "GetThingShadow",
      method:           :get,
      input_shape:      "GetThingShadowRequest",
      output_shape:     "GetThingShadowResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Publishes state information.

  For more information, see [HTTP
  Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http)
  in the *AWS IoT Developer Guide*.
  """
  def publish(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/topics/{topic}",
      input:            input,
      options:          options,
      action:           "Publish",
      method:           :post,
      input_shape:      "PublishRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the thing shadow for the specified thing.

  For more information, see
  [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html)
  in the *AWS IoT Developer Guide*.
  """
  def update_thing_shadow(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}/shadow",
      input:            input,
      options:          options,
      action:           "UpdateThingShadow",
      method:           :post,
      input_shape:      "UpdateThingShadowRequest",
      output_shape:     "UpdateThingShadowResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "iot-data",
      endpoint_prefix:  "data.iot",
      type:             :rest_json,
      version:          "2015-05-28",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"ConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DeleteThingShadowRequest" => %{"members" => %{"thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}}, "required" => ["thingName"], "type" => "structure"}, "DeleteThingShadowResponse" => %{"members" => %{"payload" => %{"shape" => "JsonDocument"}}, "payload" => "payload", "required" => ["payload"], "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "GetThingShadowRequest" => %{"members" => %{"thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}}, "required" => ["thingName"], "type" => "structure"}, "GetThingShadowResponse" => %{"members" => %{"payload" => %{"shape" => "JsonDocument"}}, "payload" => "payload", "type" => "structure"}, "InternalFailureException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "InvalidRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "JsonDocument" => %{"type" => "blob"}, "MethodNotAllowedException" => %{"error" => %{"httpStatusCode" => 405}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Payload" => %{"type" => "blob"}, "PublishRequest" => %{"members" => %{"payload" => %{"shape" => "Payload"}, "qos" => %{"location" => "querystring", "locationName" => "qos", "shape" => "Qos"}, "topic" => %{"location" => "uri", "locationName" => "topic", "shape" => "Topic"}}, "payload" => "payload", "required" => ["topic"], "type" => "structure"}, "Qos" => %{"max" => 1, "min" => 0, "type" => "integer"}, "RequestEntityTooLargeException" => %{"error" => %{"httpStatusCode" => 413}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ResourceNotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "ServiceUnavailableException" => %{"error" => %{"httpStatusCode" => 503}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "ThingName" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9_-]+", "type" => "string"}, "ThrottlingException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Topic" => %{"type" => "string"}, "UnauthorizedException" => %{"error" => %{"httpStatusCode" => 401}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "UnsupportedDocumentEncodingException" => %{"error" => %{"httpStatusCode" => 415}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "UpdateThingShadowRequest" => %{"members" => %{"payload" => %{"shape" => "JsonDocument"}, "thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}}, "payload" => "payload", "required" => ["thingName", "payload"], "type" => "structure"}, "UpdateThingShadowResponse" => %{"members" => %{"payload" => %{"shape" => "JsonDocument"}}, "payload" => "payload", "type" => "structure"}, "errorMessage" => %{"type" => "string"}}
  end
end