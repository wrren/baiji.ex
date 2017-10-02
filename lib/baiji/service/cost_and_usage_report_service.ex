defmodule Baiji.CostAndUsageReportService do
  @moduledoc """
  All public APIs for AWS Cost and Usage Report service
  """
  
  @doc """
  Delete a specified report definition
  """
  def delete_report_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cur",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteReportDefinition",
      
      target_prefix:  "AWSOrigamiServiceGatewayService",
      
      type:           :json,
      version:        "2017-01-06",
      method:         :post
    }
  end
  
  @doc """
  Describe a list of report definitions owned by the account
  """
  def describe_report_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cur",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReportDefinitions",
      
      target_prefix:  "AWSOrigamiServiceGatewayService",
      
      type:           :json,
      version:        "2017-01-06",
      method:         :post
    }
  end
  
  @doc """
  Create a new report definition
  """
  def put_report_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cur",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PutReportDefinition",
      
      target_prefix:  "AWSOrigamiServiceGatewayService",
      
      type:           :json,
      version:        "2017-01-06",
      method:         :post
    }
  end
  
end