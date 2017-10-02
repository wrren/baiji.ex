defmodule Baiji.AwsmarketplaceMetering do
  @moduledoc """
  AWS Marketplace Metering Service

  This reference provides descriptions of the low-level AWS Marketplace
  Metering Service API.

  AWS Marketplace sellers can use this API to submit usage data for custom
  usage dimensions.

  **Submitting Metering Records**

  <ul> <li> *MeterUsage*- Submits the metering record for a Marketplace
  product. MeterUsage is called from an EC2 instance.

  </li> <li> *BatchMeterUsage*- Submits the metering record for a set of
  customers. BatchMeterUsage is called from a software-as-a-service (SaaS)
  application.

  </li> </ul> **Accepting New Customers**

  <ul> <li> *ResolveCustomer*- Called by a SaaS application during the
  registration process. When a buyer visits your website during the
  registration process, the buyer submits a Registration Token through the
  browser. The Registration Token is resolved through this API to obtain a
  CustomerIdentifier and Product Code.

  </li> </ul>
  """
  
  @doc """
  BatchMeterUsage is called from a SaaS application listed on the AWS
  Marketplace to post metering records for a set of customers.

  For identical requests, the API is idempotent; requests can be retried with
  the same records or a subset of the input records.

  Every request to BatchMeterUsage is for one product. If you need to meter
  usage for multiple products, you must make multiple calls to
  BatchMeterUsage.

  BatchMeterUsage can process up to 25 UsageRecords at a time.
  """
  def batch_meter_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "meteringmarketplace",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchMeterUsage",
      
      target_prefix:  "AWSMPMeteringService",
      
      type:           :json,
      version:        "2016-01-14",
      method:         :post
    }
  end
  
  @doc """
  API to emit metering records. For identical requests, the API is
  idempotent. It simply returns the metering record ID.

  MeterUsage is authenticated on the buyer's AWS account, generally when
  running from an EC2 instance on the AWS Marketplace.
  """
  def meter_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "meteringmarketplace",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "MeterUsage",
      
      target_prefix:  "AWSMPMeteringService",
      
      type:           :json,
      version:        "2016-01-14",
      method:         :post
    }
  end
  
  @doc """
  ResolveCustomer is called by a SaaS application during the registration
  process. When a buyer visits your website during the registration process,
  the buyer submits a registration token through their browser. The
  registration token is resolved through this API to obtain a
  CustomerIdentifier and product code.
  """
  def resolve_customer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "meteringmarketplace",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResolveCustomer",
      
      target_prefix:  "AWSMPMeteringService",
      
      type:           :json,
      version:        "2016-01-14",
      method:         :post
    }
  end
  
end