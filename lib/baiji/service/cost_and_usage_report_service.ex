defmodule Baiji.CostAndUsageReportService do
  @moduledoc """
  All public APIs for AWS Cost and Usage Report service
  """

  @doc """
  Delete a specified report definition
  """
  def delete_report_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteReportDefinition",
      method:           :post,
      input_shape:      "DeleteReportDefinitionRequest",
      output_shape:     "DeleteReportDefinitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describe a list of report definitions owned by the account
  """
  def describe_report_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeReportDefinitions",
      method:           :post,
      input_shape:      "DescribeReportDefinitionsRequest",
      output_shape:     "DescribeReportDefinitionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Create a new report definition
  """
  def put_report_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutReportDefinition",
      method:           :post,
      input_shape:      "PutReportDefinitionRequest",
      output_shape:     "PutReportDefinitionResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "cur",
      target_prefix:    "AWSOrigamiServiceGatewayService",
      endpoint_prefix:  "cur",
      type:             :json,
      version:          "2017-01-06",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"AWSRegion" => %{"enum" => ["us-east-1", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1"], "type" => "string"}, "AdditionalArtifact" => %{"enum" => ["REDSHIFT", "QUICKSIGHT"], "type" => "string"}, "AdditionalArtifactList" => %{"member" => %{"shape" => "AdditionalArtifact"}, "type" => "list"}, "CompressionFormat" => %{"enum" => ["ZIP", "GZIP"], "type" => "string"}, "DeleteReportDefinitionRequest" => %{"members" => %{"ReportName" => %{"shape" => "ReportName"}}, "type" => "structure"}, "DeleteReportDefinitionResponse" => %{"members" => %{"ResponseMessage" => %{"shape" => "DeleteResponseMessage"}}, "type" => "structure"}, "DeleteResponseMessage" => %{"type" => "string"}, "DescribeReportDefinitionsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "GenericString"}}, "type" => "structure"}, "DescribeReportDefinitionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "GenericString"}, "ReportDefinitions" => %{"shape" => "ReportDefinitionList"}}, "type" => "structure"}, "DuplicateReportNameException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "GenericString" => %{"type" => "string"}, "InternalErrorException" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MaxResults" => %{"box" => true, "max" => 5, "min" => 5, "type" => "integer"}, "PutReportDefinitionRequest" => %{"members" => %{"ReportDefinition" => %{"shape" => "ReportDefinition"}}, "required" => ["ReportDefinition"], "type" => "structure"}, "PutReportDefinitionResponse" => %{"members" => %{}, "type" => "structure"}, "ReportDefinition" => %{"members" => %{"AdditionalArtifacts" => %{"shape" => "AdditionalArtifactList"}, "AdditionalSchemaElements" => %{"shape" => "SchemaElementList"}, "Compression" => %{"shape" => "CompressionFormat"}, "Format" => %{"shape" => "ReportFormat"}, "ReportName" => %{"shape" => "ReportName"}, "S3Bucket" => %{"shape" => "S3Bucket"}, "S3Prefix" => %{"shape" => "S3Prefix"}, "S3Region" => %{"shape" => "AWSRegion"}, "TimeUnit" => %{"shape" => "TimeUnit"}}, "required" => ["ReportName", "TimeUnit", "Format", "Compression", "AdditionalSchemaElements", "S3Bucket", "S3Prefix", "S3Region"], "type" => "structure"}, "ReportDefinitionList" => %{"member" => %{"shape" => "ReportDefinition"}, "type" => "list"}, "ReportFormat" => %{"enum" => ["textORcsv"], "type" => "string"}, "ReportLimitReachedException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ReportName" => %{"max" => 256, "pattern" => "[0-9A-Za-z!\\-_.*\\'()]+", "type" => "string"}, "S3Bucket" => %{"max" => 256, "type" => "string"}, "S3Prefix" => %{"max" => 256, "pattern" => "[0-9A-Za-z!\\-_.*\\'()/]*", "type" => "string"}, "SchemaElement" => %{"enum" => ["RESOURCES"], "type" => "string"}, "SchemaElementList" => %{"member" => %{"shape" => "SchemaElement"}, "type" => "list"}, "TimeUnit" => %{"enum" => ["HOURLY", "DAILY"], "type" => "string"}, "ValidationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}}
  end
end