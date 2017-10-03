defmodule Baiji.MarketplaceEntitlementService do
  @moduledoc """
  AWS Marketplace Entitlement Service

  This reference provides descriptions of the AWS Marketplace Entitlement
  Service API.

  AWS Marketplace Entitlement Service is used to determine the entitlement of
  a customer to a given product. An entitlement represents capacity in a
  product owned by the customer. For example, a customer might own some
  number of users or seats in an SaaS application or some amount of data
  capacity in a multi-tenant database.

  **Getting Entitlement Records**

  <ul> <li> *GetEntitlements*- Gets the entitlements for a Marketplace
  product.

  </li> </ul>
  """

  @doc """
  GetEntitlements retrieves entitlement values for a given product. The
  results can be filtered based on customer identifier or product dimensions.
  """
  def get_entitlements(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetEntitlements",
      method:           :post,
      input_shape:      "GetEntitlementsRequest",
      output_shape:     "GetEntitlementsResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "entitlement.marketplace",
      target_prefix:    "AWSMPEntitlementService",
      endpoint_prefix:  "entitlement.marketplace",
      type:             :json,
      version:          "2017-01-11",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"Boolean" => %{"type" => "boolean"}, "Double" => %{"type" => "double"}, "Entitlement" => %{"members" => %{"CustomerIdentifier" => %{"shape" => "NonEmptyString"}, "Dimension" => %{"shape" => "NonEmptyString"}, "ExpirationDate" => %{"shape" => "Timestamp"}, "ProductCode" => %{"shape" => "ProductCode"}, "Value" => %{"shape" => "EntitlementValue"}}, "type" => "structure"}, "EntitlementList" => %{"member" => %{"shape" => "Entitlement"}, "min" => 0, "type" => "list"}, "EntitlementValue" => %{"members" => %{"BooleanValue" => %{"shape" => "Boolean"}, "DoubleValue" => %{"shape" => "Double"}, "IntegerValue" => %{"shape" => "Integer"}, "StringValue" => %{"shape" => "String"}}, "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "FilterValue" => %{"type" => "string"}, "FilterValueList" => %{"member" => %{"shape" => "FilterValue"}, "min" => 1, "type" => "list"}, "GetEntitlementFilterName" => %{"enum" => ["CUSTOMER_IDENTIFIER", "DIMENSION"], "type" => "string"}, "GetEntitlementFilters" => %{"key" => %{"shape" => "GetEntitlementFilterName"}, "type" => "map", "value" => %{"shape" => "FilterValueList"}}, "GetEntitlementsRequest" => %{"members" => %{"Filter" => %{"shape" => "GetEntitlementFilters"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "NonEmptyString"}, "ProductCode" => %{"shape" => "ProductCode"}}, "required" => ["ProductCode"], "type" => "structure"}, "GetEntitlementsResult" => %{"members" => %{"Entitlements" => %{"shape" => "EntitlementList"}, "NextToken" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "InternalServiceErrorException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InvalidParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "NonEmptyString" => %{"pattern" => "\\S+", "type" => "string"}, "ProductCode" => %{"max" => 255, "min" => 1, "type" => "string"}, "String" => %{"type" => "string"}, "ThrottlingException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}}
  end
end