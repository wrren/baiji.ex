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
      input:    input,
      options:  options,
      action:   "PutEvents",
      type:     :rest_json,
      method:   :post
    }
  end
  
end