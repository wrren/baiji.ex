defmodule Baiji.Pinpoint do
  @moduledoc """

  """
  
  @doc """
  Returns information about your campaigns.
  """
  def get_campaigns(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/campaigns",
      input:            input,
      options:          options,
      action:           "GetCampaigns",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Use to update a segment.
  """
  def update_segment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/segments/{segment-id}",
      input:            input,
      options:          options,
      action:           "UpdateSegment",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Returns information about a specific version of a campaign.
  """
  def get_campaign_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}",
      input:            input,
      options:          options,
      action:           "GetCampaignVersion",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Used to request the settings for an app.
  """
  def get_application_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/settings",
      input:            input,
      options:          options,
      action:           "GetApplicationSettings",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Returns information about the activity performed by a campaign.
  """
  def get_campaign_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/campaigns/{campaign-id}/activities",
      input:            input,
      options:          options,
      action:           "GetCampaignActivities",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Update an SMS channel
  """
  def update_sms_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/sms",
      input:            input,
      options:          options,
      action:           "UpdateSmsChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Delete an SMS channel
  """
  def delete_sms_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/sms",
      input:            input,
      options:          options,
      action:           "DeleteSmsChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Returns information about your segment versions.
  """
  def get_segment_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/segments/{segment-id}/versions",
      input:            input,
      options:          options,
      action:           "GetSegmentVersions",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Returns the event stream for an app.
  """
  def get_event_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/eventstream",
      input:            input,
      options:          options,
      action:           "GetEventStream",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Use to update the GCM channel for an app.
  """
  def update_gcm_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/gcm",
      input:            input,
      options:          options,
      action:           "UpdateGcmChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Used to create an app.
  """
  def create_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps",
      input:            input,
      options:          options,
      action:           "CreateApp",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :post
    }
  end
  
  @doc """
  Returns information about your apps.
  """
  def get_apps(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps",
      input:            input,
      options:          options,
      action:           "GetApps",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Deletes a segment.
  """
  def delete_segment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/segments/{segment-id}",
      input:            input,
      options:          options,
      action:           "DeleteSegment",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Get an APNS sandbox channel
  """
  def get_apns_sandbox_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/apns_sandbox",
      input:            input,
      options:          options,
      action:           "GetApnsSandboxChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Use to create or update the event stream for an app.
  """
  def put_event_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/eventstream",
      input:            input,
      options:          options,
      action:           "PutEventStream",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :post
    }
  end
  
  @doc """
  Send a batch of messages
  """
  def send_messages(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/messages",
      input:            input,
      options:          options,
      action:           "SendMessages",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :post
    }
  end
  
  @doc """
  Returns information about an endpoint.
  """
  def get_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/endpoints/{endpoint-id}",
      input:            input,
      options:          options,
      action:           "GetEndpoint",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Returns information about your import jobs.
  """
  def get_import_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/jobs/import",
      input:            input,
      options:          options,
      action:           "GetImportJobs",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Deletes the APNs channel for an app.
  """
  def delete_apns_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/apns",
      input:            input,
      options:          options,
      action:           "DeleteApnsChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Delete an APNS sandbox channel
  """
  def delete_apns_sandbox_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/apns_sandbox",
      input:            input,
      options:          options,
      action:           "DeleteApnsSandboxChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Use to update an endpoint.
  """
  def update_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/endpoints/{endpoint-id}",
      input:            input,
      options:          options,
      action:           "UpdateEndpoint",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Get an email channel
  """
  def get_email_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/email",
      input:            input,
      options:          options,
      action:           "GetEmailChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Use to update a batch of endpoints.
  """
  def update_endpoints_batch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/endpoints",
      input:            input,
      options:          options,
      action:           "UpdateEndpointsBatch",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Used to get information about your segments.
  """
  def get_segments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/segments",
      input:            input,
      options:          options,
      action:           "GetSegments",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Used to create or update a segment.
  """
  def create_segment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/segments",
      input:            input,
      options:          options,
      action:           "CreateSegment",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :post
    }
  end
  
  @doc """
  Returns information about a segment version.
  """
  def get_segment_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}",
      input:            input,
      options:          options,
      action:           "GetSegmentVersion",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Returns information about a segment.
  """
  def get_segment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/segments/{segment-id}",
      input:            input,
      options:          options,
      action:           "GetSegment",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Returns information about a campaign.
  """
  def get_campaign(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/campaigns/{campaign-id}",
      input:            input,
      options:          options,
      action:           "GetCampaign",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Returns information about an import job.
  """
  def get_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/jobs/import/{job-id}",
      input:            input,
      options:          options,
      action:           "GetImportJob",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Used to update the settings for an app.
  """
  def update_application_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/settings",
      input:            input,
      options:          options,
      action:           "UpdateApplicationSettings",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Returns a list of import jobs for a specific segment.
  """
  def get_segment_import_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/segments/{segment-id}/jobs/import",
      input:            input,
      options:          options,
      action:           "GetSegmentImportJobs",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Delete an email channel
  """
  def delete_email_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/email",
      input:            input,
      options:          options,
      action:           "DeleteEmailChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Returns information about your campaign versions.
  """
  def get_campaign_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/campaigns/{campaign-id}/versions",
      input:            input,
      options:          options,
      action:           "GetCampaignVersions",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Deletes the event stream for an app.
  """
  def delete_event_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/eventstream",
      input:            input,
      options:          options,
      action:           "DeleteEventStream",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Use to update a campaign.
  """
  def update_campaign(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/campaigns/{campaign-id}",
      input:            input,
      options:          options,
      action:           "UpdateCampaign",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Returns information about the GCM channel for an app.
  """
  def get_gcm_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/gcm",
      input:            input,
      options:          options,
      action:           "GetGcmChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Update an email channel
  """
  def update_email_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/email",
      input:            input,
      options:          options,
      action:           "UpdateEmailChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Deletes a campaign.
  """
  def delete_campaign(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/campaigns/{campaign-id}",
      input:            input,
      options:          options,
      action:           "DeleteCampaign",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Get an SMS channel
  """
  def get_sms_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/sms",
      input:            input,
      options:          options,
      action:           "GetSmsChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Creates or updates a campaign.
  """
  def create_campaign(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/campaigns",
      input:            input,
      options:          options,
      action:           "CreateCampaign",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :post
    }
  end
  
  @doc """
  Returns information about the APNs channel for an app.
  """
  def get_apns_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/apns",
      input:            input,
      options:          options,
      action:           "GetApnsChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Deletes an app.
  """
  def delete_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}",
      input:            input,
      options:          options,
      action:           "DeleteApp",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Returns information about an app.
  """
  def get_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}",
      input:            input,
      options:          options,
      action:           "GetApp",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :get
    }
  end
  
  @doc """
  Creates or updates an import job.
  """
  def create_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/jobs/import",
      input:            input,
      options:          options,
      action:           "CreateImportJob",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :post
    }
  end
  
  @doc """
  Use to update the APNs channel for an app.
  """
  def update_apns_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/apns",
      input:            input,
      options:          options,
      action:           "UpdateApnsChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
  @doc """
  Deletes the GCM channel for an app.
  """
  def delete_gcm_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/gcm",
      input:            input,
      options:          options,
      action:           "DeleteGcmChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :delete
    }
  end
  
  @doc """
  Update an APNS sandbox channel
  """
  def update_apns_sandbox_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "pinpoint",
      endpoint:         "/v1/apps/{application-id}/channels/apns_sandbox",
      input:            input,
      options:          options,
      action:           "UpdateApnsSandboxChannel",
      
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      method:           :put
    }
  end
  
end