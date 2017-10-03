defmodule Baiji.ElasticTranscoder do
  @moduledoc """
  AWS Elastic Transcoder Service

  The AWS Elastic Transcoder Service.
  """

  @doc """
  The CancelJob operation cancels an unfinished job.

  <note> You can only cancel a job that has a status of `Submitted`. To
  prevent a pipeline from starting to process a job while you're getting the
  job identifier, use `UpdatePipelineStatus` to temporarily pause the
  pipeline.

  </note>
  """
  def cancel_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/jobs/{Id}",
      input:            input,
      options:          options,
      action:           "CancelJob",
      method:           :delete,
      input_shape:      "CancelJobRequest",
      output_shape:     "CancelJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  When you create a job, Elastic Transcoder returns JSON data that includes
  the values that you specified plus information about the job that is
  created.

  If you have specified more than one output for your jobs (for example, one
  output for the Kindle Fire and another output for the Apple iPhone 4s), you
  currently must use the Elastic Transcoder API to list the jobs (as opposed
  to the AWS Console).
  """
  def create_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/jobs",
      input:            input,
      options:          options,
      action:           "CreateJob",
      method:           :post,
      input_shape:      "CreateJobRequest",
      output_shape:     "CreateJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The CreatePipeline operation creates a pipeline with settings that you
  specify.
  """
  def create_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/pipelines",
      input:            input,
      options:          options,
      action:           "CreatePipeline",
      method:           :post,
      input_shape:      "CreatePipelineRequest",
      output_shape:     "CreatePipelineResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The CreatePreset operation creates a preset with settings that you specify.

  <important> Elastic Transcoder checks the CreatePreset settings to ensure
  that they meet Elastic Transcoder requirements and to determine whether
  they comply with H.264 standards. If your settings are not valid for
  Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response
  (`ValidationException`) and does not create the preset. If the settings are
  valid for Elastic Transcoder but aren't strictly compliant with the H.264
  standard, Elastic Transcoder creates the preset and returns a warning
  message in the response. This helps you determine whether your settings
  comply with the H.264 standard while giving you greater flexibility with
  respect to the video that Elastic Transcoder produces.

  </important> Elastic Transcoder uses the H.264 video-compression format.
  For more information, see the International Telecommunication Union
  publication *Recommendation ITU-T H.264: Advanced video coding for generic
  audiovisual services*.
  """
  def create_preset(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/presets",
      input:            input,
      options:          options,
      action:           "CreatePreset",
      method:           :post,
      input_shape:      "CreatePresetRequest",
      output_shape:     "CreatePresetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The DeletePipeline operation removes a pipeline.

  You can only delete a pipeline that has never been used or that is not
  currently in use (doesn't contain any active jobs). If the pipeline is
  currently in use, `DeletePipeline` returns an error.
  """
  def delete_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/pipelines/{Id}",
      input:            input,
      options:          options,
      action:           "DeletePipeline",
      method:           :delete,
      input_shape:      "DeletePipelineRequest",
      output_shape:     "DeletePipelineResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The DeletePreset operation removes a preset that you've added in an AWS
  region.

  <note> You can't delete the default presets that are included with Elastic
  Transcoder.

  </note>
  """
  def delete_preset(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/presets/{Id}",
      input:            input,
      options:          options,
      action:           "DeletePreset",
      method:           :delete,
      input_shape:      "DeletePresetRequest",
      output_shape:     "DeletePresetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The ListJobsByPipeline operation gets a list of the jobs currently in a
  pipeline.

  Elastic Transcoder returns all of the jobs currently in the specified
  pipeline. The response body contains one element for each job that
  satisfies the search criteria.
  """
  def list_jobs_by_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/jobsByPipeline/{PipelineId}",
      input:            input,
      options:          options,
      action:           "ListJobsByPipeline",
      method:           :get,
      input_shape:      "ListJobsByPipelineRequest",
      output_shape:     "ListJobsByPipelineResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The ListJobsByStatus operation gets a list of jobs that have a specified
  status. The response body contains one element for each job that satisfies
  the search criteria.
  """
  def list_jobs_by_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/jobsByStatus/{Status}",
      input:            input,
      options:          options,
      action:           "ListJobsByStatus",
      method:           :get,
      input_shape:      "ListJobsByStatusRequest",
      output_shape:     "ListJobsByStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The ListPipelines operation gets a list of the pipelines associated with
  the current AWS account.
  """
  def list_pipelines(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/pipelines",
      input:            input,
      options:          options,
      action:           "ListPipelines",
      method:           :get,
      input_shape:      "ListPipelinesRequest",
      output_shape:     "ListPipelinesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The ListPresets operation gets a list of the default presets included with
  Elastic Transcoder and the presets that you've added in an AWS region.
  """
  def list_presets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/presets",
      input:            input,
      options:          options,
      action:           "ListPresets",
      method:           :get,
      input_shape:      "ListPresetsRequest",
      output_shape:     "ListPresetsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The ReadJob operation returns detailed information about a job.
  """
  def read_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/jobs/{Id}",
      input:            input,
      options:          options,
      action:           "ReadJob",
      method:           :get,
      input_shape:      "ReadJobRequest",
      output_shape:     "ReadJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The ReadPipeline operation gets detailed information about a pipeline.
  """
  def read_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/pipelines/{Id}",
      input:            input,
      options:          options,
      action:           "ReadPipeline",
      method:           :get,
      input_shape:      "ReadPipelineRequest",
      output_shape:     "ReadPipelineResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The ReadPreset operation gets detailed information about a preset.
  """
  def read_preset(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/presets/{Id}",
      input:            input,
      options:          options,
      action:           "ReadPreset",
      method:           :get,
      input_shape:      "ReadPresetRequest",
      output_shape:     "ReadPresetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The TestRole operation tests the IAM role used to create the pipeline.

  The `TestRole` action lets you determine whether the IAM role you are using
  has sufficient permissions to let Elastic Transcoder perform tasks
  associated with the transcoding process. The action attempts to assume the
  specified IAM role, checks read access to the input and output buckets, and
  tries to send a test notification to Amazon SNS topics that you specify.
  """
  def test_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/roleTests",
      input:            input,
      options:          options,
      action:           "TestRole",
      method:           :post,
      input_shape:      "TestRoleRequest",
      output_shape:     "TestRoleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use the `UpdatePipeline` operation to update settings for a pipeline.

  <important> When you change pipeline settings, your changes take effect
  immediately. Jobs that you have already submitted and that Elastic
  Transcoder has not started to process are affected in addition to jobs that
  you submit after you change settings.

  </important>
  """
  def update_pipeline(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/pipelines/{Id}",
      input:            input,
      options:          options,
      action:           "UpdatePipeline",
      method:           :put,
      input_shape:      "UpdatePipelineRequest",
      output_shape:     "UpdatePipelineResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  With the UpdatePipelineNotifications operation, you can update Amazon
  Simple Notification Service (Amazon SNS) notifications for a pipeline.

  When you update notifications for a pipeline, Elastic Transcoder returns
  the values that you specified in the request.
  """
  def update_pipeline_notifications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/pipelines/{Id}/notifications",
      input:            input,
      options:          options,
      action:           "UpdatePipelineNotifications",
      method:           :post,
      input_shape:      "UpdatePipelineNotificationsRequest",
      output_shape:     "UpdatePipelineNotificationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The UpdatePipelineStatus operation pauses or reactivates a pipeline, so
  that the pipeline stops or restarts the processing of jobs.

  Changing the pipeline status is useful if you want to cancel one or more
  jobs. You can't cancel jobs after Elastic Transcoder has started processing
  them; if you pause the pipeline to which you submitted the jobs, you have
  more time to get the job IDs for the jobs that you want to cancel, and to
  send a `CancelJob` request.
  """
  def update_pipeline_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2012-09-25/pipelines/{Id}/status",
      input:            input,
      options:          options,
      action:           "UpdatePipelineStatus",
      method:           :post,
      input_shape:      "UpdatePipelineStatusRequest",
      output_shape:     "UpdatePipelineStatusResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "elastictranscoder",
      target_prefix:    nil,
      endpoint_prefix:  "elastictranscoder",
      type:             :rest_json,
      version:          "2012-09-25",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"ReadPresetResponse" => %{"members" => %{"Preset" => %{"shape" => "Preset"}}, "type" => "structure"}, "Composition" => %{"deprecated" => true, "member" => %{"shape" => "Clip"}, "type" => "list"}, "MaxFrameRate" => %{"pattern" => "(^10$)|(^15$)|(^23.97$)|(^24$)|(^25$)|(^29.97$)|(^30$)|(^50$)|(^60$)", "type" => "string"}, "UserMetadata" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "DetectedProperties" => %{"members" => %{"DurationMillis" => %{"shape" => "NullableLong"}, "FileSize" => %{"shape" => "NullableLong"}, "FrameRate" => %{"shape" => "FloatString"}, "Height" => %{"shape" => "NullableInteger"}, "Width" => %{"shape" => "NullableInteger"}}, "type" => "structure"}, "JobWatermark" => %{"members" => %{"Encryption" => %{"shape" => "Encryption"}, "InputKey" => %{"shape" => "WatermarkKey"}, "PresetWatermarkId" => %{"shape" => "PresetWatermarkId"}}, "type" => "structure"}, "Job" => %{"members" => %{"Arn" => %{"shape" => "String"}, "Id" => %{"shape" => "Id"}, "Input" => %{"shape" => "JobInput"}, "Inputs" => %{"shape" => "JobInputs"}, "Output" => %{"shape" => "JobOutput"}, "OutputKeyPrefix" => %{"shape" => "Key"}, "Outputs" => %{"shape" => "JobOutputs"}, "PipelineId" => %{"shape" => "Id"}, "Playlists" => %{"shape" => "Playlists"}, "Status" => %{"shape" => "JobStatus"}, "Timing" => %{"shape" => "Timing"}, "UserMetadata" => %{"shape" => "UserMetadata"}}, "type" => "structure"}, "ListJobsByStatusRequest" => %{"members" => %{"Ascending" => %{"location" => "querystring", "locationName" => "Ascending", "shape" => "Ascending"}, "PageToken" => %{"location" => "querystring", "locationName" => "PageToken", "shape" => "Id"}, "Status" => %{"location" => "uri", "locationName" => "Status", "shape" => "JobStatus"}}, "required" => ["Status"], "type" => "structure"}, "AudioCodecProfile" => %{"pattern" => "(^auto$)|(^AAC-LC$)|(^HE-AAC$)|(^HE-AACv2$)", "type" => "string"}, "CaptionFormat" => %{"members" => %{"Encryption" => %{"shape" => "Encryption"}, "Format" => %{"shape" => "CaptionFormatFormat"}, "Pattern" => %{"shape" => "CaptionFormatPattern"}}, "type" => "structure"}, "OutputKeys" => %{"max" => 30, "member" => %{"shape" => "Key"}, "type" => "list"}, "Id" => %{"pattern" => "^\\d{13}-\\w{6}$", "type" => "string"}, "String" => %{"type" => "string"}, "JpgOrPng" => %{"pattern" => "(^jpg$)|(^png$)", "type" => "string"}, "AudioBitRate" => %{"pattern" => "^\\d{1,3}$", "type" => "string"}, "UpdatePipelineStatusRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}, "Status" => %{"shape" => "PipelineStatus"}}, "required" => ["Id", "Status"], "type" => "structure"}, "Preset" => %{"members" => %{"Arn" => %{"shape" => "String"}, "Audio" => %{"shape" => "AudioParameters"}, "Container" => %{"shape" => "PresetContainer"}, "Description" => %{"shape" => "Description"}, "Id" => %{"shape" => "Id"}, "Name" => %{"shape" => "Name"}, "Thumbnails" => %{"shape" => "Thumbnails"}, "Type" => %{"shape" => "PresetType"}, "Video" => %{"shape" => "VideoParameters"}}, "type" => "structure"}, "CreatePresetResponse" => %{"members" => %{"Preset" => %{"shape" => "Preset"}, "Warning" => %{"shape" => "String"}}, "type" => "structure"}, "CaptionFormatPattern" => %{"pattern" => "(^$)|(^.*\\{language\\}.*$)", "type" => "string"}, "Role" => %{"pattern" => "^arn:aws:iam::\\w{12}:role/.+$", "type" => "string"}, "UpdatePipelineRequest" => %{"members" => %{"AwsKmsKeyArn" => %{"shape" => "KeyArn"}, "ContentConfig" => %{"shape" => "PipelineOutputConfig"}, "Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}, "InputBucket" => %{"shape" => "BucketName"}, "Name" => %{"shape" => "Name"}, "Notifications" => %{"shape" => "Notifications"}, "Role" => %{"shape" => "Role"}, "ThumbnailConfig" => %{"shape" => "PipelineOutputConfig"}}, "required" => ["Id"], "type" => "structure"}, "Resolution" => %{"pattern" => "(^auto$)|(^\\d{1,5}x\\d{1,5}$)", "type" => "string"}, "CancelJobRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "CreateJobPlaylist" => %{"members" => %{"Format" => %{"shape" => "PlaylistFormat"}, "HlsContentProtection" => %{"shape" => "HlsContentProtection"}, "Name" => %{"shape" => "Filename"}, "OutputKeys" => %{"shape" => "OutputKeys"}, "PlayReadyDrm" => %{"shape" => "PlayReadyDrm"}}, "type" => "structure"}, "AccessDeniedException" => %{"error" => %{"httpStatusCode" => 403}, "exception" => true, "members" => %{}, "type" => "structure"}, "Target" => %{"pattern" => "(^Content$)|(^Frame$)", "type" => "string"}, "IncompatibleVersionException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{}, "type" => "structure"}, "Encryption" => %{"members" => %{"InitializationVector" => %{"shape" => "ZeroTo255String"}, "Key" => %{"shape" => "Base64EncodedString"}, "KeyMd5" => %{"shape" => "Base64EncodedString"}, "Mode" => %{"shape" => "EncryptionMode"}}, "type" => "structure"}, "AudioSigned" => %{"pattern" => "(^Unsigned$)|(^Signed$)", "type" => "string"}, "Jobs" => %{"member" => %{"shape" => "Job"}, "type" => "list"}, "DeletePresetResponse" => %{"members" => %{}, "type" => "structure"}, "OneTo512String" => %{"max" => 512, "min" => 1, "type" => "string"}, "DigitsOrAuto" => %{"pattern" => "(^auto$)|(^\\d{2,4}$)", "type" => "string"}, "Ascending" => %{"pattern" => "(^true$)|(^false$)", "type" => "string"}, "JobStatus" => %{"pattern" => "(^Submitted$)|(^Progressing$)|(^Complete$)|(^Canceled$)|(^Error$)", "type" => "string"}, "ListPresetsRequest" => %{"members" => %{"Ascending" => %{"location" => "querystring", "locationName" => "Ascending", "shape" => "Ascending"}, "PageToken" => %{"location" => "querystring", "locationName" => "PageToken", "shape" => "Id"}}, "type" => "structure"}, "Captions" => %{"members" => %{"CaptionFormats" => %{"shape" => "CaptionFormats"}, "CaptionSources" => %{"deprecated" => true, "shape" => "CaptionSources"}, "MergePolicy" => %{"deprecated" => true, "shape" => "CaptionMergePolicy"}}, "type" => "structure"}, "ResourceInUseException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{}, "type" => "structure"}, "FixedGOP" => %{"pattern" => "(^true$)|(^false$)", "type" => "string"}, "UpdatePipelineResponse" => %{"members" => %{"Pipeline" => %{"shape" => "Pipeline"}, "Warnings" => %{"shape" => "Warnings"}}, "type" => "structure"}, "Key" => %{"max" => 255, "min" => 1, "type" => "string"}, "Name" => %{"max" => 40, "min" => 1, "type" => "string"}, "UpdatePipelineNotificationsResponse" => %{"members" => %{"Pipeline" => %{"shape" => "Pipeline"}}, "type" => "structure"}, "Pipelines" => %{"member" => %{"shape" => "Pipeline"}, "type" => "list"}, "VideoParameters" => %{"members" => %{"AspectRatio" => %{"shape" => "AspectRatio"}, "BitRate" => %{"shape" => "VideoBitRate"}, "Codec" => %{"shape" => "VideoCodec"}, "CodecOptions" => %{"shape" => "CodecOptions"}, "DisplayAspectRatio" => %{"shape" => "AspectRatio"}, "FixedGOP" => %{"shape" => "FixedGOP"}, "FrameRate" => %{"shape" => "FrameRate"}, "KeyframesMaxDist" => %{"shape" => "KeyframesMaxDist"}, "MaxFrameRate" => %{"shape" => "MaxFrameRate"}, "MaxHeight" => %{"shape" => "DigitsOrAuto"}, "MaxWidth" => %{"shape" => "DigitsOrAuto"}, "PaddingPolicy" => %{"shape" => "PaddingPolicy"}, "Resolution" => %{"shape" => "Resolution"}, "SizingPolicy" => %{"shape" => "SizingPolicy"}, "Watermarks" => %{"shape" => "PresetWatermarks"}}, "type" => "structure"}, "AudioCodecOptions" => %{"members" => %{"BitDepth" => %{"shape" => "AudioBitDepth"}, "BitOrder" => %{"shape" => "AudioBitOrder"}, "Profile" => %{"shape" => "AudioCodecProfile"}, "Signed" => %{"shape" => "AudioSigned"}}, "type" => "structure"}, "VideoCodec" => %{"pattern" => "(^H\\.264$)|(^vp8$)|(^vp9$)|(^mpeg2$)|(^gif$)", "type" => "string"}, "DeletePipelineResponse" => %{"members" => %{}, "type" => "structure"}, "ListPipelinesRequest" => %{"members" => %{"Ascending" => %{"location" => "querystring", "locationName" => "Ascending", "shape" => "Ascending"}, "PageToken" => %{"location" => "querystring", "locationName" => "PageToken", "shape" => "Id"}}, "type" => "structure"}, "NullableInteger" => %{"type" => "integer"}, "Description" => %{"max" => 255, "min" => 0, "type" => "string"}, "CreateJobResponse" => %{"members" => %{"Job" => %{"shape" => "Job"}}, "type" => "structure"}, "ThumbnailPattern" => %{"pattern" => "(^$)|(^.*\\{count\\}.*$)", "type" => "string"}, "PresetWatermark" => %{"members" => %{"HorizontalAlign" => %{"shape" => "HorizontalAlign"}, "HorizontalOffset" => %{"shape" => "PixelsOrPercent"}, "Id" => %{"shape" => "PresetWatermarkId"}, "MaxHeight" => %{"shape" => "PixelsOrPercent"}, "MaxWidth" => %{"shape" => "PixelsOrPercent"}, "Opacity" => %{"shape" => "Opacity"}, "SizingPolicy" => %{"shape" => "WatermarkSizingPolicy"}, "Target" => %{"shape" => "Target"}, "VerticalAlign" => %{"shape" => "VerticalAlign"}, "VerticalOffset" => %{"shape" => "PixelsOrPercent"}}, "type" => "structure"}, "ZeroTo512String" => %{"max" => 512, "min" => 0, "type" => "string"}, "SnsTopics" => %{"max" => 30, "member" => %{"shape" => "SnsTopic"}, "type" => "list"}, "CaptionMergePolicy" => %{"pattern" => "(^MergeOverride$)|(^MergeRetain$)|(^Override$)", "type" => "string"}, "CreateJobPlaylists" => %{"max" => 30, "member" => %{"shape" => "CreateJobPlaylist"}, "type" => "list"}, "ExceptionMessages" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "AspectRatio" => %{"pattern" => "(^auto$)|(^1:1$)|(^4:3$)|(^3:2$)|(^16:9$)", "type" => "string"}, "JobOutput" => %{"members" => %{"AlbumArt" => %{"shape" => "JobAlbumArt"}, "AppliedColorSpaceConversion" => %{"shape" => "String"}, "Captions" => %{"shape" => "Captions"}, "Composition" => %{"deprecated" => true, "shape" => "Composition"}, "Duration" => %{"shape" => "NullableLong"}, "DurationMillis" => %{"shape" => "NullableLong"}, "Encryption" => %{"shape" => "Encryption"}, "FileSize" => %{"shape" => "NullableLong"}, "FrameRate" => %{"shape" => "FloatString"}, "Height" => %{"shape" => "NullableInteger"}, "Id" => %{"shape" => "String"}, "Key" => %{"shape" => "Key"}, "PresetId" => %{"shape" => "Id"}, "Rotate" => %{"shape" => "Rotate"}, "SegmentDuration" => %{"shape" => "FloatString"}, "Status" => %{"shape" => "JobStatus"}, "StatusDetail" => %{"shape" => "Description"}, "ThumbnailEncryption" => %{"shape" => "Encryption"}, "ThumbnailPattern" => %{"shape" => "ThumbnailPattern"}, "Watermarks" => %{"shape" => "JobWatermarks"}, "Width" => %{"shape" => "NullableInteger"}}, "type" => "structure"}, "FloatString" => %{"pattern" => "^\\d{1,5}(\\.\\d{0,5})?$", "type" => "string"}, "JobInput" => %{"members" => %{"AspectRatio" => %{"shape" => "AspectRatio"}, "Container" => %{"shape" => "JobContainer"}, "DetectedProperties" => %{"shape" => "DetectedProperties"}, "Encryption" => %{"shape" => "Encryption"}, "FrameRate" => %{"shape" => "FrameRate"}, "InputCaptions" => %{"shape" => "InputCaptions"}, "Interlaced" => %{"shape" => "Interlaced"}, "Key" => %{"shape" => "LongKey"}, "Resolution" => %{"shape" => "Resolution"}, "TimeSpan" => %{"shape" => "TimeSpan"}}, "type" => "structure"}, "AudioSampleRate" => %{"pattern" => "(^auto$)|(^22050$)|(^32000$)|(^44100$)|(^48000$)|(^96000$)|(^192000$)", "type" => "string"}, "ZeroTo255String" => %{"max" => 255, "min" => 0, "type" => "string"}, "CaptionSources" => %{"max" => 20, "member" => %{"shape" => "CaptionSource"}, "type" => "list"}, "CreatePipelineResponse" => %{"members" => %{"Pipeline" => %{"shape" => "Pipeline"}, "Warnings" => %{"shape" => "Warnings"}}, "type" => "structure"}, "Artwork" => %{"members" => %{"AlbumArtFormat" => %{"shape" => "JpgOrPng"}, "Encryption" => %{"shape" => "Encryption"}, "InputKey" => %{"shape" => "WatermarkKey"}, "MaxHeight" => %{"shape" => "DigitsOrAuto"}, "MaxWidth" => %{"shape" => "DigitsOrAuto"}, "PaddingPolicy" => %{"shape" => "PaddingPolicy"}, "SizingPolicy" => %{"shape" => "SizingPolicy"}}, "type" => "structure"}, "SnsTopic" => %{"pattern" => "(^$)|(^arn:aws:sns:.*:\\w{12}:.+$)", "type" => "string"}, "Warning" => %{"members" => %{"Code" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}}, "type" => "structure"}, "Success" => %{"pattern" => "(^true$)|(^false$)", "type" => "string"}, "CreateJobRequest" => %{"members" => %{"Input" => %{"shape" => "JobInput"}, "Inputs" => %{"shape" => "JobInputs"}, "Output" => %{"shape" => "CreateJobOutput"}, "OutputKeyPrefix" => %{"shape" => "Key"}, "Outputs" => %{"shape" => "CreateJobOutputs"}, "PipelineId" => %{"shape" => "Id"}, "Playlists" => %{"shape" => "CreateJobPlaylists"}, "UserMetadata" => %{"shape" => "UserMetadata"}}, "required" => ["PipelineId"], "type" => "structure"}, "ThumbnailResolution" => %{"pattern" => "^\\d{1,5}x\\d{1,5}$", "type" => "string"}, "Timing" => %{"members" => %{"FinishTimeMillis" => %{"shape" => "NullableLong"}, "StartTimeMillis" => %{"shape" => "NullableLong"}, "SubmitTimeMillis" => %{"shape" => "NullableLong"}}, "type" => "structure"}, "UpdatePipelineNotificationsRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}, "Notifications" => %{"shape" => "Notifications"}}, "required" => ["Id", "Notifications"], "type" => "structure"}, "HorizontalAlign" => %{"pattern" => "(^Left$)|(^Right$)|(^Center$)", "type" => "string"}, "LongKey" => %{"max" => 1024, "min" => 1, "type" => "string"}, "AudioParameters" => %{"members" => %{"AudioPackingMode" => %{"shape" => "AudioPackingMode"}, "BitRate" => %{"shape" => "AudioBitRate"}, "Channels" => %{"shape" => "AudioChannels"}, "Codec" => %{"shape" => "AudioCodec"}, "CodecOptions" => %{"shape" => "AudioCodecOptions"}, "SampleRate" => %{"shape" => "AudioSampleRate"}}, "type" => "structure"}, "GranteeType" => %{"pattern" => "(^Canonical$)|(^Email$)|(^Group$)", "type" => "string"}, "CaptionFormatFormat" => %{"pattern" => "(^mov-text$)|(^srt$)|(^scc$)|(^webvtt$)|(^dfxp$)|(^cea-708$)", "type" => "string"}, "ValidationException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{}, "type" => "structure"}, "ListJobsByStatusResponse" => %{"members" => %{"Jobs" => %{"shape" => "Jobs"}, "NextPageToken" => %{"shape" => "Id"}}, "type" => "structure"}, "HlsContentProtection" => %{"members" => %{"InitializationVector" => %{"shape" => "ZeroTo255String"}, "Key" => %{"shape" => "Base64EncodedString"}, "KeyMd5" => %{"shape" => "Base64EncodedString"}, "KeyStoragePolicy" => %{"shape" => "KeyStoragePolicy"}, "LicenseAcquisitionUrl" => %{"shape" => "ZeroTo512String"}, "Method" => %{"shape" => "HlsContentProtectionMethod"}}, "type" => "structure"}, "JobInputs" => %{"max" => 10000, "member" => %{"shape" => "JobInput"}, "type" => "list"}, "InputCaptions" => %{"members" => %{"CaptionSources" => %{"shape" => "CaptionSources"}, "MergePolicy" => %{"shape" => "CaptionMergePolicy"}}, "type" => "structure"}, "JobOutputs" => %{"member" => %{"shape" => "JobOutput"}, "type" => "list"}, "JobWatermarks" => %{"member" => %{"shape" => "JobWatermark"}, "type" => "list"}, "Notifications" => %{"members" => %{"Completed" => %{"shape" => "SnsTopic"}, "Error" => %{"shape" => "SnsTopic"}, "Progressing" => %{"shape" => "SnsTopic"}, "Warning" => %{"shape" => "SnsTopic"}}, "type" => "structure"}, "Playlist" => %{"members" => %{"Format" => %{"shape" => "PlaylistFormat"}, "HlsContentProtection" => %{"shape" => "HlsContentProtection"}, "Name" => %{"shape" => "Filename"}, "OutputKeys" => %{"shape" => "OutputKeys"}, "PlayReadyDrm" => %{"shape" => "PlayReadyDrm"}, "Status" => %{"shape" => "JobStatus"}, "StatusDetail" => %{"shape" => "Description"}}, "type" => "structure"}, "ListJobsByPipelineResponse" => %{"members" => %{"Jobs" => %{"shape" => "Jobs"}, "NextPageToken" => %{"shape" => "Id"}}, "type" => "structure"}, "ReadJobRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "NullableLong" => %{"type" => "long"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{}, "type" => "structure"}, "TestRoleRequest" => %{"deprecated" => true, "members" => %{"InputBucket" => %{"shape" => "BucketName"}, "OutputBucket" => %{"shape" => "BucketName"}, "Role" => %{"shape" => "Role"}, "Topics" => %{"shape" => "SnsTopics"}}, "required" => ["Role", "InputBucket", "OutputBucket", "Topics"], "type" => "structure"}, "UpdatePipelineStatusResponse" => %{"members" => %{"Pipeline" => %{"shape" => "Pipeline"}}, "type" => "structure"}, "PlaylistFormat" => %{"pattern" => "(^HLSv3$)|(^HLSv4$)|(^Smooth$)|(^MPEG-DASH$)", "type" => "string"}, "CaptionFormats" => %{"max" => 4, "member" => %{"shape" => "CaptionFormat"}, "type" => "list"}, "BucketName" => %{"pattern" => "^(\\w|\\.|-){1,255}$", "type" => "string"}, "WatermarkSizingPolicy" => %{"pattern" => "(^Fit$)|(^Stretch$)|(^ShrinkToFit$)", "type" => "string"}, "Filename" => %{"max" => 255, "min" => 1, "type" => "string"}, "Clip" => %{"deprecated" => true, "members" => %{"TimeSpan" => %{"shape" => "TimeSpan"}}, "type" => "structure"}, "PipelineOutputConfig" => %{"members" => %{"Bucket" => %{"shape" => "BucketName"}, "Permissions" => %{"shape" => "Permissions"}, "StorageClass" => %{"shape" => "StorageClass"}}, "type" => "structure"}, "Base64EncodedString" => %{"pattern" => "^$|(^(?:[A-Za-z0-9\\+/]{4})*(?:[A-Za-z0-9\\+/]{2}==|[A-Za-z0-9\\+/]{3}=)?$)", "type" => "string"}, "CodecOptions" => %{"key" => %{"shape" => "CodecOption"}, "max" => 30, "type" => "map", "value" => %{"shape" => "CodecOption"}}, "PresetContainer" => %{"pattern" => "(^mp4$)|(^ts$)|(^webm$)|(^mp3$)|(^flac$)|(^oga$)|(^ogg$)|(^fmp4$)|(^mpg$)|(^flv$)|(^gif$)|(^mxf$)|(^wav$)", "type" => "string"}, "ResourceNotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{}, "type" => "structure"}, "PlayReadyDrmFormatString" => %{"pattern" => "(^microsoft$)|(^discretix-3.0$)", "type" => "string"}, "StorageClass" => %{"pattern" => "(^ReducedRedundancy$)|(^Standard$)", "type" => "string"}, "InternalServiceException" => %{"exception" => true, "fault" => true, "members" => %{}, "type" => "structure"}, "CancelJobResponse" => %{"members" => %{}, "type" => "structure"}, "AccessControls" => %{"max" => 30, "member" => %{"shape" => "AccessControl"}, "type" => "list"}, "PipelineStatus" => %{"pattern" => "(^Active$)|(^Paused$)", "type" => "string"}, "PresetType" => %{"pattern" => "(^System$)|(^Custom$)", "type" => "string"}, "KeyIdGuid" => %{"pattern" => "(^[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}$)|(^[0-9A-Fa-f]{32}$)", "type" => "string"}, "JobContainer" => %{"pattern" => "(^auto$)|(^3gp$)|(^asf$)|(^avi$)|(^divx$)|(^flv$)|(^mkv$)|(^mov$)|(^mp4$)|(^mpeg$)|(^mpeg-ps$)|(^mpeg-ts$)|(^mxf$)|(^ogg$)|(^ts$)|(^vob$)|(^wav$)|(^webm$)|(^mp3$)|(^m4a$)|(^aac$)", "type" => "string"}, "PresetWatermarks" => %{"member" => %{"shape" => "PresetWatermark"}, "type" => "list"}, "ListJobsByPipelineRequest" => %{"members" => %{"Ascending" => %{"location" => "querystring", "locationName" => "Ascending", "shape" => "Ascending"}, "PageToken" => %{"location" => "querystring", "locationName" => "PageToken", "shape" => "Id"}, "PipelineId" => %{"location" => "uri", "locationName" => "PipelineId", "shape" => "Id"}}, "required" => ["PipelineId"], "type" => "structure"}, "EncryptionMode" => %{"pattern" => "(^s3$)|(^s3-aws-kms$)|(^aes-cbc-pkcs7$)|(^aes-ctr$)|(^aes-gcm$)", "type" => "string"}, "ReadPipelineRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "WatermarkKey" => %{"max" => 1024, "min" => 1, "pattern" => "(^.{1,1020}.jpg$)|(^.{1,1019}.jpeg$)|(^.{1,1020}.png$)", "type" => "string"}, "Interlaced" => %{"pattern" => "(^auto$)|(^true$)|(^false$)", "type" => "string"}, "TimeSpan" => %{"members" => %{"Duration" => %{"shape" => "Time"}, "StartTime" => %{"shape" => "Time"}}, "type" => "structure"}, "CreateJobOutputs" => %{"max" => 30, "member" => %{"shape" => "CreateJobOutput"}, "type" => "list"}, "TimeOffset" => %{"pattern" => "(^[+-]?\\d{1,5}(\\.\\d{0,3})?$)|(^[+-]?([0-1]?[0-9]:|2[0-3]:)?([0-5]?[0-9]:)?[0-5]?[0-9](\\.\\d{0,3})?$)", "type" => "string"}, "Warnings" => %{"member" => %{"shape" => "Warning"}, "type" => "list"}, "KeyArn" => %{"max" => 255, "min" => 0, "type" => "string"}, "Grantee" => %{"max" => 255, "min" => 1, "type" => "string"}, "TestRoleResponse" => %{"deprecated" => true, "members" => %{"Messages" => %{"shape" => "ExceptionMessages"}, "Success" => %{"shape" => "Success"}}, "type" => "structure"}, "Time" => %{"pattern" => "(^\\d{1,5}(\\.\\d{0,3})?$)|(^([0-1]?[0-9]:|2[0-3]:)?([0-5]?[0-9]:)?[0-5]?[0-9](\\.\\d{0,3})?$)", "type" => "string"}, "PaddingPolicy" => %{"pattern" => "(^Pad$)|(^NoPad$)", "type" => "string"}, "CreatePipelineRequest" => %{"members" => %{"AwsKmsKeyArn" => %{"shape" => "KeyArn"}, "ContentConfig" => %{"shape" => "PipelineOutputConfig"}, "InputBucket" => %{"shape" => "BucketName"}, "Name" => %{"shape" => "Name"}, "Notifications" => %{"shape" => "Notifications"}, "OutputBucket" => %{"shape" => "BucketName"}, "Role" => %{"shape" => "Role"}, "ThumbnailConfig" => %{"shape" => "PipelineOutputConfig"}}, "required" => ["Name", "InputBucket", "Role"], "type" => "structure"}, "Rotate" => %{"pattern" => "(^auto$)|(^0$)|(^90$)|(^180$)|(^270$)", "type" => "string"}, "ReadPresetRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "NonEmptyBase64EncodedString" => %{"pattern" => "(^(?:[A-Za-z0-9\\+/]{4})*(?:[A-Za-z0-9\\+/]{2}==|[A-Za-z0-9\\+/]{3}=)?$)", "type" => "string"}, "AccessControl" => %{"pattern" => "(^FullControl$)|(^Read$)|(^ReadAcp$)|(^WriteAcp$)", "type" => "string"}, "DeletePresetRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "Presets" => %{"member" => %{"shape" => "Preset"}, "type" => "list"}, "VerticalAlign" => %{"pattern" => "(^Top$)|(^Bottom$)|(^Center$)", "type" => "string"}, "AudioPackingMode" => %{"pattern" => "(^SingleTrack$)|(^OneChannelPerTrack$)|(^OneChannelPerTrackWithMosTo8Tracks$)", "type" => "string"}, "AudioBitDepth" => %{"pattern" => "(^8$)|(^16$)|(^24$)|(^32$)", "type" => "string"}, "ListPipelinesResponse" => %{"members" => %{"NextPageToken" => %{"shape" => "Id"}, "Pipelines" => %{"shape" => "Pipelines"}}, "type" => "structure"}, "FrameRate" => %{"pattern" => "(^auto$)|(^10$)|(^15$)|(^23.97$)|(^24$)|(^25$)|(^29.97$)|(^30$)|(^50$)|(^60$)", "type" => "string"}, "SizingPolicy" => %{"pattern" => "(^Fit$)|(^Fill$)|(^Stretch$)|(^Keep$)|(^ShrinkToFit$)|(^ShrinkToFill$)", "type" => "string"}, "Pipeline" => %{"members" => %{"Arn" => %{"shape" => "String"}, "AwsKmsKeyArn" => %{"shape" => "KeyArn"}, "ContentConfig" => %{"shape" => "PipelineOutputConfig"}, "Id" => %{"shape" => "Id"}, "InputBucket" => %{"shape" => "BucketName"}, "Name" => %{"shape" => "Name"}, "Notifications" => %{"shape" => "Notifications"}, "OutputBucket" => %{"shape" => "BucketName"}, "Role" => %{"shape" => "Role"}, "Status" => %{"shape" => "PipelineStatus"}, "ThumbnailConfig" => %{"shape" => "PipelineOutputConfig"}}, "type" => "structure"}, "CreatePresetRequest" => %{"members" => %{"Audio" => %{"shape" => "AudioParameters"}, "Container" => %{"shape" => "PresetContainer"}, "Description" => %{"shape" => "Description"}, "Name" => %{"shape" => "Name"}, "Thumbnails" => %{"shape" => "Thumbnails"}, "Video" => %{"shape" => "VideoParameters"}}, "required" => ["Name", "Container"], "type" => "structure"}, "DeletePipelineRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "AudioChannels" => %{"pattern" => "(^auto$)|(^0$)|(^1$)|(^2$)", "type" => "string"}, "MergePolicy" => %{"pattern" => "(^Replace$)|(^Prepend$)|(^Append$)|(^Fallback$)", "type" => "string"}, "AudioBitOrder" => %{"pattern" => "(^LittleEndian$)", "type" => "string"}, "CodecOption" => %{"max" => 255, "min" => 1, "type" => "string"}, "Artworks" => %{"member" => %{"shape" => "Artwork"}, "type" => "list"}, "JobAlbumArt" => %{"members" => %{"Artwork" => %{"shape" => "Artworks"}, "MergePolicy" => %{"shape" => "MergePolicy"}}, "type" => "structure"}, "Permission" => %{"members" => %{"Access" => %{"shape" => "AccessControls"}, "Grantee" => %{"shape" => "Grantee"}, "GranteeType" => %{"shape" => "GranteeType"}}, "type" => "structure"}, "Digits" => %{"pattern" => "^\\d{1,5}$", "type" => "string"}, "CaptionSource" => %{"members" => %{"Encryption" => %{"shape" => "Encryption"}, "Key" => %{"shape" => "LongKey"}, "Label" => %{"shape" => "Name"}, "Language" => %{"shape" => "Key"}, "TimeOffset" => %{"shape" => "TimeOffset"}}, "type" => "structure"}, "Opacity" => %{"pattern" => "^\\d{1,3}(\\.\\d{0,20})?$", "type" => "string"}, "ReadPipelineResponse" => %{"members" => %{"Pipeline" => %{"shape" => "Pipeline"}, "Warnings" => %{"shape" => "Warnings"}}, "type" => "structure"}, "ListPresetsResponse" => %{"members" => %{"NextPageToken" => %{"shape" => "Id"}, "Presets" => %{"shape" => "Presets"}}, "type" => "structure"}, "VideoBitRate" => %{"pattern" => "(^\\d{2,5}$)|(^auto$)", "type" => "string"}, "Playlists" => %{"member" => %{"shape" => "Playlist"}, "type" => "list"}, "AudioCodec" => %{"pattern" => "(^AAC$)|(^vorbis$)|(^mp3$)|(^mp2$)|(^pcm$)|(^flac$)", "type" => "string"}, "PlayReadyDrm" => %{"members" => %{"Format" => %{"shape" => "PlayReadyDrmFormatString"}, "InitializationVector" => %{"shape" => "ZeroTo255String"}, "Key" => %{"shape" => "NonEmptyBase64EncodedString"}, "KeyId" => %{"shape" => "KeyIdGuid"}, "KeyMd5" => %{"shape" => "NonEmptyBase64EncodedString"}, "LicenseAcquisitionUrl" => %{"shape" => "OneTo512String"}}, "type" => "structure"}, "CreateJobOutput" => %{"members" => %{"AlbumArt" => %{"shape" => "JobAlbumArt"}, "Captions" => %{"shape" => "Captions"}, "Composition" => %{"deprecated" => true, "shape" => "Composition"}, "Encryption" => %{"shape" => "Encryption"}, "Key" => %{"shape" => "Key"}, "PresetId" => %{"shape" => "Id"}, "Rotate" => %{"shape" => "Rotate"}, "SegmentDuration" => %{"shape" => "FloatString"}, "ThumbnailEncryption" => %{"shape" => "Encryption"}, "ThumbnailPattern" => %{"shape" => "ThumbnailPattern"}, "Watermarks" => %{"shape" => "JobWatermarks"}}, "type" => "structure"}, "KeyframesMaxDist" => %{"pattern" => "^\\d{1,6}$", "type" => "string"}, "ReadJobResponse" => %{"members" => %{"Job" => %{"shape" => "Job"}}, "type" => "structure"}, "KeyStoragePolicy" => %{"pattern" => "(^NoStore$)|(^WithVariantPlaylists$)", "type" => "string"}, "PresetWatermarkId" => %{"max" => 40, "min" => 1, "type" => "string"}, "Permissions" => %{"max" => 30, "member" => %{"shape" => "Permission"}, "type" => "list"}, "PixelsOrPercent" => %{"pattern" => "(^\\d{1,3}(\\.\\d{0,5})?%$)|(^\\d{1,4}?px$)", "type" => "string"}, "HlsContentProtectionMethod" => %{"pattern" => "(^aes-128$)", "type" => "string"}, "Thumbnails" => %{"members" => %{"AspectRatio" => %{"shape" => "AspectRatio"}, "Format" => %{"shape" => "JpgOrPng"}, "Interval" => %{"shape" => "Digits"}, "MaxHeight" => %{"shape" => "DigitsOrAuto"}, "MaxWidth" => %{"shape" => "DigitsOrAuto"}, "PaddingPolicy" => %{"shape" => "PaddingPolicy"}, "Resolution" => %{"shape" => "ThumbnailResolution"}, "SizingPolicy" => %{"shape" => "SizingPolicy"}}, "type" => "structure"}}
  end
end