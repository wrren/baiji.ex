defmodule Baiji.Glue do
  @moduledoc """
  Defines service operations used by the GlueFrontendService
  """
  
  @doc """
  Deletes a specified trigger.
  """
  def delete_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteTrigger",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves metadata for all `Crawlers` defined in the customer account.
  """
  def get_crawlers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetCrawlers",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves a specified function definition from the Data Catalog.
  """
  def get_user_defined_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetUserDefinedFunction",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Starts an existing trigger.
  """
  def start_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartTrigger",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  If the specified `Crawler` is running, stops the crawl.
  """
  def stop_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopCrawler",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a new partition.
  """
  def create_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreatePartition",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates a trigger definition.
  """
  def update_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateTrigger",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates an existing function definition in the Data Catalog.
  """
  def update_user_defined_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateUserDefinedFunction",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a `Classifier` in the user's account.
  """
  def create_classifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateClassifier",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Deletes multiple tables at once.
  """
  def batch_delete_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchDeleteTable",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates mappings.
  """
  def get_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetMapping",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Deletes a list of connection definitions from the Data Catalog.
  """
  def batch_delete_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchDeleteConnection",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Changes the schedule state of the specified crawler to `SCHEDULED`, unless
  the crawler is already running or the schedule state is already
  `SCHEDULED`.
  """
  def start_crawler_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartCrawlerSchedule",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a new database in a Data Catalog.
  """
  def create_database(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateDatabase",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Removes a `Classifier` from the metadata store.
  """
  def delete_classifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteClassifier",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves all current jobs.
  """
  def get_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetJobs",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates a connection definition in the Data Catalog.
  """
  def update_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateConnection",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Deletes one or more partitions in a batch operation.
  """
  def batch_delete_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchDeletePartition",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates the schedule of a crawler using a Cron expression.
  """
  def update_crawler_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateCrawlerSchedule",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves information about a specified partition.
  """
  def get_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetPartition",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Removes a table definition from the Data Catalog.
  """
  def delete_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteTable",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates an existing job definition.
  """
  def update_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateJob",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a new job.
  """
  def create_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateJob",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Deletes a specified job.
  """
  def delete_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteJob",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves a list of connection definitions from the Data Catalog.
  """
  def get_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetConnections",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Stops a specified trigger.
  """
  def stop_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopTrigger",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the `Table` definition in a Data Catalog for a specified table.
  """
  def get_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTable",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Lists all Classifier objects in the metadata store.
  """
  def get_classifiers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetClassifiers",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Runs a job.
  """
  def start_job_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartJobRun",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a connection definition in the Data Catalog.
  """
  def create_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateConnection",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Resets a bookmark entry.
  """
  def reset_job_bookmark(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResetJobBookmark",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Imports an existing Athena Data Catalog to AWS Glue
  """
  def import_catalog_to_glue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ImportCatalogToGlue",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Transforms a directed acyclic graph (DAG) into a Python script.
  """
  def create_script(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateScript",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Modifies an existing `Classifier`.
  """
  def update_classifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateClassifier",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Deletes a specified partition.
  """
  def delete_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeletePartition",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the definition of a trigger.
  """
  def get_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTrigger",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves a multiple function definitions from the Data Catalog.
  """
  def get_user_defined_functions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetUserDefinedFunctions",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Gets all the triggers associated with a job.
  """
  def get_triggers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTriggers",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Deletes an existing function definition from the Data Catalog.
  """
  def delete_user_defined_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteUserDefinedFunction",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates an existing database definition in a Data Catalog.
  """
  def update_database(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateDatabase",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves all the DevEndpoints in this AWS account.
  """
  def get_dev_endpoints(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDevEndpoints",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Transforms a Python script into a directed acyclic graph (DAG).
  """
  def get_dataflow_graph(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDataflowGraph",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a new DevEndpoint.
  """
  def create_dev_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateDevEndpoint",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves metrics about specified crawlers.
  """
  def get_crawler_metrics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetCrawlerMetrics",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the status of a migration operation.
  """
  def get_catalog_import_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetCatalogImportStatus",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Removes a specified Database from a Data Catalog.
  """
  def delete_database(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteDatabase",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Deletes a connection from the Data Catalog.
  """
  def delete_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteConnection",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Gets a Python script to perform a specified mapping.
  """
  def get_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetPlan",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves an existing job definition.
  """
  def get_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetJob",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Sets the schedule state of the specified crawler to `NOT_SCHEDULED`, but
  does not stop the crawler if it is already running.
  """
  def stop_crawler_schedule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopCrawlerSchedule",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieve a `Classifier` by name.
  """
  def get_classifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetClassifier",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves metadata for all runs of a given job.
  """
  def get_job_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetJobRuns",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a new `Crawler` with specified targets, role, configuration, and
  optional schedule. At least one crawl target must be specified, in either
  the *s3Targets* or the *jdbcTargets* field.
  """
  def create_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateCrawler",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves information about the partitions in a table.
  """
  def get_partitions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetPartitions",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves partitions in a batch request.
  """
  def batch_get_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetPartition",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the definition of a specified database.
  """
  def get_database(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDatabase",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the definitions of some or all of the tables in a given
  `Database`.
  """
  def get_tables(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTables",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Starts a crawl using the specified `Crawler`, regardless of what is
  scheduled. If the `Crawler` is already running, does nothing.
  """
  def start_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartCrawler",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves information about a specified DevEndpoint.
  """
  def get_dev_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDevEndpoint",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates a metadata table in the Data Catalog.
  """
  def update_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateTable",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the metadata for a given job run.
  """
  def get_job_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetJobRun",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a new table definition in the Data Catalog.
  """
  def create_table(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateTable",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves a list of strings that identify available versions of a specified
  table.
  """
  def get_table_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTableVersions",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates a `Crawler`. If a `Crawler` is running, you must stop it using
  `StopCrawler` before updating it.
  """
  def update_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateCrawler",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Deletes a specified DevEndpoint.
  """
  def delete_dev_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteDevEndpoint",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates a partition.
  """
  def update_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdatePartition",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Updates a specified DevEndpoint.
  """
  def update_dev_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateDevEndpoint",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a new trigger.
  """
  def create_trigger(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateTrigger",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates a new function definition in the Data Catalog.
  """
  def create_user_defined_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateUserDefinedFunction",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves a connection definition from the Data Catalog.
  """
  def get_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetConnection",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves all Databases defined in a given Data Catalog.
  """
  def get_databases(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDatabases",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Creates one or more partitions in a batch operation.
  """
  def batch_create_partition(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchCreatePartition",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Retrieves metadata for a specified `Crawler`.
  """
  def get_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetCrawler",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
  @doc """
  Removes a specified `Crawler` from the metadata store, unless the `Crawler`
  state is `RUNNING`.
  """
  def delete_crawler(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "AWS Glue",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteCrawler",
      
      target_prefix:  "AWSGlue",
      
      type:           :json,
      version:        "2017-03-31",
      method:         :post
    }
  end
  
end