defmodule Baiji.Cloudsearch do
  @moduledoc """
  Amazon CloudSearch Configuration Service

  You use the Amazon CloudSearch configuration service to create, configure,
  and manage search domains. Configuration service requests are submitted
  using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests
  submitted via HTTP GET or POST with a query parameter named Action.

  The endpoint for configuration service requests is region-specific:
  cloudsearch.*region*.amazonaws.com. For example,
  cloudsearch.us-east-1.amazonaws.com. For a current list of supported
  regions and endpoints, see [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region"
  target="_blank).
  """

  @doc """
  Indexes the search suggestions. For more information, see [Configuring
  Suggesters](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters)
  in the *Amazon CloudSearch Developer Guide*.
  """
  def build_suggesters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BuildSuggesters",
      method:           :post,
      input_shape:      "BuildSuggestersRequest",
      output_shape:     "BuildSuggestersResponse",
      output_wrapper:   "BuildSuggestersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new search domain. For more information, see [Creating a Search
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def create_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDomain",
      method:           :post,
      input_shape:      "CreateDomainRequest",
      output_shape:     "CreateDomainResponse",
      output_wrapper:   "CreateDomainResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Configures an analysis scheme that can be applied to a `text` or
  `text-array` field to define language-specific text processing options. For
  more information, see [Configuring Analysis
  Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def define_analysis_scheme(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DefineAnalysisScheme",
      method:           :post,
      input_shape:      "DefineAnalysisSchemeRequest",
      output_shape:     "DefineAnalysisSchemeResponse",
      output_wrapper:   "DefineAnalysisSchemeResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Configures an ``Expression`` for the search domain. Used to create new
  expressions and modify existing ones. If the expression exists, the new
  configuration replaces the old one. For more information, see [Configuring
  Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def define_expression(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DefineExpression",
      method:           :post,
      input_shape:      "DefineExpressionRequest",
      output_shape:     "DefineExpressionResponse",
      output_wrapper:   "DefineExpressionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Configures an ``IndexField`` for the search domain. Used to create new
  fields and modify existing ones. You must specify the name of the domain
  you are configuring and an index field configuration. The index field
  configuration specifies a unique name, the index field type, and the
  options you want to configure for the field. The options you can specify
  depend on the ``IndexFieldType``. If the field exists, the new
  configuration replaces the old one. For more information, see [Configuring
  Index
  Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def define_index_field(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DefineIndexField",
      method:           :post,
      input_shape:      "DefineIndexFieldRequest",
      output_shape:     "DefineIndexFieldResponse",
      output_wrapper:   "DefineIndexFieldResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Configures a suggester for a domain. A suggester enables you to display
  possible matches before users finish typing their queries. When you
  configure a suggester, you must specify the name of the text field you want
  to search for possible matches and a unique name for the suggester. For
  more information, see [Getting Search
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def define_suggester(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DefineSuggester",
      method:           :post,
      input_shape:      "DefineSuggesterRequest",
      output_shape:     "DefineSuggesterResponse",
      output_wrapper:   "DefineSuggesterResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an analysis scheme. For more information, see [Configuring Analysis
  Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_analysis_scheme(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteAnalysisScheme",
      method:           :post,
      input_shape:      "DeleteAnalysisSchemeRequest",
      output_shape:     "DeleteAnalysisSchemeResponse",
      output_wrapper:   "DeleteAnalysisSchemeResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Permanently deletes a search domain and all of its data. Once a domain has
  been deleted, it cannot be recovered. For more information, see [Deleting a
  Search
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDomain",
      method:           :post,
      input_shape:      "DeleteDomainRequest",
      output_shape:     "DeleteDomainResponse",
      output_wrapper:   "DeleteDomainResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes an ``Expression`` from the search domain. For more information, see
  [Configuring
  Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_expression(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteExpression",
      method:           :post,
      input_shape:      "DeleteExpressionRequest",
      output_shape:     "DeleteExpressionResponse",
      output_wrapper:   "DeleteExpressionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes an ``IndexField`` from the search domain. For more information, see
  [Configuring Index
  Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_index_field(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteIndexField",
      method:           :post,
      input_shape:      "DeleteIndexFieldRequest",
      output_shape:     "DeleteIndexFieldResponse",
      output_wrapper:   "DeleteIndexFieldResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a suggester. For more information, see [Getting Search
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_suggester(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteSuggester",
      method:           :post,
      input_shape:      "DeleteSuggesterRequest",
      output_shape:     "DeleteSuggesterResponse",
      output_wrapper:   "DeleteSuggesterResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the analysis schemes configured for a domain. An analysis scheme
  defines language-specific text processing options for a `text` field. Can
  be limited to specific analysis schemes by name. By default, shows all
  analysis schemes and includes any pending changes to the configuration. Set
  the `Deployed` option to `true` to show the active configuration and
  exclude pending changes. For more information, see [Configuring Analysis
  Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_analysis_schemes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAnalysisSchemes",
      method:           :post,
      input_shape:      "DescribeAnalysisSchemesRequest",
      output_shape:     "DescribeAnalysisSchemesResponse",
      output_wrapper:   "DescribeAnalysisSchemesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the availability options configured for a domain. By default, shows
  the configuration with any pending changes. Set the `Deployed` option to
  `true` to show the active configuration and exclude pending changes. For
  more information, see [Configuring Availability
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_availability_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAvailabilityOptions",
      method:           :post,
      input_shape:      "DescribeAvailabilityOptionsRequest",
      output_shape:     "DescribeAvailabilityOptionsResponse",
      output_wrapper:   "DescribeAvailabilityOptionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the search domains owned by this account. Can be
  limited to specific domains. Shows all domains by default. To get the
  number of searchable documents in a domain, use the console or submit a
  `matchall` request to your domain's search endpoint:
  `q=matchall&amp;amp;q.parser=structured&amp;amp;size=0`. For more
  information, see [Getting Information about a Search
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_domains(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDomains",
      method:           :post,
      input_shape:      "DescribeDomainsRequest",
      output_shape:     "DescribeDomainsResponse",
      output_wrapper:   "DescribeDomainsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the expressions configured for the search domain. Can be limited to
  specific expressions by name. By default, shows all expressions and
  includes any pending changes to the configuration. Set the `Deployed`
  option to `true` to show the active configuration and exclude pending
  changes. For more information, see [Configuring
  Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_expressions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeExpressions",
      method:           :post,
      input_shape:      "DescribeExpressionsRequest",
      output_shape:     "DescribeExpressionsResponse",
      output_wrapper:   "DescribeExpressionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the index fields configured for the search domain.
  Can be limited to specific fields by name. By default, shows all fields and
  includes any pending changes to the configuration. Set the `Deployed`
  option to `true` to show the active configuration and exclude pending
  changes. For more information, see [Getting Domain
  Information](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_index_fields(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeIndexFields",
      method:           :post,
      input_shape:      "DescribeIndexFieldsRequest",
      output_shape:     "DescribeIndexFieldsResponse",
      output_wrapper:   "DescribeIndexFieldsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the scaling parameters configured for a domain. A domain's scaling
  parameters specify the desired search instance type and replication count.
  For more information, see [Configuring Scaling
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_scaling_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeScalingParameters",
      method:           :post,
      input_shape:      "DescribeScalingParametersRequest",
      output_shape:     "DescribeScalingParametersResponse",
      output_wrapper:   "DescribeScalingParametersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the access policies that control access to the
  domain's document and search endpoints. By default, shows the configuration
  with any pending changes. Set the `Deployed` option to `true` to show the
  active configuration and exclude pending changes. For more information, see
  [Configuring Access for a Search
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_service_access_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeServiceAccessPolicies",
      method:           :post,
      input_shape:      "DescribeServiceAccessPoliciesRequest",
      output_shape:     "DescribeServiceAccessPoliciesResponse",
      output_wrapper:   "DescribeServiceAccessPoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the suggesters configured for a domain. A suggester enables you to
  display possible matches before users finish typing their queries. Can be
  limited to specific suggesters by name. By default, shows all suggesters
  and includes any pending changes to the configuration. Set the `Deployed`
  option to `true` to show the active configuration and exclude pending
  changes. For more information, see [Getting Search
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_suggesters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeSuggesters",
      method:           :post,
      input_shape:      "DescribeSuggestersRequest",
      output_shape:     "DescribeSuggestersResponse",
      output_wrapper:   "DescribeSuggestersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Tells the search domain to start indexing its documents using the latest
  indexing options. This operation must be invoked to activate options whose
  `OptionStatus` is `RequiresIndexDocuments`.
  """
  def index_documents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "IndexDocuments",
      method:           :post,
      input_shape:      "IndexDocumentsRequest",
      output_shape:     "IndexDocumentsResponse",
      output_wrapper:   "IndexDocumentsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all search domains owned by an account.
  """
  def list_domain_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDomainNames",
      method:           :post,
      input_shape:      "",
      output_shape:     "ListDomainNamesResponse",
      output_wrapper:   "ListDomainNamesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Configures the availability options for a domain. Enabling the Multi-AZ
  option expands an Amazon CloudSearch domain to an additional Availability
  Zone in the same Region to increase fault tolerance in the event of a
  service disruption. Changes to the Multi-AZ option can take about half an
  hour to become active. For more information, see [Configuring Availability
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def update_availability_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateAvailabilityOptions",
      method:           :post,
      input_shape:      "UpdateAvailabilityOptionsRequest",
      output_shape:     "UpdateAvailabilityOptionsResponse",
      output_wrapper:   "UpdateAvailabilityOptionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Configures scaling parameters for a domain. A domain's scaling parameters
  specify the desired search instance type and replication count. Amazon
  CloudSearch will still automatically scale your domain based on the volume
  of data and traffic, but not below the desired instance type and
  replication count. If the Multi-AZ option is enabled, these values control
  the resources used per Availability Zone. For more information, see
  [Configuring Scaling
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def update_scaling_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateScalingParameters",
      method:           :post,
      input_shape:      "UpdateScalingParametersRequest",
      output_shape:     "UpdateScalingParametersResponse",
      output_wrapper:   "UpdateScalingParametersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Configures the access rules that control access to the domain's document
  and search endpoints. For more information, see [ Configuring Access for an
  Amazon CloudSearch
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html"
  target="_blank).
  """
  def update_service_access_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateServiceAccessPolicies",
      method:           :post,
      input_shape:      "UpdateServiceAccessPoliciesRequest",
      output_shape:     "UpdateServiceAccessPoliciesResponse",
      output_wrapper:   "UpdateServiceAccessPoliciesResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "cloudsearch",
      endpoint_prefix:  "cloudsearch",
      type:             :xml,
      version:          "2013-01-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"StandardNameList" => %{"member" => %{"shape" => "StandardName"}, "type" => "list"}, "IndexFieldType" => %{"enum" => ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"], "type" => "string"}, "DomainNameMap" => %{"key" => %{"shape" => "DomainName"}, "type" => "map", "value" => %{"shape" => "APIVersion"}}, "FieldNameCommaList" => %{"pattern" => "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*", "type" => "string"}, "AccessPoliciesStatus" => %{"members" => %{"Options" => %{"shape" => "PolicyDocument"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "DateArrayOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "FieldValue"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SourceFields" => %{"shape" => "FieldNameCommaList"}}, "type" => "structure"}, "InvalidTypeException" => %{"error" => %{"code" => "InvalidType", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ScalingParametersStatus" => %{"members" => %{"Options" => %{"shape" => "ScalingParameters"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "DomainNameList" => %{"member" => %{"shape" => "DomainName"}, "type" => "list"}, "DocumentSuggesterOptions" => %{"members" => %{"FuzzyMatching" => %{"shape" => "SuggesterFuzzyMatching"}, "SortExpression" => %{"shape" => "String"}, "SourceField" => %{"shape" => "FieldName"}}, "required" => ["SourceField"], "type" => "structure"}, "UpdateServiceAccessPoliciesResponse" => %{"members" => %{"AccessPolicies" => %{"shape" => "AccessPoliciesStatus"}}, "required" => ["AccessPolicies"], "type" => "structure"}, "DescribeSuggestersResponse" => %{"members" => %{"Suggesters" => %{"shape" => "SuggesterStatusList"}}, "required" => ["Suggesters"], "type" => "structure"}, "DoubleArrayOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "Double"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SourceFields" => %{"shape" => "FieldNameCommaList"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "ErrorMessage" => %{"type" => "string"}, "Expression" => %{"members" => %{"ExpressionName" => %{"shape" => "StandardName"}, "ExpressionValue" => %{"shape" => "ExpressionValue"}}, "required" => ["ExpressionName", "ExpressionValue"], "type" => "structure"}, "DescribeServiceAccessPoliciesRequest" => %{"members" => %{"Deployed" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "CreateDomainRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "UpdateTimestamp" => %{"type" => "timestamp"}, "InternalException" => %{"error" => %{"code" => "InternalException", "httpStatusCode" => 500}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeServiceAccessPoliciesResponse" => %{"members" => %{"AccessPolicies" => %{"shape" => "AccessPoliciesStatus"}}, "required" => ["AccessPolicies"], "type" => "structure"}, "MultiAZ" => %{"type" => "boolean"}, "IndexDocumentsRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "LiteralOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "FieldValue"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SortEnabled" => %{"shape" => "Boolean"}, "SourceField" => %{"shape" => "FieldName"}}, "type" => "structure"}, "DescribeScalingParametersResponse" => %{"members" => %{"ScalingParameters" => %{"shape" => "ScalingParametersStatus"}}, "required" => ["ScalingParameters"], "type" => "structure"}, "DynamicFieldName" => %{"max" => 64, "min" => 1, "pattern" => "([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)", "type" => "string"}, "PartitionInstanceType" => %{"enum" => ["search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge"], "type" => "string"}, "CreateDomainResponse" => %{"members" => %{"DomainStatus" => %{"shape" => "DomainStatus"}}, "type" => "structure"}, "LiteralArrayOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "FieldValue"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SourceFields" => %{"shape" => "FieldNameCommaList"}}, "type" => "structure"}, "DefineIndexFieldRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "IndexField" => %{"shape" => "IndexField"}}, "required" => ["DomainName", "IndexField"], "type" => "structure"}, "ARN" => %{"type" => "string"}, "IndexFieldStatusList" => %{"member" => %{"shape" => "IndexFieldStatus"}, "type" => "list"}, "DeleteIndexFieldResponse" => %{"members" => %{"IndexField" => %{"shape" => "IndexFieldStatus"}}, "required" => ["IndexField"], "type" => "structure"}, "DomainId" => %{"max" => 64, "min" => 1, "type" => "string"}, "IndexFieldStatus" => %{"members" => %{"Options" => %{"shape" => "IndexField"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "AlgorithmicStemming" => %{"enum" => ["none", "minimal", "light", "full"], "type" => "string"}, "ExpressionStatus" => %{"members" => %{"Options" => %{"shape" => "Expression"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "Word" => %{"pattern" => "[\\S]+", "type" => "string"}, "DateOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "FieldValue"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SortEnabled" => %{"shape" => "Boolean"}, "SourceField" => %{"shape" => "FieldName"}}, "type" => "structure"}, "UpdateScalingParametersRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "ScalingParameters" => %{"shape" => "ScalingParameters"}}, "required" => ["DomainName", "ScalingParameters"], "type" => "structure"}, "DoubleOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "Double"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SortEnabled" => %{"shape" => "Boolean"}, "SourceField" => %{"shape" => "FieldName"}}, "type" => "structure"}, "DescribeAvailabilityOptionsRequest" => %{"members" => %{"Deployed" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "ErrorCode" => %{"type" => "string"}, "IndexDocumentsResponse" => %{"members" => %{"FieldNames" => %{"shape" => "FieldNameList"}}, "type" => "structure"}, "Limits" => %{"members" => %{"MaximumPartitionCount" => %{"shape" => "MaximumPartitionCount"}, "MaximumReplicationCount" => %{"shape" => "MaximumReplicationCount"}}, "required" => ["MaximumReplicationCount", "MaximumPartitionCount"], "type" => "structure"}, "DeleteExpressionRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "ExpressionName" => %{"shape" => "StandardName"}}, "required" => ["DomainName", "ExpressionName"], "type" => "structure"}, "AnalysisSchemeStatusList" => %{"member" => %{"shape" => "AnalysisSchemeStatus"}, "type" => "list"}, "SuggesterFuzzyMatching" => %{"enum" => ["none", "low", "high"], "type" => "string"}, "SuggesterStatusList" => %{"member" => %{"shape" => "SuggesterStatus"}, "type" => "list"}, "SearchInstanceType" => %{"type" => "string"}, "DescribeDomainsResponse" => %{"members" => %{"DomainStatusList" => %{"shape" => "DomainStatusList"}}, "required" => ["DomainStatusList"], "type" => "structure"}, "DomainName" => %{"max" => 28, "min" => 3, "pattern" => "[a-z][a-z0-9\\-]+", "type" => "string"}, "ExpressionStatusList" => %{"member" => %{"shape" => "ExpressionStatus"}, "type" => "list"}, "DescribeExpressionsRequest" => %{"members" => %{"Deployed" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}, "ExpressionNames" => %{"shape" => "StandardNameList"}}, "required" => ["DomainName"], "type" => "structure"}, "AnalysisSchemeStatus" => %{"members" => %{"Options" => %{"shape" => "AnalysisScheme"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "BuildSuggestersRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "DeleteExpressionResponse" => %{"members" => %{"Expression" => %{"shape" => "ExpressionStatus"}}, "required" => ["Expression"], "type" => "structure"}, "DescribeSuggestersRequest" => %{"members" => %{"Deployed" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}, "SuggesterNames" => %{"shape" => "StandardNameList"}}, "required" => ["DomainName"], "type" => "structure"}, "PartitionCount" => %{"min" => 1, "type" => "integer"}, "DisabledOperationException" => %{"error" => %{"code" => "DisabledAction", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DescribeAnalysisSchemesResponse" => %{"members" => %{"AnalysisSchemes" => %{"shape" => "AnalysisSchemeStatusList"}}, "required" => ["AnalysisSchemes"], "type" => "structure"}, "UpdateServiceAccessPoliciesRequest" => %{"members" => %{"AccessPolicies" => %{"shape" => "PolicyDocument"}, "DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName", "AccessPolicies"], "type" => "structure"}, "ServiceUrl" => %{"type" => "string"}, "DefineAnalysisSchemeRequest" => %{"members" => %{"AnalysisScheme" => %{"shape" => "AnalysisScheme"}, "DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName", "AnalysisScheme"], "type" => "structure"}, "SuggesterStatus" => %{"members" => %{"Options" => %{"shape" => "Suggester"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "AnalysisOptions" => %{"members" => %{"AlgorithmicStemming" => %{"shape" => "AlgorithmicStemming"}, "JapaneseTokenizationDictionary" => %{"shape" => "String"}, "StemmingDictionary" => %{"shape" => "String"}, "Stopwords" => %{"shape" => "String"}, "Synonyms" => %{"shape" => "String"}}, "type" => "structure"}, "DefineSuggesterRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "Suggester" => %{"shape" => "Suggester"}}, "required" => ["DomainName", "Suggester"], "type" => "structure"}, "UpdateScalingParametersResponse" => %{"members" => %{"ScalingParameters" => %{"shape" => "ScalingParametersStatus"}}, "required" => ["ScalingParameters"], "type" => "structure"}, "Double" => %{"type" => "double"}, "DeleteSuggesterRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "SuggesterName" => %{"shape" => "StandardName"}}, "required" => ["DomainName", "SuggesterName"], "type" => "structure"}, "DescribeAvailabilityOptionsResponse" => %{"members" => %{"AvailabilityOptions" => %{"shape" => "AvailabilityOptionsStatus"}}, "type" => "structure"}, "OptionState" => %{"enum" => ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], "type" => "string"}, "UIntValue" => %{"min" => 0, "type" => "integer"}, "DefineAnalysisSchemeResponse" => %{"members" => %{"AnalysisScheme" => %{"shape" => "AnalysisSchemeStatus"}}, "required" => ["AnalysisScheme"], "type" => "structure"}, "DefineSuggesterResponse" => %{"members" => %{"Suggester" => %{"shape" => "SuggesterStatus"}}, "required" => ["Suggester"], "type" => "structure"}, "InstanceCount" => %{"min" => 1, "type" => "integer"}, "LimitExceededException" => %{"error" => %{"code" => "LimitExceeded", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "AvailabilityOptionsStatus" => %{"members" => %{"Options" => %{"shape" => "MultiAZ"}, "Status" => %{"shape" => "OptionStatus"}}, "required" => ["Options", "Status"], "type" => "structure"}, "UpdateAvailabilityOptionsResponse" => %{"members" => %{"AvailabilityOptions" => %{"shape" => "AvailabilityOptionsStatus"}}, "type" => "structure"}, "DescribeIndexFieldsResponse" => %{"members" => %{"IndexFields" => %{"shape" => "IndexFieldStatusList"}}, "required" => ["IndexFields"], "type" => "structure"}, "Long" => %{"type" => "long"}, "ResourceNotFoundException" => %{"error" => %{"code" => "ResourceNotFound", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "DeleteDomainRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "APIVersion" => %{"type" => "string"}, "DescribeScalingParametersRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "DescribeExpressionsResponse" => %{"members" => %{"Expressions" => %{"shape" => "ExpressionStatusList"}}, "required" => ["Expressions"], "type" => "structure"}, "MaximumReplicationCount" => %{"min" => 1, "type" => "integer"}, "PolicyDocument" => %{"type" => "string"}, "LatLonOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "FieldValue"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SortEnabled" => %{"shape" => "Boolean"}, "SourceField" => %{"shape" => "FieldName"}}, "type" => "structure"}, "DescribeDomainsRequest" => %{"members" => %{"DomainNames" => %{"shape" => "DomainNameList"}}, "type" => "structure"}, "FieldNameList" => %{"member" => %{"shape" => "FieldName"}, "type" => "list"}, "ListDomainNamesResponse" => %{"members" => %{"DomainNames" => %{"shape" => "DomainNameMap"}}, "type" => "structure"}, "IndexField" => %{"members" => %{"DateArrayOptions" => %{"shape" => "DateArrayOptions"}, "DateOptions" => %{"shape" => "DateOptions"}, "DoubleArrayOptions" => %{"shape" => "DoubleArrayOptions"}, "DoubleOptions" => %{"shape" => "DoubleOptions"}, "IndexFieldName" => %{"shape" => "DynamicFieldName"}, "IndexFieldType" => %{"shape" => "IndexFieldType"}, "IntArrayOptions" => %{"shape" => "IntArrayOptions"}, "IntOptions" => %{"shape" => "IntOptions"}, "LatLonOptions" => %{"shape" => "LatLonOptions"}, "LiteralArrayOptions" => %{"shape" => "LiteralArrayOptions"}, "LiteralOptions" => %{"shape" => "LiteralOptions"}, "TextArrayOptions" => %{"shape" => "TextArrayOptions"}, "TextOptions" => %{"shape" => "TextOptions"}}, "required" => ["IndexFieldName", "IndexFieldType"], "type" => "structure"}, "DeleteDomainResponse" => %{"members" => %{"DomainStatus" => %{"shape" => "DomainStatus"}}, "type" => "structure"}, "IntArrayOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "Long"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SourceFields" => %{"shape" => "FieldNameCommaList"}}, "type" => "structure"}, "TextOptions" => %{"members" => %{"AnalysisScheme" => %{"shape" => "Word"}, "DefaultValue" => %{"shape" => "FieldValue"}, "HighlightEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SortEnabled" => %{"shape" => "Boolean"}, "SourceField" => %{"shape" => "FieldName"}}, "type" => "structure"}, "BaseException" => %{"exception" => true, "members" => %{"Code" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DomainStatusList" => %{"member" => %{"shape" => "DomainStatus"}, "type" => "list"}, "DefineIndexFieldResponse" => %{"members" => %{"IndexField" => %{"shape" => "IndexFieldStatus"}}, "required" => ["IndexField"], "type" => "structure"}, "TextArrayOptions" => %{"members" => %{"AnalysisScheme" => %{"shape" => "Word"}, "DefaultValue" => %{"shape" => "FieldValue"}, "HighlightEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SourceFields" => %{"shape" => "FieldNameCommaList"}}, "type" => "structure"}, "AnalysisScheme" => %{"members" => %{"AnalysisOptions" => %{"shape" => "AnalysisOptions"}, "AnalysisSchemeLanguage" => %{"shape" => "AnalysisSchemeLanguage"}, "AnalysisSchemeName" => %{"shape" => "StandardName"}}, "required" => ["AnalysisSchemeName", "AnalysisSchemeLanguage"], "type" => "structure"}, "DescribeIndexFieldsRequest" => %{"members" => %{"Deployed" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}, "FieldNames" => %{"shape" => "DynamicFieldNameList"}}, "required" => ["DomainName"], "type" => "structure"}, "ScalingParameters" => %{"members" => %{"DesiredInstanceType" => %{"shape" => "PartitionInstanceType"}, "DesiredPartitionCount" => %{"shape" => "UIntValue"}, "DesiredReplicationCount" => %{"shape" => "UIntValue"}}, "type" => "structure"}, "Suggester" => %{"members" => %{"DocumentSuggesterOptions" => %{"shape" => "DocumentSuggesterOptions"}, "SuggesterName" => %{"shape" => "StandardName"}}, "required" => ["SuggesterName", "DocumentSuggesterOptions"], "type" => "structure"}, "DefineExpressionRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "Expression" => %{"shape" => "Expression"}}, "required" => ["DomainName", "Expression"], "type" => "structure"}, "ServiceEndpoint" => %{"members" => %{"Endpoint" => %{"shape" => "ServiceUrl"}}, "type" => "structure"}, "FieldValue" => %{"max" => 1024, "min" => 0, "type" => "string"}, "DeleteAnalysisSchemeRequest" => %{"members" => %{"AnalysisSchemeName" => %{"shape" => "StandardName"}, "DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName", "AnalysisSchemeName"], "type" => "structure"}, "DeleteSuggesterResponse" => %{"members" => %{"Suggester" => %{"shape" => "SuggesterStatus"}}, "required" => ["Suggester"], "type" => "structure"}, "UpdateAvailabilityOptionsRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "MultiAZ" => %{"shape" => "Boolean"}}, "required" => ["DomainName", "MultiAZ"], "type" => "structure"}, "DeleteIndexFieldRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "IndexFieldName" => %{"shape" => "DynamicFieldName"}}, "required" => ["DomainName", "IndexFieldName"], "type" => "structure"}, "IntOptions" => %{"members" => %{"DefaultValue" => %{"shape" => "Long"}, "FacetEnabled" => %{"shape" => "Boolean"}, "ReturnEnabled" => %{"shape" => "Boolean"}, "SearchEnabled" => %{"shape" => "Boolean"}, "SortEnabled" => %{"shape" => "Boolean"}, "SourceField" => %{"shape" => "FieldName"}}, "type" => "structure"}, "ExpressionValue" => %{"max" => 10240, "min" => 1, "type" => "string"}, "OptionStatus" => %{"members" => %{"CreationDate" => %{"shape" => "UpdateTimestamp"}, "PendingDeletion" => %{"shape" => "Boolean"}, "State" => %{"shape" => "OptionState"}, "UpdateDate" => %{"shape" => "UpdateTimestamp"}, "UpdateVersion" => %{"shape" => "UIntValue"}}, "required" => ["CreationDate", "UpdateDate", "State"], "type" => "structure"}, "DefineExpressionResponse" => %{"members" => %{"Expression" => %{"shape" => "ExpressionStatus"}}, "required" => ["Expression"], "type" => "structure"}, "DescribeAnalysisSchemesRequest" => %{"members" => %{"AnalysisSchemeNames" => %{"shape" => "StandardNameList"}, "Deployed" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "DynamicFieldNameList" => %{"member" => %{"shape" => "DynamicFieldName"}, "type" => "list"}, "BuildSuggestersResponse" => %{"members" => %{"FieldNames" => %{"shape" => "FieldNameList"}}, "type" => "structure"}, "DomainStatus" => %{"members" => %{"ARN" => %{"shape" => "ARN"}, "Created" => %{"shape" => "Boolean"}, "Deleted" => %{"shape" => "Boolean"}, "DocService" => %{"shape" => "ServiceEndpoint"}, "DomainId" => %{"shape" => "DomainId"}, "DomainName" => %{"shape" => "DomainName"}, "Limits" => %{"shape" => "Limits"}, "Processing" => %{"shape" => "Boolean"}, "RequiresIndexDocuments" => %{"shape" => "Boolean"}, "SearchInstanceCount" => %{"shape" => "InstanceCount"}, "SearchInstanceType" => %{"shape" => "SearchInstanceType"}, "SearchPartitionCount" => %{"shape" => "PartitionCount"}, "SearchService" => %{"shape" => "ServiceEndpoint"}}, "required" => ["DomainId", "DomainName", "RequiresIndexDocuments"], "type" => "structure"}, "AnalysisSchemeLanguage" => %{"enum" => ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"], "type" => "string"}, "MaximumPartitionCount" => %{"min" => 1, "type" => "integer"}, "StandardName" => %{"max" => 64, "min" => 1, "pattern" => "[a-z][a-z0-9_]*", "type" => "string"}, "FieldName" => %{"max" => 64, "min" => 1, "pattern" => "[a-z][a-z0-9_]*", "type" => "string"}, "DeleteAnalysisSchemeResponse" => %{"members" => %{"AnalysisScheme" => %{"shape" => "AnalysisSchemeStatus"}}, "required" => ["AnalysisScheme"], "type" => "structure"}}
  end
end