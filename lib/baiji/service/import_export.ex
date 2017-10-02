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
      service:        "importexport",
      endpoint:       "/?Operation=CancelJob",
      input:          input,
      options:        options,
      action:         "CancelJob",
      
      type:           :xml,
      version:        "2010-06-01",
      method:         :post
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
      service:        "importexport",
      endpoint:       "/?Operation=CreateJob",
      input:          input,
      options:        options,
      action:         "CreateJob",
      
      type:           :xml,
      version:        "2010-06-01",
      method:         :post
    }
  end
  
  @doc """
  This operation generates a pre-paid UPS shipping label that you will use to
  ship your device to AWS for processing.
  """
  def get_shipping_label(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "importexport",
      endpoint:       "/?Operation=GetShippingLabel",
      input:          input,
      options:        options,
      action:         "GetShippingLabel",
      
      type:           :xml,
      version:        "2010-06-01",
      method:         :post
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
      service:        "importexport",
      endpoint:       "/?Operation=GetStatus",
      input:          input,
      options:        options,
      action:         "GetStatus",
      
      type:           :xml,
      version:        "2010-06-01",
      method:         :post
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
      service:        "importexport",
      endpoint:       "/?Operation=ListJobs",
      input:          input,
      options:        options,
      action:         "ListJobs",
      
      type:           :xml,
      version:        "2010-06-01",
      method:         :post
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
      service:        "importexport",
      endpoint:       "/?Operation=UpdateJob",
      input:          input,
      options:        options,
      action:         "UpdateJob",
      
      type:           :xml,
      version:        "2010-06-01",
      method:         :post
    }
  end
  
end