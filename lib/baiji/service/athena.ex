defmodule Baiji.Athena do
  @moduledoc """
  Amazon Athena is an interactive query service that lets you use standard
  SQL to analyze data directly in Amazon S3. You can point Athena at your
  data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena
  is serverless, so there is no infrastructure to set up or manage. You pay
  only for the queries you run. Athena scales automatically—executing queries
  in parallel—so results are fast, even with large datasets and complex
  queries. For more information, see [What is Amazon
  Athena](http://docs.aws.amazon.com/athena/latest/ug/what-is.html) in the
  *Amazon Athena User Guide*.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  
  @doc """
  Returns the details of a single named query or a list of up to 50 queries,
  which you provide as an array of query ID strings. Use `ListNamedQueries`
  to get the list of named query IDs. If information could not be retrieved
  for a submitted query ID, information about the query ID submitted is
  listed under `UnprocessedNamedQueryId`. Named queries are different from
  executed queries. Use `BatchGetQueryExecution` to get details about each
  unique query execution, and `ListQueryExecutions` to get a list of query
  execution IDs.
  """
  def batch_get_named_query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetNamedQuery",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Returns the details of a single query execution or a list of up to 50 query
  executions, which you provide as an array of query execution ID strings. To
  get a list of query execution IDs, use `ListQueryExecutions`. Query
  executions are different from named (saved) queries. Use
  `BatchGetNamedQuery` to get details about named queries.
  """
  def batch_get_query_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetQueryExecution",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Creates a named query.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def create_named_query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateNamedQuery",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Deletes a named query.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def delete_named_query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteNamedQuery",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Returns information about a single query.
  """
  def get_named_query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetNamedQuery",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Returns information about a single execution of a query. Each time a query
  executes, information about the query execution is saved with a unique ID.
  """
  def get_query_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetQueryExecution",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Returns the results of a single query execution specified by
  `QueryExecutionId`. This request does not execute the query but returns
  results. Use `StartQueryExecution` to run a query.
  """
  def get_query_results(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetQueryResults",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Provides a list of all available query IDs.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def list_named_queries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListNamedQueries",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Provides a list of all available query execution IDs.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def list_query_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListQueryExecutions",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Runs (executes) the SQL query statements contained in the `Query` string.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def start_query_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartQueryExecution",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
  @doc """
  Stops a query execution.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def stop_query_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "athena",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopQueryExecution",
      
      target_prefix:  "AmazonAthena",
      
      type:           :json,
      version:        "2017-05-18",
      method:         :post
    }
  end
  
end