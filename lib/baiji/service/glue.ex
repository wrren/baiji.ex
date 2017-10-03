defmodule Baiji.Glue do
  @moduledoc """
  Defines service operations used by the GlueFrontendService
  """

  @doc """
  Deletes a specified trigger.
  """
  def delete_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTrigger",
      method:           :post,
      input_shape:      "DeleteTriggerRequest",
      output_shape:     "DeleteTriggerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves metadata for all `Crawlers` defined in the customer account.
  """
  def get_crawlers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetCrawlers",
      method:           :post,
      input_shape:      "GetCrawlersRequest",
      output_shape:     "GetCrawlersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a specified function definition from the Data Catalog.
  """
  def get_user_defined_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetUserDefinedFunction",
      method:           :post,
      input_shape:      "GetUserDefinedFunctionRequest",
      output_shape:     "GetUserDefinedFunctionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Starts an existing trigger.
  """
  def start_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartTrigger",
      method:           :post,
      input_shape:      "StartTriggerRequest",
      output_shape:     "StartTriggerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  If the specified `Crawler` is running, stops the crawl.
  """
  def stop_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopCrawler",
      method:           :post,
      input_shape:      "StopCrawlerRequest",
      output_shape:     "StopCrawlerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new partition.
  """
  def create_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePartition",
      method:           :post,
      input_shape:      "CreatePartitionRequest",
      output_shape:     "CreatePartitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a trigger definition.
  """
  def update_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateTrigger",
      method:           :post,
      input_shape:      "UpdateTriggerRequest",
      output_shape:     "UpdateTriggerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an existing function definition in the Data Catalog.
  """
  def update_user_defined_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateUserDefinedFunction",
      method:           :post,
      input_shape:      "UpdateUserDefinedFunctionRequest",
      output_shape:     "UpdateUserDefinedFunctionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `Classifier` in the user's account.
  """
  def create_classifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateClassifier",
      method:           :post,
      input_shape:      "CreateClassifierRequest",
      output_shape:     "CreateClassifierResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes multiple tables at once.
  """
  def batch_delete_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchDeleteTable",
      method:           :post,
      input_shape:      "BatchDeleteTableRequest",
      output_shape:     "BatchDeleteTableResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates mappings.
  """
  def get_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetMapping",
      method:           :post,
      input_shape:      "GetMappingRequest",
      output_shape:     "GetMappingResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a list of connection definitions from the Data Catalog.
  """
  def batch_delete_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchDeleteConnection",
      method:           :post,
      input_shape:      "BatchDeleteConnectionRequest",
      output_shape:     "BatchDeleteConnectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes the schedule state of the specified crawler to `SCHEDULED`, unless
  the crawler is already running or the schedule state is already
  `SCHEDULED`.
  """
  def start_crawler_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartCrawlerSchedule",
      method:           :post,
      input_shape:      "StartCrawlerScheduleRequest",
      output_shape:     "StartCrawlerScheduleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new database in a Data Catalog.
  """
  def create_database(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDatabase",
      method:           :post,
      input_shape:      "CreateDatabaseRequest",
      output_shape:     "CreateDatabaseResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a `Classifier` from the metadata store.
  """
  def delete_classifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteClassifier",
      method:           :post,
      input_shape:      "DeleteClassifierRequest",
      output_shape:     "DeleteClassifierResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves all current jobs.
  """
  def get_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetJobs",
      method:           :post,
      input_shape:      "GetJobsRequest",
      output_shape:     "GetJobsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a connection definition in the Data Catalog.
  """
  def update_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateConnection",
      method:           :post,
      input_shape:      "UpdateConnectionRequest",
      output_shape:     "UpdateConnectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes one or more partitions in a batch operation.
  """
  def batch_delete_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchDeletePartition",
      method:           :post,
      input_shape:      "BatchDeletePartitionRequest",
      output_shape:     "BatchDeletePartitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the schedule of a crawler using a Cron expression.
  """
  def update_crawler_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateCrawlerSchedule",
      method:           :post,
      input_shape:      "UpdateCrawlerScheduleRequest",
      output_shape:     "UpdateCrawlerScheduleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a specified partition.
  """
  def get_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetPartition",
      method:           :post,
      input_shape:      "GetPartitionRequest",
      output_shape:     "GetPartitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a table definition from the Data Catalog.
  """
  def delete_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTable",
      method:           :post,
      input_shape:      "DeleteTableRequest",
      output_shape:     "DeleteTableResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an existing job definition.
  """
  def update_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateJob",
      method:           :post,
      input_shape:      "UpdateJobRequest",
      output_shape:     "UpdateJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new job.
  """
  def create_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateJob",
      method:           :post,
      input_shape:      "CreateJobRequest",
      output_shape:     "CreateJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specified job.
  """
  def delete_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteJob",
      method:           :post,
      input_shape:      "DeleteJobRequest",
      output_shape:     "DeleteJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of connection definitions from the Data Catalog.
  """
  def get_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetConnections",
      method:           :post,
      input_shape:      "GetConnectionsRequest",
      output_shape:     "GetConnectionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops a specified trigger.
  """
  def stop_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopTrigger",
      method:           :post,
      input_shape:      "StopTriggerRequest",
      output_shape:     "StopTriggerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the `Table` definition in a Data Catalog for a specified table.
  """
  def get_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTable",
      method:           :post,
      input_shape:      "GetTableRequest",
      output_shape:     "GetTableResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all Classifier objects in the metadata store.
  """
  def get_classifiers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetClassifiers",
      method:           :post,
      input_shape:      "GetClassifiersRequest",
      output_shape:     "GetClassifiersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Runs a job.
  """
  def start_job_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartJobRun",
      method:           :post,
      input_shape:      "StartJobRunRequest",
      output_shape:     "StartJobRunResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a connection definition in the Data Catalog.
  """
  def create_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateConnection",
      method:           :post,
      input_shape:      "CreateConnectionRequest",
      output_shape:     "CreateConnectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Resets a bookmark entry.
  """
  def reset_job_bookmark(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ResetJobBookmark",
      method:           :post,
      input_shape:      "ResetJobBookmarkRequest",
      output_shape:     "ResetJobBookmarkResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Imports an existing Athena Data Catalog to AWS Glue
  """
  def import_catalog_to_glue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ImportCatalogToGlue",
      method:           :post,
      input_shape:      "ImportCatalogToGlueRequest",
      output_shape:     "ImportCatalogToGlueResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Transforms a directed acyclic graph (DAG) into a Python script.
  """
  def create_script(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateScript",
      method:           :post,
      input_shape:      "CreateScriptRequest",
      output_shape:     "CreateScriptResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies an existing `Classifier`.
  """
  def update_classifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateClassifier",
      method:           :post,
      input_shape:      "UpdateClassifierRequest",
      output_shape:     "UpdateClassifierResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specified partition.
  """
  def delete_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeletePartition",
      method:           :post,
      input_shape:      "DeletePartitionRequest",
      output_shape:     "DeletePartitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the definition of a trigger.
  """
  def get_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTrigger",
      method:           :post,
      input_shape:      "GetTriggerRequest",
      output_shape:     "GetTriggerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a multiple function definitions from the Data Catalog.
  """
  def get_user_defined_functions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetUserDefinedFunctions",
      method:           :post,
      input_shape:      "GetUserDefinedFunctionsRequest",
      output_shape:     "GetUserDefinedFunctionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets all the triggers associated with a job.
  """
  def get_triggers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTriggers",
      method:           :post,
      input_shape:      "GetTriggersRequest",
      output_shape:     "GetTriggersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an existing function definition from the Data Catalog.
  """
  def delete_user_defined_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUserDefinedFunction",
      method:           :post,
      input_shape:      "DeleteUserDefinedFunctionRequest",
      output_shape:     "DeleteUserDefinedFunctionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an existing database definition in a Data Catalog.
  """
  def update_database(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDatabase",
      method:           :post,
      input_shape:      "UpdateDatabaseRequest",
      output_shape:     "UpdateDatabaseResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves all the DevEndpoints in this AWS account.
  """
  def get_dev_endpoints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDevEndpoints",
      method:           :post,
      input_shape:      "GetDevEndpointsRequest",
      output_shape:     "GetDevEndpointsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Transforms a Python script into a directed acyclic graph (DAG).
  """
  def get_dataflow_graph(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDataflowGraph",
      method:           :post,
      input_shape:      "GetDataflowGraphRequest",
      output_shape:     "GetDataflowGraphResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new DevEndpoint.
  """
  def create_dev_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDevEndpoint",
      method:           :post,
      input_shape:      "CreateDevEndpointRequest",
      output_shape:     "CreateDevEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves metrics about specified crawlers.
  """
  def get_crawler_metrics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetCrawlerMetrics",
      method:           :post,
      input_shape:      "GetCrawlerMetricsRequest",
      output_shape:     "GetCrawlerMetricsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the status of a migration operation.
  """
  def get_catalog_import_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetCatalogImportStatus",
      method:           :post,
      input_shape:      "GetCatalogImportStatusRequest",
      output_shape:     "GetCatalogImportStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a specified Database from a Data Catalog.
  """
  def delete_database(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDatabase",
      method:           :post,
      input_shape:      "DeleteDatabaseRequest",
      output_shape:     "DeleteDatabaseResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a connection from the Data Catalog.
  """
  def delete_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteConnection",
      method:           :post,
      input_shape:      "DeleteConnectionRequest",
      output_shape:     "DeleteConnectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a Python script to perform a specified mapping.
  """
  def get_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetPlan",
      method:           :post,
      input_shape:      "GetPlanRequest",
      output_shape:     "GetPlanResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves an existing job definition.
  """
  def get_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetJob",
      method:           :post,
      input_shape:      "GetJobRequest",
      output_shape:     "GetJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the schedule state of the specified crawler to `NOT_SCHEDULED`, but
  does not stop the crawler if it is already running.
  """
  def stop_crawler_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopCrawlerSchedule",
      method:           :post,
      input_shape:      "StopCrawlerScheduleRequest",
      output_shape:     "StopCrawlerScheduleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieve a `Classifier` by name.
  """
  def get_classifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetClassifier",
      method:           :post,
      input_shape:      "GetClassifierRequest",
      output_shape:     "GetClassifierResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves metadata for all runs of a given job.
  """
  def get_job_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetJobRuns",
      method:           :post,
      input_shape:      "GetJobRunsRequest",
      output_shape:     "GetJobRunsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new `Crawler` with specified targets, role, configuration, and
  optional schedule. At least one crawl target must be specified, in either
  the *s3Targets* or the *jdbcTargets* field.
  """
  def create_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateCrawler",
      method:           :post,
      input_shape:      "CreateCrawlerRequest",
      output_shape:     "CreateCrawlerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about the partitions in a table.
  """
  def get_partitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetPartitions",
      method:           :post,
      input_shape:      "GetPartitionsRequest",
      output_shape:     "GetPartitionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves partitions in a batch request.
  """
  def batch_get_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchGetPartition",
      method:           :post,
      input_shape:      "BatchGetPartitionRequest",
      output_shape:     "BatchGetPartitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the definition of a specified database.
  """
  def get_database(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDatabase",
      method:           :post,
      input_shape:      "GetDatabaseRequest",
      output_shape:     "GetDatabaseResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the definitions of some or all of the tables in a given
  `Database`.
  """
  def get_tables(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTables",
      method:           :post,
      input_shape:      "GetTablesRequest",
      output_shape:     "GetTablesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Starts a crawl using the specified `Crawler`, regardless of what is
  scheduled. If the `Crawler` is already running, does nothing.
  """
  def start_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartCrawler",
      method:           :post,
      input_shape:      "StartCrawlerRequest",
      output_shape:     "StartCrawlerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a specified DevEndpoint.
  """
  def get_dev_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDevEndpoint",
      method:           :post,
      input_shape:      "GetDevEndpointRequest",
      output_shape:     "GetDevEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a metadata table in the Data Catalog.
  """
  def update_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateTable",
      method:           :post,
      input_shape:      "UpdateTableRequest",
      output_shape:     "UpdateTableResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the metadata for a given job run.
  """
  def get_job_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetJobRun",
      method:           :post,
      input_shape:      "GetJobRunRequest",
      output_shape:     "GetJobRunResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new table definition in the Data Catalog.
  """
  def create_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateTable",
      method:           :post,
      input_shape:      "CreateTableRequest",
      output_shape:     "CreateTableResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of strings that identify available versions of a specified
  table.
  """
  def get_table_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTableVersions",
      method:           :post,
      input_shape:      "GetTableVersionsRequest",
      output_shape:     "GetTableVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a `Crawler`. If a `Crawler` is running, you must stop it using
  `StopCrawler` before updating it.
  """
  def update_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateCrawler",
      method:           :post,
      input_shape:      "UpdateCrawlerRequest",
      output_shape:     "UpdateCrawlerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specified DevEndpoint.
  """
  def delete_dev_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDevEndpoint",
      method:           :post,
      input_shape:      "DeleteDevEndpointRequest",
      output_shape:     "DeleteDevEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a partition.
  """
  def update_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdatePartition",
      method:           :post,
      input_shape:      "UpdatePartitionRequest",
      output_shape:     "UpdatePartitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a specified DevEndpoint.
  """
  def update_dev_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDevEndpoint",
      method:           :post,
      input_shape:      "UpdateDevEndpointRequest",
      output_shape:     "UpdateDevEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new trigger.
  """
  def create_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateTrigger",
      method:           :post,
      input_shape:      "CreateTriggerRequest",
      output_shape:     "CreateTriggerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new function definition in the Data Catalog.
  """
  def create_user_defined_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUserDefinedFunction",
      method:           :post,
      input_shape:      "CreateUserDefinedFunctionRequest",
      output_shape:     "CreateUserDefinedFunctionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a connection definition from the Data Catalog.
  """
  def get_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetConnection",
      method:           :post,
      input_shape:      "GetConnectionRequest",
      output_shape:     "GetConnectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves all Databases defined in a given Data Catalog.
  """
  def get_databases(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDatabases",
      method:           :post,
      input_shape:      "GetDatabasesRequest",
      output_shape:     "GetDatabasesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates one or more partitions in a batch operation.
  """
  def batch_create_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchCreatePartition",
      method:           :post,
      input_shape:      "BatchCreatePartitionRequest",
      output_shape:     "BatchCreatePartitionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves metadata for a specified `Crawler`.
  """
  def get_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetCrawler",
      method:           :post,
      input_shape:      "GetCrawlerRequest",
      output_shape:     "GetCrawlerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a specified `Crawler` from the metadata store, unless the `Crawler`
  state is `RUNNING`.
  """
  def delete_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteCrawler",
      method:           :post,
      input_shape:      "DeleteCrawlerRequest",
      output_shape:     "DeleteCrawlerResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "AWS Glue",
      target_prefix:    "AWSGlue",
      endpoint_prefix:  "glue",
      type:             :json,
      version:          "2017-03-31",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"GetClassifiersRequest" => %{"members" => %{"MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "MessagePrefix" => %{"max" => 255, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "PageSize" => %{"box" => true, "max" => 1000, "min" => 1, "type" => "integer"}, "PartitionErrors" => %{"member" => %{"shape" => "PartitionError"}, "type" => "list"}, "StopCrawlerScheduleResponse" => %{"members" => %{}, "type" => "structure"}, "SerDeInfo" => %{"members" => %{"Name" => %{"shape" => "NameString"}, "Parameters" => %{"shape" => "ParametersMap"}, "SerializationLibrary" => %{"shape" => "NameString"}}, "type" => "structure"}, "SchemaPathString" => %{"type" => "string"}, "DeleteClassifierRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "DescriptionStringRemovable" => %{"max" => 2048, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "GetCrawlerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "BatchDeleteConnectionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "ConnectionNameList" => %{"shape" => "DeleteConnectionNameList"}}, "required" => ["ConnectionNameList"], "type" => "structure"}, "JobCommand" => %{"members" => %{"Name" => %{"shape" => "GenericString"}, "ScriptLocation" => %{"shape" => "ScriptLocationString"}}, "type" => "structure"}, "DeleteClassifierResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteDevEndpointRequest" => %{"members" => %{"EndpointName" => %{"shape" => "GenericString"}}, "required" => ["EndpointName"], "type" => "structure"}, "GetCrawlerMetricsRequest" => %{"members" => %{"CrawlerNameList" => %{"shape" => "CrawlerNameList"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "BatchDeletePartitionValueList" => %{"max" => 25, "member" => %{"shape" => "PartitionValueList"}, "min" => 0, "type" => "list"}, "ImportCatalogToGlueRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}}, "type" => "structure"}, "GetConnectionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "ResourceType" => %{"enum" => ["JAR", "FILE", "ARCHIVE"], "type" => "string"}, "JdbcTarget" => %{"members" => %{"ConnectionName" => %{"shape" => "ConnectionName"}, "Exclusions" => %{"shape" => "PathList"}, "Path" => %{"shape" => "Path"}}, "type" => "structure"}, "Job" => %{"members" => %{"AllocatedCapacity" => %{"shape" => "IntegerValue"}, "Command" => %{"shape" => "JobCommand"}, "Connections" => %{"shape" => "ConnectionsList"}, "CreatedOn" => %{"shape" => "TimestampValue"}, "DefaultArguments" => %{"shape" => "GenericMap"}, "Description" => %{"shape" => "DescriptionString"}, "ExecutionProperty" => %{"shape" => "ExecutionProperty"}, "LastModifiedOn" => %{"shape" => "TimestampValue"}, "LogUri" => %{"shape" => "UriString"}, "MaxRetries" => %{"shape" => "MaxRetries"}, "Name" => %{"shape" => "NameString"}, "Role" => %{"shape" => "RoleString"}}, "type" => "structure"}, "StartJobRunRequest" => %{"members" => %{"AllocatedCapacity" => %{"shape" => "IntegerValue"}, "Arguments" => %{"shape" => "GenericMap"}, "JobName" => %{"shape" => "NameString"}, "JobRunId" => %{"shape" => "IdString"}}, "required" => ["JobName"], "type" => "structure"}, "GetPartitionsRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "Expression" => %{"shape" => "PredicateString"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}, "Segment" => %{"shape" => "Segment"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName"], "type" => "structure"}, "GetDataflowGraphResponse" => %{"members" => %{"DagEdges" => %{"shape" => "DagEdges"}, "DagNodes" => %{"shape" => "DagNodes"}}, "type" => "structure"}, "LastCrawlInfo" => %{"members" => %{"ErrorMessage" => %{"shape" => "DescriptionString"}, "LogGroup" => %{"shape" => "LogGroup"}, "LogStream" => %{"shape" => "LogStream"}, "MessagePrefix" => %{"shape" => "MessagePrefix"}, "StartTime" => %{"shape" => "Timestamp"}, "Status" => %{"shape" => "LastCrawlStatus"}}, "type" => "structure"}, "JobBookmarkEntry" => %{"members" => %{"Attempt" => %{"shape" => "IntegerValue"}, "JobBookmark" => %{"shape" => "JsonValue"}, "JobName" => %{"shape" => "JobName"}, "Run" => %{"shape" => "IntegerValue"}, "Version" => %{"shape" => "IntegerValue"}}, "type" => "structure"}, "ConnectionPropertyKey" => %{"enum" => ["HOST", "PORT", "USERNAME", "PASSWORD", "JDBC_DRIVER_JAR_URI", "JDBC_DRIVER_CLASS_NAME", "JDBC_ENGINE", "JDBC_ENGINE_VERSION", "CONFIG_FILES", "INSTANCE_ID", "JDBC_CONNECTION_URL"], "type" => "string"}, "BatchGetPartitionResponse" => %{"members" => %{"Partitions" => %{"shape" => "PartitionList"}, "UnprocessedKeys" => %{"shape" => "BatchGetPartitionValueList"}}, "type" => "structure"}, "AttemptCount" => %{"type" => "integer"}, "CreateScriptResponse" => %{"members" => %{"PythonScript" => %{"shape" => "PythonScript"}}, "type" => "structure"}, "CreateClassifierRequest" => %{"members" => %{"GrokClassifier" => %{"shape" => "CreateGrokClassifierRequest"}}, "type" => "structure"}, "JobRunState" => %{"enum" => ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED"], "type" => "string"}, "GetCrawlerMetricsResponse" => %{"members" => %{"CrawlerMetricsList" => %{"shape" => "CrawlerMetricsList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "DevEndpoint" => %{"members" => %{"AvailabilityZone" => %{"shape" => "GenericString"}, "CreatedTimestamp" => %{"shape" => "TimestampValue"}, "EndpointName" => %{"shape" => "GenericString"}, "ExtraJarsS3Path" => %{"shape" => "GenericString"}, "ExtraPythonLibsS3Path" => %{"shape" => "GenericString"}, "FailureReason" => %{"shape" => "GenericString"}, "LastModifiedTimestamp" => %{"shape" => "TimestampValue"}, "LastUpdateStatus" => %{"shape" => "GenericString"}, "NumberOfNodes" => %{"shape" => "IntegerValue"}, "PublicAddress" => %{"shape" => "GenericString"}, "PublicKey" => %{"shape" => "GenericString"}, "RoleArn" => %{"shape" => "RoleArn"}, "SecurityGroupIds" => %{"shape" => "StringList"}, "Status" => %{"shape" => "GenericString"}, "SubnetId" => %{"shape" => "GenericString"}, "VpcId" => %{"shape" => "GenericString"}, "YarnEndpointAddress" => %{"shape" => "GenericString"}}, "type" => "structure"}, "GenericString" => %{"type" => "string"}, "JobRun" => %{"members" => %{"AllocatedCapacity" => %{"shape" => "IntegerValue"}, "Arguments" => %{"shape" => "GenericMap"}, "Attempt" => %{"shape" => "AttemptCount"}, "CompletedOn" => %{"shape" => "TimestampValue"}, "ErrorMessage" => %{"shape" => "ErrorString"}, "Id" => %{"shape" => "IdString"}, "JobName" => %{"shape" => "NameString"}, "JobRunState" => %{"shape" => "JobRunState"}, "LastModifiedOn" => %{"shape" => "TimestampValue"}, "PredecessorRuns" => %{"shape" => "PredecessorList"}, "PreviousRunId" => %{"shape" => "IdString"}, "StartedOn" => %{"shape" => "TimestampValue"}, "TriggerName" => %{"shape" => "NameString"}}, "type" => "structure"}, "GetTriggersResponse" => %{"members" => %{"NextToken" => %{"shape" => "GenericString"}, "Triggers" => %{"shape" => "TriggerList"}}, "type" => "structure"}, "ResourceUri" => %{"members" => %{"ResourceType" => %{"shape" => "ResourceType"}, "Uri" => %{"shape" => "URI"}}, "type" => "structure"}, "GetDatabaseRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "GetTriggerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "TimestampValue" => %{"type" => "timestamp"}, "UpdateUserDefinedFunctionResponse" => %{"members" => %{}, "type" => "structure"}, "VersionMismatchException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "UpdateGrokClassifierRequest" => %{"members" => %{"Classification" => %{"shape" => "Classification"}, "CustomPatterns" => %{"shape" => "CustomPatterns"}, "GrokPattern" => %{"shape" => "GrokPattern"}, "Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "SchedulerTransitioningException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "SchemaChangePolicy" => %{"members" => %{"DeleteBehavior" => %{"shape" => "DeleteBehavior"}, "UpdateBehavior" => %{"shape" => "UpdateBehavior"}}, "type" => "structure"}, "UpdateTriggerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}, "TriggerUpdate" => %{"shape" => "TriggerUpdate"}}, "required" => ["Name", "TriggerUpdate"], "type" => "structure"}, "GetJobsResponse" => %{"members" => %{"Jobs" => %{"shape" => "JobList"}, "NextToken" => %{"shape" => "GenericString"}}, "type" => "structure"}, "CrawlerStoppingException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "UserDefinedFunctionInput" => %{"members" => %{"ClassName" => %{"shape" => "NameString"}, "FunctionName" => %{"shape" => "NameString"}, "OwnerName" => %{"shape" => "NameString"}, "OwnerType" => %{"shape" => "PrincipalType"}, "ResourceUris" => %{"shape" => "ResourceUriList"}}, "type" => "structure"}, "OrderList" => %{"member" => %{"shape" => "Order"}, "type" => "list"}, "BatchDeleteConnectionResponse" => %{"members" => %{"Errors" => %{"shape" => "ErrorByName"}, "Succeeded" => %{"shape" => "NameStringList"}}, "type" => "structure"}, "ColumnValuesString" => %{"type" => "string"}, "PredecessorList" => %{"member" => %{"shape" => "Predecessor"}, "type" => "list"}, "GetJobRunResponse" => %{"members" => %{"JobRun" => %{"shape" => "JobRun"}}, "type" => "structure"}, "BatchDeleteTableNameList" => %{"max" => 100, "member" => %{"shape" => "NameString"}, "min" => 0, "type" => "list"}, "CreatePartitionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "PartitionInput" => %{"shape" => "PartitionInput"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName", "PartitionInput"], "type" => "structure"}, "GetCatalogImportStatusResponse" => %{"members" => %{"ImportStatus" => %{"shape" => "CatalogImportStatus"}}, "type" => "structure"}, "ConnectionsList" => %{"members" => %{"Connections" => %{"shape" => "StringList"}}, "type" => "structure"}, "DeleteDatabaseResponse" => %{"members" => %{}, "type" => "structure"}, "ColumnTypeString" => %{"max" => 131072, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "GetDatabaseResponse" => %{"members" => %{"Database" => %{"shape" => "Database"}}, "type" => "structure"}, "NonNegativeDouble" => %{"min" => 0.0, "type" => "double"}, "AccessDeniedException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "FieldType" => %{"type" => "string"}, "CrawlerTargets" => %{"members" => %{"JdbcTargets" => %{"shape" => "JdbcTargetList"}, "S3Targets" => %{"shape" => "S3TargetList"}}, "type" => "structure"}, "DeleteConnectionResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteCrawlerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "DeleteDatabaseRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "DeleteJobRequest" => %{"members" => %{"JobName" => %{"shape" => "NameString"}}, "required" => ["JobName"], "type" => "structure"}, "GetTriggerResponse" => %{"members" => %{"Trigger" => %{"shape" => "Trigger"}}, "type" => "structure"}, "CrawlerMetricsList" => %{"member" => %{"shape" => "CrawlerMetrics"}, "type" => "list"}, "UpdateTriggerResponse" => %{"members" => %{"Trigger" => %{"shape" => "Trigger"}}, "type" => "structure"}, "BatchDeletePartitionResponse" => %{"members" => %{"Errors" => %{"shape" => "PartitionErrors"}}, "type" => "structure"}, "CreateDevEndpointRequest" => %{"members" => %{"EndpointName" => %{"shape" => "GenericString"}, "ExtraJarsS3Path" => %{"shape" => "GenericString"}, "ExtraPythonLibsS3Path" => %{"shape" => "GenericString"}, "NumberOfNodes" => %{"shape" => "IntegerValue"}, "PublicKey" => %{"shape" => "GenericString"}, "RoleArn" => %{"shape" => "RoleArn"}, "SecurityGroupIds" => %{"shape" => "StringList"}, "SubnetId" => %{"shape" => "GenericString"}}, "required" => ["EndpointName", "RoleArn", "SecurityGroupIds", "SubnetId"], "type" => "structure"}, "LogStream" => %{"max" => 512, "min" => 1, "pattern" => "[^:*]*", "type" => "string"}, "CrawlerNotRunningException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "TableName" => %{"type" => "string"}, "BatchCreatePartitionResponse" => %{"members" => %{"Errors" => %{"shape" => "PartitionErrors"}}, "type" => "structure"}, "DevEndpointList" => %{"member" => %{"shape" => "DevEndpoint"}, "type" => "list"}, "StartCrawlerScheduleRequest" => %{"members" => %{"CrawlerName" => %{"shape" => "NameString"}}, "required" => ["CrawlerName"], "type" => "structure"}, "ErrorByName" => %{"key" => %{"shape" => "NameString"}, "type" => "map", "value" => %{"shape" => "ErrorDetail"}}, "GetCrawlerResponse" => %{"members" => %{"Crawler" => %{"shape" => "Crawler"}}, "type" => "structure"}, "ResourceNumberLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "BatchDeletePartitionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "PartitionsToDelete" => %{"shape" => "BatchDeletePartitionValueList"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName", "PartitionsToDelete"], "type" => "structure"}, "GetUserDefinedFunctionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "UserDefinedFunctions" => %{"shape" => "UserDefinedFunctionList"}}, "type" => "structure"}, "JsonValue" => %{"type" => "string"}, "GetTableVersionsRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName"], "type" => "structure"}, "ConnectionType" => %{"enum" => ["JDBC", "SFTP"], "type" => "string"}, "StartCrawlerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "ValueStringList" => %{"member" => %{"shape" => "ValueString"}, "type" => "list"}, "TriggerUpdate" => %{"members" => %{"Actions" => %{"shape" => "ActionList"}, "Description" => %{"shape" => "DescriptionString"}, "Name" => %{"shape" => "NameString"}, "Predicate" => %{"shape" => "Predicate"}, "Schedule" => %{"shape" => "GenericString"}}, "type" => "structure"}, "LastCrawlStatus" => %{"enum" => ["SUCCEEDED", "CANCELLED", "FAILED"], "type" => "string"}, "DeleteBehavior" => %{"enum" => ["LOG", "DELETE_FROM_DATABASE", "DEPRECATE_IN_DATABASE"], "type" => "string"}, "CreateCrawlerRequest" => %{"members" => %{"Classifiers" => %{"shape" => "ClassifierNameList"}, "DatabaseName" => %{"shape" => "DatabaseName"}, "Description" => %{"shape" => "DescriptionString"}, "Name" => %{"shape" => "NameString"}, "Role" => %{"shape" => "RoleArn"}, "Schedule" => %{"shape" => "CronExpression"}, "SchemaChangePolicy" => %{"shape" => "SchemaChangePolicy"}, "TablePrefix" => %{"shape" => "TablePrefix"}, "Targets" => %{"shape" => "CrawlerTargets"}}, "required" => ["Name", "Role", "DatabaseName", "Targets"], "type" => "structure"}, "StringList" => %{"member" => %{"shape" => "GenericString"}, "type" => "list"}, "ConnectionProperties" => %{"key" => %{"shape" => "ConnectionPropertyKey"}, "max" => 100, "min" => 0, "type" => "map", "value" => %{"shape" => "ValueString"}}, "IntegerFlag" => %{"max" => 1, "min" => 0, "type" => "integer"}, "StopCrawlerScheduleRequest" => %{"members" => %{"CrawlerName" => %{"shape" => "NameString"}}, "required" => ["CrawlerName"], "type" => "structure"}, "CodeGenIdentifier" => %{"max" => 255, "min" => 1, "pattern" => "[A-Za-z_][A-Za-z0-9_]*", "type" => "string"}, "LogGroup" => %{"max" => 512, "min" => 1, "pattern" => "[\\.\\-_/#A-Za-z0-9]+", "type" => "string"}, "UpdateJobResponse" => %{"members" => %{"JobName" => %{"shape" => "NameString"}}, "type" => "structure"}, "Predecessor" => %{"members" => %{"JobName" => %{"shape" => "NameString"}, "RunId" => %{"shape" => "IdString"}}, "type" => "structure"}, "JobName" => %{"type" => "string"}, "DatabaseName" => %{"type" => "string"}, "PrincipalType" => %{"enum" => ["USER", "ROLE", "GROUP"], "type" => "string"}, "DevEndpointCustomLibraries" => %{"members" => %{"ExtraJarsS3Path" => %{"shape" => "GenericString"}, "ExtraPythonLibsS3Path" => %{"shape" => "GenericString"}}, "type" => "structure"}, "GetPartitionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "Partitions" => %{"shape" => "PartitionList"}}, "type" => "structure"}, "CodeGenNodeArg" => %{"members" => %{"Name" => %{"shape" => "CodeGenArgName"}, "Param" => %{"shape" => "Boolean"}, "Value" => %{"shape" => "CodeGenArgValue"}}, "required" => ["Name", "Value"], "type" => "structure"}, "ConcurrentRunsExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "GetJobsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "GenericString"}}, "type" => "structure"}, "MaxRetries" => %{"type" => "integer"}, "PhysicalConnectionRequirements" => %{"members" => %{"AvailabilityZone" => %{"shape" => "NameString"}, "SecurityGroupIdList" => %{"shape" => "SecurityGroupIdList"}, "SubnetId" => %{"shape" => "NameString"}}, "type" => "structure"}, "PythonScript" => %{"type" => "string"}, "FilterString" => %{"max" => 2048, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "Token" => %{"type" => "string"}, "CatalogEntry" => %{"members" => %{"DatabaseName" => %{"shape" => "NameString"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName"], "type" => "structure"}, "GetConnectionsFilter" => %{"members" => %{"ConnectionType" => %{"shape" => "ConnectionType"}, "MatchCriteria" => %{"shape" => "MatchCriteria"}}, "type" => "structure"}, "CreateDatabaseResponse" => %{"members" => %{}, "type" => "structure"}, "GetDevEndpointRequest" => %{"members" => %{"EndpointName" => %{"shape" => "GenericString"}}, "required" => ["EndpointName"], "type" => "structure"}, "GetTriggersRequest" => %{"members" => %{"DependentJobName" => %{"shape" => "NameString"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "GenericString"}}, "type" => "structure"}, "DeleteConnectionNameList" => %{"max" => 25, "member" => %{"shape" => "NameString"}, "min" => 0, "type" => "list"}, "ClassifierNameList" => %{"member" => %{"shape" => "NameString"}, "type" => "list"}, "ConnectionName" => %{"type" => "string"}, "CatalogEntries" => %{"member" => %{"shape" => "CatalogEntry"}, "type" => "list"}, "CreateTableRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "TableInput" => %{"shape" => "TableInput"}}, "required" => ["DatabaseName", "TableInput"], "type" => "structure"}, "NoScheduleException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "AlreadyExistsException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "UserDefinedFunction" => %{"members" => %{"ClassName" => %{"shape" => "NameString"}, "CreateTime" => %{"shape" => "Timestamp"}, "FunctionName" => %{"shape" => "NameString"}, "OwnerName" => %{"shape" => "NameString"}, "OwnerType" => %{"shape" => "PrincipalType"}, "ResourceUris" => %{"shape" => "ResourceUriList"}}, "type" => "structure"}, "CrawlerNameList" => %{"max" => 100, "member" => %{"shape" => "NameString"}, "min" => 0, "type" => "list"}, "ViewTextString" => %{"max" => 2048, "type" => "string"}, "OperationTimeoutException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "Schedule" => %{"members" => %{"ScheduleExpression" => %{"shape" => "CronExpression"}, "State" => %{"shape" => "ScheduleState"}}, "type" => "structure"}, "GetUserDefinedFunctionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "FunctionName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "FunctionName"], "type" => "structure"}, "StartTriggerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "CreateConnectionResponse" => %{"members" => %{}, "type" => "structure"}, "NonNegativeInteger" => %{"min" => 0, "type" => "integer"}, "CreateJobResponse" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "type" => "structure"}, "UpdateClassifierRequest" => %{"members" => %{"GrokClassifier" => %{"shape" => "UpdateGrokClassifierRequest"}}, "type" => "structure"}, "UpdateBehavior" => %{"enum" => ["LOG", "UPDATE_IN_DATABASE"], "type" => "string"}, "UpdateConnectionResponse" => %{"members" => %{}, "type" => "structure"}, "CustomPatterns" => %{"max" => 16000, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "IntegerValue" => %{"type" => "integer"}, "LocationMap" => %{"key" => %{"shape" => "ColumnValuesString"}, "type" => "map", "value" => %{"shape" => "ColumnValuesString"}}, "Column" => %{"members" => %{"Comment" => %{"shape" => "CommentString"}, "Name" => %{"shape" => "NameString"}, "Type" => %{"shape" => "ColumnTypeString"}}, "required" => ["Name"], "type" => "structure"}, "CodeGenNodeType" => %{"type" => "string"}, "Action" => %{"members" => %{"Arguments" => %{"shape" => "GenericMap"}, "JobName" => %{"shape" => "NameString"}}, "type" => "structure"}, "CreateTableResponse" => %{"members" => %{}, "type" => "structure"}, "Path" => %{"type" => "string"}, "CreateUserDefinedFunctionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "FunctionInput" => %{"shape" => "UserDefinedFunctionInput"}}, "required" => ["DatabaseName", "FunctionInput"], "type" => "structure"}, "RoleArn" => %{"pattern" => "arn:aws:iam::\\d{12}:role/.*", "type" => "string"}, "GetCrawlersResponse" => %{"members" => %{"Crawlers" => %{"shape" => "CrawlerList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "ColumnValueStringList" => %{"member" => %{"shape" => "ColumnValuesString"}, "type" => "list"}, "URI" => %{"max" => 1024, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "MessageString" => %{"type" => "string"}, "TableErrors" => %{"member" => %{"shape" => "TableError"}, "type" => "list"}, "GetDatabasesRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "UpdateJobRequest" => %{"members" => %{"JobName" => %{"shape" => "NameString"}, "JobUpdate" => %{"shape" => "JobUpdate"}}, "required" => ["JobName", "JobUpdate"], "type" => "structure"}, "SkewedInfo" => %{"members" => %{"SkewedColumnNames" => %{"shape" => "NameStringList"}, "SkewedColumnValueLocationMaps" => %{"shape" => "LocationMap"}, "SkewedColumnValues" => %{"shape" => "ColumnValueStringList"}}, "type" => "structure"}, "GetClassifierResponse" => %{"members" => %{"Classifier" => %{"shape" => "Classifier"}}, "type" => "structure"}, "KeyString" => %{"max" => 255, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "LogicalOperator" => %{"enum" => ["EQUALS"], "type" => "string"}, "StorageDescriptor" => %{"members" => %{"BucketColumns" => %{"shape" => "NameStringList"}, "Columns" => %{"shape" => "ColumnList"}, "Compressed" => %{"shape" => "Boolean"}, "InputFormat" => %{"shape" => "FormatString"}, "Location" => %{"shape" => "LocationString"}, "NumberOfBuckets" => %{"shape" => "Integer"}, "OutputFormat" => %{"shape" => "FormatString"}, "Parameters" => %{"shape" => "ParametersMap"}, "SerdeInfo" => %{"shape" => "SerDeInfo"}, "SkewedInfo" => %{"shape" => "SkewedInfo"}, "SortColumns" => %{"shape" => "OrderList"}, "StoredAsSubDirectories" => %{"shape" => "Boolean"}}, "type" => "structure"}, "BatchDeleteTableResponse" => %{"members" => %{"Errors" => %{"shape" => "TableErrors"}}, "type" => "structure"}, "DeleteTriggerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "GetPlanResponse" => %{"members" => %{"PythonScript" => %{"shape" => "PythonScript"}}, "type" => "structure"}, "GetDevEndpointsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "GenericString"}}, "type" => "structure"}, "DatabaseList" => %{"member" => %{"shape" => "Database"}, "type" => "list"}, "Timestamp" => %{"type" => "timestamp"}, "CreateJobRequest" => %{"members" => %{"AllocatedCapacity" => %{"shape" => "IntegerValue"}, "Command" => %{"shape" => "JobCommand"}, "Connections" => %{"shape" => "ConnectionsList"}, "DefaultArguments" => %{"shape" => "GenericMap"}, "Description" => %{"shape" => "DescriptionString"}, "ExecutionProperty" => %{"shape" => "ExecutionProperty"}, "LogUri" => %{"shape" => "UriString"}, "MaxRetries" => %{"shape" => "MaxRetries"}, "Name" => %{"shape" => "NameString"}, "Role" => %{"shape" => "RoleString"}}, "required" => ["Name", "Role", "Command"], "type" => "structure"}, "GetDataflowGraphRequest" => %{"members" => %{"PythonScript" => %{"shape" => "PythonScript"}}, "type" => "structure"}, "CreateUserDefinedFunctionResponse" => %{"members" => %{}, "type" => "structure"}, "Condition" => %{"members" => %{"JobName" => %{"shape" => "NameString"}, "LogicalOperator" => %{"shape" => "LogicalOperator"}, "State" => %{"shape" => "JobRunState"}}, "type" => "structure"}, "PartitionValueList" => %{"members" => %{"Values" => %{"shape" => "ValueStringList"}}, "required" => ["Values"], "type" => "structure"}, "TableInput" => %{"members" => %{"Description" => %{"shape" => "DescriptionString"}, "LastAccessTime" => %{"shape" => "Timestamp"}, "LastAnalyzedTime" => %{"shape" => "Timestamp"}, "Name" => %{"shape" => "NameString"}, "Owner" => %{"shape" => "NameString"}, "Parameters" => %{"shape" => "ParametersMap"}, "PartitionKeys" => %{"shape" => "ColumnList"}, "Retention" => %{"shape" => "NonNegativeInteger"}, "StorageDescriptor" => %{"shape" => "StorageDescriptor"}, "TableType" => %{"shape" => "TableTypeString"}, "ViewExpandedText" => %{"shape" => "ViewTextString"}, "ViewOriginalText" => %{"shape" => "ViewTextString"}}, "required" => ["Name"], "type" => "structure"}, "BatchCreatePartitionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "PartitionInputList" => %{"shape" => "PartitionInputList"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName", "PartitionInputList"], "type" => "structure"}, "TableList" => %{"member" => %{"shape" => "Table"}, "type" => "list"}, "ImportCatalogToGlueResponse" => %{"members" => %{}, "type" => "structure"}, "IdempotentParameterMismatchException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "VersionString" => %{"max" => 255, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "DagNodes" => %{"member" => %{"shape" => "CodeGenNode"}, "type" => "list"}, "BooleanValue" => %{"type" => "boolean"}, "GetMappingResponse" => %{"members" => %{"Mapping" => %{"shape" => "MappingList"}}, "required" => ["Mapping"], "type" => "structure"}, "GetTableVersionsList" => %{"member" => %{"shape" => "TableVersion"}, "type" => "list"}, "GetCrawlersRequest" => %{"members" => %{"MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "BatchGetPartitionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "PartitionsToGet" => %{"shape" => "BatchGetPartitionValueList"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName", "PartitionsToGet"], "type" => "structure"}, "GetJobResponse" => %{"members" => %{"Job" => %{"shape" => "Job"}}, "type" => "structure"}, "GetPartitionResponse" => %{"members" => %{"Partition" => %{"shape" => "Partition"}}, "type" => "structure"}, "DeleteTriggerResponse" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "type" => "structure"}, "JdbcTargetList" => %{"member" => %{"shape" => "JdbcTarget"}, "type" => "list"}, "UpdateCrawlerScheduleRequest" => %{"members" => %{"CrawlerName" => %{"shape" => "NameString"}, "Schedule" => %{"shape" => "CronExpression"}}, "required" => ["CrawlerName"], "type" => "structure"}, "UpdateDevEndpointResponse" => %{"members" => %{}, "type" => "structure"}, "ValidationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "UpdateConnectionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "ConnectionInput" => %{"shape" => "ConnectionInput"}, "Name" => %{"shape" => "NameString"}}, "required" => ["Name", "ConnectionInput"], "type" => "structure"}, "DeleteCrawlerResponse" => %{"members" => %{}, "type" => "structure"}, "ScheduleState" => %{"enum" => ["SCHEDULED", "NOT_SCHEDULED", "TRANSITIONING"], "type" => "string"}, "JobUpdate" => %{"members" => %{"AllocatedCapacity" => %{"shape" => "IntegerValue"}, "Command" => %{"shape" => "JobCommand"}, "Connections" => %{"shape" => "ConnectionsList"}, "DefaultArguments" => %{"shape" => "GenericMap"}, "Description" => %{"shape" => "DescriptionString"}, "ExecutionProperty" => %{"shape" => "ExecutionProperty"}, "LogUri" => %{"shape" => "UriString"}, "MaxRetries" => %{"shape" => "MaxRetries"}, "Role" => %{"shape" => "RoleString"}}, "type" => "structure"}, "ScriptLocationString" => %{"type" => "string"}, "TablePrefix" => %{"max" => 128, "min" => 0, "type" => "string"}, "UpdatePartitionResponse" => %{"members" => %{}, "type" => "structure"}, "CreateCrawlerResponse" => %{"members" => %{}, "type" => "structure"}, "UriString" => %{"type" => "string"}, "GetJobRunsRequest" => %{"members" => %{"JobName" => %{"shape" => "NameString"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "GenericString"}}, "required" => ["JobName"], "type" => "structure"}, "CronExpression" => %{"type" => "string"}, "Crawler" => %{"members" => %{"Classifiers" => %{"shape" => "ClassifierNameList"}, "CrawlElapsedTime" => %{"shape" => "MillisecondsCount"}, "CreationTime" => %{"shape" => "Timestamp"}, "DatabaseName" => %{"shape" => "DatabaseName"}, "Description" => %{"shape" => "DescriptionString"}, "LastCrawl" => %{"shape" => "LastCrawlInfo"}, "LastUpdated" => %{"shape" => "Timestamp"}, "Name" => %{"shape" => "NameString"}, "Role" => %{"shape" => "RoleArn"}, "Schedule" => %{"shape" => "Schedule"}, "SchemaChangePolicy" => %{"shape" => "SchemaChangePolicy"}, "State" => %{"shape" => "CrawlerState"}, "TablePrefix" => %{"shape" => "TablePrefix"}, "Targets" => %{"shape" => "CrawlerTargets"}, "Version" => %{"shape" => "VersionId"}}, "type" => "structure"}, "GetDatabasesResponse" => %{"members" => %{"DatabaseList" => %{"shape" => "DatabaseList"}, "NextToken" => %{"shape" => "Token"}}, "required" => ["DatabaseList"], "type" => "structure"}, "GetJobRequest" => %{"members" => %{"JobName" => %{"shape" => "NameString"}}, "required" => ["JobName"], "type" => "structure"}, "DeleteUserDefinedFunctionResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteTableResponse" => %{"members" => %{}, "type" => "structure"}, "CrawlerRunningException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "TriggerState" => %{"enum" => ["CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"], "type" => "string"}, "ActionList" => %{"member" => %{"shape" => "Action"}, "type" => "list"}, "SchedulerRunningException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "VersionId" => %{"type" => "long"}, "Location" => %{"members" => %{"Jdbc" => %{"shape" => "CodeGenNodeArgs"}, "S3" => %{"shape" => "CodeGenNodeArgs"}}, "type" => "structure"}, "GetClassifiersResponse" => %{"members" => %{"Classifiers" => %{"shape" => "ClassifierList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "Classification" => %{"type" => "string"}, "ErrorString" => %{"type" => "string"}, "DeleteUserDefinedFunctionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "FunctionName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "FunctionName"], "type" => "structure"}, "CodeGenNodeArgs" => %{"max" => 50, "member" => %{"shape" => "CodeGenNodeArg"}, "min" => 0, "type" => "list"}, "DescriptionString" => %{"max" => 2048, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "CreateScriptRequest" => %{"members" => %{"DagEdges" => %{"shape" => "DagEdges"}, "DagNodes" => %{"shape" => "DagNodes"}}, "type" => "structure"}, "MillisecondsCount" => %{"type" => "long"}, "GetDevEndpointResponse" => %{"members" => %{"DevEndpoint" => %{"shape" => "DevEndpoint"}}, "type" => "structure"}, "GetDevEndpointsResponse" => %{"members" => %{"DevEndpoints" => %{"shape" => "DevEndpointList"}, "NextToken" => %{"shape" => "GenericString"}}, "type" => "structure"}, "GetTableRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "Name" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "Name"], "type" => "structure"}, "NameStringList" => %{"member" => %{"shape" => "NameString"}, "type" => "list"}, "CreateClassifierResponse" => %{"members" => %{}, "type" => "structure"}, "Logical" => %{"enum" => ["AND"], "type" => "string"}, "Order" => %{"members" => %{"Column" => %{"shape" => "NameString"}, "SortOrder" => %{"shape" => "IntegerFlag"}}, "required" => ["Column", "SortOrder"], "type" => "structure"}, "CrawlerList" => %{"member" => %{"shape" => "Crawler"}, "type" => "list"}, "Predicate" => %{"members" => %{"Conditions" => %{"shape" => "ConditionList"}, "Logical" => %{"shape" => "Logical"}}, "type" => "structure"}, "DeleteDevEndpointResponse" => %{"members" => %{}, "type" => "structure"}, "StopTriggerResponse" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "type" => "structure"}, "SecurityGroupIdList" => %{"max" => 50, "member" => %{"shape" => "NameString"}, "min" => 0, "type" => "list"}, "InternalServiceException" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "TableError" => %{"members" => %{"ErrorDetail" => %{"shape" => "ErrorDetail"}, "TableName" => %{"shape" => "NameString"}}, "type" => "structure"}, "StopTriggerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "StartTriggerResponse" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "type" => "structure"}, "CodeGenEdge" => %{"members" => %{"Source" => %{"shape" => "CodeGenIdentifier"}, "Target" => %{"shape" => "CodeGenIdentifier"}, "TargetParameter" => %{"shape" => "CodeGenArgName"}}, "required" => ["Source", "Target"], "type" => "structure"}, "TableVersion" => %{"members" => %{"Table" => %{"shape" => "Table"}, "VersionId" => %{"shape" => "VersionString"}}, "type" => "structure"}, "ErrorDetail" => %{"members" => %{"ErrorCode" => %{"shape" => "NameString"}, "ErrorMessage" => %{"shape" => "DescriptionString"}}, "type" => "structure"}, "GetClassifierRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "ParametersMapValue" => %{"max" => 51200, "type" => "string"}, "ConnectionList" => %{"member" => %{"shape" => "Connection"}, "type" => "list"}, "DeletePartitionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "PartitionValues" => %{"shape" => "ValueStringList"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName", "PartitionValues"], "type" => "structure"}, "UpdateCrawlerResponse" => %{"members" => %{}, "type" => "structure"}, "CrawlerState" => %{"enum" => ["READY", "RUNNING", "STOPPING"], "type" => "string"}, "GrokClassifier" => %{"members" => %{"Classification" => %{"shape" => "Classification"}, "CreationTime" => %{"shape" => "Timestamp"}, "CustomPatterns" => %{"shape" => "CustomPatterns"}, "GrokPattern" => %{"shape" => "GrokPattern"}, "LastUpdated" => %{"shape" => "Timestamp"}, "Name" => %{"shape" => "NameString"}, "Version" => %{"shape" => "VersionId"}}, "required" => ["Name", "Classification", "GrokPattern"], "type" => "structure"}, "IdString" => %{"max" => 255, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "TableTypeString" => %{"max" => 255, "type" => "string"}, "ResetJobBookmarkRequest" => %{"members" => %{"JobName" => %{"shape" => "JobName"}}, "required" => ["JobName"], "type" => "structure"}, "BoundedPartitionValueList" => %{"max" => 100, "member" => %{"shape" => "ValueString"}, "min" => 0, "type" => "list"}, "StartCrawlerResponse" => %{"members" => %{}, "type" => "structure"}, "PartitionInputList" => %{"max" => 100, "member" => %{"shape" => "PartitionInput"}, "min" => 0, "type" => "list"}, "UpdateDevEndpointRequest" => %{"members" => %{"CustomLibraries" => %{"shape" => "DevEndpointCustomLibraries"}, "EndpointName" => %{"shape" => "GenericString"}, "PublicKey" => %{"shape" => "GenericString"}}, "required" => ["EndpointName"], "type" => "structure"}, "DeleteTableRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "Name" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "Name"], "type" => "structure"}, "CreatePartitionResponse" => %{"members" => %{}, "type" => "structure"}, "CrawlerMetrics" => %{"members" => %{"CrawlerName" => %{"shape" => "NameString"}, "LastRuntimeSeconds" => %{"shape" => "NonNegativeDouble"}, "MedianRuntimeSeconds" => %{"shape" => "NonNegativeDouble"}, "StillEstimating" => %{"shape" => "Boolean"}, "TablesCreated" => %{"shape" => "NonNegativeInteger"}, "TablesDeleted" => %{"shape" => "NonNegativeInteger"}, "TablesUpdated" => %{"shape" => "NonNegativeInteger"}, "TimeLeftSeconds" => %{"shape" => "NonNegativeDouble"}}, "type" => "structure"}, "CreateTriggerRequest" => %{"members" => %{"Actions" => %{"shape" => "ActionList"}, "Description" => %{"shape" => "DescriptionString"}, "Name" => %{"shape" => "NameString"}, "Predicate" => %{"shape" => "Predicate"}, "Schedule" => %{"shape" => "GenericString"}, "Type" => %{"shape" => "TriggerType"}}, "required" => ["Name", "Type", "Actions"], "type" => "structure"}, "CommentString" => %{"max" => 255, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "CreateDevEndpointResponse" => %{"members" => %{"AvailabilityZone" => %{"shape" => "GenericString"}, "CreatedTimestamp" => %{"shape" => "TimestampValue"}, "EndpointName" => %{"shape" => "GenericString"}, "ExtraJarsS3Path" => %{"shape" => "GenericString"}, "ExtraPythonLibsS3Path" => %{"shape" => "GenericString"}, "FailureReason" => %{"shape" => "GenericString"}, "NumberOfNodes" => %{"shape" => "IntegerValue"}, "RoleArn" => %{"shape" => "RoleArn"}, "SecurityGroupIds" => %{"shape" => "StringList"}, "Status" => %{"shape" => "GenericString"}, "SubnetId" => %{"shape" => "GenericString"}, "VpcId" => %{"shape" => "GenericString"}, "YarnEndpointAddress" => %{"shape" => "GenericString"}}, "type" => "structure"}, "GetTableResponse" => %{"members" => %{"Table" => %{"shape" => "Table"}}, "type" => "structure"}, "RoleString" => %{"type" => "string"}, "JobList" => %{"member" => %{"shape" => "Job"}, "type" => "list"}, "Segment" => %{"members" => %{"SegmentNumber" => %{"shape" => "NonNegativeInteger"}, "TotalSegments" => %{"shape" => "TotalSegmentsInteger"}}, "required" => ["SegmentNumber", "TotalSegments"], "type" => "structure"}, "LocationString" => %{"max" => 2056, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "DeletePartitionResponse" => %{"members" => %{}, "type" => "structure"}, "Partition" => %{"members" => %{"CreationTime" => %{"shape" => "Timestamp"}, "DatabaseName" => %{"shape" => "NameString"}, "LastAccessTime" => %{"shape" => "Timestamp"}, "LastAnalyzedTime" => %{"shape" => "Timestamp"}, "Parameters" => %{"shape" => "ParametersMap"}, "StorageDescriptor" => %{"shape" => "StorageDescriptor"}, "TableName" => %{"shape" => "NameString"}, "Values" => %{"shape" => "ValueStringList"}}, "type" => "structure"}, "GetUserDefinedFunctionsRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}, "Pattern" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "Pattern"], "type" => "structure"}, "GetTableVersionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "TableVersions" => %{"shape" => "GetTableVersionsList"}}, "type" => "structure"}, "UpdateDatabaseRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseInput" => %{"shape" => "DatabaseInput"}, "Name" => %{"shape" => "NameString"}}, "required" => ["Name", "DatabaseInput"], "type" => "structure"}, "UserDefinedFunctionList" => %{"member" => %{"shape" => "UserDefinedFunction"}, "type" => "list"}, "Database" => %{"members" => %{"CreateTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "DescriptionString"}, "LocationUri" => %{"shape" => "URI"}, "Name" => %{"shape" => "NameString"}, "Parameters" => %{"shape" => "ParametersMap"}}, "required" => ["Name"], "type" => "structure"}, "CreateConnectionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "ConnectionInput" => %{"shape" => "ConnectionInput"}}, "required" => ["ConnectionInput"], "type" => "structure"}, "DeleteConnectionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "ConnectionName" => %{"shape" => "NameString"}}, "required" => ["ConnectionName"], "type" => "structure"}, "GetConnectionsResponse" => %{"members" => %{"ConnectionList" => %{"shape" => "ConnectionList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "Trigger" => %{"members" => %{"Actions" => %{"shape" => "ActionList"}, "Description" => %{"shape" => "DescriptionString"}, "Id" => %{"shape" => "IdString"}, "Name" => %{"shape" => "NameString"}, "Predicate" => %{"shape" => "Predicate"}, "Schedule" => %{"shape" => "GenericString"}, "State" => %{"shape" => "TriggerState"}, "Type" => %{"shape" => "TriggerType"}}, "type" => "structure"}, "UpdateCrawlerRequest" => %{"members" => %{"Classifiers" => %{"shape" => "ClassifierNameList"}, "DatabaseName" => %{"shape" => "DatabaseName"}, "Description" => %{"shape" => "DescriptionStringRemovable"}, "Name" => %{"shape" => "NameString"}, "Role" => %{"shape" => "RoleArn"}, "Schedule" => %{"shape" => "CronExpression"}, "SchemaChangePolicy" => %{"shape" => "SchemaChangePolicy"}, "TablePrefix" => %{"shape" => "TablePrefix"}, "Targets" => %{"shape" => "CrawlerTargets"}}, "required" => ["Name"], "type" => "structure"}, "S3TargetList" => %{"member" => %{"shape" => "S3Target"}, "type" => "list"}, "BatchDeleteTableRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "TablesToDelete" => %{"shape" => "BatchDeleteTableNameList"}}, "required" => ["DatabaseName", "TablesToDelete"], "type" => "structure"}, "ConnectionInput" => %{"members" => %{"ConnectionProperties" => %{"shape" => "ConnectionProperties"}, "ConnectionType" => %{"shape" => "ConnectionType"}, "Description" => %{"shape" => "DescriptionString"}, "MatchCriteria" => %{"shape" => "MatchCriteria"}, "Name" => %{"shape" => "NameString"}, "PhysicalConnectionRequirements" => %{"shape" => "PhysicalConnectionRequirements"}}, "type" => "structure"}, "UpdateCrawlerScheduleResponse" => %{"members" => %{}, "type" => "structure"}, "MappingList" => %{"member" => %{"shape" => "MappingEntry"}, "type" => "list"}, "StopCrawlerRequest" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "required" => ["Name"], "type" => "structure"}, "GetUserDefinedFunctionResponse" => %{"members" => %{"UserDefinedFunction" => %{"shape" => "UserDefinedFunction"}}, "type" => "structure"}, "UpdateTableRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "TableInput" => %{"shape" => "TableInput"}}, "required" => ["DatabaseName", "TableInput"], "type" => "structure"}, "DeleteJobResponse" => %{"members" => %{"JobName" => %{"shape" => "NameString"}}, "type" => "structure"}, "StartCrawlerScheduleResponse" => %{"members" => %{}, "type" => "structure"}, "PredicateString" => %{"max" => 2048, "min" => 0, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", "type" => "string"}, "TriggerList" => %{"member" => %{"shape" => "Trigger"}, "type" => "list"}, "ResetJobBookmarkResponse" => %{"members" => %{"JobBookmarkEntry" => %{"shape" => "JobBookmarkEntry"}}, "type" => "structure"}, "StopCrawlerResponse" => %{"members" => %{}, "type" => "structure"}, "ColumnList" => %{"member" => %{"shape" => "Column"}, "type" => "list"}, "UpdatePartitionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "PartitionInput" => %{"shape" => "PartitionInput"}, "PartitionValueList" => %{"shape" => "BoundedPartitionValueList"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName", "PartitionValueList", "PartitionInput"], "type" => "structure"}, "GenericMap" => %{"key" => %{"shape" => "GenericString"}, "type" => "map", "value" => %{"shape" => "GenericString"}}, "S3Target" => %{"members" => %{"Exclusions" => %{"shape" => "PathList"}, "Path" => %{"shape" => "Path"}}, "type" => "structure"}, "GrokPattern" => %{"max" => 2048, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\t]*", "type" => "string"}, "PathList" => %{"member" => %{"shape" => "Path"}, "type" => "list"}, "GetTablesRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "Expression" => %{"shape" => "FilterString"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}}, "required" => ["DatabaseName"], "type" => "structure"}, "GetJobRunRequest" => %{"members" => %{"JobName" => %{"shape" => "NameString"}, "PredecessorsIncluded" => %{"shape" => "BooleanValue"}, "RunId" => %{"shape" => "IdString"}}, "required" => ["JobName", "RunId"], "type" => "structure"}, "PartitionInput" => %{"members" => %{"LastAccessTime" => %{"shape" => "Timestamp"}, "LastAnalyzedTime" => %{"shape" => "Timestamp"}, "Parameters" => %{"shape" => "ParametersMap"}, "StorageDescriptor" => %{"shape" => "StorageDescriptor"}, "Values" => %{"shape" => "ValueStringList"}}, "type" => "structure"}, "GetMappingRequest" => %{"members" => %{"Location" => %{"shape" => "Location"}, "Sinks" => %{"shape" => "CatalogEntries"}, "Source" => %{"shape" => "CatalogEntry"}}, "required" => ["Source"], "type" => "structure"}, "ClassifierList" => %{"member" => %{"shape" => "Classifier"}, "type" => "list"}, "ResourceUriList" => %{"max" => 1000, "member" => %{"shape" => "ResourceUri"}, "min" => 0, "type" => "list"}, "GetCatalogImportStatusRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}}, "type" => "structure"}, "DagEdges" => %{"member" => %{"shape" => "CodeGenEdge"}, "type" => "list"}, "ConditionList" => %{"member" => %{"shape" => "Condition"}, "type" => "list"}, "GetPartitionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "PartitionValues" => %{"shape" => "ValueStringList"}, "TableName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "TableName", "PartitionValues"], "type" => "structure"}, "FormatString" => %{"max" => 128, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "Connection" => %{"members" => %{"ConnectionProperties" => %{"shape" => "ConnectionProperties"}, "ConnectionType" => %{"shape" => "ConnectionType"}, "CreationTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "DescriptionString"}, "LastUpdatedBy" => %{"shape" => "NameString"}, "LastUpdatedTime" => %{"shape" => "Timestamp"}, "MatchCriteria" => %{"shape" => "MatchCriteria"}, "Name" => %{"shape" => "NameString"}, "PhysicalConnectionRequirements" => %{"shape" => "PhysicalConnectionRequirements"}}, "type" => "structure"}, "GetConnectionResponse" => %{"members" => %{"Connection" => %{"shape" => "Connection"}}, "type" => "structure"}, "TriggerType" => %{"enum" => ["SCHEDULED", "CONDITIONAL", "ON_DEMAND"], "type" => "string"}, "SchedulerNotRunningException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "MaxConcurrentRuns" => %{"type" => "integer"}, "CodeGenArgName" => %{"type" => "string"}, "JobRunList" => %{"member" => %{"shape" => "JobRun"}, "type" => "list"}, "CreateDatabaseRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseInput" => %{"shape" => "DatabaseInput"}}, "required" => ["DatabaseInput"], "type" => "structure"}, "GetJobRunsResponse" => %{"members" => %{"JobRuns" => %{"shape" => "JobRunList"}, "NextToken" => %{"shape" => "GenericString"}}, "type" => "structure"}, "ParametersMap" => %{"key" => %{"shape" => "KeyString"}, "type" => "map", "value" => %{"shape" => "ParametersMapValue"}}, "ValueString" => %{"max" => 1024, "type" => "string"}, "TotalSegmentsInteger" => %{"max" => 10, "min" => 1, "type" => "integer"}, "Integer" => %{"type" => "integer"}, "GetTablesResponse" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "TableList" => %{"shape" => "TableList"}}, "type" => "structure"}, "PartitionList" => %{"member" => %{"shape" => "Partition"}, "type" => "list"}, "UpdateTableResponse" => %{"members" => %{}, "type" => "structure"}, "StartJobRunResponse" => %{"members" => %{"JobRunId" => %{"shape" => "IdString"}}, "type" => "structure"}, "BatchGetPartitionValueList" => %{"max" => 1000, "member" => %{"shape" => "PartitionValueList"}, "min" => 0, "type" => "list"}, "UpdateClassifierResponse" => %{"members" => %{}, "type" => "structure"}, "PartitionError" => %{"members" => %{"ErrorDetail" => %{"shape" => "ErrorDetail"}, "PartitionValues" => %{"shape" => "ValueStringList"}}, "type" => "structure"}, "Table" => %{"members" => %{"CreateTime" => %{"shape" => "Timestamp"}, "CreatedBy" => %{"shape" => "NameString"}, "DatabaseName" => %{"shape" => "NameString"}, "Description" => %{"shape" => "DescriptionString"}, "LastAccessTime" => %{"shape" => "Timestamp"}, "LastAnalyzedTime" => %{"shape" => "Timestamp"}, "Name" => %{"shape" => "NameString"}, "Owner" => %{"shape" => "NameString"}, "Parameters" => %{"shape" => "ParametersMap"}, "PartitionKeys" => %{"shape" => "ColumnList"}, "Retention" => %{"shape" => "NonNegativeInteger"}, "StorageDescriptor" => %{"shape" => "StorageDescriptor"}, "TableType" => %{"shape" => "TableTypeString"}, "UpdateTime" => %{"shape" => "Timestamp"}, "ViewExpandedText" => %{"shape" => "ViewTextString"}, "ViewOriginalText" => %{"shape" => "ViewTextString"}}, "required" => ["Name"], "type" => "structure"}, "DatabaseInput" => %{"members" => %{"Description" => %{"shape" => "DescriptionString"}, "LocationUri" => %{"shape" => "URI"}, "Name" => %{"shape" => "NameString"}, "Parameters" => %{"shape" => "ParametersMap"}}, "required" => ["Name"], "type" => "structure"}, "CreateGrokClassifierRequest" => %{"members" => %{"Classification" => %{"shape" => "Classification"}, "CustomPatterns" => %{"shape" => "CustomPatterns"}, "GrokPattern" => %{"shape" => "GrokPattern"}, "Name" => %{"shape" => "NameString"}}, "required" => ["Classification", "Name", "GrokPattern"], "type" => "structure"}, "CatalogIdString" => %{"max" => 255, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "CreateTriggerResponse" => %{"members" => %{"Name" => %{"shape" => "NameString"}}, "type" => "structure"}, "ExecutionProperty" => %{"members" => %{"MaxConcurrentRuns" => %{"shape" => "MaxConcurrentRuns"}}, "type" => "structure"}, "ConcurrentModificationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "EntityNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "MappingEntry" => %{"members" => %{"SourcePath" => %{"shape" => "SchemaPathString"}, "SourceTable" => %{"shape" => "TableName"}, "SourceType" => %{"shape" => "FieldType"}, "TargetPath" => %{"shape" => "SchemaPathString"}, "TargetTable" => %{"shape" => "TableName"}, "TargetType" => %{"shape" => "FieldType"}}, "type" => "structure"}, "Classifier" => %{"members" => %{"GrokClassifier" => %{"shape" => "GrokClassifier"}}, "type" => "structure"}, "InvalidInputException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "MessageString"}}, "type" => "structure"}, "UpdateUserDefinedFunctionRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "DatabaseName" => %{"shape" => "NameString"}, "FunctionInput" => %{"shape" => "UserDefinedFunctionInput"}, "FunctionName" => %{"shape" => "NameString"}}, "required" => ["DatabaseName", "FunctionName", "FunctionInput"], "type" => "structure"}, "MatchCriteria" => %{"max" => 10, "member" => %{"shape" => "NameString"}, "min" => 0, "type" => "list"}, "NameString" => %{"max" => 255, "min" => 1, "pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*", "type" => "string"}, "CodeGenArgValue" => %{"type" => "string"}, "CatalogImportStatus" => %{"members" => %{"ImportCompleted" => %{"shape" => "Boolean"}, "ImportTime" => %{"shape" => "Timestamp"}, "ImportedBy" => %{"shape" => "NameString"}}, "type" => "structure"}, "UpdateDatabaseResponse" => %{"members" => %{}, "type" => "structure"}, "CodeGenNode" => %{"members" => %{"Args" => %{"shape" => "CodeGenNodeArgs"}, "Id" => %{"shape" => "CodeGenIdentifier"}, "LineNumber" => %{"shape" => "Integer"}, "NodeType" => %{"shape" => "CodeGenNodeType"}}, "required" => ["Id", "NodeType", "Args"], "type" => "structure"}, "GetPlanRequest" => %{"members" => %{"Location" => %{"shape" => "Location"}, "Mapping" => %{"shape" => "MappingList"}, "Sinks" => %{"shape" => "CatalogEntries"}, "Source" => %{"shape" => "CatalogEntry"}}, "required" => ["Mapping", "Source"], "type" => "structure"}, "GetConnectionsRequest" => %{"members" => %{"CatalogId" => %{"shape" => "CatalogIdString"}, "Filter" => %{"shape" => "GetConnectionsFilter"}, "MaxResults" => %{"shape" => "PageSize"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}}
  end
end