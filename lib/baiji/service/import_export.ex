defmodule Baiji.ImportExport do
  @moduledoc """
  AWS Import/Export Service

  AWS Import/Export accelerates transferring large amounts of data between
  the AWS cloud and portable storage devices that you mail to us. AWS
  Import/Export transfers data directly onto and off of your storage devices
  using Amazon's high-speed internal network and bypassing the Internet. For
  large data sets, AWS Import/Export is often faster than Internet transfer
  and more cost effective than upgrading your connectivity.
  """

  @doc """
  This operation cancels a specified job. Only the job owner can cancel it.
  The operation fails if the job has already started or is complete.
  """
  def cancel_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/?Operation=CancelJob",
      input:            input,
      options:          options,
      action:           "CancelJob",
      method:           :post,
      input_shape:      "CancelJobInput",
      output_shape:     "CancelJobOutput",
      output_wrapper:   "CancelJobResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  This operation initiates the process of scheduling an upload or download of
  your data. You include in the request a manifest that describes the data
  transfer specifics. The response to the request includes a job ID, which
  you can use in other operations, a signature that you use to identify your
  storage device, and the address where you should ship your storage device.
  """
  def create_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/?Operation=CreateJob",
      input:            input,
      options:          options,
      action:           "CreateJob",
      method:           :post,
      input_shape:      "CreateJobInput",
      output_shape:     "CreateJobOutput",
      output_wrapper:   "CreateJobResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  This operation generates a pre-paid UPS shipping label that you will use to
  ship your device to AWS for processing.
  """
  def get_shipping_label(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/?Operation=GetShippingLabel",
      input:            input,
      options:          options,
      action:           "GetShippingLabel",
      method:           :post,
      input_shape:      "GetShippingLabelInput",
      output_shape:     "GetShippingLabelOutput",
      output_wrapper:   "GetShippingLabelResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  This operation returns information about a job, including where the job is
  in the processing pipeline, the status of the results, and the signature
  value associated with the job. You can only return information about jobs
  you own.
  """
  def get_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/?Operation=GetStatus",
      input:            input,
      options:          options,
      action:           "GetStatus",
      method:           :post,
      input_shape:      "GetStatusInput",
      output_shape:     "GetStatusOutput",
      output_wrapper:   "GetStatusResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  This operation returns the jobs associated with the requester. AWS
  Import/Export lists the jobs in reverse chronological order based on the
  date of creation. For example if Job Test1 was created 2009Dec30 and Test2
  was created 2010Feb05, the ListJobs operation would return Test2 followed
  by Test1.
  """
  def list_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/?Operation=ListJobs",
      input:            input,
      options:          options,
      action:           "ListJobs",
      method:           :post,
      input_shape:      "ListJobsInput",
      output_shape:     "ListJobsOutput",
      output_wrapper:   "ListJobsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  You use this operation to change the parameters specified in the original
  manifest file by supplying a new manifest file. The manifest file attached
  to this request replaces the original manifest file. You can only use the
  operation after a CreateJob request but before the data transfer starts and
  you can only use it on jobs you own.
  """
  def update_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/?Operation=UpdateJob",
      input:            input,
      options:          options,
      action:           "UpdateJob",
      method:           :post,
      input_shape:      "UpdateJobInput",
      output_shape:     "UpdateJobOutput",
      output_wrapper:   "UpdateJobResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "importexport",
      endpoint_prefix:  "importexport",
      type:             :xml,
      version:          "2010-06-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"phoneNumber" => %{"type" => "string"}, "Job" => %{"members" => %{"CreationDate" => %{"shape" => "CreationDate"}, "IsCanceled" => %{"shape" => "IsCanceled"}, "JobId" => %{"shape" => "JobId"}, "JobType" => %{"shape" => "JobType"}}, "type" => "structure"}, "InvalidParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Manifest" => %{"type" => "string"}, "GenericString" => %{"type" => "string"}, "company" => %{"type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "MissingCustomsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreationDate" => %{"type" => "timestamp"}, "ListJobsOutput" => %{"members" => %{"IsTruncated" => %{"shape" => "IsTruncated"}, "Jobs" => %{"shape" => "JobsList"}}, "type" => "structure"}, "InvalidAddressException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InvalidCustomsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Artifact" => %{"members" => %{"Description" => %{"shape" => "Description"}, "URL" => %{"shape" => "URL"}}, "type" => "structure"}, "ProgressMessage" => %{"type" => "string"}, "BucketPermissionException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InvalidManifestFieldException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MissingManifestFieldException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "street3" => %{"type" => "string"}, "country" => %{"type" => "string"}, "LocationCode" => %{"type" => "string"}, "TrackingNumber" => %{"type" => "string"}, "Description" => %{"type" => "string"}, "InvalidVersionException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CancelJobInput" => %{"members" => %{"APIVersion" => %{"shape" => "APIVersion"}, "JobId" => %{"shape" => "JobId"}}, "required" => ["JobId"], "type" => "structure"}, "GetShippingLabelOutput" => %{"members" => %{"ShippingLabelURL" => %{"shape" => "GenericString"}, "Warning" => %{"shape" => "GenericString"}}, "type" => "structure"}, "ArtifactList" => %{"member" => %{"shape" => "Artifact"}, "type" => "list"}, "JobType" => %{"enum" => ["Import", "Export"], "type" => "string"}, "JobsList" => %{"member" => %{"shape" => "Job"}, "type" => "list"}, "Success" => %{"type" => "boolean"}, "UnableToCancelJobIdException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UnableToUpdateJobIdException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateJobInput" => %{"members" => %{"APIVersion" => %{"shape" => "APIVersion"}, "JobType" => %{"shape" => "JobType"}, "Manifest" => %{"shape" => "Manifest"}, "ManifestAddendum" => %{"shape" => "ManifestAddendum"}, "ValidateOnly" => %{"shape" => "ValidateOnly"}}, "required" => ["JobType", "Manifest", "ValidateOnly"], "type" => "structure"}, "ExpiredJobIdException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UpdateJobInput" => %{"members" => %{"APIVersion" => %{"shape" => "APIVersion"}, "JobId" => %{"shape" => "JobId"}, "JobType" => %{"shape" => "JobType"}, "Manifest" => %{"shape" => "Manifest"}, "ValidateOnly" => %{"shape" => "ValidateOnly"}}, "required" => ["JobId", "Manifest", "JobType", "ValidateOnly"], "type" => "structure"}, "Carrier" => %{"type" => "string"}, "LocationMessage" => %{"type" => "string"}, "NoSuchBucketException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CurrentManifest" => %{"type" => "string"}, "MissingParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LogBucket" => %{"type" => "string"}, "street2" => %{"type" => "string"}, "GetStatusInput" => %{"members" => %{"APIVersion" => %{"shape" => "APIVersion"}, "JobId" => %{"shape" => "JobId"}}, "required" => ["JobId"], "type" => "structure"}, "IsTruncated" => %{"type" => "boolean"}, "postalCode" => %{"type" => "string"}, "CanceledJobIdException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CancelJobOutput" => %{"members" => %{"Success" => %{"shape" => "Success"}}, "type" => "structure"}, "LogKey" => %{"type" => "string"}, "GetShippingLabelInput" => %{"members" => %{"APIVersion" => %{"shape" => "APIVersion"}, "city" => %{"shape" => "city"}, "company" => %{"shape" => "company"}, "country" => %{"shape" => "country"}, "jobIds" => %{"shape" => "JobIdList"}, "name" => %{"shape" => "name"}, "phoneNumber" => %{"shape" => "phoneNumber"}, "postalCode" => %{"shape" => "postalCode"}, "stateOrProvince" => %{"shape" => "stateOrProvince"}, "street1" => %{"shape" => "street1"}, "street2" => %{"shape" => "street2"}, "street3" => %{"shape" => "street3"}}, "required" => ["jobIds"], "type" => "structure"}, "name" => %{"type" => "string"}, "APIVersion" => %{"type" => "string"}, "InvalidJobIdException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MultipleRegionsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Marker" => %{"type" => "string"}, "city" => %{"type" => "string"}, "WarningMessage" => %{"type" => "string"}, "ManifestAddendum" => %{"type" => "string"}, "ListJobsInput" => %{"members" => %{"APIVersion" => %{"shape" => "APIVersion"}, "Marker" => %{"shape" => "Marker"}, "MaxJobs" => %{"shape" => "MaxJobs"}}, "type" => "structure"}, "InvalidFileSystemException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Signature" => %{"type" => "string"}, "ProgressCode" => %{"type" => "string"}, "CreateJobQuotaExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MaxJobs" => %{"type" => "integer"}, "JobIdList" => %{"member" => %{"shape" => "GenericString"}, "type" => "list"}, "InvalidAccessKeyIdException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "SignatureFileContents" => %{"type" => "string"}, "IsCanceled" => %{"type" => "boolean"}, "UpdateJobOutput" => %{"members" => %{"ArtifactList" => %{"shape" => "ArtifactList"}, "Success" => %{"shape" => "Success"}, "WarningMessage" => %{"shape" => "WarningMessage"}}, "type" => "structure"}, "JobId" => %{"type" => "string"}, "stateOrProvince" => %{"type" => "string"}, "CreateJobOutput" => %{"members" => %{"ArtifactList" => %{"shape" => "ArtifactList"}, "JobId" => %{"shape" => "JobId"}, "JobType" => %{"shape" => "JobType"}, "Signature" => %{"shape" => "Signature"}, "SignatureFileContents" => %{"shape" => "SignatureFileContents"}, "WarningMessage" => %{"shape" => "WarningMessage"}}, "type" => "structure"}, "URL" => %{"type" => "string"}, "MalformedManifestException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "GetStatusOutput" => %{"members" => %{"ArtifactList" => %{"shape" => "ArtifactList"}, "Carrier" => %{"shape" => "Carrier"}, "CreationDate" => %{"shape" => "CreationDate"}, "CurrentManifest" => %{"shape" => "CurrentManifest"}, "ErrorCount" => %{"shape" => "ErrorCount"}, "JobId" => %{"shape" => "JobId"}, "JobType" => %{"shape" => "JobType"}, "LocationCode" => %{"shape" => "LocationCode"}, "LocationMessage" => %{"shape" => "LocationMessage"}, "LogBucket" => %{"shape" => "LogBucket"}, "LogKey" => %{"shape" => "LogKey"}, "ProgressCode" => %{"shape" => "ProgressCode"}, "ProgressMessage" => %{"shape" => "ProgressMessage"}, "Signature" => %{"shape" => "Signature"}, "SignatureFileContents" => %{"shape" => "Signature"}, "TrackingNumber" => %{"shape" => "TrackingNumber"}}, "type" => "structure"}, "ValidateOnly" => %{"type" => "boolean"}, "street1" => %{"type" => "string"}, "ErrorCount" => %{"type" => "integer"}}
  end
end