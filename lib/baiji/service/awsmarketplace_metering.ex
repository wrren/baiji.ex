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
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchMeterUsage",
      method:           :post,
      input_shape:      "BatchMeterUsageRequest",
      output_shape:     "BatchMeterUsageResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "MeterUsage",
      method:           :post,
      input_shape:      "MeterUsageRequest",
      output_shape:     "MeterUsageResult",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ResolveCustomer",
      method:           :post,
      input_shape:      "ResolveCustomerRequest",
      output_shape:     "ResolveCustomerResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "meteringmarketplace",
      target_prefix:    "AWSMPMeteringService",
      endpoint_prefix:  "metering.marketplace",
      type:             :json,
      version:          "2016-01-14",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"BatchMeterUsageRequest" => %{"members" => %{"ProductCode" => %{"shape" => "ProductCode"}, "UsageRecords" => %{"shape" => "UsageRecordList"}}, "required" => ["UsageRecords", "ProductCode"], "type" => "structure"}, "BatchMeterUsageResult" => %{"members" => %{"Results" => %{"shape" => "UsageRecordResultList"}, "UnprocessedRecords" => %{"shape" => "UsageRecordList"}}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "CustomerIdentifier" => %{"max" => 255, "min" => 1, "type" => "string"}, "DuplicateRequestException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "ExpiredTokenException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "InternalServiceErrorException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "InvalidCustomerIdentifierException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "InvalidEndpointRegionException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "InvalidProductCodeException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "InvalidTokenException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "InvalidUsageDimensionException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "MeterUsageRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "ProductCode" => %{"shape" => "ProductCode"}, "Timestamp" => %{"shape" => "Timestamp"}, "UsageDimension" => %{"shape" => "UsageDimension"}, "UsageQuantity" => %{"shape" => "UsageQuantity"}}, "required" => ["ProductCode", "Timestamp", "UsageDimension", "UsageQuantity", "DryRun"], "type" => "structure"}, "MeterUsageResult" => %{"members" => %{"MeteringRecordId" => %{"shape" => "String"}}, "type" => "structure"}, "NonEmptyString" => %{"pattern" => "\\S+", "type" => "string"}, "ProductCode" => %{"max" => 255, "min" => 1, "type" => "string"}, "ResolveCustomerRequest" => %{"members" => %{"RegistrationToken" => %{"shape" => "NonEmptyString"}}, "required" => ["RegistrationToken"], "type" => "structure"}, "ResolveCustomerResult" => %{"members" => %{"CustomerIdentifier" => %{"shape" => "CustomerIdentifier"}, "ProductCode" => %{"shape" => "ProductCode"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "ThrottlingException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "TimestampOutOfBoundsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "UsageDimension" => %{"max" => 255, "min" => 1, "type" => "string"}, "UsageQuantity" => %{"max" => 1000000, "min" => 0, "type" => "integer"}, "UsageRecord" => %{"members" => %{"CustomerIdentifier" => %{"shape" => "CustomerIdentifier"}, "Dimension" => %{"shape" => "UsageDimension"}, "Quantity" => %{"shape" => "UsageQuantity"}, "Timestamp" => %{"shape" => "Timestamp"}}, "required" => ["Timestamp", "CustomerIdentifier", "Dimension", "Quantity"], "type" => "structure"}, "UsageRecordList" => %{"max" => 25, "member" => %{"shape" => "UsageRecord"}, "min" => 0, "type" => "list"}, "UsageRecordResult" => %{"members" => %{"MeteringRecordId" => %{"shape" => "String"}, "Status" => %{"shape" => "UsageRecordResultStatus"}, "UsageRecord" => %{"shape" => "UsageRecord"}}, "type" => "structure"}, "UsageRecordResultList" => %{"member" => %{"shape" => "UsageRecordResult"}, "type" => "list"}, "UsageRecordResultStatus" => %{"enum" => ["Success", "CustomerNotSubscribed", "DuplicateRecord"], "type" => "string"}, "errorMessage" => %{"type" => "string"}}
  end
end