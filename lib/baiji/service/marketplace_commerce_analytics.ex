defmodule Baiji.MarketplaceCommerceAnalytics do
  @moduledoc """
  Provides AWS Marketplace business intelligence data on-demand.
  """
  
  @doc """
  Given a data set type and data set publication date, asynchronously
  publishes the requested data set to the specified S3 bucket and notifies
  the specified SNS topic once the data is available. Returns a unique
  request identifier that can be used to correlate requests with
  notifications from the SNS topic. Data sets will be published in
  comma-separated values (CSV) format with the file name
  {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists
  (e.g. if the same data set is requested twice), the original file will be
  overwritten by the new file. Requires a Role with an attached permissions
  policy providing Allow permissions for the following actions: s3:PutObject,
  s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish,
  iam:GetRolePolicy.
  """
  def generate_data_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "marketplacecommerceanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GenerateDataSet",
      
      target_prefix:    "MarketplaceCommerceAnalytics20150701",
      
      endpoint_prefix:  "marketplacecommerceanalytics",
      type:             :json,
      version:          "2015-07-01",
      method:           :post,
      input_shape:      "GenerateDataSetRequest",
      output_shape:     "GenerateDataSetResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Given a data set type and a from date, asynchronously publishes the
  requested customer support data to the specified S3 bucket and notifies the
  specified SNS topic once the data is available. Returns a unique request
  identifier that can be used to correlate requests with notifications from
  the SNS topic. Data sets will be published in comma-separated values (CSV)
  format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If
  a file with the same name already exists (e.g. if the same data set is
  requested twice), the original file will be overwritten by the new file.
  Requires a Role with an attached permissions policy providing Allow
  permissions for the following actions: s3:PutObject, s3:GetBucketLocation,
  sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
  """
  def start_support_data_export(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "marketplacecommerceanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartSupportDataExport",
      
      target_prefix:    "MarketplaceCommerceAnalytics20150701",
      
      endpoint_prefix:  "marketplacecommerceanalytics",
      type:             :json,
      version:          "2015-07-01",
      method:           :post,
      input_shape:      "StartSupportDataExportRequest",
      output_shape:     "StartSupportDataExportResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"CustomerDefinedValues" => %{"key" => %{"shape" => "OptionalKey"}, "max" => 5, "min" => 1, "type" => "map", "value" => %{"shape" => "OptionalValue"}}, "DataSetPublicationDate" => %{"type" => "timestamp"}, "DataSetRequestId" => %{"type" => "string"}, "DataSetType" => %{"enum" => ["customer_subscriber_hourly_monthly_subscriptions", "customer_subscriber_annual_subscriptions", "daily_business_usage_by_instance_type", "daily_business_fees", "daily_business_free_trial_conversions", "daily_business_new_instances", "daily_business_new_product_subscribers", "daily_business_canceled_product_subscribers", "monthly_revenue_billing_and_revenue_data", "monthly_revenue_annual_subscriptions", "disbursed_amount_by_product", "disbursed_amount_by_product_with_uncollected_funds", "disbursed_amount_by_instance_hours", "disbursed_amount_by_customer_geo", "disbursed_amount_by_age_of_uncollected_funds", "disbursed_amount_by_age_of_disbursed_funds", "customer_profile_by_industry", "customer_profile_by_revenue", "customer_profile_by_geography", "sales_compensation_billed_revenue", "us_sales_and_use_tax_records"], "max" => 255, "min" => 1, "type" => "string"}, "DestinationS3BucketName" => %{"min" => 1, "type" => "string"}, "DestinationS3Prefix" => %{"type" => "string"}, "ExceptionMessage" => %{"type" => "string"}, "FromDate" => %{"type" => "timestamp"}, "GenerateDataSetRequest" => %{"members" => %{"customerDefinedValues" => %{"shape" => "CustomerDefinedValues"}, "dataSetPublicationDate" => %{"shape" => "DataSetPublicationDate"}, "dataSetType" => %{"shape" => "DataSetType"}, "destinationS3BucketName" => %{"shape" => "DestinationS3BucketName"}, "destinationS3Prefix" => %{"shape" => "DestinationS3Prefix"}, "roleNameArn" => %{"shape" => "RoleNameArn"}, "snsTopicArn" => %{"shape" => "SnsTopicArn"}}, "required" => ["dataSetType", "dataSetPublicationDate", "roleNameArn", "destinationS3BucketName", "snsTopicArn"], "type" => "structure"}, "GenerateDataSetResult" => %{"members" => %{"dataSetRequestId" => %{"shape" => "DataSetRequestId"}}, "type" => "structure"}, "MarketplaceCommerceAnalyticsException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "OptionalKey" => %{"max" => 255, "min" => 1, "type" => "string"}, "OptionalValue" => %{"max" => 255, "min" => 1, "type" => "string"}, "RoleNameArn" => %{"min" => 1, "type" => "string"}, "SnsTopicArn" => %{"min" => 1, "type" => "string"}, "StartSupportDataExportRequest" => %{"members" => %{"customerDefinedValues" => %{"shape" => "CustomerDefinedValues"}, "dataSetType" => %{"shape" => "SupportDataSetType"}, "destinationS3BucketName" => %{"shape" => "DestinationS3BucketName"}, "destinationS3Prefix" => %{"shape" => "DestinationS3Prefix"}, "fromDate" => %{"shape" => "FromDate"}, "roleNameArn" => %{"shape" => "RoleNameArn"}, "snsTopicArn" => %{"shape" => "SnsTopicArn"}}, "required" => ["dataSetType", "fromDate", "roleNameArn", "destinationS3BucketName", "snsTopicArn"], "type" => "structure"}, "StartSupportDataExportResult" => %{"members" => %{"dataSetRequestId" => %{"shape" => "DataSetRequestId"}}, "type" => "structure"}, "SupportDataSetType" => %{"enum" => ["customer_support_contacts_data", "test_customer_support_contacts_data"], "max" => 255, "min" => 1, "type" => "string"}}
  end
end