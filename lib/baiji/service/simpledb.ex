defmodule Baiji.Simpledb do
  @moduledoc """
  Amazon SimpleDB is a web service providing the core database functions of
  data indexing and querying in the cloud. By offloading the time and effort
  associated with building and operating a web-scale database, SimpleDB
  provides developers the freedom to focus on application development. A
  traditional, clustered relational database requires a sizable upfront
  capital outlay, is complex to design, and often requires extensive and
  repetitive database administration. Amazon SimpleDB is dramatically
  simpler, requiring no schema, automatically indexing your data and
  providing a simple API for storage and access. This approach eliminates the
  administrative burden of data modeling, index maintenance, and performance
  tuning. Developers gain access to this functionality within Amazon's proven
  computing environment, are able to scale instantly, and pay only for what
  they use.

  Visit [http://aws.amazon.com/simpledb/](http://aws.amazon.com/simpledb/)
  for more information.
  """

  @doc """
  Performs multiple DeleteAttributes operations in a single call, which
  reduces round trips and latencies. This enables Amazon SimpleDB to optimize
  requests, which generally yields better throughput.

  <note> If you specify BatchDeleteAttributes without attributes or values,
  all the attributes for the item are deleted.

  BatchDeleteAttributes is an idempotent operation; running it multiple times
  on the same item or attribute doesn't result in an error.

  The BatchDeleteAttributes operation succeeds or fails in its entirety.
  There are no partial deletes. You can execute multiple
  BatchDeleteAttributes operations and other operations in parallel. However,
  large numbers of concurrent BatchDeleteAttributes calls can result in
  Service Unavailable (503) responses.

  This operation is vulnerable to exceeding the maximum URL size when making
  a REST request using the HTTP GET method.

  This operation does not support conditions using Expected.X.Name,
  Expected.X.Value, or Expected.X.Exists.

  </note> The following limitations are enforced for this operation: <ul>
  <li>1 MB request size</li> <li>25 item limit per BatchDeleteAttributes
  operation</li> </ul>
  """
  def batch_delete_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchDeleteAttributes",
      method:           :post,
      input_shape:      "BatchDeleteAttributesRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `BatchPutAttributes` operation creates or replaces attributes within
  one or more items. By using this operation, the client can perform multiple
  `PutAttribute` operation with a single call. This helps yield savings in
  round trips and latencies, enabling Amazon SimpleDB to optimize requests
  and generally produce better throughput.

  The client may specify the item name with the `Item.X.ItemName` parameter.
  The client may specify new attributes using a combination of the
  `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value` parameters. The
  client may specify the first attribute for the first item using the
  parameters `Item.0.Attribute.0.Name` and `Item.0.Attribute.0.Value`, and
  for the second attribute for the first item by the parameters
  `Item.0.Attribute.1.Name` and `Item.0.Attribute.1.Value`, and so on.

  Attributes are uniquely identified within an item by their name/value
  combination. For example, a single item can have the attributes `{
  "first_name", "first_value" }` and `{ "first_name", "second_value" }`.
  However, it cannot have two attribute instances where both the
  `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value` are the same.

  Optionally, the requester can supply the `Replace` parameter for each
  individual value. Setting this value to `true` will cause the new attribute
  values to replace the existing attribute values. For example, if an item
  `I` has the attributes `{ 'a', '1' }, { 'b', '2'}` and `{ 'b', '3' }` and
  the requester does a BatchPutAttributes of `{'I', 'b', '4' }` with the
  Replace parameter set to true, the final attributes of the item will be `{
  'a', '1' }` and `{ 'b', '4' }`, replacing the previous values of the 'b'
  attribute with the new value.

  <note> You cannot specify an empty string as an item or as an attribute
  name. The `BatchPutAttributes` operation succeeds or fails in its entirety.
  There are no partial puts. </note> <important> This operation is vulnerable
  to exceeding the maximum URL size when making a REST request using the HTTP
  GET method. This operation does not support conditions using
  `Expected.X.Name`, `Expected.X.Value`, or `Expected.X.Exists`. </important>
  You can execute multiple `BatchPutAttributes` operations and other
  operations in parallel. However, large numbers of concurrent
  `BatchPutAttributes` calls can result in Service Unavailable (503)
  responses.

  The following limitations are enforced for this operation: <ul> <li>256
  attribute name-value pairs per item</li> <li>1 MB request size</li> <li>1
  billion attributes per domain</li> <li>10 GB of total user data storage per
  domain</li> <li>25 item limit per `BatchPutAttributes` operation</li> </ul>
  """
  def batch_put_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchPutAttributes",
      method:           :post,
      input_shape:      "BatchPutAttributesRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `CreateDomain` operation creates a new domain. The domain name should
  be unique among the domains associated with the Access Key ID provided in
  the request. The `CreateDomain` operation may take 10 or more seconds to
  complete.

  <note> CreateDomain is an idempotent operation; running it multiple times
  using the same domain name will not result in an error response. </note>
  The client can create up to 100 domains per account.

  If the client requires additional domains, go to [
  http://aws.amazon.com/contact-us/simpledb-limit-request/](http://aws.amazon.com/contact-us/simpledb-limit-request/).
  """
  def create_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDomain",
      method:           :post,
      input_shape:      "CreateDomainRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes one or more attributes associated with an item. If all attributes
  of the item are deleted, the item is deleted.

  <note> If `DeleteAttributes` is called without being passed any attributes
  or values specified, all the attributes for the item are deleted. </note>
  `DeleteAttributes` is an idempotent operation; running it multiple times on
  the same item or attribute does not result in an error response.

  Because Amazon SimpleDB makes multiple copies of item data and uses an
  eventual consistency update model, performing a `GetAttributes` or `Select`
  operation (read) immediately after a `DeleteAttributes` or `PutAttributes`
  operation (write) might not return updated item data.
  """
  def delete_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteAttributes",
      method:           :post,
      input_shape:      "DeleteAttributesRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `DeleteDomain` operation deletes a domain. Any items (and their
  attributes) in the domain are deleted as well. The `DeleteDomain` operation
  might take 10 or more seconds to complete.

  <note> Running `DeleteDomain` on a domain that does not exist or running
  the function multiple times using the same domain name will not result in
  an error response. </note>
  """
  def delete_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDomain",
      method:           :post,
      input_shape:      "DeleteDomainRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the domain, including when the domain was
  created, the number of items and attributes in the domain, and the size of
  the attribute names and values.
  """
  def domain_metadata(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DomainMetadata",
      method:           :post,
      input_shape:      "DomainMetadataRequest",
      output_shape:     "DomainMetadataResult",
      output_wrapper:   "DomainMetadataResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns all of the attributes associated with the specified item.
  Optionally, the attributes returned can be limited to one or more
  attributes by specifying an attribute name parameter.

  If the item does not exist on the replica that was accessed for this
  operation, an empty set is returned. The system does not return an error as
  it cannot guarantee the item does not exist on other replicas.

  <note> If GetAttributes is called without being passed any attribute names,
  all the attributes for the item are returned. </note>
  """
  def get_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAttributes",
      method:           :post,
      input_shape:      "GetAttributesRequest",
      output_shape:     "GetAttributesResult",
      output_wrapper:   "GetAttributesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListDomains` operation lists all domains associated with the Access
  Key ID. It returns domain names up to the limit set by
  [MaxNumberOfDomains](#MaxNumberOfDomains). A [NextToken](#NextToken) is
  returned if there are more than `MaxNumberOfDomains` domains. Calling
  `ListDomains` successive times with the `NextToken` provided by the
  operation returns up to `MaxNumberOfDomains` more domain names with each
  successive operation call.
  """
  def list_domains(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDomains",
      method:           :post,
      input_shape:      "ListDomainsRequest",
      output_shape:     "ListDomainsResult",
      output_wrapper:   "ListDomainsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  The PutAttributes operation creates or replaces attributes in an item. The
  client may specify new attributes using a combination of the
  `Attribute.X.Name` and `Attribute.X.Value` parameters. The client specifies
  the first attribute by the parameters `Attribute.0.Name` and
  `Attribute.0.Value`, the second attribute by the parameters
  `Attribute.1.Name` and `Attribute.1.Value`, and so on.

  Attributes are uniquely identified in an item by their name/value
  combination. For example, a single item can have the attributes `{
  "first_name", "first_value" }` and `{ "first_name", second_value" }`.
  However, it cannot have two attribute instances where both the
  `Attribute.X.Name` and `Attribute.X.Value` are the same.

  Optionally, the requestor can supply the `Replace` parameter for each
  individual attribute. Setting this value to `true` causes the new attribute
  value to replace the existing attribute value(s). For example, if an item
  has the attributes `{ 'a', '1' }`, `{ 'b', '2'}` and `{ 'b', '3' }` and the
  requestor calls `PutAttributes` using the attributes `{ 'b', '4' }` with
  the `Replace` parameter set to true, the final attributes of the item are
  changed to `{ 'a', '1' }` and `{ 'b', '4' }`, which replaces the previous
  values of the 'b' attribute with the new value.

  <note> Using `PutAttributes` to replace attribute values that do not exist
  will not result in an error response. </note> You cannot specify an empty
  string as an attribute name.

  Because Amazon SimpleDB makes multiple copies of client data and uses an
  eventual consistency update model, an immediate `GetAttributes` or `Select`
  operation (read) immediately after a `PutAttributes` or `DeleteAttributes`
  operation (write) might not return the updated data.

  The following limitations are enforced for this operation: <ul> <li>256
  total attribute name-value pairs per item</li> <li>One billion attributes
  per domain</li> <li>10 GB of total user data storage per domain</li> </ul>
  """
  def put_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutAttributes",
      method:           :post,
      input_shape:      "PutAttributesRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `Select` operation returns a set of attributes for `ItemNames` that
  match the select expression. `Select` is similar to the standard SQL SELECT
  statement.

  The total size of the response cannot exceed 1 MB in total size. Amazon
  SimpleDB automatically adjusts the number of items returned per page to
  enforce this limit. For example, if the client asks to retrieve 2500 items,
  but each individual item is 10 kB in size, the system returns 100 items and
  an appropriate `NextToken` so the client can access the next page of
  results.

  For information on how to construct select expressions, see Using Select to
  Create Amazon SimpleDB Queries in the Developer Guide.
  """
  def select(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "Select",
      method:           :post,
      input_shape:      "SelectRequest",
      output_shape:     "SelectResult",
      output_wrapper:   "SelectResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "sdb",
      endpoint_prefix:  "sdb",
      type:             :xml,
      version:          "2009-04-15",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"SelectRequest" => %{"members" => %{"ConsistentRead" => %{"shape" => "Boolean"}, "NextToken" => %{"shape" => "String"}, "SelectExpression" => %{"shape" => "String"}}, "required" => ["SelectExpression"], "type" => "structure"}, "DomainNameList" => %{"flattened" => true, "member" => %{"locationName" => "DomainName", "shape" => "String"}, "type" => "list"}, "RequestTimeout" => %{"error" => %{"code" => "RequestTimeout", "httpStatusCode" => 408, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "DomainMetadataResult" => %{"members" => %{"AttributeNameCount" => %{"shape" => "Integer"}, "AttributeNamesSizeBytes" => %{"shape" => "Long"}, "AttributeValueCount" => %{"shape" => "Integer"}, "AttributeValuesSizeBytes" => %{"shape" => "Long"}, "ItemCount" => %{"shape" => "Integer"}, "ItemNamesSizeBytes" => %{"shape" => "Long"}, "Timestamp" => %{"shape" => "Integer"}}, "type" => "structure"}, "ReplaceableItem" => %{"members" => %{"Attributes" => %{"shape" => "ReplaceableAttributeList"}, "Name" => %{"locationName" => "ItemName", "shape" => "String"}}, "required" => ["Name", "Attributes"], "type" => "structure"}, "String" => %{"type" => "string"}, "MissingParameter" => %{"error" => %{"code" => "MissingParameter", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "CreateDomainRequest" => %{"members" => %{"DomainName" => %{"shape" => "String"}}, "required" => ["DomainName"], "type" => "structure"}, "Attribute" => %{"members" => %{"AlternateNameEncoding" => %{"shape" => "String"}, "AlternateValueEncoding" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "required" => ["Name", "Value"], "type" => "structure"}, "Item" => %{"members" => %{"AlternateNameEncoding" => %{"shape" => "String"}, "Attributes" => %{"shape" => "AttributeList"}, "Name" => %{"shape" => "String"}}, "required" => ["Name", "Attributes"], "type" => "structure"}, "ListDomainsRequest" => %{"members" => %{"MaxNumberOfDomains" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "NumberDomainBytesExceeded" => %{"error" => %{"code" => "NumberDomainBytesExceeded", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "DeletableAttributeList" => %{"flattened" => true, "member" => %{"locationName" => "Attribute", "shape" => "DeletableAttribute"}, "type" => "list"}, "DeletableItem" => %{"members" => %{"Attributes" => %{"shape" => "DeletableAttributeList"}, "Name" => %{"locationName" => "ItemName", "shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "InvalidNextToken" => %{"error" => %{"code" => "InvalidNextToken", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "NumberDomainAttributesExceeded" => %{"error" => %{"code" => "NumberDomainAttributesExceeded", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "GetAttributesResult" => %{"members" => %{"Attributes" => %{"shape" => "AttributeList"}}, "type" => "structure"}, "DeletableAttribute" => %{"members" => %{"Name" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "required" => ["Name"], "type" => "structure"}, "Float" => %{"type" => "float"}, "AttributeList" => %{"flattened" => true, "member" => %{"locationName" => "Attribute", "shape" => "Attribute"}, "type" => "list"}, "InvalidNumberValueTests" => %{"error" => %{"code" => "InvalidNumberValueTests", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "ReplaceableItemList" => %{"flattened" => true, "member" => %{"locationName" => "Item", "shape" => "ReplaceableItem"}, "type" => "list"}, "DeleteAttributesRequest" => %{"members" => %{"Attributes" => %{"shape" => "DeletableAttributeList"}, "DomainName" => %{"shape" => "String"}, "Expected" => %{"shape" => "UpdateCondition"}, "ItemName" => %{"shape" => "String"}}, "required" => ["DomainName", "ItemName"], "type" => "structure"}, "ReplaceableAttributeList" => %{"flattened" => true, "member" => %{"locationName" => "Attribute", "shape" => "ReplaceableAttribute"}, "type" => "list"}, "NoSuchDomain" => %{"error" => %{"code" => "NoSuchDomain", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "NumberItemAttributesExceeded" => %{"error" => %{"code" => "NumberItemAttributesExceeded", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "BatchPutAttributesRequest" => %{"members" => %{"DomainName" => %{"shape" => "String"}, "Items" => %{"shape" => "ReplaceableItemList"}}, "required" => ["DomainName", "Items"], "type" => "structure"}, "Long" => %{"type" => "long"}, "BatchDeleteAttributesRequest" => %{"members" => %{"DomainName" => %{"shape" => "String"}, "Items" => %{"shape" => "DeletableItemList"}}, "required" => ["DomainName", "Items"], "type" => "structure"}, "DeleteDomainRequest" => %{"members" => %{"DomainName" => %{"shape" => "String"}}, "required" => ["DomainName"], "type" => "structure"}, "NumberSubmittedAttributesExceeded" => %{"error" => %{"code" => "NumberSubmittedAttributesExceeded", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "DuplicateItemName" => %{"error" => %{"code" => "DuplicateItemName", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "SelectResult" => %{"members" => %{"Items" => %{"shape" => "ItemList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidNumberPredicates" => %{"error" => %{"code" => "InvalidNumberPredicates", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "ItemList" => %{"flattened" => true, "member" => %{"locationName" => "Item", "shape" => "Item"}, "type" => "list"}, "ReplaceableAttribute" => %{"members" => %{"Name" => %{"shape" => "String"}, "Replace" => %{"shape" => "Boolean"}, "Value" => %{"shape" => "String"}}, "required" => ["Name", "Value"], "type" => "structure"}, "PutAttributesRequest" => %{"members" => %{"Attributes" => %{"shape" => "ReplaceableAttributeList"}, "DomainName" => %{"shape" => "String"}, "Expected" => %{"shape" => "UpdateCondition"}, "ItemName" => %{"shape" => "String"}}, "required" => ["DomainName", "ItemName", "Attributes"], "type" => "structure"}, "NumberSubmittedItemsExceeded" => %{"error" => %{"code" => "NumberSubmittedItemsExceeded", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "DeletableItemList" => %{"flattened" => true, "member" => %{"locationName" => "Item", "shape" => "DeletableItem"}, "type" => "list"}, "DomainMetadataRequest" => %{"members" => %{"DomainName" => %{"shape" => "String"}}, "required" => ["DomainName"], "type" => "structure"}, "TooManyRequestedAttributes" => %{"error" => %{"code" => "TooManyRequestedAttributes", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "InvalidParameterValue" => %{"error" => %{"code" => "InvalidParameterValue", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "NumberDomainsExceeded" => %{"error" => %{"code" => "NumberDomainsExceeded", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "GetAttributesRequest" => %{"members" => %{"AttributeNames" => %{"shape" => "AttributeNameList"}, "ConsistentRead" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "String"}, "ItemName" => %{"shape" => "String"}}, "required" => ["DomainName", "ItemName"], "type" => "structure"}, "AttributeNameList" => %{"flattened" => true, "member" => %{"locationName" => "AttributeName", "shape" => "String"}, "type" => "list"}, "ListDomainsResult" => %{"members" => %{"DomainNames" => %{"shape" => "DomainNameList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "AttributeDoesNotExist" => %{"error" => %{"code" => "AttributeDoesNotExist", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "UpdateCondition" => %{"members" => %{"Exists" => %{"shape" => "Boolean"}, "Name" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidQueryExpression" => %{"error" => %{"code" => "InvalidQueryExpression", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"BoxUsage" => %{"shape" => "Float"}}, "type" => "structure"}}
  end
end