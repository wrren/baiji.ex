defmodule Baiji.Pinpoint do
  @moduledoc """

  """

  @doc """
  Returns information about your campaigns.
  """
  def get_campaigns(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/campaigns",
      input:            input,
      options:          options,
      action:           "GetCampaigns",
      method:           :get,
      input_shape:      "GetCampaignsRequest",
      output_shape:     "GetCampaignsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use to update a segment.
  """
  def update_segment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/segments/{segment-id}",
      input:            input,
      options:          options,
      action:           "UpdateSegment",
      method:           :put,
      input_shape:      "UpdateSegmentRequest",
      output_shape:     "UpdateSegmentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a specific version of a campaign.
  """
  def get_campaign_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}",
      input:            input,
      options:          options,
      action:           "GetCampaignVersion",
      method:           :get,
      input_shape:      "GetCampaignVersionRequest",
      output_shape:     "GetCampaignVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used to request the settings for an app.
  """
  def get_application_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/settings",
      input:            input,
      options:          options,
      action:           "GetApplicationSettings",
      method:           :get,
      input_shape:      "GetApplicationSettingsRequest",
      output_shape:     "GetApplicationSettingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the activity performed by a campaign.
  """
  def get_campaign_activities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/campaigns/{campaign-id}/activities",
      input:            input,
      options:          options,
      action:           "GetCampaignActivities",
      method:           :get,
      input_shape:      "GetCampaignActivitiesRequest",
      output_shape:     "GetCampaignActivitiesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Update an SMS channel
  """
  def update_sms_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/sms",
      input:            input,
      options:          options,
      action:           "UpdateSmsChannel",
      method:           :put,
      input_shape:      "UpdateSmsChannelRequest",
      output_shape:     "UpdateSmsChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Delete an SMS channel
  """
  def delete_sms_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/sms",
      input:            input,
      options:          options,
      action:           "DeleteSmsChannel",
      method:           :delete,
      input_shape:      "DeleteSmsChannelRequest",
      output_shape:     "DeleteSmsChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about your segment versions.
  """
  def get_segment_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/segments/{segment-id}/versions",
      input:            input,
      options:          options,
      action:           "GetSegmentVersions",
      method:           :get,
      input_shape:      "GetSegmentVersionsRequest",
      output_shape:     "GetSegmentVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the event stream for an app.
  """
  def get_event_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/eventstream",
      input:            input,
      options:          options,
      action:           "GetEventStream",
      method:           :get,
      input_shape:      "GetEventStreamRequest",
      output_shape:     "GetEventStreamResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use to update the GCM channel for an app.
  """
  def update_gcm_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/gcm",
      input:            input,
      options:          options,
      action:           "UpdateGcmChannel",
      method:           :put,
      input_shape:      "UpdateGcmChannelRequest",
      output_shape:     "UpdateGcmChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used to create an app.
  """
  def create_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps",
      input:            input,
      options:          options,
      action:           "CreateApp",
      method:           :post,
      input_shape:      "CreateAppRequest",
      output_shape:     "CreateAppResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about your apps.
  """
  def get_apps(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps",
      input:            input,
      options:          options,
      action:           "GetApps",
      method:           :get,
      input_shape:      "GetAppsRequest",
      output_shape:     "GetAppsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a segment.
  """
  def delete_segment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/segments/{segment-id}",
      input:            input,
      options:          options,
      action:           "DeleteSegment",
      method:           :delete,
      input_shape:      "DeleteSegmentRequest",
      output_shape:     "DeleteSegmentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Get an APNS sandbox channel
  """
  def get_apns_sandbox_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/apns_sandbox",
      input:            input,
      options:          options,
      action:           "GetApnsSandboxChannel",
      method:           :get,
      input_shape:      "GetApnsSandboxChannelRequest",
      output_shape:     "GetApnsSandboxChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use to create or update the event stream for an app.
  """
  def put_event_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/eventstream",
      input:            input,
      options:          options,
      action:           "PutEventStream",
      method:           :post,
      input_shape:      "PutEventStreamRequest",
      output_shape:     "PutEventStreamResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Send a batch of messages
  """
  def send_messages(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/messages",
      input:            input,
      options:          options,
      action:           "SendMessages",
      method:           :post,
      input_shape:      "SendMessagesRequest",
      output_shape:     "SendMessagesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about an endpoint.
  """
  def get_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/endpoints/{endpoint-id}",
      input:            input,
      options:          options,
      action:           "GetEndpoint",
      method:           :get,
      input_shape:      "GetEndpointRequest",
      output_shape:     "GetEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about your import jobs.
  """
  def get_import_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/jobs/import",
      input:            input,
      options:          options,
      action:           "GetImportJobs",
      method:           :get,
      input_shape:      "GetImportJobsRequest",
      output_shape:     "GetImportJobsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the APNs channel for an app.
  """
  def delete_apns_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/apns",
      input:            input,
      options:          options,
      action:           "DeleteApnsChannel",
      method:           :delete,
      input_shape:      "DeleteApnsChannelRequest",
      output_shape:     "DeleteApnsChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Delete an APNS sandbox channel
  """
  def delete_apns_sandbox_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/apns_sandbox",
      input:            input,
      options:          options,
      action:           "DeleteApnsSandboxChannel",
      method:           :delete,
      input_shape:      "DeleteApnsSandboxChannelRequest",
      output_shape:     "DeleteApnsSandboxChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use to update an endpoint.
  """
  def update_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/endpoints/{endpoint-id}",
      input:            input,
      options:          options,
      action:           "UpdateEndpoint",
      method:           :put,
      input_shape:      "UpdateEndpointRequest",
      output_shape:     "UpdateEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Get an email channel
  """
  def get_email_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/email",
      input:            input,
      options:          options,
      action:           "GetEmailChannel",
      method:           :get,
      input_shape:      "GetEmailChannelRequest",
      output_shape:     "GetEmailChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use to update a batch of endpoints.
  """
  def update_endpoints_batch(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/endpoints",
      input:            input,
      options:          options,
      action:           "UpdateEndpointsBatch",
      method:           :put,
      input_shape:      "UpdateEndpointsBatchRequest",
      output_shape:     "UpdateEndpointsBatchResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used to get information about your segments.
  """
  def get_segments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/segments",
      input:            input,
      options:          options,
      action:           "GetSegments",
      method:           :get,
      input_shape:      "GetSegmentsRequest",
      output_shape:     "GetSegmentsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used to create or update a segment.
  """
  def create_segment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/segments",
      input:            input,
      options:          options,
      action:           "CreateSegment",
      method:           :post,
      input_shape:      "CreateSegmentRequest",
      output_shape:     "CreateSegmentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a segment version.
  """
  def get_segment_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}",
      input:            input,
      options:          options,
      action:           "GetSegmentVersion",
      method:           :get,
      input_shape:      "GetSegmentVersionRequest",
      output_shape:     "GetSegmentVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a segment.
  """
  def get_segment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/segments/{segment-id}",
      input:            input,
      options:          options,
      action:           "GetSegment",
      method:           :get,
      input_shape:      "GetSegmentRequest",
      output_shape:     "GetSegmentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a campaign.
  """
  def get_campaign(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/campaigns/{campaign-id}",
      input:            input,
      options:          options,
      action:           "GetCampaign",
      method:           :get,
      input_shape:      "GetCampaignRequest",
      output_shape:     "GetCampaignResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about an import job.
  """
  def get_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/jobs/import/{job-id}",
      input:            input,
      options:          options,
      action:           "GetImportJob",
      method:           :get,
      input_shape:      "GetImportJobRequest",
      output_shape:     "GetImportJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Used to update the settings for an app.
  """
  def update_application_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/settings",
      input:            input,
      options:          options,
      action:           "UpdateApplicationSettings",
      method:           :put,
      input_shape:      "UpdateApplicationSettingsRequest",
      output_shape:     "UpdateApplicationSettingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of import jobs for a specific segment.
  """
  def get_segment_import_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/segments/{segment-id}/jobs/import",
      input:            input,
      options:          options,
      action:           "GetSegmentImportJobs",
      method:           :get,
      input_shape:      "GetSegmentImportJobsRequest",
      output_shape:     "GetSegmentImportJobsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Delete an email channel
  """
  def delete_email_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/email",
      input:            input,
      options:          options,
      action:           "DeleteEmailChannel",
      method:           :delete,
      input_shape:      "DeleteEmailChannelRequest",
      output_shape:     "DeleteEmailChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about your campaign versions.
  """
  def get_campaign_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/campaigns/{campaign-id}/versions",
      input:            input,
      options:          options,
      action:           "GetCampaignVersions",
      method:           :get,
      input_shape:      "GetCampaignVersionsRequest",
      output_shape:     "GetCampaignVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the event stream for an app.
  """
  def delete_event_stream(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/eventstream",
      input:            input,
      options:          options,
      action:           "DeleteEventStream",
      method:           :delete,
      input_shape:      "DeleteEventStreamRequest",
      output_shape:     "DeleteEventStreamResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use to update a campaign.
  """
  def update_campaign(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/campaigns/{campaign-id}",
      input:            input,
      options:          options,
      action:           "UpdateCampaign",
      method:           :put,
      input_shape:      "UpdateCampaignRequest",
      output_shape:     "UpdateCampaignResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the GCM channel for an app.
  """
  def get_gcm_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/gcm",
      input:            input,
      options:          options,
      action:           "GetGcmChannel",
      method:           :get,
      input_shape:      "GetGcmChannelRequest",
      output_shape:     "GetGcmChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Update an email channel
  """
  def update_email_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/email",
      input:            input,
      options:          options,
      action:           "UpdateEmailChannel",
      method:           :put,
      input_shape:      "UpdateEmailChannelRequest",
      output_shape:     "UpdateEmailChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a campaign.
  """
  def delete_campaign(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/campaigns/{campaign-id}",
      input:            input,
      options:          options,
      action:           "DeleteCampaign",
      method:           :delete,
      input_shape:      "DeleteCampaignRequest",
      output_shape:     "DeleteCampaignResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Get an SMS channel
  """
  def get_sms_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/sms",
      input:            input,
      options:          options,
      action:           "GetSmsChannel",
      method:           :get,
      input_shape:      "GetSmsChannelRequest",
      output_shape:     "GetSmsChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates or updates a campaign.
  """
  def create_campaign(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/campaigns",
      input:            input,
      options:          options,
      action:           "CreateCampaign",
      method:           :post,
      input_shape:      "CreateCampaignRequest",
      output_shape:     "CreateCampaignResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the APNs channel for an app.
  """
  def get_apns_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/apns",
      input:            input,
      options:          options,
      action:           "GetApnsChannel",
      method:           :get,
      input_shape:      "GetApnsChannelRequest",
      output_shape:     "GetApnsChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an app.
  """
  def delete_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}",
      input:            input,
      options:          options,
      action:           "DeleteApp",
      method:           :delete,
      input_shape:      "DeleteAppRequest",
      output_shape:     "DeleteAppResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about an app.
  """
  def get_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}",
      input:            input,
      options:          options,
      action:           "GetApp",
      method:           :get,
      input_shape:      "GetAppRequest",
      output_shape:     "GetAppResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates or updates an import job.
  """
  def create_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/jobs/import",
      input:            input,
      options:          options,
      action:           "CreateImportJob",
      method:           :post,
      input_shape:      "CreateImportJobRequest",
      output_shape:     "CreateImportJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use to update the APNs channel for an app.
  """
  def update_apns_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/apns",
      input:            input,
      options:          options,
      action:           "UpdateApnsChannel",
      method:           :put,
      input_shape:      "UpdateApnsChannelRequest",
      output_shape:     "UpdateApnsChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the GCM channel for an app.
  """
  def delete_gcm_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/gcm",
      input:            input,
      options:          options,
      action:           "DeleteGcmChannel",
      method:           :delete,
      input_shape:      "DeleteGcmChannelRequest",
      output_shape:     "DeleteGcmChannelResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Update an APNS sandbox channel
  """
  def update_apns_sandbox_channel(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/apps/{application-id}/channels/apns_sandbox",
      input:            input,
      options:          options,
      action:           "UpdateApnsSandboxChannel",
      method:           :put,
      input_shape:      "UpdateApnsSandboxChannelRequest",
      output_shape:     "UpdateApnsSandboxChannelResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "pinpoint",
      endpoint_prefix:  "pinpoint",
      type:             :json,
      version:          "2016-12-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"GetGcmChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "GetSegmentVersionResponse" => %{"members" => %{"SegmentResponse" => %{"shape" => "SegmentResponse"}}, "payload" => "SegmentResponse", "required" => ["SegmentResponse"], "type" => "structure"}, "ListOf__string" => %{"member" => %{"shape" => "__string"}, "type" => "list"}, "UpdateApnsSandboxChannelRequest" => %{"members" => %{"APNSSandboxChannelRequest" => %{"shape" => "APNSSandboxChannelRequest"}, "ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "payload" => "APNSSandboxChannelRequest", "required" => ["ApplicationId", "APNSSandboxChannelRequest"], "type" => "structure"}, "UpdateGcmChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "GCMChannelRequest" => %{"shape" => "GCMChannelRequest"}}, "payload" => "GCMChannelRequest", "required" => ["ApplicationId", "GCMChannelRequest"], "type" => "structure"}, "UpdateSmsChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "SMSChannelRequest" => %{"shape" => "SMSChannelRequest"}}, "payload" => "SMSChannelRequest", "required" => ["ApplicationId", "SMSChannelRequest"], "type" => "structure"}, "GetApplicationSettingsRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "GetCampaignsResponse" => %{"members" => %{"CampaignsResponse" => %{"shape" => "CampaignsResponse"}}, "payload" => "CampaignsResponse", "required" => ["CampaignsResponse"], "type" => "structure"}, "GetSegmentRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "SegmentId" => %{"location" => "uri", "locationName" => "segment-id", "shape" => "__string"}}, "required" => ["SegmentId", "ApplicationId"], "type" => "structure"}, "SegmentImportResource" => %{"members" => %{"ChannelCounts" => %{"shape" => "MapOf__integer"}, "ExternalId" => %{"shape" => "__string"}, "Format" => %{"shape" => "Format"}, "RoleArn" => %{"shape" => "__string"}, "S3Url" => %{"shape" => "__string"}, "Size" => %{"shape" => "__integer"}}, "type" => "structure"}, "UpdateEmailChannelResponse" => %{"members" => %{"EmailChannelResponse" => %{"shape" => "EmailChannelResponse"}}, "payload" => "EmailChannelResponse", "required" => ["EmailChannelResponse"], "type" => "structure"}, "ListOfImportJobResponse" => %{"member" => %{"shape" => "ImportJobResponse"}, "type" => "list"}, "QuietTime" => %{"members" => %{"End" => %{"shape" => "__string"}, "Start" => %{"shape" => "__string"}}, "type" => "structure"}, "RecencyType" => %{"enum" => ["ACTIVE", "INACTIVE"], "type" => "string"}, "EventStream" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "DestinationStreamArn" => %{"shape" => "__string"}, "ExternalId" => %{"shape" => "__string"}, "LastModifiedDate" => %{"shape" => "__string"}, "LastUpdatedBy" => %{"shape" => "__string"}, "RoleArn" => %{"shape" => "__string"}}, "type" => "structure"}, "DimensionType" => %{"enum" => ["INCLUSIVE", "EXCLUSIVE"], "type" => "string"}, "GCMChannelRequest" => %{"members" => %{"ApiKey" => %{"shape" => "__string"}, "Enabled" => %{"shape" => "__boolean"}}, "type" => "structure"}, "GetCampaignVersionRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "CampaignId" => %{"location" => "uri", "locationName" => "campaign-id", "shape" => "__string"}, "Version" => %{"location" => "uri", "locationName" => "version", "shape" => "__string"}}, "required" => ["Version", "ApplicationId", "CampaignId"], "type" => "structure"}, "GetSegmentResponse" => %{"members" => %{"SegmentResponse" => %{"shape" => "SegmentResponse"}}, "payload" => "SegmentResponse", "required" => ["SegmentResponse"], "type" => "structure"}, "SetDimension" => %{"members" => %{"DimensionType" => %{"shape" => "DimensionType"}, "Values" => %{"shape" => "ListOf__string"}}, "type" => "structure"}, "GetCampaignVersionsRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "CampaignId" => %{"location" => "uri", "locationName" => "campaign-id", "shape" => "__string"}, "PageSize" => %{"location" => "querystring", "locationName" => "page-size", "shape" => "__string"}, "Token" => %{"location" => "querystring", "locationName" => "token", "shape" => "__string"}}, "required" => ["ApplicationId", "CampaignId"], "type" => "structure"}, "CreateImportJobRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "ImportJobRequest" => %{"shape" => "ImportJobRequest"}}, "payload" => "ImportJobRequest", "required" => ["ApplicationId", "ImportJobRequest"], "type" => "structure"}, "DeleteCampaignRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "CampaignId" => %{"location" => "uri", "locationName" => "campaign-id", "shape" => "__string"}}, "required" => ["CampaignId", "ApplicationId"], "type" => "structure"}, "GetCampaignActivitiesRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "CampaignId" => %{"location" => "uri", "locationName" => "campaign-id", "shape" => "__string"}, "PageSize" => %{"location" => "querystring", "locationName" => "page-size", "shape" => "__string"}, "Token" => %{"location" => "querystring", "locationName" => "token", "shape" => "__string"}}, "required" => ["ApplicationId", "CampaignId"], "type" => "structure"}, "GetGcmChannelResponse" => %{"members" => %{"GCMChannelResponse" => %{"shape" => "GCMChannelResponse"}}, "payload" => "GCMChannelResponse", "required" => ["GCMChannelResponse"], "type" => "structure"}, "RecencyDimension" => %{"members" => %{"Duration" => %{"shape" => "Duration"}, "RecencyType" => %{"shape" => "RecencyType"}}, "type" => "structure"}, "ForbiddenException" => %{"error" => %{"httpStatusCode" => 403}, "exception" => true, "members" => %{"Message" => %{"shape" => "__string"}, "RequestID" => %{"shape" => "__string"}}, "type" => "structure"}, "EmailChannelResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "Enabled" => %{"shape" => "__boolean"}, "FromAddress" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Identity" => %{"shape" => "__string"}, "IsArchived" => %{"shape" => "__boolean"}, "LastModifiedBy" => %{"shape" => "__string"}, "LastModifiedDate" => %{"shape" => "__string"}, "Platform" => %{"shape" => "__string"}, "RoleArn" => %{"shape" => "__string"}, "Version" => %{"shape" => "__integer"}}, "type" => "structure"}, "DeleteSegmentRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "SegmentId" => %{"location" => "uri", "locationName" => "segment-id", "shape" => "__string"}}, "required" => ["SegmentId", "ApplicationId"], "type" => "structure"}, "MethodNotAllowedException" => %{"error" => %{"httpStatusCode" => 405}, "exception" => true, "members" => %{"Message" => %{"shape" => "__string"}, "RequestID" => %{"shape" => "__string"}}, "type" => "structure"}, "ListOfCampaignResponse" => %{"member" => %{"shape" => "CampaignResponse"}, "type" => "list"}, "TreatmentResource" => %{"members" => %{"Id" => %{"shape" => "__string"}, "MessageConfiguration" => %{"shape" => "MessageConfiguration"}, "Schedule" => %{"shape" => "Schedule"}, "SizePercent" => %{"shape" => "__integer"}, "State" => %{"shape" => "CampaignState"}, "TreatmentDescription" => %{"shape" => "__string"}, "TreatmentName" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateApplicationSettingsRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "WriteApplicationSettingsRequest" => %{"shape" => "WriteApplicationSettingsRequest"}}, "payload" => "WriteApplicationSettingsRequest", "required" => ["ApplicationId", "WriteApplicationSettingsRequest"], "type" => "structure"}, "EndpointUser" => %{"members" => %{"UserAttributes" => %{"shape" => "MapOfListOf__string"}, "UserId" => %{"shape" => "__string"}}, "type" => "structure"}, "SegmentsResponse" => %{"members" => %{"Item" => %{"shape" => "ListOfSegmentResponse"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "DeleteApnsChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "GetApnsChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "EndpointLocation" => %{"members" => %{"City" => %{"shape" => "__string"}, "Country" => %{"shape" => "__string"}, "Latitude" => %{"shape" => "__double"}, "Longitude" => %{"shape" => "__double"}, "PostalCode" => %{"shape" => "__string"}, "Region" => %{"shape" => "__string"}}, "type" => "structure"}, "GetSegmentVersionsRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "PageSize" => %{"location" => "querystring", "locationName" => "page-size", "shape" => "__string"}, "SegmentId" => %{"location" => "uri", "locationName" => "segment-id", "shape" => "__string"}, "Token" => %{"location" => "querystring", "locationName" => "token", "shape" => "__string"}}, "required" => ["SegmentId", "ApplicationId"], "type" => "structure"}, "JobStatus" => %{"enum" => ["CREATED", "INITIALIZING", "PROCESSING", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], "type" => "string"}, "EndpointBatchItem" => %{"members" => %{"Address" => %{"shape" => "__string"}, "Attributes" => %{"shape" => "MapOfListOf__string"}, "ChannelType" => %{"shape" => "ChannelType"}, "Demographic" => %{"shape" => "EndpointDemographic"}, "EffectiveDate" => %{"shape" => "__string"}, "EndpointStatus" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Location" => %{"shape" => "EndpointLocation"}, "Metrics" => %{"shape" => "MapOf__double"}, "OptOut" => %{"shape" => "__string"}, "RequestId" => %{"shape" => "__string"}, "User" => %{"shape" => "EndpointUser"}}, "type" => "structure"}, "GetApplicationSettingsResponse" => %{"members" => %{"ApplicationSettingsResource" => %{"shape" => "ApplicationSettingsResource"}}, "payload" => "ApplicationSettingsResource", "required" => ["ApplicationSettingsResource"], "type" => "structure"}, "DeleteGcmChannelResponse" => %{"members" => %{"GCMChannelResponse" => %{"shape" => "GCMChannelResponse"}}, "payload" => "GCMChannelResponse", "required" => ["GCMChannelResponse"], "type" => "structure"}, "DeleteCampaignResponse" => %{"members" => %{"CampaignResponse" => %{"shape" => "CampaignResponse"}}, "payload" => "CampaignResponse", "required" => ["CampaignResponse"], "type" => "structure"}, "GetEventStreamResponse" => %{"members" => %{"EventStream" => %{"shape" => "EventStream"}}, "payload" => "EventStream", "required" => ["EventStream"], "type" => "structure"}, "GetSegmentImportJobsRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "PageSize" => %{"location" => "querystring", "locationName" => "page-size", "shape" => "__string"}, "SegmentId" => %{"location" => "uri", "locationName" => "segment-id", "shape" => "__string"}, "Token" => %{"location" => "querystring", "locationName" => "token", "shape" => "__string"}}, "required" => ["SegmentId", "ApplicationId"], "type" => "structure"}, "SendMessagesRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "MessageRequest" => %{"shape" => "MessageRequest"}}, "payload" => "MessageRequest", "required" => ["ApplicationId", "MessageRequest"], "type" => "structure"}, "GetImportJobsResponse" => %{"members" => %{"ImportJobsResponse" => %{"shape" => "ImportJobsResponse"}}, "payload" => "ImportJobsResponse", "required" => ["ImportJobsResponse"], "type" => "structure"}, "CampaignStatus" => %{"enum" => ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"], "type" => "string"}, "SegmentLocation" => %{"members" => %{"Country" => %{"shape" => "SetDimension"}}, "type" => "structure"}, "MapOfListOf__string" => %{"key" => %{"shape" => "__string"}, "type" => "map", "value" => %{"shape" => "ListOf__string"}}, "ListOfApplicationResponse" => %{"member" => %{"shape" => "ApplicationResponse"}, "type" => "list"}, "GetAppResponse" => %{"members" => %{"ApplicationResponse" => %{"shape" => "ApplicationResponse"}}, "payload" => "ApplicationResponse", "required" => ["ApplicationResponse"], "type" => "structure"}, "GCMChannelResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "Credential" => %{"shape" => "__string"}, "Enabled" => %{"shape" => "__boolean"}, "Id" => %{"shape" => "__string"}, "IsArchived" => %{"shape" => "__boolean"}, "LastModifiedBy" => %{"shape" => "__string"}, "LastModifiedDate" => %{"shape" => "__string"}, "Platform" => %{"shape" => "__string"}, "Version" => %{"shape" => "__integer"}}, "type" => "structure"}, "MapOfAttributeDimension" => %{"key" => %{"shape" => "__string"}, "type" => "map", "value" => %{"shape" => "AttributeDimension"}}, "GetCampaignVersionResponse" => %{"members" => %{"CampaignResponse" => %{"shape" => "CampaignResponse"}}, "payload" => "CampaignResponse", "required" => ["CampaignResponse"], "type" => "structure"}, "ListOfWriteTreatmentResource" => %{"member" => %{"shape" => "WriteTreatmentResource"}, "type" => "list"}, "GetEndpointResponse" => %{"members" => %{"EndpointResponse" => %{"shape" => "EndpointResponse"}}, "payload" => "EndpointResponse", "required" => ["EndpointResponse"], "type" => "structure"}, "TooManyRequestsException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"Message" => %{"shape" => "__string"}, "RequestID" => %{"shape" => "__string"}}, "type" => "structure"}, "SegmentType" => %{"enum" => ["DIMENSIONAL", "IMPORT"], "type" => "string"}, "ImportJobsResponse" => %{"members" => %{"Item" => %{"shape" => "ListOfImportJobResponse"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "Schedule" => %{"members" => %{"EndTime" => %{"shape" => "__string"}, "Frequency" => %{"shape" => "Frequency"}, "IsLocalTime" => %{"shape" => "__boolean"}, "QuietTime" => %{"shape" => "QuietTime"}, "StartTime" => %{"shape" => "__string"}, "Timezone" => %{"shape" => "__string"}}, "type" => "structure"}, "GetAppRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "GetEmailChannelResponse" => %{"members" => %{"EmailChannelResponse" => %{"shape" => "EmailChannelResponse"}}, "payload" => "EmailChannelResponse", "required" => ["EmailChannelResponse"], "type" => "structure"}, "DeleteApnsChannelResponse" => %{"members" => %{"APNSChannelResponse" => %{"shape" => "APNSChannelResponse"}}, "payload" => "APNSChannelResponse", "required" => ["APNSChannelResponse"], "type" => "structure"}, "Duration" => %{"enum" => ["HR_24", "DAY_7", "DAY_14", "DAY_30"], "type" => "string"}, "APNSSandboxChannelResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "Enabled" => %{"shape" => "__boolean"}, "Id" => %{"shape" => "__string"}, "IsArchived" => %{"shape" => "__boolean"}, "LastModifiedBy" => %{"shape" => "__string"}, "LastModifiedDate" => %{"shape" => "__string"}, "Platform" => %{"shape" => "__string"}, "Version" => %{"shape" => "__integer"}}, "type" => "structure"}, "SendMessagesResponse" => %{"members" => %{"MessageResponse" => %{"shape" => "MessageResponse"}}, "payload" => "MessageResponse", "required" => ["MessageResponse"], "type" => "structure"}, "GetEventStreamRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "DeleteAppResponse" => %{"members" => %{"ApplicationResponse" => %{"shape" => "ApplicationResponse"}}, "payload" => "ApplicationResponse", "required" => ["ApplicationResponse"], "type" => "structure"}, "MapOfAddressConfiguration" => %{"key" => %{"shape" => "__string"}, "type" => "map", "value" => %{"shape" => "AddressConfiguration"}}, "Format" => %{"enum" => ["CSV", "JSON"], "type" => "string"}, "Action" => %{"enum" => ["OPEN_APP", "DEEP_LINK", "URL"], "type" => "string"}, "Message" => %{"members" => %{"Action" => %{"shape" => "Action"}, "Body" => %{"shape" => "__string"}, "ImageIconUrl" => %{"shape" => "__string"}, "ImageSmallIconUrl" => %{"shape" => "__string"}, "ImageUrl" => %{"shape" => "__string"}, "JsonBody" => %{"shape" => "__string"}, "MediaUrl" => %{"shape" => "__string"}, "RawContent" => %{"shape" => "__string"}, "SilentPush" => %{"shape" => "__boolean"}, "Title" => %{"shape" => "__string"}, "Url" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateSmsChannelResponse" => %{"members" => %{"SMSChannelResponse" => %{"shape" => "SMSChannelResponse"}}, "payload" => "SMSChannelResponse", "required" => ["SMSChannelResponse"], "type" => "structure"}, "__double" => %{"type" => "double"}, "APNSChannelResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "Enabled" => %{"shape" => "__boolean"}, "Id" => %{"shape" => "__string"}, "IsArchived" => %{"shape" => "__boolean"}, "LastModifiedBy" => %{"shape" => "__string"}, "LastModifiedDate" => %{"shape" => "__string"}, "Platform" => %{"shape" => "__string"}, "Version" => %{"shape" => "__integer"}}, "type" => "structure"}, "SMSChannelRequest" => %{"members" => %{"Enabled" => %{"shape" => "__boolean"}, "SenderId" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateCampaignResponse" => %{"members" => %{"CampaignResponse" => %{"shape" => "CampaignResponse"}}, "payload" => "CampaignResponse", "required" => ["CampaignResponse"], "type" => "structure"}, "GetCampaignsRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "PageSize" => %{"location" => "querystring", "locationName" => "page-size", "shape" => "__string"}, "Token" => %{"location" => "querystring", "locationName" => "token", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "CreateApplicationRequest" => %{"members" => %{"Name" => %{"shape" => "__string"}}, "type" => "structure"}, "DeleteEventStreamResponse" => %{"members" => %{"EventStream" => %{"shape" => "EventStream"}}, "payload" => "EventStream", "required" => ["EventStream"], "type" => "structure"}, "SegmentDimensions" => %{"members" => %{"Attributes" => %{"shape" => "MapOfAttributeDimension"}, "Behavior" => %{"shape" => "SegmentBehaviors"}, "Demographic" => %{"shape" => "SegmentDemographics"}, "Location" => %{"shape" => "SegmentLocation"}, "UserAttributes" => %{"shape" => "MapOfAttributeDimension"}}, "type" => "structure"}, "DefaultPushNotificationMessage" => %{"members" => %{"Action" => %{"shape" => "Action"}, "Body" => %{"shape" => "__string"}, "Data" => %{"shape" => "MapOf__string"}, "SilentPush" => %{"shape" => "__boolean"}, "Substitutions" => %{"shape" => "MapOfListOf__string"}, "Title" => %{"shape" => "__string"}, "Url" => %{"shape" => "__string"}}, "type" => "structure"}, "SegmentDemographics" => %{"members" => %{"AppVersion" => %{"shape" => "SetDimension"}, "Channel" => %{"shape" => "SetDimension"}, "DeviceType" => %{"shape" => "SetDimension"}, "Make" => %{"shape" => "SetDimension"}, "Model" => %{"shape" => "SetDimension"}, "Platform" => %{"shape" => "SetDimension"}}, "type" => "structure"}, "MapOfMessageResult" => %{"key" => %{"shape" => "__string"}, "type" => "map", "value" => %{"shape" => "MessageResult"}}, "GetCampaignRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "CampaignId" => %{"location" => "uri", "locationName" => "campaign-id", "shape" => "__string"}}, "required" => ["CampaignId", "ApplicationId"], "type" => "structure"}, "DeleteApnsSandboxChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "ChannelType" => %{"enum" => ["GCM", "APNS", "APNS_SANDBOX", "ADM", "SMS", "EMAIL"], "type" => "string"}, "DeleteGcmChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "NotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "__string"}, "RequestID" => %{"shape" => "__string"}}, "type" => "structure"}, "WriteCampaignRequest" => %{"members" => %{"AdditionalTreatments" => %{"shape" => "ListOfWriteTreatmentResource"}, "Description" => %{"shape" => "__string"}, "HoldoutPercent" => %{"shape" => "__integer"}, "IsPaused" => %{"shape" => "__boolean"}, "Limits" => %{"shape" => "CampaignLimits"}, "MessageConfiguration" => %{"shape" => "MessageConfiguration"}, "Name" => %{"shape" => "__string"}, "Schedule" => %{"shape" => "Schedule"}, "SegmentId" => %{"shape" => "__string"}, "SegmentVersion" => %{"shape" => "__integer"}, "TreatmentDescription" => %{"shape" => "__string"}, "TreatmentName" => %{"shape" => "__string"}}, "type" => "structure"}, "GetCampaignVersionsResponse" => %{"members" => %{"CampaignsResponse" => %{"shape" => "CampaignsResponse"}}, "payload" => "CampaignsResponse", "required" => ["CampaignsResponse"], "type" => "structure"}, "EndpointBatchRequest" => %{"members" => %{"Item" => %{"shape" => "ListOfEndpointBatchItem"}}, "type" => "structure"}, "UpdateGcmChannelResponse" => %{"members" => %{"GCMChannelResponse" => %{"shape" => "GCMChannelResponse"}}, "payload" => "GCMChannelResponse", "required" => ["GCMChannelResponse"], "type" => "structure"}, "AttributeType" => %{"enum" => ["INCLUSIVE", "EXCLUSIVE"], "type" => "string"}, "CreateAppRequest" => %{"members" => %{"CreateApplicationRequest" => %{"shape" => "CreateApplicationRequest"}}, "payload" => "CreateApplicationRequest", "required" => ["CreateApplicationRequest"], "type" => "structure"}, "ApplicationResponse" => %{"members" => %{"Id" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "CreateSegmentResponse" => %{"members" => %{"SegmentResponse" => %{"shape" => "SegmentResponse"}}, "payload" => "SegmentResponse", "required" => ["SegmentResponse"], "type" => "structure"}, "MessageRequest" => %{"members" => %{"Addresses" => %{"shape" => "MapOfAddressConfiguration"}, "Context" => %{"shape" => "MapOf__string"}, "MessageConfiguration" => %{"shape" => "DirectMessageConfiguration"}}, "type" => "structure"}, "CampaignResponse" => %{"members" => %{"AdditionalTreatments" => %{"shape" => "ListOfTreatmentResource"}, "ApplicationId" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "DefaultState" => %{"shape" => "CampaignState"}, "Description" => %{"shape" => "__string"}, "HoldoutPercent" => %{"shape" => "__integer"}, "Id" => %{"shape" => "__string"}, "IsPaused" => %{"shape" => "__boolean"}, "LastModifiedDate" => %{"shape" => "__string"}, "Limits" => %{"shape" => "CampaignLimits"}, "MessageConfiguration" => %{"shape" => "MessageConfiguration"}, "Name" => %{"shape" => "__string"}, "Schedule" => %{"shape" => "Schedule"}, "SegmentId" => %{"shape" => "__string"}, "SegmentVersion" => %{"shape" => "__integer"}, "State" => %{"shape" => "CampaignState"}, "TreatmentDescription" => %{"shape" => "__string"}, "TreatmentName" => %{"shape" => "__string"}, "Version" => %{"shape" => "__integer"}}, "type" => "structure"}, "CampaignSmsMessage" => %{"members" => %{"Body" => %{"shape" => "__string"}, "MessageType" => %{"shape" => "MessageType"}, "SenderId" => %{"shape" => "__string"}}, "type" => "structure"}, "ImportJobRequest" => %{"members" => %{"DefineSegment" => %{"shape" => "__boolean"}, "ExternalId" => %{"shape" => "__string"}, "Format" => %{"shape" => "Format"}, "RegisterEndpoints" => %{"shape" => "__boolean"}, "RoleArn" => %{"shape" => "__string"}, "S3Url" => %{"shape" => "__string"}, "SegmentId" => %{"shape" => "__string"}, "SegmentName" => %{"shape" => "__string"}}, "type" => "structure"}, "ApplicationsResponse" => %{"members" => %{"Item" => %{"shape" => "ListOfApplicationResponse"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateSegmentRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "SegmentId" => %{"location" => "uri", "locationName" => "segment-id", "shape" => "__string"}, "WriteSegmentRequest" => %{"shape" => "WriteSegmentRequest"}}, "payload" => "WriteSegmentRequest", "required" => ["SegmentId", "ApplicationId", "WriteSegmentRequest"], "type" => "structure"}, "EmailChannelRequest" => %{"members" => %{"Enabled" => %{"shape" => "__boolean"}, "FromAddress" => %{"shape" => "__string"}, "Identity" => %{"shape" => "__string"}, "RoleArn" => %{"shape" => "__string"}}, "type" => "structure"}, "GetSegmentImportJobsResponse" => %{"members" => %{"ImportJobsResponse" => %{"shape" => "ImportJobsResponse"}}, "payload" => "ImportJobsResponse", "required" => ["ImportJobsResponse"], "type" => "structure"}, "CreateImportJobResponse" => %{"members" => %{"ImportJobResponse" => %{"shape" => "ImportJobResponse"}}, "payload" => "ImportJobResponse", "required" => ["ImportJobResponse"], "type" => "structure"}, "GetCampaignActivitiesResponse" => %{"members" => %{"ActivitiesResponse" => %{"shape" => "ActivitiesResponse"}}, "payload" => "ActivitiesResponse", "required" => ["ActivitiesResponse"], "type" => "structure"}, "ActivityResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "CampaignId" => %{"shape" => "__string"}, "End" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Result" => %{"shape" => "__string"}, "ScheduledStart" => %{"shape" => "__string"}, "Start" => %{"shape" => "__string"}, "State" => %{"shape" => "__string"}, "SuccessfulEndpointCount" => %{"shape" => "__integer"}, "TimezonesCompletedCount" => %{"shape" => "__integer"}, "TimezonesTotalCount" => %{"shape" => "__integer"}, "TotalEndpointCount" => %{"shape" => "__integer"}, "TreatmentId" => %{"shape" => "__string"}}, "type" => "structure"}, "APNSChannelRequest" => %{"members" => %{"Certificate" => %{"shape" => "__string"}, "Enabled" => %{"shape" => "__boolean"}, "PrivateKey" => %{"shape" => "__string"}}, "type" => "structure"}, "__boolean" => %{"type" => "boolean"}, "ListOfEndpointBatchItem" => %{"member" => %{"shape" => "EndpointBatchItem"}, "type" => "list"}, "BadRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "__string"}, "RequestID" => %{"shape" => "__string"}}, "type" => "structure"}, "GetImportJobsRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "PageSize" => %{"location" => "querystring", "locationName" => "page-size", "shape" => "__string"}, "Token" => %{"location" => "querystring", "locationName" => "token", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "PutEventStreamResponse" => %{"members" => %{"EventStream" => %{"shape" => "EventStream"}}, "payload" => "EventStream", "required" => ["EventStream"], "type" => "structure"}, "DeleteSmsChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "DefaultMessage" => %{"members" => %{"Body" => %{"shape" => "__string"}, "Substitutions" => %{"shape" => "MapOfListOf__string"}}, "type" => "structure"}, "SMSChannelResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "Enabled" => %{"shape" => "__boolean"}, "Id" => %{"shape" => "__string"}, "IsArchived" => %{"shape" => "__boolean"}, "LastModifiedBy" => %{"shape" => "__string"}, "LastModifiedDate" => %{"shape" => "__string"}, "Platform" => %{"shape" => "__string"}, "SenderId" => %{"shape" => "__string"}, "ShortCode" => %{"shape" => "__string"}, "Version" => %{"shape" => "__integer"}}, "type" => "structure"}, "GetCampaignResponse" => %{"members" => %{"CampaignResponse" => %{"shape" => "CampaignResponse"}}, "payload" => "CampaignResponse", "required" => ["CampaignResponse"], "type" => "structure"}, "SegmentBehaviors" => %{"members" => %{"Recency" => %{"shape" => "RecencyDimension"}}, "type" => "structure"}, "GetApnsChannelResponse" => %{"members" => %{"APNSChannelResponse" => %{"shape" => "APNSChannelResponse"}}, "payload" => "APNSChannelResponse", "required" => ["APNSChannelResponse"], "type" => "structure"}, "ApplicationSettingsResource" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "LastModifiedDate" => %{"shape" => "__string"}, "Limits" => %{"shape" => "CampaignLimits"}, "QuietTime" => %{"shape" => "QuietTime"}}, "type" => "structure"}, "DirectMessageConfiguration" => %{"members" => %{"APNSMessage" => %{"shape" => "APNSMessage"}, "DefaultMessage" => %{"shape" => "DefaultMessage"}, "DefaultPushNotificationMessage" => %{"shape" => "DefaultPushNotificationMessage"}, "GCMMessage" => %{"shape" => "GCMMessage"}, "SMSMessage" => %{"shape" => "SMSMessage"}}, "type" => "structure"}, "UpdateEmailChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "EmailChannelRequest" => %{"shape" => "EmailChannelRequest"}}, "payload" => "EmailChannelRequest", "required" => ["ApplicationId", "EmailChannelRequest"], "type" => "structure"}, "APNSSandboxChannelRequest" => %{"members" => %{"Certificate" => %{"shape" => "__string"}, "Enabled" => %{"shape" => "__boolean"}, "PrivateKey" => %{"shape" => "__string"}}, "type" => "structure"}, "ActivitiesResponse" => %{"members" => %{"Item" => %{"shape" => "ListOfActivityResponse"}}, "type" => "structure"}, "ListOfTreatmentResource" => %{"member" => %{"shape" => "TreatmentResource"}, "type" => "list"}, "DeleteSmsChannelResponse" => %{"members" => %{"SMSChannelResponse" => %{"shape" => "SMSChannelResponse"}}, "payload" => "SMSChannelResponse", "required" => ["SMSChannelResponse"], "type" => "structure"}, "WriteSegmentRequest" => %{"members" => %{"Dimensions" => %{"shape" => "SegmentDimensions"}, "Name" => %{"shape" => "__string"}}, "type" => "structure"}, "MessageBody" => %{"members" => %{"Message" => %{"shape" => "__string"}, "RequestID" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateSegmentResponse" => %{"members" => %{"SegmentResponse" => %{"shape" => "SegmentResponse"}}, "payload" => "SegmentResponse", "required" => ["SegmentResponse"], "type" => "structure"}, "MessageResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "RequestId" => %{"shape" => "__string"}, "Result" => %{"shape" => "MapOfMessageResult"}}, "type" => "structure"}, "UpdateApnsSandboxChannelResponse" => %{"members" => %{"APNSSandboxChannelResponse" => %{"shape" => "APNSSandboxChannelResponse"}}, "payload" => "APNSSandboxChannelResponse", "required" => ["APNSSandboxChannelResponse"], "type" => "structure"}, "GetImportJobRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "JobId" => %{"location" => "uri", "locationName" => "job-id", "shape" => "__string"}}, "required" => ["ApplicationId", "JobId"], "type" => "structure"}, "CampaignState" => %{"members" => %{"CampaignStatus" => %{"shape" => "CampaignStatus"}}, "type" => "structure"}, "UpdateEndpointsBatchResponse" => %{"members" => %{"MessageBody" => %{"shape" => "MessageBody"}}, "payload" => "MessageBody", "required" => ["MessageBody"], "type" => "structure"}, "UpdateApnsChannelRequest" => %{"members" => %{"APNSChannelRequest" => %{"shape" => "APNSChannelRequest"}, "ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "payload" => "APNSChannelRequest", "required" => ["ApplicationId", "APNSChannelRequest"], "type" => "structure"}, "UpdateApplicationSettingsResponse" => %{"members" => %{"ApplicationSettingsResource" => %{"shape" => "ApplicationSettingsResource"}}, "payload" => "ApplicationSettingsResource", "required" => ["ApplicationSettingsResource"], "type" => "structure"}, "MessageType" => %{"enum" => ["TRANSACTIONAL", "PROMOTIONAL"], "type" => "string"}, "MapOf__string" => %{"key" => %{"shape" => "__string"}, "type" => "map", "value" => %{"shape" => "__string"}}, "Frequency" => %{"enum" => ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"], "type" => "string"}, "GetApnsSandboxChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "GetImportJobResponse" => %{"members" => %{"ImportJobResponse" => %{"shape" => "ImportJobResponse"}}, "payload" => "ImportJobResponse", "required" => ["ImportJobResponse"], "type" => "structure"}, "WriteApplicationSettingsRequest" => %{"members" => %{"Limits" => %{"shape" => "CampaignLimits"}, "QuietTime" => %{"shape" => "QuietTime"}}, "type" => "structure"}, "GetEndpointRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "EndpointId" => %{"location" => "uri", "locationName" => "endpoint-id", "shape" => "__string"}}, "required" => ["ApplicationId", "EndpointId"], "type" => "structure"}, "GetSegmentsRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "PageSize" => %{"location" => "querystring", "locationName" => "page-size", "shape" => "__string"}, "Token" => %{"location" => "querystring", "locationName" => "token", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "DeleteAppRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "ImportJobResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "CompletedPieces" => %{"shape" => "__integer"}, "CompletionDate" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "Definition" => %{"shape" => "ImportJobResource"}, "FailedPieces" => %{"shape" => "__integer"}, "Failures" => %{"shape" => "ListOf__string"}, "Id" => %{"shape" => "__string"}, "JobStatus" => %{"shape" => "JobStatus"}, "TotalFailures" => %{"shape" => "__integer"}, "TotalPieces" => %{"shape" => "__integer"}, "TotalProcessed" => %{"shape" => "__integer"}, "Type" => %{"shape" => "__string"}}, "type" => "structure"}, "GetAppsResponse" => %{"members" => %{"ApplicationsResponse" => %{"shape" => "ApplicationsResponse"}}, "payload" => "ApplicationsResponse", "required" => ["ApplicationsResponse"], "type" => "structure"}, "UpdateEndpointRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "EndpointId" => %{"location" => "uri", "locationName" => "endpoint-id", "shape" => "__string"}, "EndpointRequest" => %{"shape" => "EndpointRequest"}}, "payload" => "EndpointRequest", "required" => ["ApplicationId", "EndpointId", "EndpointRequest"], "type" => "structure"}, "EndpointResponse" => %{"members" => %{"Address" => %{"shape" => "__string"}, "ApplicationId" => %{"shape" => "__string"}, "Attributes" => %{"shape" => "MapOfListOf__string"}, "ChannelType" => %{"shape" => "ChannelType"}, "CohortId" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "Demographic" => %{"shape" => "EndpointDemographic"}, "EffectiveDate" => %{"shape" => "__string"}, "EndpointStatus" => %{"shape" => "__string"}, "Id" => %{"shape" => "__string"}, "Location" => %{"shape" => "EndpointLocation"}, "Metrics" => %{"shape" => "MapOf__double"}, "OptOut" => %{"shape" => "__string"}, "RequestId" => %{"shape" => "__string"}, "ShardId" => %{"shape" => "__string"}, "User" => %{"shape" => "EndpointUser"}}, "type" => "structure"}, "WriteEventStream" => %{"members" => %{"DestinationStreamArn" => %{"shape" => "__string"}, "RoleArn" => %{"shape" => "__string"}}, "type" => "structure"}, "MapOf__double" => %{"key" => %{"shape" => "__string"}, "type" => "map", "value" => %{"shape" => "__double"}}, "GCMMessage" => %{"members" => %{"Action" => %{"shape" => "Action"}, "Body" => %{"shape" => "__string"}, "CollapseKey" => %{"shape" => "__string"}, "Data" => %{"shape" => "MapOf__string"}, "IconReference" => %{"shape" => "__string"}, "ImageIconUrl" => %{"shape" => "__string"}, "ImageUrl" => %{"shape" => "__string"}, "RawContent" => %{"shape" => "__string"}, "RestrictedPackageName" => %{"shape" => "__string"}, "SilentPush" => %{"shape" => "__boolean"}, "SmallImageIconUrl" => %{"shape" => "__string"}, "Sound" => %{"shape" => "__string"}, "Substitutions" => %{"shape" => "MapOfListOf__string"}, "Title" => %{"shape" => "__string"}, "Url" => %{"shape" => "__string"}}, "type" => "structure"}, "AttributeDimension" => %{"members" => %{"AttributeType" => %{"shape" => "AttributeType"}, "Values" => %{"shape" => "ListOf__string"}}, "type" => "structure"}, "MessageConfiguration" => %{"members" => %{"APNSMessage" => %{"shape" => "Message"}, "DefaultMessage" => %{"shape" => "Message"}, "EmailMessage" => %{"shape" => "CampaignEmailMessage"}, "GCMMessage" => %{"shape" => "Message"}, "SMSMessage" => %{"shape" => "CampaignSmsMessage"}}, "type" => "structure"}, "PutEventStreamRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "WriteEventStream" => %{"shape" => "WriteEventStream"}}, "payload" => "WriteEventStream", "required" => ["ApplicationId", "WriteEventStream"], "type" => "structure"}, "MessageResult" => %{"members" => %{"DeliveryStatus" => %{"shape" => "DeliveryStatus"}, "StatusCode" => %{"shape" => "__integer"}, "StatusMessage" => %{"shape" => "__string"}, "UpdatedToken" => %{"shape" => "__string"}}, "type" => "structure"}, "APNSMessage" => %{"members" => %{"Action" => %{"shape" => "Action"}, "Badge" => %{"shape" => "__integer"}, "Body" => %{"shape" => "__string"}, "Category" => %{"shape" => "__string"}, "Data" => %{"shape" => "MapOf__string"}, "MediaUrl" => %{"shape" => "__string"}, "RawContent" => %{"shape" => "__string"}, "SilentPush" => %{"shape" => "__boolean"}, "Sound" => %{"shape" => "__string"}, "Substitutions" => %{"shape" => "MapOfListOf__string"}, "ThreadId" => %{"shape" => "__string"}, "Title" => %{"shape" => "__string"}, "Url" => %{"shape" => "__string"}}, "type" => "structure"}, "DeleteEmailChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "GetAppsRequest" => %{"members" => %{"PageSize" => %{"location" => "querystring", "locationName" => "page-size", "shape" => "__string"}, "Token" => %{"location" => "querystring", "locationName" => "token", "shape" => "__string"}}, "type" => "structure"}, "DeleteEmailChannelResponse" => %{"members" => %{"EmailChannelResponse" => %{"shape" => "EmailChannelResponse"}}, "payload" => "EmailChannelResponse", "required" => ["EmailChannelResponse"], "type" => "structure"}, "GetSegmentsResponse" => %{"members" => %{"SegmentsResponse" => %{"shape" => "SegmentsResponse"}}, "payload" => "SegmentsResponse", "required" => ["SegmentsResponse"], "type" => "structure"}, "UpdateCampaignResponse" => %{"members" => %{"CampaignResponse" => %{"shape" => "CampaignResponse"}}, "payload" => "CampaignResponse", "required" => ["CampaignResponse"], "type" => "structure"}, "ListOfActivityResponse" => %{"member" => %{"shape" => "ActivityResponse"}, "type" => "list"}, "DeleteApnsSandboxChannelResponse" => %{"members" => %{"APNSSandboxChannelResponse" => %{"shape" => "APNSSandboxChannelResponse"}}, "payload" => "APNSSandboxChannelResponse", "required" => ["APNSSandboxChannelResponse"], "type" => "structure"}, "__string" => %{"type" => "string"}, "SMSMessage" => %{"members" => %{"Body" => %{"shape" => "__string"}, "MessageType" => %{"shape" => "MessageType"}, "SenderId" => %{"shape" => "__string"}, "Substitutions" => %{"shape" => "MapOfListOf__string"}}, "type" => "structure"}, "DeleteSegmentResponse" => %{"members" => %{"SegmentResponse" => %{"shape" => "SegmentResponse"}}, "payload" => "SegmentResponse", "required" => ["SegmentResponse"], "type" => "structure"}, "InternalServerErrorException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "members" => %{"Message" => %{"shape" => "__string"}, "RequestID" => %{"shape" => "__string"}}, "type" => "structure"}, "CampaignsResponse" => %{"members" => %{"Item" => %{"shape" => "ListOfCampaignResponse"}, "NextToken" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateApnsChannelResponse" => %{"members" => %{"APNSChannelResponse" => %{"shape" => "APNSChannelResponse"}}, "payload" => "APNSChannelResponse", "required" => ["APNSChannelResponse"], "type" => "structure"}, "CreateSegmentRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "WriteSegmentRequest" => %{"shape" => "WriteSegmentRequest"}}, "payload" => "WriteSegmentRequest", "required" => ["ApplicationId", "WriteSegmentRequest"], "type" => "structure"}, "DeleteEventStreamRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "AddressConfiguration" => %{"members" => %{"BodyOverride" => %{"shape" => "__string"}, "ChannelType" => %{"shape" => "ChannelType"}, "Context" => %{"shape" => "MapOf__string"}, "RawContent" => %{"shape" => "__string"}, "Substitutions" => %{"shape" => "MapOfListOf__string"}, "TitleOverride" => %{"shape" => "__string"}}, "type" => "structure"}, "GetSegmentVersionRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "SegmentId" => %{"location" => "uri", "locationName" => "segment-id", "shape" => "__string"}, "Version" => %{"location" => "uri", "locationName" => "version", "shape" => "__string"}}, "required" => ["SegmentId", "Version", "ApplicationId"], "type" => "structure"}, "WriteTreatmentResource" => %{"members" => %{"MessageConfiguration" => %{"shape" => "MessageConfiguration"}, "Schedule" => %{"shape" => "Schedule"}, "SizePercent" => %{"shape" => "__integer"}, "TreatmentDescription" => %{"shape" => "__string"}, "TreatmentName" => %{"shape" => "__string"}}, "type" => "structure"}, "GetEmailChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "ListOfSegmentResponse" => %{"member" => %{"shape" => "SegmentResponse"}, "type" => "list"}, "GetSmsChannelResponse" => %{"members" => %{"SMSChannelResponse" => %{"shape" => "SMSChannelResponse"}}, "payload" => "SMSChannelResponse", "required" => ["SMSChannelResponse"], "type" => "structure"}, "SegmentResponse" => %{"members" => %{"ApplicationId" => %{"shape" => "__string"}, "CreationDate" => %{"shape" => "__string"}, "Dimensions" => %{"shape" => "SegmentDimensions"}, "Id" => %{"shape" => "__string"}, "ImportDefinition" => %{"shape" => "SegmentImportResource"}, "LastModifiedDate" => %{"shape" => "__string"}, "Name" => %{"shape" => "__string"}, "SegmentType" => %{"shape" => "SegmentType"}, "Version" => %{"shape" => "__integer"}}, "type" => "structure"}, "DeliveryStatus" => %{"enum" => ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE"], "type" => "string"}, "MapOf__integer" => %{"key" => %{"shape" => "__string"}, "type" => "map", "value" => %{"shape" => "__integer"}}, "GetSegmentVersionsResponse" => %{"members" => %{"SegmentsResponse" => %{"shape" => "SegmentsResponse"}}, "payload" => "SegmentsResponse", "required" => ["SegmentsResponse"], "type" => "structure"}, "__integer" => %{"type" => "integer"}, "CampaignLimits" => %{"members" => %{"Daily" => %{"shape" => "__integer"}, "Total" => %{"shape" => "__integer"}}, "type" => "structure"}, "__timestamp" => %{"type" => "timestamp"}, "ImportJobResource" => %{"members" => %{"DefineSegment" => %{"shape" => "__boolean"}, "ExternalId" => %{"shape" => "__string"}, "Format" => %{"shape" => "Format"}, "RegisterEndpoints" => %{"shape" => "__boolean"}, "RoleArn" => %{"shape" => "__string"}, "S3Url" => %{"shape" => "__string"}, "SegmentId" => %{"shape" => "__string"}, "SegmentName" => %{"shape" => "__string"}}, "type" => "structure"}, "GetApnsSandboxChannelResponse" => %{"members" => %{"APNSSandboxChannelResponse" => %{"shape" => "APNSSandboxChannelResponse"}}, "payload" => "APNSSandboxChannelResponse", "required" => ["APNSSandboxChannelResponse"], "type" => "structure"}, "UpdateEndpointsBatchRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "EndpointBatchRequest" => %{"shape" => "EndpointBatchRequest"}}, "payload" => "EndpointBatchRequest", "required" => ["ApplicationId", "EndpointBatchRequest"], "type" => "structure"}, "EndpointRequest" => %{"members" => %{"Address" => %{"shape" => "__string"}, "Attributes" => %{"shape" => "MapOfListOf__string"}, "ChannelType" => %{"shape" => "ChannelType"}, "Demographic" => %{"shape" => "EndpointDemographic"}, "EffectiveDate" => %{"shape" => "__string"}, "EndpointStatus" => %{"shape" => "__string"}, "Location" => %{"shape" => "EndpointLocation"}, "Metrics" => %{"shape" => "MapOf__double"}, "OptOut" => %{"shape" => "__string"}, "RequestId" => %{"shape" => "__string"}, "User" => %{"shape" => "EndpointUser"}}, "type" => "structure"}, "CreateCampaignRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "WriteCampaignRequest" => %{"shape" => "WriteCampaignRequest"}}, "payload" => "WriteCampaignRequest", "required" => ["ApplicationId", "WriteCampaignRequest"], "type" => "structure"}, "EndpointDemographic" => %{"members" => %{"AppVersion" => %{"shape" => "__string"}, "Locale" => %{"shape" => "__string"}, "Make" => %{"shape" => "__string"}, "Model" => %{"shape" => "__string"}, "ModelVersion" => %{"shape" => "__string"}, "Platform" => %{"shape" => "__string"}, "PlatformVersion" => %{"shape" => "__string"}, "Timezone" => %{"shape" => "__string"}}, "type" => "structure"}, "CampaignEmailMessage" => %{"members" => %{"Body" => %{"shape" => "__string"}, "FromAddress" => %{"shape" => "__string"}, "HtmlBody" => %{"shape" => "__string"}, "Title" => %{"shape" => "__string"}}, "type" => "structure"}, "UpdateCampaignRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}, "CampaignId" => %{"location" => "uri", "locationName" => "campaign-id", "shape" => "__string"}, "WriteCampaignRequest" => %{"shape" => "WriteCampaignRequest"}}, "payload" => "WriteCampaignRequest", "required" => ["CampaignId", "ApplicationId", "WriteCampaignRequest"], "type" => "structure"}, "CreateAppResponse" => %{"members" => %{"ApplicationResponse" => %{"shape" => "ApplicationResponse"}}, "payload" => "ApplicationResponse", "required" => ["ApplicationResponse"], "type" => "structure"}, "GetSmsChannelRequest" => %{"members" => %{"ApplicationId" => %{"location" => "uri", "locationName" => "application-id", "shape" => "__string"}}, "required" => ["ApplicationId"], "type" => "structure"}, "UpdateEndpointResponse" => %{"members" => %{"MessageBody" => %{"shape" => "MessageBody"}}, "payload" => "MessageBody", "required" => ["MessageBody"], "type" => "structure"}}
  end
end