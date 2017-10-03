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
      service:          "iot-data",
      endpoint:         "/things/{thingName}/shadow",
      input:            input,
      options:          options,
      action:           "DeleteThingShadow",
      
      endpoint_prefix:  "data.iot",
      type:             :rest_json,
      version:          "2015-05-28",
      method:           :delete
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
      service:          "iot-data",
      endpoint:         "/things/{thingName}/shadow",
      input:            input,
      options:          options,
      action:           "GetThingShadow",
      
      endpoint_prefix:  "data.iot",
      type:             :rest_json,
      version:          "2015-05-28",
      method:           :get
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
      service:          "iot-data",
      endpoint:         "/topics/{topic}",
      input:            input,
      options:          options,
      action:           "Publish",
      
      endpoint_prefix:  "data.iot",
      type:             :rest_json,
      version:          "2015-05-28",
      method:           :post
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
      service:          "iot-data",
      endpoint:         "/things/{thingName}/shadow",
      input:            input,
      options:          options,
      action:           "UpdateThingShadow",
      
      endpoint_prefix:  "data.iot",
      type:             :rest_json,
      version:          "2015-05-28",
      method:           :post
    }
  end
  
end