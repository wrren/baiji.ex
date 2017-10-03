defmodule Baiji.Support do
  @moduledoc """
  AWS Support

  The AWS Support API reference is intended for programmers who need detailed
  information about the AWS Support operations and data types. This service
  enables you to manage your AWS Support cases programmatically. It uses HTTP
  methods that return results in JSON format.

  The AWS Support service also exposes a set of [Trusted
  Advisor](http://aws.amazon.com/premiumsupport/trustedadvisor/) features.
  You can retrieve a list of checks and their descriptions, get check
  results, specify checks to refresh, and get the refresh status of checks.

  The following list describes the AWS Support case management operations:

  <ul> <li> **Service names, issue categories, and available severity levels.
  **The `DescribeServices` and `DescribeSeverityLevels` operations return AWS
  service names, service codes, service categories, and problem severity
  levels. You use these values when you call the `CreateCase` operation.

  </li> <li> **Case creation, case details, and case resolution.** The
  `CreateCase`, `DescribeCases`, `DescribeAttachment`, and `ResolveCase`
  operations create AWS Support cases, retrieve information about cases, and
  resolve cases.

  </li> <li> **Case communication.** The `DescribeCommunications`,
  `AddCommunicationToCase`, and `AddAttachmentsToSet` operations retrieve and
  add communications and attachments to AWS Support cases.

  </li> </ul> The following list describes the operations available from the
  AWS Support service for Trusted Advisor:

  <ul> <li> `DescribeTrustedAdvisorChecks` returns the list of checks that
  run against your AWS resources.

  </li> <li> Using the `checkId` for a specific check returned by
  `DescribeTrustedAdvisorChecks`, you can call
  `DescribeTrustedAdvisorCheckResult` to obtain the results for the check you
  specified.

  </li> <li> `DescribeTrustedAdvisorCheckSummaries` returns summarized
  results for one or more Trusted Advisor checks.

  </li> <li> `RefreshTrustedAdvisorCheck` requests that Trusted Advisor rerun
  a specified check.

  </li> <li> `DescribeTrustedAdvisorCheckRefreshStatuses` reports the refresh
  status of one or more checks.

  </li> </ul> For authentication of requests, AWS Support uses [Signature
  Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  See [About the AWS Support
  API](http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html) in the
  *AWS Support User Guide* for information about how to use this service to
  create and manage your support cases, and how to call Trusted Advisor for
  results of checks on your resources.
  """
  
  @doc """
  Adds one or more attachments to an attachment set. If an `attachmentSetId`
  is not specified, a new attachment set is created, and the ID of the set is
  returned in the response. If an `attachmentSetId` is specified, the
  attachments are added to the specified set, if it exists.

  An attachment set is a temporary container for attachments that are to be
  added to a case or case communication. The set is available for one hour
  after it is created; the `expiryTime` returned in the response indicates
  when the set expires. The maximum number of attachments in a set is 3, and
  the maximum size of any attachment in the set is 5 MB.
  """
  def add_attachments_to_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddAttachmentsToSet",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "AddAttachmentsToSetRequest",
      output_shape:     "AddAttachmentsToSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds additional customer communication to an AWS Support case. You use the
  `caseId` value to identify the case to add communication to. You can list a
  set of email addresses to copy on the communication using the
  `ccEmailAddresses` value. The `communicationBody` value contains the text
  of the communication.

  The response indicates the success or failure of the request.

  This operation implements a subset of the features of the AWS Support
  Center.
  """
  def add_communication_to_case(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddCommunicationToCase",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "AddCommunicationToCaseRequest",
      output_shape:     "AddCommunicationToCaseResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new case in the AWS Support Center. This operation is modeled on
  the behavior of the AWS Support Center [Create
  Case](https://console.aws.amazon.com/support/home#/case/create) page. Its
  parameters require you to specify the following information:

  <ul> <li> **issueType.** The type of issue for the case. You can specify
  either "customer-service" or "technical." If you do not indicate a value,
  the default is "technical."

  </li> <li> **serviceCode.** The code for an AWS service. You obtain the
  `serviceCode` by calling `DescribeServices`.

  </li> <li> **categoryCode.** The category for the service defined for the
  `serviceCode` value. You also obtain the category code for a service by
  calling `DescribeServices`. Each AWS service defines its own set of
  category codes.

  </li> <li> **severityCode.** A value that indicates the urgency of the
  case, which in turn determines the response time according to your service
  level agreement with AWS Support. You obtain the SeverityCode by calling
  `DescribeSeverityLevels`.

  </li> <li> **subject.** The **Subject** field on the AWS Support Center
  [Create Case](https://console.aws.amazon.com/support/home#/case/create)
  page.

  </li> <li> **communicationBody.** The **Description** field on the AWS
  Support Center [Create
  Case](https://console.aws.amazon.com/support/home#/case/create) page.

  </li> <li> **attachmentSetId.** The ID of a set of attachments that has
  been created by using `AddAttachmentsToSet`.

  </li> <li> **language.** The human language in which AWS Support handles
  the case. English and Japanese are currently supported.

  </li> <li> **ccEmailAddresses.** The AWS Support Center **CC** field on the
  [Create Case](https://console.aws.amazon.com/support/home#/case/create)
  page. You can list email addresses to be copied on any correspondence about
  the case. The account that opens the case is already identified by passing
  the AWS Credentials in the HTTP POST method or in a method or function call
  from one of the programming languages supported by an [AWS
  SDK](http://aws.amazon.com/tools/).

  </li> </ul> <note> To add additional communication or attachments to an
  existing case, use `AddCommunicationToCase`.

  </note> A successful `CreateCase` request returns an AWS Support case
  number. Case numbers are used by the `DescribeCases` operation to retrieve
  existing AWS Support cases.
  """
  def create_case(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCase",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "CreateCaseRequest",
      output_shape:     "CreateCaseResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the attachment that has the specified ID. Attachment IDs are
  generated by the case management system when you add an attachment to a
  case or case communication. Attachment IDs are returned in the
  `AttachmentDetails` objects that are returned by the
  `DescribeCommunications` operation.
  """
  def describe_attachment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAttachment",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeAttachmentRequest",
      output_shape:     "DescribeAttachmentResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of cases that you specify by passing one or more case IDs.
  In addition, you can filter the cases by date by setting values for the
  `afterTime` and `beforeTime` request parameters. You can set values for the
  `includeResolvedCases` and `includeCommunications` request parameters to
  control how much information is returned.

  Case data is available for 12 months after creation. If a case was created
  more than 12 months ago, a request for data might cause an error.

  The response returns the following in JSON format:

  <ul> <li> One or more `CaseDetails` data types.

  </li> <li> One or more `nextToken` values, which specify where to paginate
  the returned records represented by the `CaseDetails` objects.

  </li> </ul>
  """
  def describe_cases(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCases",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeCasesRequest",
      output_shape:     "DescribeCasesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns communications (and attachments) for one or more support cases. You
  can use the `afterTime` and `beforeTime` parameters to filter by date. You
  can use the `caseId` parameter to restrict the results to a particular
  case.

  Case data is available for 12 months after creation. If a case was created
  more than 12 months ago, a request for data might cause an error.

  You can use the `maxResults` and `nextToken` parameters to control the
  pagination of the result set. Set `maxResults` to the number of cases you
  want displayed on each page, and use `nextToken` to specify the resumption
  of pagination.
  """
  def describe_communications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCommunications",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeCommunicationsRequest",
      output_shape:     "DescribeCommunicationsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the current list of AWS services and a list of service categories
  that applies to each one. You then use service names and categories in your
  `CreateCase` requests. Each AWS service has its own set of categories.

  The service codes and category codes correspond to the values that are
  displayed in the **Service** and **Category** drop-down lists on the AWS
  Support Center [Create
  Case](https://console.aws.amazon.com/support/home#/case/create) page. The
  values in those fields, however, do not necessarily match the service codes
  and categories returned by the `DescribeServices` request. Always use the
  service codes and categories obtained programmatically. This practice
  ensures that you always have the most recent set of service and category
  codes.
  """
  def describe_services(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeServices",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeServicesRequest",
      output_shape:     "DescribeServicesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the list of severity levels that you can assign to an AWS Support
  case. The severity level for a case is also a field in the `CaseDetails`
  data type included in any `CreateCase` request.
  """
  def describe_severity_levels(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSeverityLevels",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeSeverityLevelsRequest",
      output_shape:     "DescribeSeverityLevelsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the refresh status of the Trusted Advisor checks that have the
  specified check IDs. Check IDs can be obtained by calling
  `DescribeTrustedAdvisorChecks`.

  <note> Some checks are refreshed automatically, and their refresh statuses
  cannot be retrieved by using this operation. Use of the
  `DescribeTrustedAdvisorCheckRefreshStatuses` operation for these checks
  causes an `InvalidParameterValue` error.

  </note>
  """
  def describe_trusted_advisor_check_refresh_statuses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTrustedAdvisorCheckRefreshStatuses",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeTrustedAdvisorCheckRefreshStatusesRequest",
      output_shape:     "DescribeTrustedAdvisorCheckRefreshStatusesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the results of the Trusted Advisor check that has the specified
  check ID. Check IDs can be obtained by calling
  `DescribeTrustedAdvisorChecks`.

  The response contains a `TrustedAdvisorCheckResult` object, which contains
  these three objects:

  <ul> <li> `TrustedAdvisorCategorySpecificSummary`

  </li> <li> `TrustedAdvisorResourceDetail`

  </li> <li> `TrustedAdvisorResourcesSummary`

  </li> </ul> In addition, the response contains these fields:

  <ul> <li> **status.** The alert status of the check: "ok" (green),
  "warning" (yellow), "error" (red), or "not_available".

  </li> <li> **timestamp.** The time of the last refresh of the check.

  </li> <li> **checkId.** The unique identifier for the check.

  </li> </ul>
  """
  def describe_trusted_advisor_check_result(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTrustedAdvisorCheckResult",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeTrustedAdvisorCheckResultRequest",
      output_shape:     "DescribeTrustedAdvisorCheckResultResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the summaries of the results of the Trusted Advisor checks that
  have the specified check IDs. Check IDs can be obtained by calling
  `DescribeTrustedAdvisorChecks`.

  The response contains an array of `TrustedAdvisorCheckSummary` objects.
  """
  def describe_trusted_advisor_check_summaries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTrustedAdvisorCheckSummaries",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeTrustedAdvisorCheckSummariesRequest",
      output_shape:     "DescribeTrustedAdvisorCheckSummariesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about all available Trusted Advisor checks, including
  name, ID, category, description, and metadata. You must specify a language
  code; English ("en") and Japanese ("ja") are currently supported. The
  response contains a `TrustedAdvisorCheckDescription` for each check.
  """
  def describe_trusted_advisor_checks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTrustedAdvisorChecks",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "DescribeTrustedAdvisorChecksRequest",
      output_shape:     "DescribeTrustedAdvisorChecksResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Requests a refresh of the Trusted Advisor check that has the specified
  check ID. Check IDs can be obtained by calling
  `DescribeTrustedAdvisorChecks`.

  <note> Some checks are refreshed automatically, and they cannot be
  refreshed by using this operation. Use of the `RefreshTrustedAdvisorCheck`
  operation for these checks causes an `InvalidParameterValue` error.

  </note> The response contains a `TrustedAdvisorCheckRefreshStatus` object,
  which contains these fields:

  <ul> <li> **status.** The refresh status of the check: "none", "enqueued",
  "processing", "success", or "abandoned".

  </li> <li> **millisUntilNextRefreshable.** The amount of time, in
  milliseconds, until the check is eligible for refresh.

  </li> <li> **checkId.** The unique identifier for the check.

  </li> </ul>
  """
  def refresh_trusted_advisor_check(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RefreshTrustedAdvisorCheck",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "RefreshTrustedAdvisorCheckRequest",
      output_shape:     "RefreshTrustedAdvisorCheckResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Takes a `caseId` and returns the initial state of the case along with the
  state of the case after the call to `ResolveCase` completed.
  """
  def resolve_case(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "support",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResolveCase",
      
      target_prefix:    "AWSSupport_20130415",
      
      endpoint_prefix:  "support",
      type:             :json,
      version:          "2013-04-15",
      method:           :post,
      input_shape:      "ResolveCaseRequest",
      output_shape:     "ResolveCaseResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"SeverityLevelName" => %{"type" => "string"}, "DescribeTrustedAdvisorCheckResultRequest" => %{"members" => %{"checkId" => %{"shape" => "String"}, "language" => %{"shape" => "String"}}, "required" => ["checkId"], "type" => "structure"}, "ExpiryTime" => %{"type" => "string"}, "Language" => %{"type" => "string"}, "DescribeTrustedAdvisorChecksResponse" => %{"members" => %{"checks" => %{"shape" => "TrustedAdvisorCheckList"}}, "required" => ["checks"], "type" => "structure"}, "AttachmentId" => %{"type" => "string"}, "DescribeSeverityLevelsResponse" => %{"members" => %{"severityLevels" => %{"shape" => "SeverityLevelsList"}}, "type" => "structure"}, "TimeCreated" => %{"type" => "string"}, "Subject" => %{"type" => "string"}, "String" => %{"type" => "string"}, "CommunicationBody" => %{"max" => 8000, "min" => 1, "type" => "string"}, "ServiceName" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "ErrorMessage" => %{"type" => "string"}, "CcEmailAddressList" => %{"max" => 10, "member" => %{"shape" => "CcEmailAddress"}, "min" => 0, "type" => "list"}, "Category" => %{"members" => %{"code" => %{"shape" => "CategoryCode"}, "name" => %{"shape" => "CategoryName"}}, "type" => "structure"}, "RecentCaseCommunications" => %{"members" => %{"communications" => %{"shape" => "CommunicationList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "Service" => %{"members" => %{"categories" => %{"shape" => "CategoryList"}, "code" => %{"shape" => "ServiceCode"}, "name" => %{"shape" => "ServiceName"}}, "type" => "structure"}, "DescribeServicesResponse" => %{"members" => %{"services" => %{"shape" => "ServiceList"}}, "type" => "structure"}, "Attachments" => %{"member" => %{"shape" => "Attachment"}, "type" => "list"}, "AddCommunicationToCaseResponse" => %{"members" => %{"result" => %{"shape" => "Result"}}, "type" => "structure"}, "TrustedAdvisorCheckResult" => %{"members" => %{"categorySpecificSummary" => %{"shape" => "TrustedAdvisorCategorySpecificSummary"}, "checkId" => %{"shape" => "String"}, "flaggedResources" => %{"shape" => "TrustedAdvisorResourceDetailList"}, "resourcesSummary" => %{"shape" => "TrustedAdvisorResourcesSummary"}, "status" => %{"shape" => "String"}, "timestamp" => %{"shape" => "String"}}, "required" => ["checkId", "timestamp", "status", "resourcesSummary", "categorySpecificSummary", "flaggedResources"], "type" => "structure"}, "AddAttachmentsToSetRequest" => %{"members" => %{"attachmentSetId" => %{"shape" => "AttachmentSetId"}, "attachments" => %{"shape" => "Attachments"}}, "required" => ["attachments"], "type" => "structure"}, "RefreshTrustedAdvisorCheckRequest" => %{"members" => %{"checkId" => %{"shape" => "String"}}, "required" => ["checkId"], "type" => "structure"}, "CaseCreationLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TrustedAdvisorResourcesSummary" => %{"members" => %{"resourcesFlagged" => %{"shape" => "Long"}, "resourcesIgnored" => %{"shape" => "Long"}, "resourcesProcessed" => %{"shape" => "Long"}, "resourcesSuppressed" => %{"shape" => "Long"}}, "required" => ["resourcesProcessed", "resourcesFlagged", "resourcesIgnored", "resourcesSuppressed"], "type" => "structure"}, "ResolveCaseResponse" => %{"members" => %{"finalCaseStatus" => %{"shape" => "CaseStatus"}, "initialCaseStatus" => %{"shape" => "CaseStatus"}}, "type" => "structure"}, "StringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "CaseStatus" => %{"type" => "string"}, "AttachmentSetId" => %{"type" => "string"}, "CategoryList" => %{"member" => %{"shape" => "Category"}, "type" => "list"}, "IncludeCommunications" => %{"type" => "boolean"}, "DescribeAttachmentLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "AttachmentDetails" => %{"members" => %{"attachmentId" => %{"shape" => "AttachmentId"}, "fileName" => %{"shape" => "FileName"}}, "type" => "structure"}, "SeverityLevelsList" => %{"member" => %{"shape" => "SeverityLevel"}, "type" => "list"}, "TrustedAdvisorCostOptimizingSummary" => %{"members" => %{"estimatedMonthlySavings" => %{"shape" => "Double"}, "estimatedPercentMonthlySavings" => %{"shape" => "Double"}}, "required" => ["estimatedMonthlySavings", "estimatedPercentMonthlySavings"], "type" => "structure"}, "DescribeSeverityLevelsRequest" => %{"members" => %{"language" => %{"shape" => "Language"}}, "type" => "structure"}, "CreateCaseRequest" => %{"members" => %{"attachmentSetId" => %{"shape" => "AttachmentSetId"}, "categoryCode" => %{"shape" => "CategoryCode"}, "ccEmailAddresses" => %{"shape" => "CcEmailAddressList"}, "communicationBody" => %{"shape" => "CommunicationBody"}, "issueType" => %{"shape" => "IssueType"}, "language" => %{"shape" => "Language"}, "serviceCode" => %{"shape" => "ServiceCode"}, "severityCode" => %{"shape" => "SeverityCode"}, "subject" => %{"shape" => "Subject"}}, "required" => ["subject", "communicationBody"], "type" => "structure"}, "DescribeCommunicationsRequest" => %{"members" => %{"afterTime" => %{"shape" => "AfterTime"}, "beforeTime" => %{"shape" => "BeforeTime"}, "caseId" => %{"shape" => "CaseId"}, "maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}}, "required" => ["caseId"], "type" => "structure"}, "AttachmentLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "AttachmentSet" => %{"member" => %{"shape" => "AttachmentDetails"}, "type" => "list"}, "TrustedAdvisorResourceDetail" => %{"members" => %{"isSuppressed" => %{"shape" => "Boolean"}, "metadata" => %{"shape" => "StringList"}, "region" => %{"shape" => "String"}, "resourceId" => %{"shape" => "String"}, "status" => %{"shape" => "String"}}, "required" => ["status", "resourceId", "metadata"], "type" => "structure"}, "AttachmentSetIdNotFound" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MaxResults" => %{"max" => 100, "min" => 10, "type" => "integer"}, "TrustedAdvisorCheckRefreshStatus" => %{"members" => %{"checkId" => %{"shape" => "String"}, "millisUntilNextRefreshable" => %{"shape" => "Long"}, "status" => %{"shape" => "String"}}, "required" => ["checkId", "status", "millisUntilNextRefreshable"], "type" => "structure"}, "TrustedAdvisorCheckSummary" => %{"members" => %{"categorySpecificSummary" => %{"shape" => "TrustedAdvisorCategorySpecificSummary"}, "checkId" => %{"shape" => "String"}, "hasFlaggedResources" => %{"shape" => "Boolean"}, "resourcesSummary" => %{"shape" => "TrustedAdvisorResourcesSummary"}, "status" => %{"shape" => "String"}, "timestamp" => %{"shape" => "String"}}, "required" => ["checkId", "timestamp", "status", "resourcesSummary", "categorySpecificSummary"], "type" => "structure"}, "DescribeAttachmentResponse" => %{"members" => %{"attachment" => %{"shape" => "Attachment"}}, "type" => "structure"}, "DescribeServicesRequest" => %{"members" => %{"language" => %{"shape" => "Language"}, "serviceCodeList" => %{"shape" => "ServiceCodeList"}}, "type" => "structure"}, "AttachmentSetExpired" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "IssueType" => %{"type" => "string"}, "IncludeResolvedCases" => %{"type" => "boolean"}, "FileName" => %{"type" => "string"}, "Double" => %{"type" => "double"}, "Communication" => %{"members" => %{"attachmentSet" => %{"shape" => "AttachmentSet"}, "body" => %{"shape" => "CommunicationBody"}, "caseId" => %{"shape" => "CaseId"}, "submittedBy" => %{"shape" => "SubmittedBy"}, "timeCreated" => %{"shape" => "TimeCreated"}}, "type" => "structure"}, "CategoryName" => %{"type" => "string"}, "Result" => %{"type" => "boolean"}, "TrustedAdvisorCheckSummaryList" => %{"member" => %{"shape" => "TrustedAdvisorCheckSummary"}, "type" => "list"}, "TrustedAdvisorCheckRefreshStatusList" => %{"member" => %{"shape" => "TrustedAdvisorCheckRefreshStatus"}, "type" => "list"}, "InternalServerError" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "AttachmentSetSizeLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Status" => %{"type" => "string"}, "CaseDetails" => %{"members" => %{"caseId" => %{"shape" => "CaseId"}, "categoryCode" => %{"shape" => "CategoryCode"}, "ccEmailAddresses" => %{"shape" => "CcEmailAddressList"}, "displayId" => %{"shape" => "DisplayId"}, "language" => %{"shape" => "Language"}, "recentCommunications" => %{"shape" => "RecentCaseCommunications"}, "serviceCode" => %{"shape" => "ServiceCode"}, "severityCode" => %{"shape" => "SeverityCode"}, "status" => %{"shape" => "Status"}, "subject" => %{"shape" => "Subject"}, "submittedBy" => %{"shape" => "SubmittedBy"}, "timeCreated" => %{"shape" => "TimeCreated"}}, "type" => "structure"}, "SeverityLevel" => %{"members" => %{"code" => %{"shape" => "SeverityLevelCode"}, "name" => %{"shape" => "SeverityLevelName"}}, "type" => "structure"}, "Long" => %{"type" => "long"}, "CategoryCode" => %{"type" => "string"}, "DescribeTrustedAdvisorChecksRequest" => %{"members" => %{"language" => %{"shape" => "String"}}, "required" => ["language"], "type" => "structure"}, "RefreshTrustedAdvisorCheckResponse" => %{"members" => %{"status" => %{"shape" => "TrustedAdvisorCheckRefreshStatus"}}, "required" => ["status"], "type" => "structure"}, "ServiceList" => %{"member" => %{"shape" => "Service"}, "type" => "list"}, "DescribeTrustedAdvisorCheckSummariesResponse" => %{"members" => %{"summaries" => %{"shape" => "TrustedAdvisorCheckSummaryList"}}, "required" => ["summaries"], "type" => "structure"}, "CaseList" => %{"member" => %{"shape" => "CaseDetails"}, "type" => "list"}, "TrustedAdvisorCategorySpecificSummary" => %{"members" => %{"costOptimizing" => %{"shape" => "TrustedAdvisorCostOptimizingSummary"}}, "type" => "structure"}, "AddAttachmentsToSetResponse" => %{"members" => %{"attachmentSetId" => %{"shape" => "AttachmentSetId"}, "expiryTime" => %{"shape" => "ExpiryTime"}}, "type" => "structure"}, "TrustedAdvisorCheckDescription" => %{"members" => %{"category" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "id" => %{"shape" => "String"}, "metadata" => %{"shape" => "StringList"}, "name" => %{"shape" => "String"}}, "required" => ["id", "name", "description", "category", "metadata"], "type" => "structure"}, "SeverityLevelCode" => %{"type" => "string"}, "Data" => %{"type" => "blob"}, "CaseId" => %{"type" => "string"}, "DescribeTrustedAdvisorCheckRefreshStatusesResponse" => %{"members" => %{"statuses" => %{"shape" => "TrustedAdvisorCheckRefreshStatusList"}}, "required" => ["statuses"], "type" => "structure"}, "CaseIdNotFound" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CcEmailAddress" => %{"type" => "string"}, "ServiceCodeList" => %{"max" => 100, "member" => %{"shape" => "ServiceCode"}, "min" => 0, "type" => "list"}, "ResolveCaseRequest" => %{"members" => %{"caseId" => %{"shape" => "CaseId"}}, "type" => "structure"}, "DescribeCasesResponse" => %{"members" => %{"cases" => %{"shape" => "CaseList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DescribeTrustedAdvisorCheckResultResponse" => %{"members" => %{"result" => %{"shape" => "TrustedAdvisorCheckResult"}}, "type" => "structure"}, "AddCommunicationToCaseRequest" => %{"members" => %{"attachmentSetId" => %{"shape" => "AttachmentSetId"}, "caseId" => %{"shape" => "CaseId"}, "ccEmailAddresses" => %{"shape" => "CcEmailAddressList"}, "communicationBody" => %{"shape" => "CommunicationBody"}}, "required" => ["communicationBody"], "type" => "structure"}, "AttachmentIdNotFound" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateCaseResponse" => %{"members" => %{"caseId" => %{"shape" => "CaseId"}}, "type" => "structure"}, "Attachment" => %{"members" => %{"data" => %{"shape" => "Data"}, "fileName" => %{"shape" => "FileName"}}, "type" => "structure"}, "BeforeTime" => %{"type" => "string"}, "DescribeAttachmentRequest" => %{"members" => %{"attachmentId" => %{"shape" => "AttachmentId"}}, "required" => ["attachmentId"], "type" => "structure"}, "SubmittedBy" => %{"type" => "string"}, "CaseIdList" => %{"max" => 100, "member" => %{"shape" => "CaseId"}, "min" => 0, "type" => "list"}, "CommunicationList" => %{"member" => %{"shape" => "Communication"}, "type" => "list"}, "DescribeCasesRequest" => %{"members" => %{"afterTime" => %{"shape" => "AfterTime"}, "beforeTime" => %{"shape" => "BeforeTime"}, "caseIdList" => %{"shape" => "CaseIdList"}, "displayId" => %{"shape" => "DisplayId"}, "includeCommunications" => %{"shape" => "IncludeCommunications"}, "includeResolvedCases" => %{"shape" => "IncludeResolvedCases"}, "language" => %{"shape" => "Language"}, "maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ServiceCode" => %{"type" => "string"}, "NextToken" => %{"type" => "string"}, "TrustedAdvisorCheckList" => %{"member" => %{"shape" => "TrustedAdvisorCheckDescription"}, "type" => "list"}, "DisplayId" => %{"type" => "string"}, "DescribeTrustedAdvisorCheckSummariesRequest" => %{"members" => %{"checkIds" => %{"shape" => "StringList"}}, "required" => ["checkIds"], "type" => "structure"}, "DescribeTrustedAdvisorCheckRefreshStatusesRequest" => %{"members" => %{"checkIds" => %{"shape" => "StringList"}}, "required" => ["checkIds"], "type" => "structure"}, "DescribeCommunicationsResponse" => %{"members" => %{"communications" => %{"shape" => "CommunicationList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "TrustedAdvisorResourceDetailList" => %{"member" => %{"shape" => "TrustedAdvisorResourceDetail"}, "type" => "list"}, "SeverityCode" => %{"type" => "string"}, "AfterTime" => %{"type" => "string"}}
  end
end