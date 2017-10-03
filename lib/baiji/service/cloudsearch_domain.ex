defmodule Baiji.CloudsearchDomain do
  @moduledoc """
  You use the AmazonCloudSearch2013 API to upload documents to a search
  domain and search those documents.

  The endpoints for submitting `UploadDocuments`, `Search`, and `Suggest`
  requests are domain-specific. To get the endpoints for your domain, use the
  Amazon CloudSearch configuration service `DescribeDomains` action. The
  domain endpoints are also displayed on the domain dashboard in the Amazon
  CloudSearch console. You submit suggest requests to the search endpoint.

  For more information, see the [Amazon CloudSearch Developer
  Guide](http://docs.aws.amazon.com/cloudsearch/latest/developerguide).
  """
  
  @doc """
  Retrieves a list of documents that match the specified search criteria. How
  you specify the search criteria depends on which query parser you use.
  Amazon CloudSearch supports four query parsers:

  <ul> <li>`simple`: search all `text` and `text-array` fields for the
  specified string. Search for phrases, individual terms, and prefixes. </li>
  <li>`structured`: search specific fields, construct compound queries using
  Boolean operators, and use advanced features such as term boosting and
  proximity searching.</li> <li>`lucene`: specify search criteria using the
  Apache Lucene query parser syntax.</li> <li>`dismax`: specify search
  criteria using the simplified subset of the Apache Lucene query parser
  syntax defined by the DisMax query parser.</li> </ul> For more information,
  see [Searching Your
  Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html)
  in the *Amazon CloudSearch Developer Guide*.

  The endpoint for submitting `Search` requests is domain-specific. You
  submit search requests to a domain's search endpoint. To get the search
  endpoint for your domain, use the Amazon CloudSearch configuration service
  `DescribeDomains` action. A domain's endpoints are also displayed on the
  domain dashboard in the Amazon CloudSearch console.
  """
  def search(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudsearchdomain",
      endpoint:         "/2013-01-01/search?format=sdk&pretty=true",
      input:            input,
      options:          options,
      action:           "Search",
      
      endpoint_prefix:  "cloudsearchdomain",
      type:             :json,
      version:          "2013-01-01",
      method:           :get,
      input_shape:      "SearchRequest",
      output_shape:     "SearchResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves autocomplete suggestions for a partial query string. You can use
  suggestions enable you to display likely matches before users finish
  typing. In Amazon CloudSearch, suggestions are based on the contents of a
  particular text field. When you request suggestions, Amazon CloudSearch
  finds all of the documents whose values in the suggester field start with
  the specified query string. The beginning of the field must match the query
  string to be considered a match.

  For more information about configuring suggesters and retrieving
  suggestions, see [Getting
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
  in the *Amazon CloudSearch Developer Guide*.

  The endpoint for submitting `Suggest` requests is domain-specific. You
  submit suggest requests to a domain's search endpoint. To get the search
  endpoint for your domain, use the Amazon CloudSearch configuration service
  `DescribeDomains` action. A domain's endpoints are also displayed on the
  domain dashboard in the Amazon CloudSearch console.
  """
  def suggest(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudsearchdomain",
      endpoint:         "/2013-01-01/suggest?format=sdk&pretty=true",
      input:            input,
      options:          options,
      action:           "Suggest",
      
      endpoint_prefix:  "cloudsearchdomain",
      type:             :json,
      version:          "2013-01-01",
      method:           :get,
      input_shape:      "SuggestRequest",
      output_shape:     "SuggestResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Posts a batch of documents to a search domain for indexing. A document
  batch is a collection of add and delete operations that represent the
  documents you want to add, update, or delete from your domain. Batches can
  be described in either JSON or XML. Each item that you want Amazon
  CloudSearch to return as a search result (such as a product) is represented
  as a document. Every document has a unique ID and one or more fields that
  contain the data that you want to search and return in results. Individual
  documents cannot contain more than 1 MB of data. The entire batch cannot
  exceed 5 MB. To get the best possible upload performance, group add and
  delete operations in batches that are close the 5 MB limit. Submitting a
  large volume of single-document batches can overload a domain's document
  service.

  The endpoint for submitting `UploadDocuments` requests is domain-specific.
  To get the document endpoint for your domain, use the Amazon CloudSearch
  configuration service `DescribeDomains` action. A domain's endpoints are
  also displayed on the domain dashboard in the Amazon CloudSearch console.

  For more information about formatting your data for Amazon CloudSearch, see
  [Preparing Your
  Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html)
  in the *Amazon CloudSearch Developer Guide*. For more information about
  uploading data for indexing, see [Uploading
  Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  def upload_documents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudsearchdomain",
      endpoint:         "/2013-01-01/documents/batch?format=sdk",
      input:            input,
      options:          options,
      action:           "UploadDocuments",
      
      endpoint_prefix:  "cloudsearchdomain",
      type:             :json,
      version:          "2013-01-01",
      method:           :post,
      input_shape:      "UploadDocumentsRequest",
      output_shape:     "UploadDocumentsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"Size" => %{"type" => "long"}, "Fields" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "FieldValue"}}, "Hit" => %{"members" => %{"exprs" => %{"shape" => "Exprs"}, "fields" => %{"shape" => "Fields"}, "highlights" => %{"shape" => "Highlights"}, "id" => %{"shape" => "String"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "HitList" => %{"member" => %{"shape" => "Hit"}, "type" => "list"}, "Facets" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "BucketInfo"}}, "SearchException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "FieldStats" => %{"members" => %{"count" => %{"shape" => "Long"}, "max" => %{"shape" => "String"}, "mean" => %{"shape" => "String"}, "min" => %{"shape" => "String"}, "missing" => %{"shape" => "Long"}, "stddev" => %{"shape" => "Double"}, "sum" => %{"shape" => "Double"}, "sumOfSquares" => %{"shape" => "Double"}}, "type" => "structure"}, "BucketInfo" => %{"members" => %{"buckets" => %{"shape" => "BucketList"}}, "type" => "structure"}, "Exprs" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "Cursor" => %{"type" => "string"}, "UploadDocumentsResponse" => %{"members" => %{"adds" => %{"shape" => "Adds"}, "deletes" => %{"shape" => "Deletes"}, "status" => %{"shape" => "String"}, "warnings" => %{"shape" => "DocumentServiceWarnings"}}, "type" => "structure"}, "QueryParser" => %{"enum" => ["simple", "structured", "lucene", "dismax"], "type" => "string"}, "Suggestions" => %{"member" => %{"shape" => "SuggestionMatch"}, "type" => "list"}, "DocumentServiceWarning" => %{"members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "Start" => %{"type" => "long"}, "SearchRequest" => %{"members" => %{"cursor" => %{"location" => "querystring", "locationName" => "cursor", "shape" => "Cursor"}, "expr" => %{"location" => "querystring", "locationName" => "expr", "shape" => "Expr"}, "facet" => %{"location" => "querystring", "locationName" => "facet", "shape" => "Facet"}, "filterQuery" => %{"location" => "querystring", "locationName" => "fq", "shape" => "FilterQuery"}, "highlight" => %{"location" => "querystring", "locationName" => "highlight", "shape" => "Highlight"}, "partial" => %{"location" => "querystring", "locationName" => "partial", "shape" => "Partial"}, "query" => %{"location" => "querystring", "locationName" => "q", "shape" => "Query"}, "queryOptions" => %{"location" => "querystring", "locationName" => "q.options", "shape" => "QueryOptions"}, "queryParser" => %{"location" => "querystring", "locationName" => "q.parser", "shape" => "QueryParser"}, "return" => %{"location" => "querystring", "locationName" => "return", "shape" => "Return"}, "size" => %{"location" => "querystring", "locationName" => "size", "shape" => "Size"}, "sort" => %{"location" => "querystring", "locationName" => "sort", "shape" => "Sort"}, "start" => %{"location" => "querystring", "locationName" => "start", "shape" => "Start"}, "stats" => %{"location" => "querystring", "locationName" => "stats", "shape" => "Stat"}}, "required" => ["query"], "type" => "structure"}, "Sort" => %{"type" => "string"}, "Return" => %{"type" => "string"}, "Highlight" => %{"type" => "string"}, "Expr" => %{"type" => "string"}, "Double" => %{"type" => "double"}, "Deletes" => %{"type" => "long"}, "Query" => %{"type" => "string"}, "FilterQuery" => %{"type" => "string"}, "ContentType" => %{"enum" => ["application/json", "application/xml"], "type" => "string"}, "Long" => %{"type" => "long"}, "UploadDocumentsRequest" => %{"members" => %{"contentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "ContentType"}, "documents" => %{"shape" => "Blob"}}, "payload" => "documents", "required" => ["documents", "contentType"], "type" => "structure"}, "SuggestionsSize" => %{"type" => "long"}, "Bucket" => %{"members" => %{"count" => %{"shape" => "Long"}, "value" => %{"shape" => "String"}}, "type" => "structure"}, "SearchStatus" => %{"members" => %{"rid" => %{"shape" => "String"}, "timems" => %{"shape" => "Long"}}, "type" => "structure"}, "SuggestResponse" => %{"members" => %{"status" => %{"shape" => "SuggestStatus"}, "suggest" => %{"shape" => "SuggestModel"}}, "type" => "structure"}, "Hits" => %{"members" => %{"cursor" => %{"shape" => "String"}, "found" => %{"shape" => "Long"}, "hit" => %{"shape" => "HitList"}, "start" => %{"shape" => "Long"}}, "type" => "structure"}, "SuggestRequest" => %{"members" => %{"query" => %{"location" => "querystring", "locationName" => "q", "shape" => "Query"}, "size" => %{"location" => "querystring", "locationName" => "size", "shape" => "SuggestionsSize"}, "suggester" => %{"location" => "querystring", "locationName" => "suggester", "shape" => "Suggester"}}, "required" => ["query", "suggester"], "type" => "structure"}, "SuggestStatus" => %{"members" => %{"rid" => %{"shape" => "String"}, "timems" => %{"shape" => "Long"}}, "type" => "structure"}, "DocumentServiceException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}, "status" => %{"shape" => "String"}}, "type" => "structure"}, "SuggestModel" => %{"members" => %{"found" => %{"shape" => "Long"}, "query" => %{"shape" => "String"}, "suggestions" => %{"shape" => "Suggestions"}}, "type" => "structure"}, "Stats" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "FieldStats"}}, "Suggester" => %{"type" => "string"}, "SearchResponse" => %{"members" => %{"facets" => %{"shape" => "Facets"}, "hits" => %{"shape" => "Hits"}, "stats" => %{"shape" => "Stats"}, "status" => %{"shape" => "SearchStatus"}}, "type" => "structure"}, "FieldValue" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "Adds" => %{"type" => "long"}, "Facet" => %{"type" => "string"}, "Stat" => %{"type" => "string"}, "Partial" => %{"type" => "boolean"}, "BucketList" => %{"member" => %{"shape" => "Bucket"}, "type" => "list"}, "Highlights" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "Blob" => %{"streaming" => true, "type" => "blob"}, "QueryOptions" => %{"type" => "string"}, "DocumentServiceWarnings" => %{"member" => %{"shape" => "DocumentServiceWarning"}, "type" => "list"}, "SuggestionMatch" => %{"members" => %{"id" => %{"shape" => "String"}, "score" => %{"shape" => "Long"}, "suggestion" => %{"shape" => "String"}}, "type" => "structure"}}
  end
end