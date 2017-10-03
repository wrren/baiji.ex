defmodule Baiji.DeviceFarm do
  @moduledoc """
  AWS Device Farm is a service that enables mobile app developers to test
  Android, iOS, and Fire OS apps on physical phones, tablets, and other
  devices in the cloud.
  """

  @doc """
  Gets information about a test.
  """
  def get_test(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTest",
      method:           :post,
      input_shape:      "GetTestRequest",
      output_shape:     "GetTestResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the current status and future status of all offerings purchased by an
  AWS account. The response indicates how many offerings are currently
  available and the offerings that will be available in the next period. The
  API returns a `NotEligible` error if the user is not permitted to invoke
  the operation. Please contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
  if you believe that you should be able to invoke this operation.
  """
  def get_offering_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetOfferingStatus",
      method:           :post,
      input_shape:      "GetOfferingStatusRequest",
      output_shape:     "GetOfferingStatusResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about suites.
  """
  def list_suites(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListSuites",
      method:           :post,
      input_shape:      "ListSuitesRequest",
      output_shape:     "ListSuitesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about jobs.
  """
  def list_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListJobs",
      method:           :post,
      input_shape:      "ListJobsRequest",
      output_shape:     "ListJobsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a link to a currently running remote access session.
  """
  def get_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetRemoteAccessSession",
      method:           :post,
      input_shape:      "GetRemoteAccessSessionRequest",
      output_shape:     "GetRemoteAccessSessionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the list of available network profiles.
  """
  def list_network_profiles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListNetworkProfiles",
      method:           :post,
      input_shape:      "ListNetworkProfilesRequest",
      output_shape:     "ListNetworkProfilesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the name, description, and rules in a device pool given the
  attributes and the pool ARN. Rule updates are all-or-nothing, meaning they
  can only be updated as a whole (or not at all).
  """
  def update_device_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDevicePool",
      method:           :post,
      input_shape:      "UpdateDevicePoolRequest",
      output_shape:     "UpdateDevicePoolResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Specifies and starts a remote access session.
  """
  def create_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateRemoteAccessSession",
      method:           :post,
      input_shape:      "CreateRemoteAccessSessionRequest",
      output_shape:     "CreateRemoteAccessSessionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about tests.
  """
  def list_tests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTests",
      method:           :post,
      input_shape:      "ListTestsRequest",
      output_shape:     "ListTestsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a device pool.
  """
  def create_device_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDevicePool",
      method:           :post,
      input_shape:      "CreateDevicePoolRequest",
      output_shape:     "CreateDevicePoolResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about artifacts.
  """
  def list_artifacts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListArtifacts",
      method:           :post,
      input_shape:      "ListArtifactsRequest",
      output_shape:     "ListArtifactsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the specified project name, given the project ARN and a new name.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateProject",
      method:           :post,
      input_shape:      "UpdateProjectRequest",
      output_shape:     "UpdateProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about an upload.
  """
  def get_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetUpload",
      method:           :post,
      input_shape:      "GetUploadRequest",
      output_shape:     "GetUploadResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a network profile.
  """
  def create_network_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateNetworkProfile",
      method:           :post,
      input_shape:      "CreateNetworkProfileRequest",
      output_shape:     "CreateNetworkProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a project.
  """
  def get_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetProject",
      method:           :post,
      input_shape:      "GetProjectRequest",
      output_shape:     "GetProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Ends a specified remote access session.
  """
  def stop_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopRemoteAccessSession",
      method:           :post,
      input_shape:      "StopRemoteAccessSessionRequest",
      output_shape:     "StopRemoteAccessSessionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about unique problems.
  """
  def list_unique_problems(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUniqueProblems",
      method:           :post,
      input_shape:      "ListUniqueProblemsRequest",
      output_shape:     "ListUniqueProblemsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a network profile.
  """
  def get_network_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetNetworkProfile",
      method:           :post,
      input_shape:      "GetNetworkProfileRequest",
      output_shape:     "GetNetworkProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of all currently running remote access sessions.
  """
  def list_remote_access_sessions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListRemoteAccessSessions",
      method:           :post,
      input_shape:      "ListRemoteAccessSessionsRequest",
      output_shape:     "ListRemoteAccessSessionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Initiates a stop request for the current test run. AWS Device Farm will
  immediately stop the run on devices where tests have not started executing,
  and you will not be billed for these devices. On devices where tests have
  started executing, Setup Suite and Teardown Suite tests will run to
  completion before stopping execution on those devices. You will be billed
  for Setup, Teardown, and any tests that were in progress or already
  completed.
  """
  def stop_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopRun",
      method:           :post,
      input_shape:      "StopRunRequest",
      output_shape:     "StopRunResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a unique device type.
  """
  def get_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDevice",
      method:           :post,
      input_shape:      "GetDeviceRequest",
      output_shape:     "GetDeviceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new project.
  """
  def create_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateProject",
      method:           :post,
      input_shape:      "CreateProjectRequest",
      output_shape:     "CreateProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about unique device types.
  """
  def list_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDevices",
      method:           :post,
      input_shape:      "ListDevicesRequest",
      output_shape:     "ListDevicesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the run, given the run ARN.

  **Note** Deleting this resource does not stop an in-progress run.
  """
  def delete_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteRun",
      method:           :post,
      input_shape:      "DeleteRunRequest",
      output_shape:     "DeleteRunResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads an app or test scripts.
  """
  def create_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUpload",
      method:           :post,
      input_shape:      "CreateUploadRequest",
      output_shape:     "CreateUploadResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an upload given the upload ARN.
  """
  def delete_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUpload",
      method:           :post,
      input_shape:      "DeleteUploadRequest",
      output_shape:     "DeleteUploadResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the number of unmetered iOS and/or unmetered Android devices that
  have been purchased by the account.
  """
  def get_account_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAccountSettings",
      method:           :post,
      input_shape:      "GetAccountSettingsRequest",
      output_shape:     "GetAccountSettingsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a run.
  """
  def get_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetRun",
      method:           :post,
      input_shape:      "GetRunRequest",
      output_shape:     "GetRunResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a network profile.
  """
  def delete_network_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteNetworkProfile",
      method:           :post,
      input_shape:      "DeleteNetworkProfileRequest",
      output_shape:     "DeleteNetworkProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a completed remote access session and its results.
  """
  def delete_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteRemoteAccessSession",
      method:           :post,
      input_shape:      "DeleteRemoteAccessSessionRequest",
      output_shape:     "DeleteRemoteAccessSessionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a job.
  """
  def get_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetJob",
      method:           :post,
      input_shape:      "GetJobRequest",
      output_shape:     "GetJobResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of all historical purchases, renewals, and system renewal
  transactions for an AWS account. The list is paginated and ordered by a
  descending timestamp (most recent transactions are first). The API returns
  a `NotEligible` error if the user is not permitted to invoke the operation.
  Please contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
  if you believe that you should be able to invoke this operation.
  """
  def list_offering_transactions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListOfferingTransactions",
      method:           :post,
      input_shape:      "ListOfferingTransactionsRequest",
      output_shape:     "ListOfferingTransactionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about device pools.
  """
  def list_device_pools(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDevicePools",
      method:           :post,
      input_shape:      "ListDevicePoolsRequest",
      output_shape:     "ListDevicePoolsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a device pool.
  """
  def get_device_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDevicePool",
      method:           :post,
      input_shape:      "GetDevicePoolRequest",
      output_shape:     "GetDevicePoolResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about projects.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListProjects",
      method:           :post,
      input_shape:      "ListProjectsRequest",
      output_shape:     "ListProjectsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the network profile with specific settings.
  """
  def update_network_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateNetworkProfile",
      method:           :post,
      input_shape:      "UpdateNetworkProfileRequest",
      output_shape:     "UpdateNetworkProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Explicitly sets the quantity of devices to renew for an offering, starting
  from the `effectiveDate` of the next period. The API returns a
  `NotEligible` error if the user is not permitted to invoke the operation.
  Please contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
  if you believe that you should be able to invoke this operation.
  """
  def renew_offering(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RenewOffering",
      method:           :post,
      input_shape:      "RenewOfferingRequest",
      output_shape:     "RenewOfferingResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of products or offerings that the user can manage through
  the API. Each offering record indicates the recurring price per unit and
  the frequency for that offering. The API returns a `NotEligible` error if
  the user is not permitted to invoke the operation. Please contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
  if you believe that you should be able to invoke this operation.
  """
  def list_offerings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListOfferings",
      method:           :post,
      input_shape:      "ListOfferingsRequest",
      output_shape:     "ListOfferingsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about samples, given an AWS Device Farm project ARN
  """
  def list_samples(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListSamples",
      method:           :post,
      input_shape:      "ListSamplesRequest",
      output_shape:     "ListSamplesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about uploads, given an AWS Device Farm project ARN.
  """
  def list_uploads(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUploads",
      method:           :post,
      input_shape:      "ListUploadsRequest",
      output_shape:     "ListUploadsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a suite.
  """
  def get_suite(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetSuite",
      method:           :post,
      input_shape:      "GetSuiteRequest",
      output_shape:     "GetSuiteResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an AWS Device Farm project, given the project ARN.

  **Note** Deleting this resource does not stop an in-progress run.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteProject",
      method:           :post,
      input_shape:      "DeleteProjectRequest",
      output_shape:     "DeleteProjectResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Installs an application to the device in a remote access session. For
  Android applications, the file must be in .apk format. For iOS
  applications, the file must be in .ipa format.
  """
  def install_to_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "InstallToRemoteAccessSession",
      method:           :post,
      input_shape:      "InstallToRemoteAccessSessionRequest",
      output_shape:     "InstallToRemoteAccessSessionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about compatibility with a device pool.
  """
  def get_device_pool_compatibility(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDevicePoolCompatibility",
      method:           :post,
      input_shape:      "GetDevicePoolCompatibilityRequest",
      output_shape:     "GetDevicePoolCompatibilityResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Immediately purchases offerings for an AWS account. Offerings renew with
  the latest total purchased quantity for an offering, unless the renewal was
  overridden. The API returns a `NotEligible` error if the user is not
  permitted to invoke the operation. Please contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
  if you believe that you should be able to invoke this operation.
  """
  def purchase_offering(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PurchaseOffering",
      method:           :post,
      input_shape:      "PurchaseOfferingRequest",
      output_shape:     "PurchaseOfferingResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a device pool given the pool ARN. Does not allow deletion of
  curated pools owned by the system.
  """
  def delete_device_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDevicePool",
      method:           :post,
      input_shape:      "DeleteDevicePoolRequest",
      output_shape:     "DeleteDevicePoolResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Schedules a run.
  """
  def schedule_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ScheduleRun",
      method:           :post,
      input_shape:      "ScheduleRunRequest",
      output_shape:     "ScheduleRunResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about runs, given an AWS Device Farm project ARN.
  """
  def list_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListRuns",
      method:           :post,
      input_shape:      "ListRunsRequest",
      output_shape:     "ListRunsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of offering promotions. Each offering promotion record
  contains the ID and description of the promotion. The API returns a
  `NotEligible` error if the caller is not permitted to invoke the operation.
  Contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
  if you believe that you should be able to invoke this operation.
  """
  def list_offering_promotions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListOfferingPromotions",
      method:           :post,
      input_shape:      "ListOfferingPromotionsRequest",
      output_shape:     "ListOfferingPromotionsResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "devicefarm",
      target_prefix:    "DeviceFarm_20150623",
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"ListDevicesRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ListSamplesResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "samples" => %{"shape" => "Samples"}}, "type" => "structure"}, "TrialMinutes" => %{"members" => %{"remaining" => %{"shape" => "Double"}, "total" => %{"shape" => "Double"}}, "type" => "structure"}, "ScheduleRunConfiguration" => %{"members" => %{"auxiliaryApps" => %{"shape" => "AmazonResourceNames"}, "billingMethod" => %{"shape" => "BillingMethod"}, "extraDataPackageArn" => %{"shape" => "AmazonResourceName"}, "locale" => %{"shape" => "String"}, "location" => %{"shape" => "Location"}, "networkProfileArn" => %{"shape" => "AmazonResourceName"}, "radios" => %{"shape" => "Radios"}}, "type" => "structure"}, "RecurringCharges" => %{"member" => %{"shape" => "RecurringCharge"}, "type" => "list"}, "MaxSlotMap" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "Integer"}}, "IdempotencyException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "ListOfferingPromotionsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "offeringPromotions" => %{"shape" => "OfferingPromotions"}}, "type" => "structure"}, "RecurringChargeFrequency" => %{"enum" => ["MONTHLY"], "type" => "string"}, "Rules" => %{"member" => %{"shape" => "Rule"}, "type" => "list"}, "Runs" => %{"member" => %{"shape" => "Run"}, "type" => "list"}, "GetRemoteAccessSessionRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "GetDevicePoolResult" => %{"members" => %{"devicePool" => %{"shape" => "DevicePool"}}, "type" => "structure"}, "RuleOperator" => %{"enum" => ["EQUALS", "LESS_THAN", "GREATER_THAN", "IN", "NOT_IN", "CONTAINS"], "type" => "string"}, "DevicePool" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "description" => %{"shape" => "Message"}, "name" => %{"shape" => "Name"}, "rules" => %{"shape" => "Rules"}, "type" => %{"shape" => "DevicePoolType"}}, "type" => "structure"}, "ListProjectsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ExecutionStatus" => %{"enum" => ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"], "type" => "string"}, "Job" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "counters" => %{"shape" => "Counters"}, "created" => %{"shape" => "DateTime"}, "device" => %{"shape" => "Device"}, "deviceMinutes" => %{"shape" => "DeviceMinutes"}, "message" => %{"shape" => "Message"}, "name" => %{"shape" => "Name"}, "result" => %{"shape" => "ExecutionResult"}, "started" => %{"shape" => "DateTime"}, "status" => %{"shape" => "ExecutionStatus"}, "stopped" => %{"shape" => "DateTime"}, "type" => %{"shape" => "TestType"}}, "type" => "structure"}, "BillingMethod" => %{"enum" => ["METERED", "UNMETERED"], "type" => "string"}, "DevicePoolType" => %{"enum" => ["CURATED", "PRIVATE"], "type" => "string"}, "ExecutionConfiguration" => %{"members" => %{"accountsCleanup" => %{"shape" => "AccountsCleanup"}, "appPackagesCleanup" => %{"shape" => "AppPackagesCleanup"}, "jobTimeoutMinutes" => %{"shape" => "JobTimeoutMinutes"}}, "type" => "structure"}, "MonetaryAmount" => %{"members" => %{"amount" => %{"shape" => "Double"}, "currencyCode" => %{"shape" => "CurrencyCode"}}, "type" => "structure"}, "PurchaseOfferingRequest" => %{"members" => %{"offeringId" => %{"shape" => "OfferingIdentifier"}, "offeringPromotionId" => %{"shape" => "OfferingPromotionIdentifier"}, "quantity" => %{"shape" => "Integer"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "UpdateDevicePoolRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "description" => %{"shape" => "Message"}, "name" => %{"shape" => "Name"}, "rules" => %{"shape" => "Rules"}}, "required" => ["arn"], "type" => "structure"}, "StopRunRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "Uploads" => %{"member" => %{"shape" => "Upload"}, "type" => "list"}, "Counters" => %{"members" => %{"errored" => %{"shape" => "Integer"}, "failed" => %{"shape" => "Integer"}, "passed" => %{"shape" => "Integer"}, "skipped" => %{"shape" => "Integer"}, "stopped" => %{"shape" => "Integer"}, "total" => %{"shape" => "Integer"}, "warned" => %{"shape" => "Integer"}}, "type" => "structure"}, "ListNetworkProfilesResult" => %{"members" => %{"networkProfiles" => %{"shape" => "NetworkProfiles"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "CreateProjectResult" => %{"members" => %{"project" => %{"shape" => "Project"}}, "type" => "structure"}, "Offering" => %{"members" => %{"description" => %{"shape" => "Message"}, "id" => %{"shape" => "OfferingIdentifier"}, "platform" => %{"shape" => "DevicePlatform"}, "recurringCharges" => %{"shape" => "RecurringCharges"}, "type" => %{"shape" => "OfferingType"}}, "type" => "structure"}, "DeleteDevicePoolRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "GetProjectRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "Resolution" => %{"members" => %{"height" => %{"shape" => "Integer"}, "width" => %{"shape" => "Integer"}}, "type" => "structure"}, "GetRunRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "GetTestRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "DeleteProjectResult" => %{"members" => %{}, "type" => "structure"}, "Upload" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "contentType" => %{"shape" => "ContentType"}, "created" => %{"shape" => "DateTime"}, "message" => %{"shape" => "Message"}, "metadata" => %{"shape" => "Metadata"}, "name" => %{"shape" => "Name"}, "status" => %{"shape" => "UploadStatus"}, "type" => %{"shape" => "UploadType"}, "url" => %{"shape" => "URL"}}, "type" => "structure"}, "ListUniqueProblemsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["arn"], "type" => "structure"}, "Artifact" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "extension" => %{"shape" => "String"}, "name" => %{"shape" => "Name"}, "type" => %{"shape" => "ArtifactType"}, "url" => %{"shape" => "URL"}}, "type" => "structure"}, "CreateRemoteAccessSessionConfiguration" => %{"members" => %{"billingMethod" => %{"shape" => "BillingMethod"}}, "type" => "structure"}, "NetworkProfileType" => %{"enum" => ["CURATED", "PRIVATE"], "type" => "string"}, "Jobs" => %{"member" => %{"shape" => "Job"}, "type" => "list"}, "DevicePools" => %{"member" => %{"shape" => "DevicePool"}, "type" => "list"}, "GetNetworkProfileResult" => %{"members" => %{"networkProfile" => %{"shape" => "NetworkProfile"}}, "type" => "structure"}, "StopRemoteAccessSessionRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "Metadata" => %{"max" => 8192, "min" => 0, "type" => "string"}, "TestType" => %{"enum" => ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"], "type" => "string"}, "GetUploadResult" => %{"members" => %{"upload" => %{"shape" => "Upload"}}, "type" => "structure"}, "OfferingTransactions" => %{"member" => %{"shape" => "OfferingTransaction"}, "type" => "list"}, "GetRemoteAccessSessionResult" => %{"members" => %{"remoteAccessSession" => %{"shape" => "RemoteAccessSession"}}, "type" => "structure"}, "GetDevicePoolCompatibilityRequest" => %{"members" => %{"appArn" => %{"shape" => "AmazonResourceName"}, "devicePoolArn" => %{"shape" => "AmazonResourceName"}, "test" => %{"shape" => "ScheduleRunTest"}, "testType" => %{"shape" => "TestType"}}, "required" => ["devicePoolArn"], "type" => "structure"}, "Sample" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "type" => %{"shape" => "SampleType"}, "url" => %{"shape" => "URL"}}, "type" => "structure"}, "GetDevicePoolCompatibilityResult" => %{"members" => %{"compatibleDevices" => %{"shape" => "DevicePoolCompatibilityResults"}, "incompatibleDevices" => %{"shape" => "DevicePoolCompatibilityResults"}}, "type" => "structure"}, "Test" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "counters" => %{"shape" => "Counters"}, "created" => %{"shape" => "DateTime"}, "deviceMinutes" => %{"shape" => "DeviceMinutes"}, "message" => %{"shape" => "Message"}, "name" => %{"shape" => "Name"}, "result" => %{"shape" => "ExecutionResult"}, "started" => %{"shape" => "DateTime"}, "status" => %{"shape" => "ExecutionStatus"}, "stopped" => %{"shape" => "DateTime"}, "type" => %{"shape" => "TestType"}}, "type" => "structure"}, "Artifacts" => %{"member" => %{"shape" => "Artifact"}, "type" => "list"}, "GetDeviceResult" => %{"members" => %{"device" => %{"shape" => "Device"}}, "type" => "structure"}, "ListOfferingTransactionsRequest" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ListTestsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["arn"], "type" => "structure"}, "GetSuiteResult" => %{"members" => %{"suite" => %{"shape" => "Suite"}}, "type" => "structure"}, "ArtifactCategory" => %{"enum" => ["SCREENSHOT", "FILE", "LOG"], "type" => "string"}, "Name" => %{"max" => 256, "min" => 0, "type" => "string"}, "ScheduleRunResult" => %{"members" => %{"run" => %{"shape" => "Run"}}, "type" => "structure"}, "RemoteAccessSessions" => %{"member" => %{"shape" => "RemoteAccessSession"}, "type" => "list"}, "NotEligibleException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "UpdateProjectRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "defaultJobTimeoutMinutes" => %{"shape" => "JobTimeoutMinutes"}, "name" => %{"shape" => "Name"}}, "required" => ["arn"], "type" => "structure"}, "DeleteRemoteAccessSessionRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "UploadType" => %{"enum" => ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE"], "type" => "string"}, "CreateRemoteAccessSessionResult" => %{"members" => %{"remoteAccessSession" => %{"shape" => "RemoteAccessSession"}}, "type" => "structure"}, "Filter" => %{"max" => 8192, "min" => 0, "type" => "string"}, "RenewOfferingResult" => %{"members" => %{"offeringTransaction" => %{"shape" => "OfferingTransaction"}}, "type" => "structure"}, "CurrencyCode" => %{"enum" => ["USD"], "type" => "string"}, "ExecutionResult" => %{"enum" => ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"], "type" => "string"}, "Project" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "created" => %{"shape" => "DateTime"}, "defaultJobTimeoutMinutes" => %{"shape" => "JobTimeoutMinutes"}, "name" => %{"shape" => "Name"}}, "type" => "structure"}, "OfferingPromotions" => %{"member" => %{"shape" => "OfferingPromotion"}, "type" => "list"}, "ServiceAccountException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "Devices" => %{"member" => %{"shape" => "Device"}, "type" => "list"}, "ArgumentException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "GetAccountSettingsRequest" => %{"members" => %{}, "type" => "structure"}, "Message" => %{"max" => 16384, "min" => 0, "type" => "string"}, "ListRemoteAccessSessionsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "remoteAccessSessions" => %{"shape" => "RemoteAccessSessions"}}, "type" => "structure"}, "Offerings" => %{"member" => %{"shape" => "Offering"}, "type" => "list"}, "DevicePoolCompatibilityResult" => %{"members" => %{"compatible" => %{"shape" => "Boolean"}, "device" => %{"shape" => "Device"}, "incompatibilityMessages" => %{"shape" => "IncompatibilityMessages"}}, "type" => "structure"}, "DeleteNetworkProfileResult" => %{"members" => %{}, "type" => "structure"}, "JobTimeoutMinutes" => %{"type" => "integer"}, "GetJobResult" => %{"members" => %{"job" => %{"shape" => "Job"}}, "type" => "structure"}, "GetDeviceRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "GetSuiteRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "ListRunsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "runs" => %{"shape" => "Runs"}}, "type" => "structure"}, "ListSuitesRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["arn"], "type" => "structure"}, "TransactionIdentifier" => %{"min" => 32, "type" => "string"}, "RecurringCharge" => %{"members" => %{"cost" => %{"shape" => "MonetaryAmount"}, "frequency" => %{"shape" => "RecurringChargeFrequency"}}, "type" => "structure"}, "OfferingStatus" => %{"members" => %{"effectiveOn" => %{"shape" => "DateTime"}, "offering" => %{"shape" => "Offering"}, "quantity" => %{"shape" => "Integer"}, "type" => %{"shape" => "OfferingTransactionType"}}, "type" => "structure"}, "ListOfferingsRequest" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "UniqueProblems" => %{"member" => %{"shape" => "UniqueProblem"}, "type" => "list"}, "UploadStatus" => %{"enum" => ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"], "type" => "string"}, "AmazonResourceName" => %{"min" => 32, "type" => "string"}, "Problem" => %{"members" => %{"device" => %{"shape" => "Device"}, "job" => %{"shape" => "ProblemDetail"}, "message" => %{"shape" => "Message"}, "result" => %{"shape" => "ExecutionResult"}, "run" => %{"shape" => "ProblemDetail"}, "suite" => %{"shape" => "ProblemDetail"}, "test" => %{"shape" => "ProblemDetail"}}, "type" => "structure"}, "UpdateNetworkProfileResult" => %{"members" => %{"networkProfile" => %{"shape" => "NetworkProfile"}}, "type" => "structure"}, "Samples" => %{"member" => %{"shape" => "Sample"}, "type" => "list"}, "DeleteUploadRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "NotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "SampleType" => %{"enum" => ["CPU", "MEMORY", "THREADS", "RX_RATE", "TX_RATE", "RX", "TX", "NATIVE_FRAMES", "NATIVE_FPS", "NATIVE_MIN_DRAWTIME", "NATIVE_AVG_DRAWTIME", "NATIVE_MAX_DRAWTIME", "OPENGL_FRAMES", "OPENGL_FPS", "OPENGL_MIN_DRAWTIME", "OPENGL_AVG_DRAWTIME", "OPENGL_MAX_DRAWTIME"], "type" => "string"}, "OfferingPromotionIdentifier" => %{"min" => 4, "type" => "string"}, "ScheduleRunTest" => %{"members" => %{"filter" => %{"shape" => "Filter"}, "parameters" => %{"shape" => "TestParameters"}, "testPackageArn" => %{"shape" => "AmazonResourceName"}, "type" => %{"shape" => "TestType"}}, "required" => ["type"], "type" => "structure"}, "GetOfferingStatusResult" => %{"members" => %{"current" => %{"shape" => "OfferingStatusMap"}, "nextPeriod" => %{"shape" => "OfferingStatusMap"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ListOfferingsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "offerings" => %{"shape" => "Offerings"}}, "type" => "structure"}, "IncompatibilityMessages" => %{"member" => %{"shape" => "IncompatibilityMessage"}, "type" => "list"}, "ListUploadsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "uploads" => %{"shape" => "Uploads"}}, "type" => "structure"}, "CreateRemoteAccessSessionRequest" => %{"members" => %{"configuration" => %{"shape" => "CreateRemoteAccessSessionConfiguration"}, "deviceArn" => %{"shape" => "AmazonResourceName"}, "name" => %{"shape" => "Name"}, "projectArn" => %{"shape" => "AmazonResourceName"}}, "required" => ["projectArn", "deviceArn"], "type" => "structure"}, "ListSamplesRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["arn"], "type" => "structure"}, "OfferingStatusMap" => %{"key" => %{"shape" => "OfferingIdentifier"}, "type" => "map", "value" => %{"shape" => "OfferingStatus"}}, "PercentInteger" => %{"max" => 100, "min" => 0, "type" => "integer"}, "CreateUploadRequest" => %{"members" => %{"contentType" => %{"shape" => "ContentType"}, "name" => %{"shape" => "Name"}, "projectArn" => %{"shape" => "AmazonResourceName"}, "type" => %{"shape" => "UploadType"}}, "required" => ["projectArn", "name", "type"], "type" => "structure"}, "Run" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "billingMethod" => %{"shape" => "BillingMethod"}, "completedJobs" => %{"shape" => "Integer"}, "counters" => %{"shape" => "Counters"}, "created" => %{"shape" => "DateTime"}, "deviceMinutes" => %{"shape" => "DeviceMinutes"}, "message" => %{"shape" => "Message"}, "name" => %{"shape" => "Name"}, "networkProfile" => %{"shape" => "NetworkProfile"}, "platform" => %{"shape" => "DevicePlatform"}, "result" => %{"shape" => "ExecutionResult"}, "started" => %{"shape" => "DateTime"}, "status" => %{"shape" => "ExecutionStatus"}, "stopped" => %{"shape" => "DateTime"}, "totalJobs" => %{"shape" => "Integer"}, "type" => %{"shape" => "TestType"}}, "type" => "structure"}, "StopRunResult" => %{"members" => %{"run" => %{"shape" => "Run"}}, "type" => "structure"}, "AWSAccountNumber" => %{"max" => 16, "min" => 2, "type" => "string"}, "AccountSettings" => %{"members" => %{"awsAccountNumber" => %{"shape" => "AWSAccountNumber"}, "defaultJobTimeoutMinutes" => %{"shape" => "JobTimeoutMinutes"}, "maxJobTimeoutMinutes" => %{"shape" => "JobTimeoutMinutes"}, "maxSlots" => %{"shape" => "MaxSlotMap"}, "trialMinutes" => %{"shape" => "TrialMinutes"}, "unmeteredDevices" => %{"shape" => "PurchasedDevicesMap"}, "unmeteredRemoteAccessDevices" => %{"shape" => "PurchasedDevicesMap"}}, "type" => "structure"}, "ListDevicePoolsResult" => %{"members" => %{"devicePools" => %{"shape" => "DevicePools"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "GetUploadRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "ListArtifactsResult" => %{"members" => %{"artifacts" => %{"shape" => "Artifacts"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ListDevicesResult" => %{"members" => %{"devices" => %{"shape" => "Devices"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "Double" => %{"type" => "double"}, "ContentType" => %{"max" => 64, "min" => 0, "type" => "string"}, "ListTestsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "tests" => %{"shape" => "Tests"}}, "type" => "structure"}, "CreateDevicePoolRequest" => %{"members" => %{"description" => %{"shape" => "Message"}, "name" => %{"shape" => "Name"}, "projectArn" => %{"shape" => "AmazonResourceName"}, "rules" => %{"shape" => "Rules"}}, "required" => ["projectArn", "name", "rules"], "type" => "structure"}, "GetJobRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "StopRemoteAccessSessionResult" => %{"members" => %{"remoteAccessSession" => %{"shape" => "RemoteAccessSession"}}, "type" => "structure"}, "Location" => %{"members" => %{"latitude" => %{"shape" => "Double"}, "longitude" => %{"shape" => "Double"}}, "required" => ["latitude", "longitude"], "type" => "structure"}, "DeleteRemoteAccessSessionResult" => %{"members" => %{}, "type" => "structure"}, "ListNetworkProfilesRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}, "type" => %{"shape" => "NetworkProfileType"}}, "required" => ["arn"], "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "Message"}}, "type" => "structure"}, "GetNetworkProfileRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "InstallToRemoteAccessSessionResult" => %{"members" => %{"appUpload" => %{"shape" => "Upload"}}, "type" => "structure"}, "Long" => %{"type" => "long"}, "DeleteRunResult" => %{"members" => %{}, "type" => "structure"}, "CreateUploadResult" => %{"members" => %{"upload" => %{"shape" => "Upload"}}, "type" => "structure"}, "ListUniqueProblemsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "uniqueProblems" => %{"shape" => "UniqueProblemsByExecutionResultMap"}}, "type" => "structure"}, "GetDevicePoolRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "UpdateNetworkProfileRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "description" => %{"shape" => "Message"}, "downlinkBandwidthBits" => %{"shape" => "Long"}, "downlinkDelayMs" => %{"shape" => "Long"}, "downlinkJitterMs" => %{"shape" => "Long"}, "downlinkLossPercent" => %{"shape" => "PercentInteger"}, "name" => %{"shape" => "Name"}, "type" => %{"shape" => "NetworkProfileType"}, "uplinkBandwidthBits" => %{"shape" => "Long"}, "uplinkDelayMs" => %{"shape" => "Long"}, "uplinkJitterMs" => %{"shape" => "Long"}, "uplinkLossPercent" => %{"shape" => "PercentInteger"}}, "required" => ["arn"], "type" => "structure"}, "ListArtifactsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}, "type" => %{"shape" => "ArtifactCategory"}}, "required" => ["arn", "type"], "type" => "structure"}, "ListDevicePoolsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}, "type" => %{"shape" => "DevicePoolType"}}, "required" => ["arn"], "type" => "structure"}, "ListProjectsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "projects" => %{"shape" => "Projects"}}, "type" => "structure"}, "OfferingIdentifier" => %{"min" => 32, "type" => "string"}, "AmazonResourceNames" => %{"member" => %{"shape" => "AmazonResourceName"}, "type" => "list"}, "ListRemoteAccessSessionsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["arn"], "type" => "structure"}, "DeviceAttribute" => %{"enum" => ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "APPIUM_VERSION"], "type" => "string"}, "Tests" => %{"member" => %{"shape" => "Test"}, "type" => "list"}, "ListRunsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["arn"], "type" => "structure"}, "GetAccountSettingsResult" => %{"members" => %{"accountSettings" => %{"shape" => "AccountSettings"}}, "type" => "structure"}, "GetRunResult" => %{"members" => %{"run" => %{"shape" => "Run"}}, "type" => "structure"}, "Radios" => %{"members" => %{"bluetooth" => %{"shape" => "Boolean"}, "gps" => %{"shape" => "Boolean"}, "nfc" => %{"shape" => "Boolean"}, "wifi" => %{"shape" => "Boolean"}}, "type" => "structure"}, "AppPackagesCleanup" => %{"type" => "boolean"}, "Suite" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "counters" => %{"shape" => "Counters"}, "created" => %{"shape" => "DateTime"}, "deviceMinutes" => %{"shape" => "DeviceMinutes"}, "message" => %{"shape" => "Message"}, "name" => %{"shape" => "Name"}, "result" => %{"shape" => "ExecutionResult"}, "started" => %{"shape" => "DateTime"}, "status" => %{"shape" => "ExecutionStatus"}, "stopped" => %{"shape" => "DateTime"}, "type" => %{"shape" => "TestType"}}, "type" => "structure"}, "GetProjectResult" => %{"members" => %{"project" => %{"shape" => "Project"}}, "type" => "structure"}, "UniqueProblem" => %{"members" => %{"message" => %{"shape" => "Message"}, "problems" => %{"shape" => "Problems"}}, "type" => "structure"}, "PaginationToken" => %{"max" => 1024, "min" => 4, "type" => "string"}, "OfferingTransaction" => %{"members" => %{"cost" => %{"shape" => "MonetaryAmount"}, "createdOn" => %{"shape" => "DateTime"}, "offeringPromotionId" => %{"shape" => "OfferingPromotionIdentifier"}, "offeringStatus" => %{"shape" => "OfferingStatus"}, "transactionId" => %{"shape" => "TransactionIdentifier"}}, "type" => "structure"}, "Problems" => %{"member" => %{"shape" => "Problem"}, "type" => "list"}, "GetTestResult" => %{"members" => %{"test" => %{"shape" => "Test"}}, "type" => "structure"}, "ListJobsResult" => %{"members" => %{"jobs" => %{"shape" => "Jobs"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ProblemDetail" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "name" => %{"shape" => "Name"}}, "type" => "structure"}, "GetOfferingStatusRequest" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "Device" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "carrier" => %{"shape" => "String"}, "cpu" => %{"shape" => "CPU"}, "fleetName" => %{"shape" => "String"}, "fleetType" => %{"shape" => "String"}, "formFactor" => %{"shape" => "DeviceFormFactor"}, "heapSize" => %{"shape" => "Long"}, "image" => %{"shape" => "String"}, "manufacturer" => %{"shape" => "String"}, "memory" => %{"shape" => "Long"}, "model" => %{"shape" => "String"}, "name" => %{"shape" => "Name"}, "os" => %{"shape" => "String"}, "platform" => %{"shape" => "DevicePlatform"}, "radio" => %{"shape" => "String"}, "remoteAccessEnabled" => %{"shape" => "Boolean"}, "resolution" => %{"shape" => "Resolution"}}, "type" => "structure"}, "NetworkProfile" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "description" => %{"shape" => "Message"}, "downlinkBandwidthBits" => %{"shape" => "Long"}, "downlinkDelayMs" => %{"shape" => "Long"}, "downlinkJitterMs" => %{"shape" => "Long"}, "downlinkLossPercent" => %{"shape" => "PercentInteger"}, "name" => %{"shape" => "Name"}, "type" => %{"shape" => "NetworkProfileType"}, "uplinkBandwidthBits" => %{"shape" => "Long"}, "uplinkDelayMs" => %{"shape" => "Long"}, "uplinkJitterMs" => %{"shape" => "Long"}, "uplinkLossPercent" => %{"shape" => "PercentInteger"}}, "type" => "structure"}, "ListOfferingTransactionsResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "offeringTransactions" => %{"shape" => "OfferingTransactions"}}, "type" => "structure"}, "ScheduleRunRequest" => %{"members" => %{"appArn" => %{"shape" => "AmazonResourceName"}, "configuration" => %{"shape" => "ScheduleRunConfiguration"}, "devicePoolArn" => %{"shape" => "AmazonResourceName"}, "executionConfiguration" => %{"shape" => "ExecutionConfiguration"}, "name" => %{"shape" => "Name"}, "projectArn" => %{"shape" => "AmazonResourceName"}, "test" => %{"shape" => "ScheduleRunTest"}}, "required" => ["projectArn", "devicePoolArn", "test"], "type" => "structure"}, "Rule" => %{"members" => %{"attribute" => %{"shape" => "DeviceAttribute"}, "operator" => %{"shape" => "RuleOperator"}, "value" => %{"shape" => "String"}}, "type" => "structure"}, "ListJobsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["arn"], "type" => "structure"}, "CreateDevicePoolResult" => %{"members" => %{"devicePool" => %{"shape" => "DevicePool"}}, "type" => "structure"}, "CreateNetworkProfileResult" => %{"members" => %{"networkProfile" => %{"shape" => "NetworkProfile"}}, "type" => "structure"}, "CPU" => %{"members" => %{"architecture" => %{"shape" => "String"}, "clock" => %{"shape" => "Double"}, "frequency" => %{"shape" => "String"}}, "type" => "structure"}, "DevicePlatform" => %{"enum" => ["ANDROID", "IOS"], "type" => "string"}, "DeleteUploadResult" => %{"members" => %{}, "type" => "structure"}, "OfferingPromotion" => %{"members" => %{"description" => %{"shape" => "Message"}, "id" => %{"shape" => "OfferingPromotionIdentifier"}}, "type" => "structure"}, "DeleteProjectRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "OfferingType" => %{"enum" => ["RECURRING"], "type" => "string"}, "UniqueProblemsByExecutionResultMap" => %{"key" => %{"shape" => "ExecutionResult"}, "type" => "map", "value" => %{"shape" => "UniqueProblems"}}, "OfferingTransactionType" => %{"enum" => ["PURCHASE", "RENEW", "SYSTEM"], "type" => "string"}, "UpdateDevicePoolResult" => %{"members" => %{"devicePool" => %{"shape" => "DevicePool"}}, "type" => "structure"}, "IncompatibilityMessage" => %{"members" => %{"message" => %{"shape" => "Message"}, "type" => %{"shape" => "DeviceAttribute"}}, "type" => "structure"}, "ArtifactType" => %{"enum" => ["UNKNOWN", "SCREENSHOT", "DEVICE_LOG", "MESSAGE_LOG", "VIDEO_LOG", "RESULT_LOG", "SERVICE_LOG", "WEBKIT_LOG", "INSTRUMENTATION_OUTPUT", "EXERCISER_MONKEY_OUTPUT", "CALABASH_JSON_OUTPUT", "CALABASH_PRETTY_OUTPUT", "CALABASH_STANDARD_OUTPUT", "CALABASH_JAVA_XML_OUTPUT", "AUTOMATION_OUTPUT", "APPIUM_SERVER_OUTPUT", "APPIUM_JAVA_OUTPUT", "APPIUM_JAVA_XML_OUTPUT", "APPIUM_PYTHON_OUTPUT", "APPIUM_PYTHON_XML_OUTPUT", "EXPLORER_EVENT_LOG", "EXPLORER_SUMMARY_LOG", "APPLICATION_CRASH_REPORT", "XCTEST_LOG", "VIDEO"], "type" => "string"}, "Suites" => %{"member" => %{"shape" => "Suite"}, "type" => "list"}, "ListOfferingPromotionsRequest" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "DateTime" => %{"type" => "timestamp"}, "DeleteRunRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "DevicePoolCompatibilityResults" => %{"member" => %{"shape" => "DevicePoolCompatibilityResult"}, "type" => "list"}, "RenewOfferingRequest" => %{"members" => %{"offeringId" => %{"shape" => "OfferingIdentifier"}, "quantity" => %{"shape" => "Integer"}}, "type" => "structure"}, "DeleteDevicePoolResult" => %{"members" => %{}, "type" => "structure"}, "Projects" => %{"member" => %{"shape" => "Project"}, "type" => "list"}, "CreateProjectRequest" => %{"members" => %{"defaultJobTimeoutMinutes" => %{"shape" => "JobTimeoutMinutes"}, "name" => %{"shape" => "Name"}}, "required" => ["name"], "type" => "structure"}, "ListUploadsRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["arn"], "type" => "structure"}, "AccountsCleanup" => %{"type" => "boolean"}, "Integer" => %{"type" => "integer"}, "DeviceFormFactor" => %{"enum" => ["PHONE", "TABLET"], "type" => "string"}, "DeviceMinutes" => %{"members" => %{"metered" => %{"shape" => "Double"}, "total" => %{"shape" => "Double"}, "unmetered" => %{"shape" => "Double"}}, "type" => "structure"}, "PurchaseOfferingResult" => %{"members" => %{"offeringTransaction" => %{"shape" => "OfferingTransaction"}}, "type" => "structure"}, "RemoteAccessSession" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}, "billingMethod" => %{"shape" => "BillingMethod"}, "created" => %{"shape" => "DateTime"}, "device" => %{"shape" => "Device"}, "deviceMinutes" => %{"shape" => "DeviceMinutes"}, "endpoint" => %{"shape" => "String"}, "message" => %{"shape" => "Message"}, "name" => %{"shape" => "Name"}, "result" => %{"shape" => "ExecutionResult"}, "started" => %{"shape" => "DateTime"}, "status" => %{"shape" => "ExecutionStatus"}, "stopped" => %{"shape" => "DateTime"}}, "type" => "structure"}, "ListSuitesResult" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "suites" => %{"shape" => "Suites"}}, "type" => "structure"}, "URL" => %{"max" => 2048, "min" => 0, "type" => "string"}, "UpdateProjectResult" => %{"members" => %{"project" => %{"shape" => "Project"}}, "type" => "structure"}, "CreateNetworkProfileRequest" => %{"members" => %{"description" => %{"shape" => "Message"}, "downlinkBandwidthBits" => %{"shape" => "Long"}, "downlinkDelayMs" => %{"shape" => "Long"}, "downlinkJitterMs" => %{"shape" => "Long"}, "downlinkLossPercent" => %{"shape" => "PercentInteger"}, "name" => %{"shape" => "Name"}, "projectArn" => %{"shape" => "AmazonResourceName"}, "type" => %{"shape" => "NetworkProfileType"}, "uplinkBandwidthBits" => %{"shape" => "Long"}, "uplinkDelayMs" => %{"shape" => "Long"}, "uplinkJitterMs" => %{"shape" => "Long"}, "uplinkLossPercent" => %{"shape" => "PercentInteger"}}, "required" => ["projectArn", "name"], "type" => "structure"}, "DeleteNetworkProfileRequest" => %{"members" => %{"arn" => %{"shape" => "AmazonResourceName"}}, "required" => ["arn"], "type" => "structure"}, "InstallToRemoteAccessSessionRequest" => %{"members" => %{"appArn" => %{"shape" => "AmazonResourceName"}, "remoteAccessSessionArn" => %{"shape" => "AmazonResourceName"}}, "required" => ["remoteAccessSessionArn", "appArn"], "type" => "structure"}, "TestParameters" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "NetworkProfiles" => %{"member" => %{"shape" => "NetworkProfile"}, "type" => "list"}, "PurchasedDevicesMap" => %{"key" => %{"shape" => "DevicePlatform"}, "type" => "map", "value" => %{"shape" => "Integer"}}}
  end
end