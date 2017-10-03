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
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetTest",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
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
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetOfferingStatus",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about suites.
  """
  def list_suites(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListSuites",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about jobs.
  """
  def list_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListJobs",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Returns a link to a currently running remote access session.
  """
  def get_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetRemoteAccessSession",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Returns the list of available network profiles.
  """
  def list_network_profiles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListNetworkProfiles",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Modifies the name, description, and rules in a device pool given the
  attributes and the pool ARN. Rule updates are all-or-nothing, meaning they
  can only be updated as a whole (or not at all).
  """
  def update_device_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDevicePool",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Specifies and starts a remote access session.
  """
  def create_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateRemoteAccessSession",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about tests.
  """
  def list_tests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTests",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Creates a device pool.
  """
  def create_device_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateDevicePool",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about artifacts.
  """
  def list_artifacts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListArtifacts",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Modifies the specified project name, given the project ARN and a new name.
  """
  def update_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateProject",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about an upload.
  """
  def get_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetUpload",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Creates a network profile.
  """
  def create_network_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateNetworkProfile",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a project.
  """
  def get_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetProject",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Ends a specified remote access session.
  """
  def stop_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopRemoteAccessSession",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about unique problems.
  """
  def list_unique_problems(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListUniqueProblems",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Returns information about a network profile.
  """
  def get_network_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetNetworkProfile",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Returns a list of all currently running remote access sessions.
  """
  def list_remote_access_sessions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRemoteAccessSessions",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
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
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopRun",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a unique device type.
  """
  def get_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDevice",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Creates a new project.
  """
  def create_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateProject",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about unique device types.
  """
  def list_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDevices",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Deletes the run, given the run ARN.

  **Note** Deleting this resource does not stop an in-progress run.
  """
  def delete_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRun",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Uploads an app or test scripts.
  """
  def create_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateUpload",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Deletes an upload given the upload ARN.
  """
  def delete_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteUpload",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Returns the number of unmetered iOS and/or unmetered Android devices that
  have been purchased by the account.
  """
  def get_account_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetAccountSettings",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a run.
  """
  def get_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetRun",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Deletes a network profile.
  """
  def delete_network_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteNetworkProfile",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Deletes a completed remote access session and its results.
  """
  def delete_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRemoteAccessSession",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a job.
  """
  def get_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetJob",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
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
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListOfferingTransactions",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about device pools.
  """
  def list_device_pools(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDevicePools",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a device pool.
  """
  def get_device_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDevicePool",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about projects.
  """
  def list_projects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListProjects",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Updates the network profile with specific settings.
  """
  def update_network_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateNetworkProfile",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
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
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RenewOffering",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
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
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListOfferings",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about samples, given an AWS Device Farm project ARN
  """
  def list_samples(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListSamples",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about uploads, given an AWS Device Farm project ARN.
  """
  def list_uploads(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListUploads",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a suite.
  """
  def get_suite(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetSuite",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Deletes an AWS Device Farm project, given the project ARN.

  **Note** Deleting this resource does not stop an in-progress run.
  """
  def delete_project(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteProject",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Installs an application to the device in a remote access session. For
  Android applications, the file must be in .apk format. For iOS
  applications, the file must be in .ipa format.
  """
  def install_to_remote_access_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "InstallToRemoteAccessSession",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about compatibility with a device pool.
  """
  def get_device_pool_compatibility(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDevicePoolCompatibility",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
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
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PurchaseOffering",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Deletes a device pool given the pool ARN. Does not allow deletion of
  curated pools owned by the system.
  """
  def delete_device_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteDevicePool",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Schedules a run.
  """
  def schedule_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ScheduleRun",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
  @doc """
  Gets information about runs, given an AWS Device Farm project ARN.
  """
  def list_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRuns",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
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
      service:          "devicefarm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListOfferingPromotions",
      
      target_prefix:    "DeviceFarm_20150623",
      
      endpoint_prefix:  "devicefarm",
      type:             :json,
      version:          "2015-06-23",
      method:           :post
    }
  end
  
end