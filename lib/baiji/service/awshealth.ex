defmodule Baiji.AWSHealth do
  @moduledoc """
  AWS Health

  The AWS Health API provides programmatic access to the AWS Health
  information that is presented in the [AWS Personal Health
  Dashboard](https://phd.aws.amazon.com/phd/home#/). You can get information
  about events that affect your AWS resources:

  <ul> <li> `DescribeEvents`: Summary information about events.

  </li> <li> `DescribeEventDetails`: Detailed information about one or more
  events.

  </li> <li> `DescribeAffectedEntities`: Information about AWS resources that
  are affected by one or more events.

  </li> </ul> In addition, these operations provide information about event
  types and summary counts of events or affected entities:

  <ul> <li> `DescribeEventTypes`: Information about the kinds of events that
  AWS Health tracks.

  </li> <li> `DescribeEventAggregates`: A count of the number of events that
  meet specified criteria.

  </li> <li> `DescribeEntityAggregates`: A count of the number of affected
  entities that meet specified criteria.

  </li> </ul> The Health API requires a Business or Enterprise support plan
  from [AWS Support](http://aws.amazon.com/premiumsupport/). Calling the
  Health API from an account that does not have a Business or Enterprise
  support plan causes a `SubscriptionRequiredException`.

  For authentication of requests, AWS Health uses the [Signature Version 4
  Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  See the [AWS Health User
  Guide](http://docs.aws.amazon.com/health/latest/ug/what-is-aws-health.html)
  for information about how to use the API.

  **Service Endpoint**

  The HTTP endpoint for the AWS Health API is:

  <ul> <li> https://health.us-east-1.amazonaws.com

  </li> </ul>
  """
  
  @doc """
  Returns a list of entities that have been affected by the specified events,
  based on the specified filter criteria. Entities can refer to individual
  customer resources, groups of customer resources, or any other construct,
  depending on the AWS service. Events that have impact beyond that of the
  affected entities, or where the extent of impact is unknown, include at
  least one entity indicating this.

  At least one event ARN is required. Results are sorted by the
  `lastUpdatedTime` of the entity, starting with the most recent.
  """
  def describe_affected_entities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "health",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAffectedEntities",
      
      target_prefix:    "AWSHealth_20160804",
      
      endpoint_prefix:  "health",
      type:             :json,
      version:          "2016-08-04",
      method:           :post,
      input_shape:      "DescribeAffectedEntitiesRequest",
      output_shape:     "DescribeAffectedEntitiesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the number of entities that are affected by each of the specified
  events. If no events are specified, the counts of all affected entities are
  returned.
  """
  def describe_entity_aggregates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "health",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEntityAggregates",
      
      target_prefix:    "AWSHealth_20160804",
      
      endpoint_prefix:  "health",
      type:             :json,
      version:          "2016-08-04",
      method:           :post,
      input_shape:      "DescribeEntityAggregatesRequest",
      output_shape:     "DescribeEntityAggregatesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the number of events of each event type (issue, scheduled change,
  and account notification). If no filter is specified, the counts of all
  events in each category are returned.
  """
  def describe_event_aggregates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "health",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEventAggregates",
      
      target_prefix:    "AWSHealth_20160804",
      
      endpoint_prefix:  "health",
      type:             :json,
      version:          "2016-08-04",
      method:           :post,
      input_shape:      "DescribeEventAggregatesRequest",
      output_shape:     "DescribeEventAggregatesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns detailed information about one or more specified events.
  Information includes standard event data (region, service, etc., as
  returned by `DescribeEvents`), a detailed event description, and possible
  additional metadata that depends upon the nature of the event. Affected
  entities are not included; to retrieve those, use the
  `DescribeAffectedEntities` operation.

  If a specified event cannot be retrieved, an error message is returned for
  that event.
  """
  def describe_event_details(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "health",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEventDetails",
      
      target_prefix:    "AWSHealth_20160804",
      
      endpoint_prefix:  "health",
      type:             :json,
      version:          "2016-08-04",
      method:           :post,
      input_shape:      "DescribeEventDetailsRequest",
      output_shape:     "DescribeEventDetailsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the event types that meet the specified filter criteria. If no
  filter criteria are specified, all event types are returned, in no
  particular order.
  """
  def describe_event_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "health",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEventTypes",
      
      target_prefix:    "AWSHealth_20160804",
      
      endpoint_prefix:  "health",
      type:             :json,
      version:          "2016-08-04",
      method:           :post,
      input_shape:      "DescribeEventTypesRequest",
      output_shape:     "DescribeEventTypesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about events that meet the specified filter criteria.
  Events are returned in a summary form and do not include the detailed
  description, any additional metadata that depends on the event type, or any
  affected resources. To retrieve that information, use the
  `DescribeEventDetails` and `DescribeAffectedEntities` operations.

  If no filter criteria are specified, all events are returned. Results are
  sorted by `lastModifiedTime`, starting with the most recent.
  """
  def describe_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "health",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEvents",
      
      target_prefix:    "AWSHealth_20160804",
      
      endpoint_prefix:  "health",
      type:             :json,
      version:          "2016-08-04",
      method:           :post,
      input_shape:      "DescribeEventsRequest",
      output_shape:     "DescribeEventsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"tagKey" => %{"max" => 127, "type" => "string"}, "EventTypeFilter" => %{"members" => %{"eventTypeCategories" => %{"shape" => "EventTypeCategoryList"}, "eventTypeCodes" => %{"shape" => "EventTypeCodeList"}, "services" => %{"shape" => "serviceList"}}, "type" => "structure"}, "eventType" => %{"max" => 100, "min" => 3, "type" => "string"}, "EntityList" => %{"member" => %{"shape" => "AffectedEntity"}, "type" => "list"}, "EventAggregateList" => %{"member" => %{"shape" => "EventAggregate"}, "type" => "list"}, "regionList" => %{"max" => 10, "member" => %{"shape" => "region"}, "min" => 1, "type" => "list"}, "DescribeEventTypesRequest" => %{"members" => %{"filter" => %{"shape" => "EventTypeFilter"}, "locale" => %{"shape" => "locale"}, "maxResults" => %{"shape" => "maxResults"}, "nextToken" => %{"shape" => "nextToken"}}, "type" => "structure"}, "eventTypeList" => %{"max" => 10, "member" => %{"shape" => "eventType"}, "min" => 1, "type" => "list"}, "DescribeEventAggregatesRequest" => %{"members" => %{"aggregateField" => %{"shape" => "eventAggregateField"}, "filter" => %{"shape" => "EventFilter"}, "maxResults" => %{"shape" => "maxResults"}, "nextToken" => %{"shape" => "nextToken"}}, "required" => ["aggregateField"], "type" => "structure"}, "DescribeAffectedEntitiesRequest" => %{"members" => %{"filter" => %{"shape" => "EntityFilter"}, "locale" => %{"shape" => "locale"}, "maxResults" => %{"shape" => "maxResults"}, "nextToken" => %{"shape" => "nextToken"}}, "required" => ["filter"], "type" => "structure"}, "maxResults" => %{"max" => 100, "min" => 10, "type" => "integer"}, "availabilityZone" => %{"pattern" => "[a-z]{2}\\-[0-9a-z\\-]{4,16}", "type" => "string"}, "DescribeEventDetailsResponse" => %{"members" => %{"failedSet" => %{"shape" => "DescribeEventDetailsFailedSet"}, "successfulSet" => %{"shape" => "DescribeEventDetailsSuccessfulSet"}}, "type" => "structure"}, "eventStatusCode" => %{"enum" => ["open", "closed", "upcoming"], "type" => "string"}, "count" => %{"type" => "integer"}, "EventList" => %{"member" => %{"shape" => "Event"}, "type" => "list"}, "EventDetails" => %{"members" => %{"event" => %{"shape" => "Event"}, "eventDescription" => %{"shape" => "EventDescription"}, "eventMetadata" => %{"shape" => "eventMetadata"}}, "type" => "structure"}, "eventTypeCode" => %{"max" => 100, "min" => 3, "type" => "string"}, "DescribeEventDetailsSuccessfulSet" => %{"member" => %{"shape" => "EventDetails"}, "type" => "list"}, "serviceList" => %{"max" => 10, "member" => %{"shape" => "service"}, "min" => 1, "type" => "list"}, "availabilityZones" => %{"member" => %{"shape" => "availabilityZone"}, "type" => "list"}, "metadataValue" => %{"max" => 10240, "type" => "string"}, "EventTypeList" => %{"member" => %{"shape" => "EventType"}, "type" => "list"}, "EntityFilter" => %{"members" => %{"entityArns" => %{"shape" => "entityArnList"}, "entityValues" => %{"shape" => "entityValueList"}, "eventArns" => %{"shape" => "eventArnList"}, "lastUpdatedTimes" => %{"shape" => "dateTimeRangeList"}, "statusCodes" => %{"shape" => "entityStatusCodeList"}, "tags" => %{"shape" => "tagFilter"}}, "required" => ["eventArns"], "type" => "structure"}, "AffectedEntity" => %{"members" => %{"awsAccountId" => %{"shape" => "accountId"}, "entityArn" => %{"shape" => "entityArn"}, "entityValue" => %{"shape" => "entityValue"}, "eventArn" => %{"shape" => "eventArn"}, "lastUpdatedTime" => %{"shape" => "timestamp"}, "statusCode" => %{"shape" => "entityStatusCode"}, "tags" => %{"shape" => "tagSet"}}, "type" => "structure"}, "DescribeEventsResponse" => %{"members" => %{"events" => %{"shape" => "EventList"}, "nextToken" => %{"shape" => "nextToken"}}, "type" => "structure"}, "DescribeEntityAggregatesResponse" => %{"members" => %{"entityAggregates" => %{"shape" => "EntityAggregateList"}}, "type" => "structure"}, "DescribeEventsRequest" => %{"members" => %{"filter" => %{"shape" => "EventFilter"}, "locale" => %{"shape" => "locale"}, "maxResults" => %{"shape" => "maxResults"}, "nextToken" => %{"shape" => "nextToken"}}, "type" => "structure"}, "eventStatusCodeList" => %{"max" => 6, "member" => %{"shape" => "eventStatusCode"}, "min" => 1, "type" => "list"}, "eventDescription" => %{"type" => "string"}, "InvalidPaginationToken" => %{"exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "tagFilter" => %{"max" => 50, "member" => %{"shape" => "tagSet"}, "type" => "list"}, "EventTypeCodeList" => %{"max" => 10, "member" => %{"shape" => "eventTypeCode"}, "min" => 1, "type" => "list"}, "EventDetailsErrorItem" => %{"members" => %{"errorMessage" => %{"shape" => "string"}, "errorName" => %{"shape" => "string"}, "eventArn" => %{"shape" => "eventArn"}}, "type" => "structure"}, "eventMetadata" => %{"key" => %{"shape" => "metadataKey"}, "type" => "map", "value" => %{"shape" => "metadataValue"}}, "DescribeEntityAggregatesRequest" => %{"members" => %{"eventArns" => %{"shape" => "EventArnsList"}}, "type" => "structure"}, "entityArn" => %{"max" => 1600, "type" => "string"}, "string" => %{"type" => "string"}, "entityStatusCodeList" => %{"max" => 3, "member" => %{"shape" => "entityStatusCode"}, "min" => 1, "type" => "list"}, "tagSet" => %{"key" => %{"shape" => "tagKey"}, "max" => 50, "type" => "map", "value" => %{"shape" => "tagValue"}}, "timestamp" => %{"type" => "timestamp"}, "DescribeAffectedEntitiesResponse" => %{"members" => %{"entities" => %{"shape" => "EntityList"}, "nextToken" => %{"shape" => "nextToken"}}, "type" => "structure"}, "DescribeEventDetailsRequest" => %{"members" => %{"eventArns" => %{"shape" => "eventArnList"}, "locale" => %{"shape" => "locale"}}, "required" => ["eventArns"], "type" => "structure"}, "nextToken" => %{"pattern" => "[a-zA-Z0-9=/+_.-]{4,512}", "type" => "string"}, "EventTypeCategoryList" => %{"max" => 10, "member" => %{"shape" => "eventTypeCategory"}, "min" => 1, "type" => "list"}, "EntityAggregateList" => %{"member" => %{"shape" => "EntityAggregate"}, "type" => "list"}, "DateTimeRange" => %{"members" => %{"from" => %{"shape" => "timestamp"}, "to" => %{"shape" => "timestamp"}}, "type" => "structure"}, "region" => %{"pattern" => "[^:/]{2,25}", "type" => "string"}, "EventAggregate" => %{"members" => %{"aggregateValue" => %{"shape" => "aggregateValue"}, "count" => %{"shape" => "count"}}, "type" => "structure"}, "service" => %{"max" => 30, "min" => 2, "type" => "string"}, "dateTimeRangeList" => %{"max" => 10, "member" => %{"shape" => "DateTimeRange"}, "min" => 1, "type" => "list"}, "UnsupportedLocale" => %{"exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "eventArn" => %{"max" => 1600, "pattern" => "arn:aws:health:[^:]*:[^:]*:event/[\\w-]+", "type" => "string"}, "eventTypeCategory" => %{"enum" => ["issue", "accountNotification", "scheduledChange"], "max" => 255, "min" => 3, "type" => "string"}, "aggregateValue" => %{"type" => "string"}, "entityStatusCode" => %{"enum" => ["IMPAIRED", "UNIMPAIRED", "UNKNOWN"], "type" => "string"}, "eventTypeCategoryList" => %{"max" => 10, "member" => %{"shape" => "eventTypeCategory"}, "min" => 1, "type" => "list"}, "locale" => %{"max" => 256, "min" => 2, "type" => "string"}, "entityValueList" => %{"max" => 100, "member" => %{"shape" => "entityValue"}, "min" => 1, "type" => "list"}, "entityArnList" => %{"max" => 100, "member" => %{"shape" => "entityArn"}, "min" => 1, "type" => "list"}, "DescribeEventTypesResponse" => %{"members" => %{"eventTypes" => %{"shape" => "EventTypeList"}, "nextToken" => %{"shape" => "nextToken"}}, "type" => "structure"}, "EntityAggregate" => %{"members" => %{"count" => %{"shape" => "count"}, "eventArn" => %{"shape" => "eventArn"}}, "type" => "structure"}, "entityValue" => %{"max" => 256, "type" => "string"}, "EventType" => %{"members" => %{"category" => %{"shape" => "eventTypeCategory"}, "code" => %{"shape" => "eventTypeCode"}, "service" => %{"shape" => "service"}}, "type" => "structure"}, "eventAggregateField" => %{"enum" => ["eventTypeCategory"], "type" => "string"}, "accountId" => %{"pattern" => "[0-9]{12}", "type" => "string"}, "DescribeEventAggregatesResponse" => %{"members" => %{"eventAggregates" => %{"shape" => "EventAggregateList"}, "nextToken" => %{"shape" => "nextToken"}}, "type" => "structure"}, "metadataKey" => %{"type" => "string"}, "Event" => %{"members" => %{"arn" => %{"shape" => "eventArn"}, "availabilityZone" => %{"shape" => "availabilityZone"}, "endTime" => %{"shape" => "timestamp"}, "eventTypeCategory" => %{"shape" => "eventTypeCategory"}, "eventTypeCode" => %{"shape" => "eventTypeCode"}, "lastUpdatedTime" => %{"shape" => "timestamp"}, "region" => %{"shape" => "region"}, "service" => %{"shape" => "service"}, "startTime" => %{"shape" => "timestamp"}, "statusCode" => %{"shape" => "eventStatusCode"}}, "type" => "structure"}, "tagValue" => %{"max" => 255, "type" => "string"}, "EventArnsList" => %{"max" => 50, "member" => %{"shape" => "eventArn"}, "min" => 1, "type" => "list"}, "EventDescription" => %{"members" => %{"latestDescription" => %{"shape" => "eventDescription"}}, "type" => "structure"}, "EventFilter" => %{"members" => %{"availabilityZones" => %{"shape" => "availabilityZones"}, "endTimes" => %{"shape" => "dateTimeRangeList"}, "entityArns" => %{"shape" => "entityArnList"}, "entityValues" => %{"shape" => "entityValueList"}, "eventArns" => %{"shape" => "eventArnList"}, "eventStatusCodes" => %{"shape" => "eventStatusCodeList"}, "eventTypeCategories" => %{"shape" => "eventTypeCategoryList"}, "eventTypeCodes" => %{"shape" => "eventTypeList"}, "lastUpdatedTimes" => %{"shape" => "dateTimeRangeList"}, "regions" => %{"shape" => "regionList"}, "services" => %{"shape" => "serviceList"}, "startTimes" => %{"shape" => "dateTimeRangeList"}, "tags" => %{"shape" => "tagFilter"}}, "type" => "structure"}, "eventArnList" => %{"max" => 10, "member" => %{"shape" => "eventArn"}, "min" => 1, "type" => "list"}, "DescribeEventDetailsFailedSet" => %{"member" => %{"shape" => "EventDetailsErrorItem"}, "type" => "list"}}
  end
end