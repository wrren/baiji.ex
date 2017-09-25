defmodule Baiji.CUR do
  @moduledoc """
  All public APIs for AWS Cost and Usage Report service
  """
  
  @doc """
  Delete a specified report definition
  """
  def delete_report_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteReportDefinition",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describe a list of report definitions owned by the account
  """
  def describe_report_definitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeReportDefinitions",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Create a new report definition
  """
  def put_report_definition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "PutReportDefinition",
      type:     :json,
      method:   :post
    }
  end
  
end