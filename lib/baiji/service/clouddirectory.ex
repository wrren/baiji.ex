defmodule Baiji.Clouddirectory do
  @moduledoc """
  Amazon Cloud Directory

  Amazon Cloud Directory is a component of the AWS Directory Service that
  simplifies the development and management of cloud-scale web, mobile, and
  IoT applications. This guide describes the Cloud Directory operations that
  you can call programmatically and includes detailed information on data
  types and errors. For information about AWS Directory Services features,
  see [AWS Directory Service](https://aws.amazon.com/directoryservice/) and
  the [AWS Directory Service Administration
  Guide](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).
  """

  @doc """
  Retrieves attributes attached to the facet.
  """
  def list_facet_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/facet/attributes",
      input:            input,
      options:          options,
      action:           "ListFacetAttributes",
      method:           :post,
      input_shape:      "ListFacetAttributesRequest",
      output_shape:     "ListFacetAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new schema in a development state. A schema can exist in three
  phases:

  <ul> <li> *Development:* This is a mutable phase of the schema. All new
  schemas are in the development phase. Once the schema is finalized, it can
  be published.

  </li> <li> *Published:* Published schemas are immutable and have a version
  associated with them.

  </li> <li> *Applied:* Applied schemas are mutable in a way that allows you
  to add new schema facets. You can also add new, nonrequired attributes to
  existing schema facets. You can apply only published schemas to
  directories.

  </li> </ul>
  """
  def create_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/create",
      input:            input,
      options:          options,
      action:           "CreateSchema",
      method:           :put,
      input_shape:      "CreateSchemaRequest",
      output_shape:     "CreateSchemaResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a paginated list of all attribute definitions for a particular
  `TypedLinkFacet`. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def list_typed_link_facet_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes",
      input:            input,
      options:          options,
      action:           "ListTypedLinkFacetAttributes",
      method:           :post,
      input_shape:      "ListTypedLinkFacetAttributesRequest",
      output_shape:     "ListTypedLinkFacetAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Performs all the read operations in a batch.
  """
  def batch_read(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/batchread",
      input:            input,
      options:          options,
      action:           "BatchRead",
      method:           :post,
      input_shape:      "BatchReadRequest",
      output_shape:     "BatchReadResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns all of the `ObjectIdentifiers` to which a given policy is attached.
  """
  def list_policy_attachments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/policy/attachment",
      input:            input,
      options:          options,
      action:           "ListPolicyAttachments",
      method:           :post,
      input_shape:      "ListPolicyAttachmentsRequest",
      output_shape:     "ListPolicyAttachmentsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  An API operation for adding tags to a resource.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/tags/add",
      input:            input,
      options:          options,
      action:           "TagResource",
      method:           :put,
      input_shape:      "TagResourceRequest",
      output_shape:     "TagResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `TypedLinkFacet`. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def create_typed_link_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/facet/create",
      input:            input,
      options:          options,
      action:           "CreateTypedLinkFacet",
      method:           :put,
      input_shape:      "CreateTypedLinkFacetRequest",
      output_shape:     "CreateTypedLinkFacetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Detaches a given object from the parent object. The object that is to be
  detached from the parent is specified by the link name.
  """
  def detach_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/detach",
      input:            input,
      options:          options,
      action:           "DetachObject",
      method:           :put,
      input_shape:      "DetachObjectRequest",
      output_shape:     "DetachObjectResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Detaches a typed link from a specified source and target object. For more
  information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def detach_typed_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/detach",
      input:            input,
      options:          options,
      action:           "DetachTypedLink",
      method:           :put,
      input_shape:      "DetachTypedLinkRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a paginated list of `TypedLink` facet names for a particular
  schema. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def list_typed_link_facet_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/facet/list",
      input:            input,
      options:          options,
      action:           "ListTypedLinkFacetNames",
      method:           :post,
      input_shape:      "ListTypedLinkFacetNamesRequest",
      output_shape:     "ListTypedLinkFacetNamesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns policies attached to an object in pagination fashion.
  """
  def list_object_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/policy",
      input:            input,
      options:          options,
      action:           "ListObjectPolicies",
      method:           :post,
      input_shape:      "ListObjectPoliciesRequest",
      output_shape:     "ListObjectPoliciesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves metadata about an object.
  """
  def get_object_information(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/information",
      input:            input,
      options:          options,
      action:           "GetObjectInformation",
      method:           :post,
      input_shape:      "GetObjectInformationRequest",
      output_shape:     "GetObjectInformationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the identity attribute order for a specific `TypedLinkFacet`. For
  more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def get_typed_link_facet_information(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/facet/get",
      input:            input,
      options:          options,
      action:           "GetTypedLinkFacetInformation",
      method:           :post,
      input_shape:      "GetTypedLinkFacetInformationRequest",
      output_shape:     "GetTypedLinkFacetInformationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns tags for a resource. Tagging is currently supported only for
  directories with a limit of 50 tags per directory. All 50 tags are returned
  for a given directory with this API call.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/tags",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      method:           :post,
      input_shape:      "ListTagsForResourceRequest",
      output_shape:     "ListTagsForResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Does the following:

  <ol> <li> Adds new `Attributes`, `Rules`, or `ObjectTypes`.

  </li> <li> Updates existing `Attributes`, `Rules`, or `ObjectTypes`.

  </li> <li> Deletes existing `Attributes`, `Rules`, or `ObjectTypes`.

  </li> </ol>
  """
  def update_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/facet",
      input:            input,
      options:          options,
      action:           "UpdateFacet",
      method:           :put,
      input_shape:      "UpdateFacetRequest",
      output_shape:     "UpdateFacetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `Directory` by copying the published schema into the directory. A
  directory cannot be created without a schema.
  """
  def create_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/directory/create",
      input:            input,
      options:          options,
      action:           "CreateDirectory",
      method:           :put,
      input_shape:      "CreateDirectoryRequest",
      output_shape:     "CreateDirectoryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new `Facet` in a schema. Facet creation is allowed only in
  development or applied schemas.
  """
  def create_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/facet/create",
      input:            input,
      options:          options,
      action:           "CreateFacet",
      method:           :put,
      input_shape:      "CreateFacetRequest",
      output_shape:     "CreateFacetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all attributes that are associated with an object.
  """
  def list_object_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/attributes",
      input:            input,
      options:          options,
      action:           "ListObjectAttributes",
      method:           :post,
      input_shape:      "ListObjectAttributesRequest",
      output_shape:     "ListObjectAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the names of facets that exist in a schema.
  """
  def list_facet_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/facet/list",
      input:            input,
      options:          options,
      action:           "ListFacetNames",
      method:           :post,
      input_shape:      "ListFacetNamesRequest",
      output_shape:     "ListFacetNamesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disables the specified directory. Disabled directories cannot be read or
  written to. Only enabled directories can be disabled. Disabled directories
  may be reenabled.
  """
  def disable_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/directory/disable",
      input:            input,
      options:          options,
      action:           "DisableDirectory",
      method:           :put,
      input_shape:      "DisableDirectoryRequest",
      output_shape:     "DisableDirectoryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists parent objects that are associated with a given object in pagination
  fashion.
  """
  def list_object_parents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/parent",
      input:            input,
      options:          options,
      action:           "ListObjectParents",
      method:           :post,
      input_shape:      "ListObjectParentsRequest",
      output_shape:     "ListObjectParentsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a given object's attributes.
  """
  def update_object_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/update",
      input:            input,
      options:          options,
      action:           "UpdateObjectAttributes",
      method:           :put,
      input_shape:      "UpdateObjectAttributesRequest",
      output_shape:     "UpdateObjectAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  An API operation for removing tags from a resource.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/tags/remove",
      input:            input,
      options:          options,
      action:           "UntagResource",
      method:           :put,
      input_shape:      "UntagResourceRequest",
      output_shape:     "UntagResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists schemas applied to a directory.
  """
  def list_applied_schema_arns(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/applied",
      input:            input,
      options:          options,
      action:           "ListAppliedSchemaArns",
      method:           :post,
      input_shape:      "ListAppliedSchemaArnsRequest",
      output_shape:     "ListAppliedSchemaArnsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Copies the input published schema into the `Directory` with the same name
  and version as that of the published schema .
  """
  def apply_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/apply",
      input:            input,
      options:          options,
      action:           "ApplySchema",
      method:           :put,
      input_shape:      "ApplySchemaRequest",
      output_shape:     "ApplySchemaResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a given `Facet`. All attributes and `Rule`s that are associated
  with the facet will be deleted. Only development schema facets are allowed
  deletion.
  """
  def delete_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/facet/delete",
      input:            input,
      options:          options,
      action:           "DeleteFacet",
      method:           :put,
      input_shape:      "DeleteFacetRequest",
      output_shape:     "DeleteFacetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a directory. Only disabled directories can be deleted. A deleted
  directory cannot be undone. Exercise extreme caution when deleting
  directories.
  """
  def delete_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/directory",
      input:            input,
      options:          options,
      action:           "DeleteDirectory",
      method:           :put,
      input_shape:      "DeleteDirectoryRequest",
      output_shape:     "DeleteDirectoryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds a new `Facet` to an object.
  """
  def add_facet_to_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/facets",
      input:            input,
      options:          options,
      action:           "AddFacetToObject",
      method:           :put,
      input_shape:      "AddFacetToObjectRequest",
      output_shape:     "AddFacetToObjectResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists objects attached to the specified index.
  """
  def list_index(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/index/targets",
      input:            input,
      options:          options,
      action:           "ListIndex",
      method:           :post,
      input_shape:      "ListIndexRequest",
      output_shape:     "ListIndexResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an index object. See
  [Indexing](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html)
  for more information.
  """
  def create_index(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/index",
      input:            input,
      options:          options,
      action:           "CreateIndex",
      method:           :put,
      input_shape:      "CreateIndexRequest",
      output_shape:     "CreateIndexResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Detaches the specified object from the specified index.
  """
  def detach_from_index(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/index/detach",
      input:            input,
      options:          options,
      action:           "DetachFromIndex",
      method:           :put,
      input_shape:      "DetachFromIndexRequest",
      output_shape:     "DetachFromIndexResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Enables the specified directory. Only disabled directories can be enabled.
  Once enabled, the directory can then be read and written to.
  """
  def enable_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/directory/enable",
      input:            input,
      options:          options,
      action:           "EnableDirectory",
      method:           :put,
      input_shape:      "EnableDirectoryRequest",
      output_shape:     "EnableDirectoryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified facet from the specified object.
  """
  def remove_facet_from_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/facets/delete",
      input:            input,
      options:          options,
      action:           "RemoveFacetFromObject",
      method:           :put,
      input_shape:      "RemoveFacetFromObjectRequest",
      output_shape:     "RemoveFacetFromObjectResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Publishes a development schema with a version. If description and
  attributes are specified, `PublishSchema` overrides the development schema
  description and attributes. If not, the development schema description and
  attributes are used.
  """
  def publish_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/publish",
      input:            input,
      options:          options,
      action:           "PublishSchema",
      method:           :put,
      input_shape:      "PublishSchemaRequest",
      output_shape:     "PublishSchemaResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets details of the `Facet`, such as facet name, attributes, `Rule`s, or
  `ObjectType`. You can call this on all kinds of schema facets -- published,
  development, or applied.
  """
  def get_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/facet",
      input:            input,
      options:          options,
      action:           "GetFacet",
      method:           :post,
      input_shape:      "GetFacetRequest",
      output_shape:     "GetFacetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an object and its associated attributes. Only objects with no
  children and no parents can be deleted.
  """
  def delete_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/delete",
      input:            input,
      options:          options,
      action:           "DeleteObject",
      method:           :put,
      input_shape:      "DeleteObjectRequest",
      output_shape:     "DeleteObjectResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists indices attached to an object.
  """
  def list_attached_indices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/indices",
      input:            input,
      options:          options,
      action:           "ListAttachedIndices",
      method:           :post,
      input_shape:      "ListAttachedIndicesRequest",
      output_shape:     "ListAttachedIndicesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches an existing object to another object. An object can be accessed in
  two ways:

  <ol> <li> Using the path

  </li> <li> Using `ObjectIdentifier`

  </li> </ol>
  """
  def attach_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/attach",
      input:            input,
      options:          options,
      action:           "AttachObject",
      method:           :put,
      input_shape:      "AttachObjectRequest",
      output_shape:     "AttachObjectResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a `TypedLinkFacet`. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def update_typed_link_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/facet",
      input:            input,
      options:          options,
      action:           "UpdateTypedLinkFacet",
      method:           :put,
      input_shape:      "UpdateTypedLinkFacetRequest",
      output_shape:     "UpdateTypedLinkFacetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the schema name with a new name. Only development schema names can
  be updated.
  """
  def update_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/update",
      input:            input,
      options:          options,
      action:           "UpdateSchema",
      method:           :put,
      input_shape:      "UpdateSchemaRequest",
      output_shape:     "UpdateSchemaResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Detaches a policy from an object.
  """
  def detach_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/policy/detach",
      input:            input,
      options:          options,
      action:           "DetachPolicy",
      method:           :put,
      input_shape:      "DetachPolicyRequest",
      output_shape:     "DetachPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves all available parent paths for any object type such as node, leaf
  node, policy node, and index node objects. For more information about
  objects, see [Directory
  Structure](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#dirstructure).

  Use this API to evaluate all parents for an object. The call returns all
  objects from the root of the directory up to the requested object. The API
  returns the number of paths based on user-defined `MaxResults`, in case
  there are multiple paths to the parent. The order of the paths and nodes
  returned is consistent among multiple API calls unless the objects are
  deleted or moved. Paths not leading to the directory root are ignored from
  the target object.
  """
  def list_object_parent_paths(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/parentpaths",
      input:            input,
      options:          options,
      action:           "ListObjectParentPaths",
      method:           :post,
      input_shape:      "ListObjectParentPathsRequest",
      output_shape:     "ListObjectParentPathsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a JSON representation of the schema. See [JSON Schema
  Format](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat)
  for more information.
  """
  def get_schema_as_json(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/json",
      input:            input,
      options:          options,
      action:           "GetSchemaAsJson",
      method:           :post,
      input_shape:      "GetSchemaAsJsonRequest",
      output_shape:     "GetSchemaAsJsonResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a paginated list of all the incoming `TypedLinkSpecifier`
  information for an object. It also supports filtering by typed link facet
  and identity attributes. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def list_incoming_typed_links(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/incoming",
      input:            input,
      options:          options,
      action:           "ListIncomingTypedLinks",
      method:           :post,
      input_shape:      "ListIncomingTypedLinksRequest",
      output_shape:     "ListIncomingTypedLinksResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an object in a `Directory`. Additionally attaches the object to a
  parent, if a parent reference and `LinkName` is specified. An object is
  simply a collection of `Facet` attributes. You can also use this API call
  to create a policy object, if the facet from which you create the object is
  a policy facet.
  """
  def create_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object",
      input:            input,
      options:          options,
      action:           "CreateObject",
      method:           :put,
      input_shape:      "CreateObjectRequest",
      output_shape:     "CreateObjectResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves metadata about a directory.
  """
  def get_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/directory/get",
      input:            input,
      options:          options,
      action:           "GetDirectory",
      method:           :post,
      input_shape:      "GetDirectoryRequest",
      output_shape:     "GetDirectoryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a given schema. Schemas in a development and published state can
  only be deleted.
  """
  def delete_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema",
      input:            input,
      options:          options,
      action:           "DeleteSchema",
      method:           :put,
      input_shape:      "DeleteSchemaRequest",
      output_shape:     "DeleteSchemaResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches the specified object to the specified index.
  """
  def attach_to_index(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/index/attach",
      input:            input,
      options:          options,
      action:           "AttachToIndex",
      method:           :put,
      input_shape:      "AttachToIndexRequest",
      output_shape:     "AttachToIndexResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches a policy object to a regular object. An object can have a limited
  number of attached policies.
  """
  def attach_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/policy/attach",
      input:            input,
      options:          options,
      action:           "AttachPolicy",
      method:           :put,
      input_shape:      "AttachPolicyRequest",
      output_shape:     "AttachPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches a typed link to a specified source and target object. For more
  information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def attach_typed_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/attach",
      input:            input,
      options:          options,
      action:           "AttachTypedLink",
      method:           :put,
      input_shape:      "AttachTypedLinkRequest",
      output_shape:     "AttachTypedLinkResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Performs all the write operations in a batch. Either all the operations
  succeed or none. Batch writes supports only object-related operations.
  """
  def batch_write(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/batchwrite",
      input:            input,
      options:          options,
      action:           "BatchWrite",
      method:           :put,
      input_shape:      "BatchWriteRequest",
      output_shape:     "BatchWriteResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves each Amazon Resource Name (ARN) of schemas in the development
  state.
  """
  def list_development_schema_arns(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/development",
      input:            input,
      options:          options,
      action:           "ListDevelopmentSchemaArns",
      method:           :post,
      input_shape:      "ListDevelopmentSchemaArnsRequest",
      output_shape:     "ListDevelopmentSchemaArnsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a paginated list of child objects that are associated with a given
  object.
  """
  def list_object_children(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/object/children",
      input:            input,
      options:          options,
      action:           "ListObjectChildren",
      method:           :post,
      input_shape:      "ListObjectChildrenRequest",
      output_shape:     "ListObjectChildrenResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists directories created within an account.
  """
  def list_directories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/directory/list",
      input:            input,
      options:          options,
      action:           "ListDirectories",
      method:           :post,
      input_shape:      "ListDirectoriesRequest",
      output_shape:     "ListDirectoriesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allows a schema to be updated using JSON upload. Only available for
  development schemas. See [JSON Schema
  Format](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat)
  for more information.
  """
  def put_schema_from_json(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/json",
      input:            input,
      options:          options,
      action:           "PutSchemaFromJson",
      method:           :put,
      input_shape:      "PutSchemaFromJsonRequest",
      output_shape:     "PutSchemaFromJsonResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a `TypedLinkFacet`. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def delete_typed_link_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/facet/delete",
      input:            input,
      options:          options,
      action:           "DeleteTypedLinkFacet",
      method:           :put,
      input_shape:      "DeleteTypedLinkFacetRequest",
      output_shape:     "DeleteTypedLinkFacetResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves each published schema Amazon Resource Name (ARN).
  """
  def list_published_schema_arns(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/schema/published",
      input:            input,
      options:          options,
      action:           "ListPublishedSchemaArns",
      method:           :post,
      input_shape:      "ListPublishedSchemaArnsRequest",
      output_shape:     "ListPublishedSchemaArnsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a paginated list of all the outgoing `TypedLinkSpecifier`
  information for an object. It also supports filtering by typed link facet
  and identity attributes. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def list_outgoing_typed_links(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/typedlink/outgoing",
      input:            input,
      options:          options,
      action:           "ListOutgoingTypedLinks",
      method:           :post,
      input_shape:      "ListOutgoingTypedLinksRequest",
      output_shape:     "ListOutgoingTypedLinksResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all policies from the root of the `Directory` to the object
  specified. If there are no policies present, an empty list is returned. If
  policies are present, and if some objects don't have the policies attached,
  it returns the `ObjectIdentifier` for such objects. If policies are
  present, it returns `ObjectIdentifier`, `policyId`, and `policyType`. Paths
  that don't lead to the root from the target object are ignored. For more
  information, see
  [Policies](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies).
  """
  def lookup_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/amazonclouddirectory/2017-01-11/policy/lookup",
      input:            input,
      options:          options,
      action:           "LookupPolicy",
      method:           :post,
      input_shape:      "LookupPolicyRequest",
      output_shape:     "LookupPolicyResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "clouddirectory",
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"BatchWriteOperationResponse" => %{"members" => %{"AddFacetToObject" => %{"shape" => "BatchAddFacetToObjectResponse"}, "AttachObject" => %{"shape" => "BatchAttachObjectResponse"}, "AttachPolicy" => %{"shape" => "BatchAttachPolicyResponse"}, "AttachToIndex" => %{"shape" => "BatchAttachToIndexResponse"}, "AttachTypedLink" => %{"shape" => "BatchAttachTypedLinkResponse"}, "CreateIndex" => %{"shape" => "BatchCreateIndexResponse"}, "CreateObject" => %{"shape" => "BatchCreateObjectResponse"}, "DeleteObject" => %{"shape" => "BatchDeleteObjectResponse"}, "DetachFromIndex" => %{"shape" => "BatchDetachFromIndexResponse"}, "DetachObject" => %{"shape" => "BatchDetachObjectResponse"}, "DetachPolicy" => %{"shape" => "BatchDetachPolicyResponse"}, "DetachTypedLink" => %{"shape" => "BatchDetachTypedLinkResponse"}, "RemoveFacetFromObject" => %{"shape" => "BatchRemoveFacetFromObjectResponse"}, "UpdateObjectAttributes" => %{"shape" => "BatchUpdateObjectAttributesResponse"}}, "type" => "structure"}, "DeleteDirectoryResponse" => %{"members" => %{"DirectoryArn" => %{"shape" => "Arn"}}, "required" => ["DirectoryArn"], "type" => "structure"}, "CreateDirectoryRequest" => %{"members" => %{"Name" => %{"shape" => "DirectoryName"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["Name", "SchemaArn"], "type" => "structure"}, "BatchCreateIndexResponse" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "ListTagsForResourceResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "DeleteTypedLinkFacetRequest" => %{"members" => %{"Name" => %{"shape" => "TypedLinkName"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name"], "type" => "structure"}, "PolicyAttachment" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}, "PolicyId" => %{"shape" => "ObjectIdentifier"}, "PolicyType" => %{"shape" => "PolicyType"}}, "type" => "structure"}, "BatchListIncomingTypedLinks" => %{"members" => %{"FilterAttributeRanges" => %{"shape" => "TypedLinkAttributeRangeList"}, "FilterTypedLink" => %{"shape" => "TypedLinkSchemaAndFacetName"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "BatchAddFacetToObject" => %{"members" => %{"ObjectAttributeList" => %{"shape" => "AttributeKeyAndValueList"}, "ObjectReference" => %{"shape" => "ObjectReference"}, "SchemaFacet" => %{"shape" => "SchemaFacet"}}, "required" => ["SchemaFacet", "ObjectAttributeList", "ObjectReference"], "type" => "structure"}, "FacetValidationException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "DeleteSchemaResponse" => %{"members" => %{"SchemaArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "TypedLinkAttributeDefinition" => %{"members" => %{"DefaultValue" => %{"shape" => "TypedAttributeValue"}, "IsImmutable" => %{"shape" => "Bool"}, "Name" => %{"shape" => "AttributeName"}, "RequiredBehavior" => %{"shape" => "RequiredAttributeBehavior"}, "Rules" => %{"shape" => "RuleMap"}, "Type" => %{"shape" => "FacetAttributeType"}}, "required" => ["Name", "Type", "RequiredBehavior"], "type" => "structure"}, "DeleteTypedLinkFacetResponse" => %{"members" => %{}, "type" => "structure"}, "BatchDetachFromIndex" => %{"members" => %{"IndexReference" => %{"shape" => "ObjectReference"}, "TargetReference" => %{"shape" => "ObjectReference"}}, "required" => ["IndexReference", "TargetReference"], "type" => "structure"}, "BatchAttachPolicy" => %{"members" => %{"ObjectReference" => %{"shape" => "ObjectReference"}, "PolicyReference" => %{"shape" => "ObjectReference"}}, "required" => ["PolicyReference", "ObjectReference"], "type" => "structure"}, "TagKeyList" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "RuleParameterKey" => %{"type" => "string"}, "FacetAttributeDefinition" => %{"members" => %{"DefaultValue" => %{"shape" => "TypedAttributeValue"}, "IsImmutable" => %{"shape" => "Bool"}, "Rules" => %{"shape" => "RuleMap"}, "Type" => %{"shape" => "FacetAttributeType"}}, "required" => ["Type"], "type" => "structure"}, "BatchListIndex" => %{"members" => %{"IndexReference" => %{"shape" => "ObjectReference"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "RangesOnIndexedValues" => %{"shape" => "ObjectAttributeRangeList"}}, "required" => ["IndexReference"], "type" => "structure"}, "BatchListObjectPoliciesResponse" => %{"members" => %{"AttachedPolicyIds" => %{"shape" => "ObjectIdentifierList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "FacetAttributeUpdateList" => %{"member" => %{"shape" => "FacetAttributeUpdate"}, "type" => "list"}, "ObjectReference" => %{"members" => %{"Selector" => %{"shape" => "SelectorObjectReference"}}, "type" => "structure"}, "SchemaJsonDocument" => %{"type" => "string"}, "SelectorObjectReference" => %{"type" => "string"}, "CreateSchemaResponse" => %{"members" => %{"SchemaArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "TypedLinkSpecifierList" => %{"member" => %{"shape" => "TypedLinkSpecifier"}, "type" => "list"}, "AttributeKeyAndValue" => %{"members" => %{"Key" => %{"shape" => "AttributeKey"}, "Value" => %{"shape" => "TypedAttributeValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "AttachToIndexRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "IndexReference" => %{"shape" => "ObjectReference"}, "TargetReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "IndexReference", "TargetReference"], "type" => "structure"}, "TagsNumberResults" => %{"min" => 50, "type" => "integer"}, "DirectoryState" => %{"enum" => ["ENABLED", "DISABLED", "DELETED"], "type" => "string"}, "AttributeNameAndValue" => %{"members" => %{"AttributeName" => %{"shape" => "AttributeName"}, "Value" => %{"shape" => "TypedAttributeValue"}}, "required" => ["AttributeName", "Value"], "type" => "structure"}, "BatchReadOperationResponse" => %{"members" => %{"ExceptionResponse" => %{"shape" => "BatchReadException"}, "SuccessfulResponse" => %{"shape" => "BatchReadSuccessfulResponse"}}, "type" => "structure"}, "StringAttributeValue" => %{"type" => "string"}, "UpdateFacetResponse" => %{"members" => %{}, "type" => "structure"}, "ListIncomingTypedLinksRequest" => %{"members" => %{"ConsistencyLevel" => %{"shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "FilterAttributeRanges" => %{"shape" => "TypedLinkAttributeRangeList"}, "FilterTypedLink" => %{"shape" => "TypedLinkSchemaAndFacetName"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "BatchGetObjectInformation" => %{"members" => %{"ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "ObjectAlreadyDetachedException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "PathString" => %{"type" => "string"}, "CreateTypedLinkFacetResponse" => %{"members" => %{}, "type" => "structure"}, "BatchDetachTypedLinkResponse" => %{"members" => %{}, "type" => "structure"}, "AttributeName" => %{"max" => 64, "min" => 1, "pattern" => "^[a-zA-Z0-9._-]*$", "type" => "string"}, "UnsupportedIndexTypeException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "TypedAttributeValueRange" => %{"members" => %{"EndMode" => %{"shape" => "RangeMode"}, "EndValue" => %{"shape" => "TypedAttributeValue"}, "StartMode" => %{"shape" => "RangeMode"}, "StartValue" => %{"shape" => "TypedAttributeValue"}}, "required" => ["StartMode", "EndMode"], "type" => "structure"}, "RuleParameterValue" => %{"type" => "string"}, "BatchWriteOperationList" => %{"member" => %{"shape" => "BatchWriteOperation"}, "type" => "list"}, "ListIndexResponse" => %{"members" => %{"IndexAttachments" => %{"shape" => "IndexAttachmentList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "BatchListOutgoingTypedLinks" => %{"members" => %{"FilterAttributeRanges" => %{"shape" => "TypedLinkAttributeRangeList"}, "FilterTypedLink" => %{"shape" => "TypedLinkSchemaAndFacetName"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "AccessDeniedException" => %{"error" => %{"httpStatusCode" => 403}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "InvalidSchemaDocException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "UpdateFacetRequest" => %{"members" => %{"AttributeUpdates" => %{"shape" => "FacetAttributeUpdateList"}, "Name" => %{"shape" => "FacetName"}, "ObjectType" => %{"shape" => "ObjectType"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name"], "type" => "structure"}, "BatchListObjectAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "AttributeKeyAndValueList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "BatchListAttachedIndicesResponse" => %{"members" => %{"IndexAttachments" => %{"shape" => "IndexAttachmentList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ListPolicyAttachmentsRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "PolicyReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "PolicyReference"], "type" => "structure"}, "BatchAttachObject" => %{"members" => %{"ChildReference" => %{"shape" => "ObjectReference"}, "LinkName" => %{"shape" => "LinkName"}, "ParentReference" => %{"shape" => "ObjectReference"}}, "required" => ["ParentReference", "ChildReference", "LinkName"], "type" => "structure"}, "InvalidNextTokenException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchReadExceptionType" => %{"enum" => ["ValidationException", "InvalidArnException", "ResourceNotFoundException", "InvalidNextTokenException", "AccessDeniedException", "NotNodeException", "FacetValidationException", "CannotListParentOfRootException", "NotIndexException", "NotPolicyException", "DirectoryNotEnabledException", "LimitExceededException", "InternalServiceException"], "type" => "string"}, "BatchRemoveFacetFromObject" => %{"members" => %{"ObjectReference" => %{"shape" => "ObjectReference"}, "SchemaFacet" => %{"shape" => "SchemaFacet"}}, "required" => ["SchemaFacet", "ObjectReference"], "type" => "structure"}, "UpdateObjectAttributesResponse" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "UpdateTypedLinkFacetResponse" => %{"members" => %{}, "type" => "structure"}, "AddFacetToObjectRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "ObjectAttributeList" => %{"shape" => "AttributeKeyAndValueList"}, "ObjectReference" => %{"shape" => "ObjectReference"}, "SchemaFacet" => %{"shape" => "SchemaFacet"}}, "required" => ["DirectoryArn", "SchemaFacet", "ObjectReference"], "type" => "structure"}, "LookupPolicyResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "PolicyToPathList" => %{"shape" => "PolicyToPathList"}}, "type" => "structure"}, "AttachObjectRequest" => %{"members" => %{"ChildReference" => %{"shape" => "ObjectReference"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "LinkName" => %{"shape" => "LinkName"}, "ParentReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ParentReference", "ChildReference", "LinkName"], "type" => "structure"}, "ListDevelopmentSchemaArnsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "SchemaArns" => %{"shape" => "Arns"}}, "type" => "structure"}, "DetachObjectResponse" => %{"members" => %{"DetachedObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "GetTypedLinkFacetInformationResponse" => %{"members" => %{"IdentityAttributeOrder" => %{"shape" => "AttributeNameList"}}, "type" => "structure"}, "ListObjectPoliciesRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "AttachTypedLinkRequest" => %{"members" => %{"Attributes" => %{"shape" => "AttributeNameAndValueList"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "SourceObjectReference" => %{"shape" => "ObjectReference"}, "TargetObjectReference" => %{"shape" => "ObjectReference"}, "TypedLinkFacet" => %{"shape" => "TypedLinkSchemaAndFacetName"}}, "required" => ["DirectoryArn", "SourceObjectReference", "TargetObjectReference", "TypedLinkFacet", "Attributes"], "type" => "structure"}, "DeleteSchemaRequest" => %{"members" => %{"SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn"], "type" => "structure"}, "BatchReadOperationList" => %{"member" => %{"shape" => "BatchReadOperation"}, "type" => "list"}, "ListAppliedSchemaArnsRequest" => %{"members" => %{"DirectoryArn" => %{"shape" => "Arn"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["DirectoryArn"], "type" => "structure"}, "DeleteFacetRequest" => %{"members" => %{"Name" => %{"shape" => "FacetName"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name"], "type" => "structure"}, "AttributeNameAndValueList" => %{"member" => %{"shape" => "AttributeNameAndValue"}, "type" => "list"}, "BatchWriteOperation" => %{"members" => %{"AddFacetToObject" => %{"shape" => "BatchAddFacetToObject"}, "AttachObject" => %{"shape" => "BatchAttachObject"}, "AttachPolicy" => %{"shape" => "BatchAttachPolicy"}, "AttachToIndex" => %{"shape" => "BatchAttachToIndex"}, "AttachTypedLink" => %{"shape" => "BatchAttachTypedLink"}, "CreateIndex" => %{"shape" => "BatchCreateIndex"}, "CreateObject" => %{"shape" => "BatchCreateObject"}, "DeleteObject" => %{"shape" => "BatchDeleteObject"}, "DetachFromIndex" => %{"shape" => "BatchDetachFromIndex"}, "DetachObject" => %{"shape" => "BatchDetachObject"}, "DetachPolicy" => %{"shape" => "BatchDetachPolicy"}, "DetachTypedLink" => %{"shape" => "BatchDetachTypedLink"}, "RemoveFacetFromObject" => %{"shape" => "BatchRemoveFacetFromObject"}, "UpdateObjectAttributes" => %{"shape" => "BatchUpdateObjectAttributes"}}, "type" => "structure"}, "RetryableConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ConsistencyLevel" => %{"enum" => ["SERIALIZABLE", "EVENTUAL"], "type" => "string"}, "RuleKey" => %{"max" => 64, "min" => 1, "pattern" => "^[a-zA-Z0-9._-]*$", "type" => "string"}, "DirectoryNotEnabledException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ListTagsForResourceRequest" => %{"members" => %{"MaxResults" => %{"shape" => "TagsNumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ResourceArn" => %{"shape" => "Arn"}}, "required" => ["ResourceArn"], "type" => "structure"}, "ListObjectAttributesRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "FacetFilter" => %{"shape" => "SchemaFacet"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "BatchRemoveFacetFromObjectResponse" => %{"members" => %{}, "type" => "structure"}, "IndexedAttributeMissingException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "FacetAlreadyExistsException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchWriteExceptionType" => %{"enum" => ["InternalServiceException", "ValidationException", "InvalidArnException", "LinkNameAlreadyInUseException", "StillContainsLinksException", "FacetValidationException", "ObjectNotDetachedException", "ResourceNotFoundException", "AccessDeniedException", "InvalidAttachmentException", "NotIndexException", "IndexedAttributeMissingException", "ObjectAlreadyDetachedException", "NotPolicyException", "DirectoryNotEnabledException", "LimitExceededException", "UnsupportedIndexTypeException"], "type" => "string"}, "BatchDetachTypedLink" => %{"members" => %{"TypedLinkSpecifier" => %{"shape" => "TypedLinkSpecifier"}}, "required" => ["TypedLinkSpecifier"], "type" => "structure"}, "AttributeKeyList" => %{"member" => %{"shape" => "AttributeKey"}, "type" => "list"}, "InvalidRuleException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BinaryAttributeValue" => %{"type" => "blob"}, "DirectoryAlreadyExistsException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "CreateFacetResponse" => %{"members" => %{}, "type" => "structure"}, "GetObjectInformationRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "BatchReadOperationResponseList" => %{"member" => %{"shape" => "BatchReadOperationResponse"}, "type" => "list"}, "ObjectAttributeRange" => %{"members" => %{"AttributeKey" => %{"shape" => "AttributeKey"}, "Range" => %{"shape" => "TypedAttributeValueRange"}}, "type" => "structure"}, "BatchReadSuccessfulResponse" => %{"members" => %{"GetObjectInformation" => %{"shape" => "BatchGetObjectInformationResponse"}, "ListAttachedIndices" => %{"shape" => "BatchListAttachedIndicesResponse"}, "ListIncomingTypedLinks" => %{"shape" => "BatchListIncomingTypedLinksResponse"}, "ListIndex" => %{"shape" => "BatchListIndexResponse"}, "ListObjectAttributes" => %{"shape" => "BatchListObjectAttributesResponse"}, "ListObjectChildren" => %{"shape" => "BatchListObjectChildrenResponse"}, "ListObjectParentPaths" => %{"shape" => "BatchListObjectParentPathsResponse"}, "ListObjectPolicies" => %{"shape" => "BatchListObjectPoliciesResponse"}, "ListOutgoingTypedLinks" => %{"shape" => "BatchListOutgoingTypedLinksResponse"}, "ListPolicyAttachments" => %{"shape" => "BatchListPolicyAttachmentsResponse"}, "LookupPolicy" => %{"shape" => "BatchLookupPolicyResponse"}}, "type" => "structure"}, "DirectoryDeletedException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ListIndexRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "IndexReference" => %{"shape" => "ObjectReference"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "RangesOnIndexedValues" => %{"shape" => "ObjectAttributeRangeList"}}, "required" => ["DirectoryArn", "IndexReference"], "type" => "structure"}, "GetSchemaAsJsonRequest" => %{"members" => %{"SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn"], "type" => "structure"}, "ObjectIdentifier" => %{"type" => "string"}, "BatchListObjectAttributes" => %{"members" => %{"FacetFilter" => %{"shape" => "SchemaFacet"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "ListOutgoingTypedLinksRequest" => %{"members" => %{"ConsistencyLevel" => %{"shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "FilterAttributeRanges" => %{"shape" => "TypedLinkAttributeRangeList"}, "FilterTypedLink" => %{"shape" => "TypedLinkSchemaAndFacetName"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "TypedLinkNameList" => %{"member" => %{"shape" => "TypedLinkName"}, "type" => "list"}, "PathToObjectIdentifiers" => %{"members" => %{"ObjectIdentifiers" => %{"shape" => "ObjectIdentifierList"}, "Path" => %{"shape" => "PathString"}}, "type" => "structure"}, "Bool" => %{"type" => "boolean"}, "LinkNameAlreadyInUseException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchListObjectChildrenResponse" => %{"members" => %{"Children" => %{"shape" => "LinkNameToObjectIdentifierMap"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "InvalidFacetUpdateException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "TypedLinkFacet" => %{"members" => %{"Attributes" => %{"shape" => "TypedLinkAttributeDefinitionList"}, "IdentityAttributeOrder" => %{"shape" => "AttributeNameList"}, "Name" => %{"shape" => "TypedLinkName"}}, "required" => ["Name", "Attributes", "IdentityAttributeOrder"], "type" => "structure"}, "BatchOperationIndex" => %{"type" => "integer"}, "Version" => %{"max" => 10, "min" => 1, "pattern" => "^[a-zA-Z0-9._-]*$", "type" => "string"}, "PutSchemaFromJsonRequest" => %{"members" => %{"Document" => %{"shape" => "SchemaJsonDocument"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Document"], "type" => "structure"}, "BatchDeleteObjectResponse" => %{"members" => %{}, "type" => "structure"}, "BatchAttachTypedLink" => %{"members" => %{"Attributes" => %{"shape" => "AttributeNameAndValueList"}, "SourceObjectReference" => %{"shape" => "ObjectReference"}, "TargetObjectReference" => %{"shape" => "ObjectReference"}, "TypedLinkFacet" => %{"shape" => "TypedLinkSchemaAndFacetName"}}, "required" => ["SourceObjectReference", "TargetObjectReference", "TypedLinkFacet", "Attributes"], "type" => "structure"}, "Directory" => %{"members" => %{"CreationDateTime" => %{"shape" => "Date"}, "DirectoryArn" => %{"shape" => "DirectoryArn"}, "Name" => %{"shape" => "DirectoryName"}, "State" => %{"shape" => "DirectoryState"}}, "type" => "structure"}, "ListObjectParentPathsRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "Date" => %{"type" => "timestamp"}, "GetFacetRequest" => %{"members" => %{"Name" => %{"shape" => "FacetName"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name"], "type" => "structure"}, "FacetNotFoundException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ObjectAttributeAction" => %{"members" => %{"ObjectAttributeActionType" => %{"shape" => "UpdateActionType"}, "ObjectAttributeUpdateValue" => %{"shape" => "TypedAttributeValue"}}, "type" => "structure"}, "BatchListPolicyAttachments" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "PolicyReference" => %{"shape" => "ObjectReference"}}, "required" => ["PolicyReference"], "type" => "structure"}, "UntagResourceRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "Arn"}, "TagKeys" => %{"shape" => "TagKeyList"}}, "required" => ["ResourceArn", "TagKeys"], "type" => "structure"}, "ListAttachedIndicesRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "TargetReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "TargetReference"], "type" => "structure"}, "BatchDetachPolicy" => %{"members" => %{"ObjectReference" => %{"shape" => "ObjectReference"}, "PolicyReference" => %{"shape" => "ObjectReference"}}, "required" => ["PolicyReference", "ObjectReference"], "type" => "structure"}, "ListFacetNamesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn"], "type" => "structure"}, "LinkName" => %{"max" => 64, "min" => 1, "pattern" => "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+", "type" => "string"}, "FacetAttribute" => %{"members" => %{"AttributeDefinition" => %{"shape" => "FacetAttributeDefinition"}, "AttributeReference" => %{"shape" => "FacetAttributeReference"}, "Name" => %{"shape" => "AttributeName"}, "RequiredBehavior" => %{"shape" => "RequiredAttributeBehavior"}}, "required" => ["Name"], "type" => "structure"}, "ListIncomingTypedLinksResponse" => %{"members" => %{"LinkSpecifiers" => %{"shape" => "TypedLinkSpecifierList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "CreateSchemaRequest" => %{"members" => %{"Name" => %{"shape" => "SchemaName"}}, "required" => ["Name"], "type" => "structure"}, "ListObjectPoliciesResponse" => %{"members" => %{"AttachedPolicyIds" => %{"shape" => "ObjectIdentifierList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "type" => "structure"}, "NotNodeException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "DirectoryArn" => %{"type" => "string"}, "BatchUpdateObjectAttributes" => %{"members" => %{"AttributeUpdates" => %{"shape" => "ObjectAttributeUpdateList"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference", "AttributeUpdates"], "type" => "structure"}, "AttachTypedLinkResponse" => %{"members" => %{"TypedLinkSpecifier" => %{"shape" => "TypedLinkSpecifier"}}, "type" => "structure"}, "UpdateTypedLinkFacetRequest" => %{"members" => %{"AttributeUpdates" => %{"shape" => "TypedLinkFacetAttributeUpdateList"}, "IdentityAttributeOrder" => %{"shape" => "AttributeNameList"}, "Name" => %{"shape" => "TypedLinkName"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name", "AttributeUpdates", "IdentityAttributeOrder"], "type" => "structure"}, "ObjectAttributeUpdateList" => %{"member" => %{"shape" => "ObjectAttributeUpdate"}, "type" => "list"}, "LookupPolicyRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "ObjectAttributeUpdate" => %{"members" => %{"ObjectAttributeAction" => %{"shape" => "ObjectAttributeAction"}, "ObjectAttributeKey" => %{"shape" => "AttributeKey"}}, "type" => "structure"}, "CreateIndexResponse" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "Arns" => %{"member" => %{"shape" => "Arn"}, "type" => "list"}, "ObjectIdentifierList" => %{"member" => %{"shape" => "ObjectIdentifier"}, "type" => "list"}, "TypedLinkAttributeRange" => %{"members" => %{"AttributeName" => %{"shape" => "AttributeName"}, "Range" => %{"shape" => "TypedAttributeValueRange"}}, "required" => ["Range"], "type" => "structure"}, "StillContainsLinksException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "FacetInUseException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "RuleMap" => %{"key" => %{"shape" => "RuleKey"}, "type" => "map", "value" => %{"shape" => "Rule"}}, "DeleteFacetResponse" => %{"members" => %{}, "type" => "structure"}, "CreateDirectoryResponse" => %{"members" => %{"AppliedSchemaArn" => %{"shape" => "Arn"}, "DirectoryArn" => %{"shape" => "DirectoryArn"}, "Name" => %{"shape" => "DirectoryName"}, "ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "required" => ["DirectoryArn", "Name", "ObjectIdentifier", "AppliedSchemaArn"], "type" => "structure"}, "AddFacetToObjectResponse" => %{"members" => %{}, "type" => "structure"}, "DirectoryList" => %{"member" => %{"shape" => "Directory"}, "type" => "list"}, "ListOutgoingTypedLinksResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "TypedLinkSpecifiers" => %{"shape" => "TypedLinkSpecifierList"}}, "type" => "structure"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "SchemaAlreadyExistsException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchListIndexResponse" => %{"members" => %{"IndexAttachments" => %{"shape" => "IndexAttachmentList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "AttachObjectResponse" => %{"members" => %{"AttachedObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "ListObjectParentsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Parents" => %{"shape" => "ObjectIdentifierToLinkNameMap"}}, "type" => "structure"}, "TagValue" => %{"type" => "string"}, "PolicyAttachmentList" => %{"member" => %{"shape" => "PolicyAttachment"}, "type" => "list"}, "BatchReadRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "Operations" => %{"shape" => "BatchReadOperationList"}}, "required" => ["DirectoryArn", "Operations"], "type" => "structure"}, "NotPolicyException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "DetachFromIndexResponse" => %{"members" => %{"DetachedObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "FacetAttributeReference" => %{"members" => %{"TargetAttributeName" => %{"shape" => "AttributeName"}, "TargetFacetName" => %{"shape" => "FacetName"}}, "required" => ["TargetFacetName", "TargetAttributeName"], "type" => "structure"}, "ValidationException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchReferenceName" => %{"type" => "string"}, "NumberAttributeValue" => %{"type" => "string"}, "PathToObjectIdentifiersList" => %{"member" => %{"shape" => "PathToObjectIdentifiers"}, "type" => "list"}, "RangeMode" => %{"enum" => ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], "type" => "string"}, "BatchWriteResponse" => %{"members" => %{"Responses" => %{"shape" => "BatchWriteOperationResponseList"}}, "type" => "structure"}, "RequiredAttributeBehavior" => %{"enum" => ["REQUIRED_ALWAYS", "NOT_REQUIRED"], "type" => "string"}, "BatchDeleteObject" => %{"members" => %{"ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "PublishSchemaRequest" => %{"members" => %{"DevelopmentSchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "Name" => %{"shape" => "SchemaName"}, "Version" => %{"shape" => "Version"}}, "required" => ["DevelopmentSchemaArn", "Version"], "type" => "structure"}, "Arn" => %{"type" => "string"}, "FacetNameList" => %{"member" => %{"shape" => "FacetName"}, "type" => "list"}, "GetDirectoryResponse" => %{"members" => %{"Directory" => %{"shape" => "Directory"}}, "required" => ["Directory"], "type" => "structure"}, "DetachObjectRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "LinkName" => %{"shape" => "LinkName"}, "ParentReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ParentReference", "LinkName"], "type" => "structure"}, "ListFacetAttributesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "Name" => %{"shape" => "FacetName"}, "NextToken" => %{"shape" => "NextToken"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name"], "type" => "structure"}, "BatchAttachToIndex" => %{"members" => %{"IndexReference" => %{"shape" => "ObjectReference"}, "TargetReference" => %{"shape" => "ObjectReference"}}, "required" => ["IndexReference", "TargetReference"], "type" => "structure"}, "CreateTypedLinkFacetRequest" => %{"members" => %{"Facet" => %{"shape" => "TypedLinkFacet"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Facet"], "type" => "structure"}, "BatchListObjectPolicies" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "DetachTypedLinkRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "TypedLinkSpecifier" => %{"shape" => "TypedLinkSpecifier"}}, "required" => ["DirectoryArn", "TypedLinkSpecifier"], "type" => "structure"}, "BatchLookupPolicyResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "PolicyToPathList" => %{"shape" => "PolicyToPathList"}}, "type" => "structure"}, "ListPolicyAttachmentsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "ObjectIdentifiers" => %{"shape" => "ObjectIdentifierList"}}, "type" => "structure"}, "TypedLinkName" => %{"pattern" => "^[a-zA-Z0-9._-]*$", "type" => "string"}, "CreateIndexRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "IsUnique" => %{"shape" => "Bool"}, "LinkName" => %{"shape" => "LinkName"}, "OrderedIndexedAttributeList" => %{"shape" => "AttributeKeyList"}, "ParentReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "OrderedIndexedAttributeList", "IsUnique"], "type" => "structure"}, "CreateFacetRequest" => %{"members" => %{"Attributes" => %{"shape" => "FacetAttributeList"}, "Name" => %{"shape" => "FacetName"}, "ObjectType" => %{"shape" => "ObjectType"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name", "ObjectType"], "type" => "structure"}, "BatchWriteRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "Operations" => %{"shape" => "BatchWriteOperationList"}}, "required" => ["DirectoryArn", "Operations"], "type" => "structure"}, "UntagResourceResponse" => %{"members" => %{}, "type" => "structure"}, "BatchListAttachedIndices" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "TargetReference" => %{"shape" => "ObjectReference"}}, "required" => ["TargetReference"], "type" => "structure"}, "ListDirectoriesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "state" => %{"shape" => "DirectoryState"}}, "type" => "structure"}, "AttributeKey" => %{"members" => %{"FacetName" => %{"shape" => "FacetName"}, "Name" => %{"shape" => "AttributeName"}, "SchemaArn" => %{"shape" => "Arn"}}, "required" => ["SchemaArn", "FacetName", "Name"], "type" => "structure"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "GetDirectoryRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "DirectoryArn"}}, "required" => ["DirectoryArn"], "type" => "structure"}, "UpdateActionType" => %{"enum" => ["CREATE_OR_UPDATE", "DELETE"], "type" => "string"}, "TypedLinkFacetAttributeUpdateList" => %{"member" => %{"shape" => "TypedLinkFacetAttributeUpdate"}, "type" => "list"}, "TagResourceRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "Arn"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceArn", "Tags"], "type" => "structure"}, "DirectoryName" => %{"max" => 64, "min" => 1, "pattern" => "^[a-zA-Z0-9._-]*$", "type" => "string"}, "BatchListObjectParentPathsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "PathToObjectIdentifiersList" => %{"shape" => "PathToObjectIdentifiersList"}}, "type" => "structure"}, "NumberResults" => %{"min" => 1, "type" => "integer"}, "BatchReadResponse" => %{"members" => %{"Responses" => %{"shape" => "BatchReadOperationResponseList"}}, "type" => "structure"}, "PolicyToPath" => %{"members" => %{"Path" => %{"shape" => "PathString"}, "Policies" => %{"shape" => "PolicyAttachmentList"}}, "type" => "structure"}, "SchemaName" => %{"max" => 32, "min" => 1, "pattern" => "^[a-zA-Z0-9._-]*$", "type" => "string"}, "ListTypedLinkFacetAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "TypedLinkAttributeDefinitionList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "InvalidTaggingRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ObjectAttributeRangeList" => %{"member" => %{"shape" => "ObjectAttributeRange"}, "type" => "list"}, "DeleteObjectRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "BatchDetachFromIndexResponse" => %{"members" => %{"DetachedObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "ApplySchemaResponse" => %{"members" => %{"AppliedSchemaArn" => %{"shape" => "Arn"}, "DirectoryArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "ListDevelopmentSchemaArnsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ResourceNotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "GetFacetResponse" => %{"members" => %{"Facet" => %{"shape" => "Facet"}}, "type" => "structure"}, "DisableDirectoryResponse" => %{"members" => %{"DirectoryArn" => %{"shape" => "Arn"}}, "required" => ["DirectoryArn"], "type" => "structure"}, "DeleteObjectResponse" => %{"members" => %{}, "type" => "structure"}, "AttachPolicyResponse" => %{"members" => %{}, "type" => "structure"}, "TypedLinkAttributeRangeList" => %{"member" => %{"shape" => "TypedLinkAttributeRange"}, "type" => "list"}, "InternalServiceException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "IndexAttachmentList" => %{"member" => %{"shape" => "IndexAttachment"}, "type" => "list"}, "DirectoryNotDisabledException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "CreateObjectRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "LinkName" => %{"shape" => "LinkName"}, "ObjectAttributeList" => %{"shape" => "AttributeKeyAndValueList"}, "ParentReference" => %{"shape" => "ObjectReference"}, "SchemaFacets" => %{"shape" => "SchemaFacetList"}}, "required" => ["DirectoryArn", "SchemaFacets"], "type" => "structure"}, "BooleanAttributeValue" => %{"type" => "boolean"}, "BatchUpdateObjectAttributesResponse" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "BatchListIncomingTypedLinksResponse" => %{"members" => %{"LinkSpecifiers" => %{"shape" => "TypedLinkSpecifierList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ListAttachedIndicesResponse" => %{"members" => %{"IndexAttachments" => %{"shape" => "IndexAttachmentList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ObjectIdentifierToLinkNameMap" => %{"key" => %{"shape" => "ObjectIdentifier"}, "type" => "map", "value" => %{"shape" => "LinkName"}}, "ApplySchemaRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "PublishedSchemaArn" => %{"shape" => "Arn"}}, "required" => ["PublishedSchemaArn", "DirectoryArn"], "type" => "structure"}, "InvalidArnException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchCreateObjectResponse" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "EnableDirectoryResponse" => %{"members" => %{"DirectoryArn" => %{"shape" => "Arn"}}, "required" => ["DirectoryArn"], "type" => "structure"}, "ListAppliedSchemaArnsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "SchemaArns" => %{"shape" => "Arns"}}, "type" => "structure"}, "BatchWriteOperationResponseList" => %{"member" => %{"shape" => "BatchWriteOperationResponse"}, "type" => "list"}, "SchemaFacetList" => %{"member" => %{"shape" => "SchemaFacet"}, "type" => "list"}, "BatchAttachPolicyResponse" => %{"members" => %{}, "type" => "structure"}, "ListObjectParentPathsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "PathToObjectIdentifiersList" => %{"shape" => "PathToObjectIdentifiersList"}}, "type" => "structure"}, "ListPublishedSchemaArnsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ListObjectChildrenRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "BatchReadOperation" => %{"members" => %{"GetObjectInformation" => %{"shape" => "BatchGetObjectInformation"}, "ListAttachedIndices" => %{"shape" => "BatchListAttachedIndices"}, "ListIncomingTypedLinks" => %{"shape" => "BatchListIncomingTypedLinks"}, "ListIndex" => %{"shape" => "BatchListIndex"}, "ListObjectAttributes" => %{"shape" => "BatchListObjectAttributes"}, "ListObjectChildren" => %{"shape" => "BatchListObjectChildren"}, "ListObjectParentPaths" => %{"shape" => "BatchListObjectParentPaths"}, "ListObjectPolicies" => %{"shape" => "BatchListObjectPolicies"}, "ListOutgoingTypedLinks" => %{"shape" => "BatchListOutgoingTypedLinks"}, "ListPolicyAttachments" => %{"shape" => "BatchListPolicyAttachments"}, "LookupPolicy" => %{"shape" => "BatchLookupPolicy"}}, "type" => "structure"}, "AttributeKeyAndValueList" => %{"member" => %{"shape" => "AttributeKeyAndValue"}, "type" => "list"}, "ExceptionMessage" => %{"type" => "string"}, "DisableDirectoryRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["DirectoryArn"], "type" => "structure"}, "BatchDetachObject" => %{"members" => %{"BatchReferenceName" => %{"shape" => "BatchReferenceName"}, "LinkName" => %{"shape" => "LinkName"}, "ParentReference" => %{"shape" => "ObjectReference"}}, "required" => ["ParentReference", "LinkName", "BatchReferenceName"], "type" => "structure"}, "BatchGetObjectInformationResponse" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}, "SchemaFacets" => %{"shape" => "SchemaFacetList"}}, "type" => "structure"}, "ObjectType" => %{"enum" => ["NODE", "LEAF_NODE", "POLICY", "INDEX"], "type" => "string"}, "CreateObjectResponse" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "UpdateSchemaRequest" => %{"members" => %{"Name" => %{"shape" => "SchemaName"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name"], "type" => "structure"}, "BatchDetachPolicyResponse" => %{"members" => %{}, "type" => "structure"}, "FacetAttributeType" => %{"enum" => ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME"], "type" => "string"}, "GetObjectInformationResponse" => %{"members" => %{"ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}, "SchemaFacets" => %{"shape" => "SchemaFacetList"}}, "type" => "structure"}, "UpdateObjectAttributesRequest" => %{"members" => %{"AttributeUpdates" => %{"shape" => "ObjectAttributeUpdateList"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference", "AttributeUpdates"], "type" => "structure"}, "BatchDetachObjectResponse" => %{"members" => %{"detachedObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "IndexAttachment" => %{"members" => %{"IndexedAttributes" => %{"shape" => "AttributeKeyAndValueList"}, "ObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "BatchListOutgoingTypedLinksResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "TypedLinkSpecifiers" => %{"shape" => "TypedLinkSpecifierList"}}, "type" => "structure"}, "BatchListObjectChildren" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "TypedAttributeValue" => %{"members" => %{"BinaryValue" => %{"shape" => "BinaryAttributeValue"}, "BooleanValue" => %{"shape" => "BooleanAttributeValue"}, "DatetimeValue" => %{"shape" => "DatetimeAttributeValue"}, "NumberValue" => %{"shape" => "NumberAttributeValue"}, "StringValue" => %{"shape" => "StringAttributeValue"}}, "type" => "structure"}, "Rule" => %{"members" => %{"Parameters" => %{"shape" => "RuleParameterMap"}, "Type" => %{"shape" => "RuleType"}}, "type" => "structure"}, "TypedLinkFacetAttributeUpdate" => %{"members" => %{"Action" => %{"shape" => "UpdateActionType"}, "Attribute" => %{"shape" => "TypedLinkAttributeDefinition"}}, "required" => ["Attribute", "Action"], "type" => "structure"}, "TagResourceResponse" => %{"members" => %{}, "type" => "structure"}, "AttributeNameList" => %{"member" => %{"shape" => "AttributeName"}, "type" => "list"}, "ListTypedLinkFacetAttributesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "Name" => %{"shape" => "TypedLinkName"}, "NextToken" => %{"shape" => "NextToken"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name"], "type" => "structure"}, "TagKey" => %{"type" => "string"}, "PutSchemaFromJsonResponse" => %{"members" => %{"Arn" => %{"shape" => "Arn"}}, "type" => "structure"}, "BatchWriteException" => %{"exception" => true, "members" => %{"Index" => %{"shape" => "BatchOperationIndex"}, "Message" => %{"shape" => "ExceptionMessage"}, "Type" => %{"shape" => "BatchWriteExceptionType"}}, "type" => "structure"}, "DeleteDirectoryRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["DirectoryArn"], "type" => "structure"}, "AttachPolicyRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "ObjectReference" => %{"shape" => "ObjectReference"}, "PolicyReference" => %{"shape" => "ObjectReference"}}, "required" => ["PolicyReference", "ObjectReference"], "type" => "structure"}, "BatchAttachToIndexResponse" => %{"members" => %{"AttachedObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "RuleParameterMap" => %{"key" => %{"shape" => "RuleParameterKey"}, "type" => "map", "value" => %{"shape" => "RuleParameterValue"}}, "NotIndexException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ListObjectAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "AttributeKeyAndValueList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "TypedLinkAttributeDefinitionList" => %{"member" => %{"shape" => "TypedLinkAttributeDefinition"}, "type" => "list"}, "BatchReadException" => %{"members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "Type" => %{"shape" => "BatchReadExceptionType"}}, "type" => "structure"}, "BatchAttachTypedLinkResponse" => %{"members" => %{"TypedLinkSpecifier" => %{"shape" => "TypedLinkSpecifier"}}, "type" => "structure"}, "RemoveFacetFromObjectRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "ObjectReference" => %{"shape" => "ObjectReference"}, "SchemaFacet" => %{"shape" => "SchemaFacet"}}, "required" => ["DirectoryArn", "SchemaFacet", "ObjectReference"], "type" => "structure"}, "RuleType" => %{"enum" => ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"], "type" => "string"}, "SchemaAlreadyPublishedException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "DetachFromIndexRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "IndexReference" => %{"shape" => "ObjectReference"}, "TargetReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "IndexReference", "TargetReference"], "type" => "structure"}, "LinkNameToObjectIdentifierMap" => %{"key" => %{"shape" => "LinkName"}, "type" => "map", "value" => %{"shape" => "ObjectIdentifier"}}, "BatchCreateObject" => %{"members" => %{"BatchReferenceName" => %{"shape" => "BatchReferenceName"}, "LinkName" => %{"shape" => "LinkName"}, "ObjectAttributeList" => %{"shape" => "AttributeKeyAndValueList"}, "ParentReference" => %{"shape" => "ObjectReference"}, "SchemaFacet" => %{"shape" => "SchemaFacetList"}}, "required" => ["SchemaFacet", "ObjectAttributeList", "ParentReference", "LinkName", "BatchReferenceName"], "type" => "structure"}, "BatchLookupPolicy" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "BatchAddFacetToObjectResponse" => %{"members" => %{}, "type" => "structure"}, "Facet" => %{"members" => %{"Name" => %{"shape" => "FacetName"}, "ObjectType" => %{"shape" => "ObjectType"}}, "type" => "structure"}, "ListDirectoriesResponse" => %{"members" => %{"Directories" => %{"shape" => "DirectoryList"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["Directories"], "type" => "structure"}, "TypedLinkSpecifier" => %{"members" => %{"IdentityAttributeValues" => %{"shape" => "AttributeNameAndValueList"}, "SourceObjectReference" => %{"shape" => "ObjectReference"}, "TargetObjectReference" => %{"shape" => "ObjectReference"}, "TypedLinkFacet" => %{"shape" => "TypedLinkSchemaAndFacetName"}}, "required" => ["TypedLinkFacet", "SourceObjectReference", "TargetObjectReference", "IdentityAttributeValues"], "type" => "structure"}, "ObjectNotDetachedException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ListTypedLinkFacetNamesResponse" => %{"members" => %{"FacetNames" => %{"shape" => "TypedLinkNameList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "FacetAttributeList" => %{"member" => %{"shape" => "FacetAttribute"}, "type" => "list"}, "UpdateSchemaResponse" => %{"members" => %{"SchemaArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "DetachPolicyResponse" => %{"members" => %{}, "type" => "structure"}, "FacetName" => %{"max" => 64, "min" => 1, "pattern" => "^[a-zA-Z0-9._-]*$", "type" => "string"}, "BatchAttachObjectResponse" => %{"members" => %{"attachedObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "AttachToIndexResponse" => %{"members" => %{"AttachedObjectIdentifier" => %{"shape" => "ObjectIdentifier"}}, "type" => "structure"}, "PublishSchemaResponse" => %{"members" => %{"PublishedSchemaArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "CannotListParentOfRootException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "NextToken" => %{"type" => "string"}, "TypedLinkSchemaAndFacetName" => %{"members" => %{"SchemaArn" => %{"shape" => "Arn"}, "TypedLinkName" => %{"shape" => "TypedLinkName"}}, "required" => ["SchemaArn", "TypedLinkName"], "type" => "structure"}, "BatchCreateIndex" => %{"members" => %{"BatchReferenceName" => %{"shape" => "BatchReferenceName"}, "IsUnique" => %{"shape" => "Bool"}, "LinkName" => %{"shape" => "LinkName"}, "OrderedIndexedAttributeList" => %{"shape" => "AttributeKeyList"}, "ParentReference" => %{"shape" => "ObjectReference"}}, "required" => ["OrderedIndexedAttributeList", "IsUnique"], "type" => "structure"}, "SchemaFacet" => %{"members" => %{"FacetName" => %{"shape" => "FacetName"}, "SchemaArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "ListFacetNamesResponse" => %{"members" => %{"FacetNames" => %{"shape" => "FacetNameList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "PolicyType" => %{"type" => "string"}, "ListPublishedSchemaArnsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "SchemaArns" => %{"shape" => "Arns"}}, "type" => "structure"}, "ListObjectParentsRequest" => %{"members" => %{"ConsistencyLevel" => %{"location" => "header", "locationName" => "x-amz-consistency-level", "shape" => "ConsistencyLevel"}, "DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "ObjectReference"], "type" => "structure"}, "BatchListPolicyAttachmentsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "ObjectIdentifiers" => %{"shape" => "ObjectIdentifierList"}}, "type" => "structure"}, "RemoveFacetFromObjectResponse" => %{"members" => %{}, "type" => "structure"}, "EnableDirectoryRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["DirectoryArn"], "type" => "structure"}, "InvalidAttachmentException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchListObjectParentPaths" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "ObjectReference" => %{"shape" => "ObjectReference"}}, "required" => ["ObjectReference"], "type" => "structure"}, "ListTypedLinkFacetNamesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "NumberResults"}, "NextToken" => %{"shape" => "NextToken"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn"], "type" => "structure"}, "DetachPolicyRequest" => %{"members" => %{"DirectoryArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}, "ObjectReference" => %{"shape" => "ObjectReference"}, "PolicyReference" => %{"shape" => "ObjectReference"}}, "required" => ["DirectoryArn", "PolicyReference", "ObjectReference"], "type" => "structure"}, "ListFacetAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "FacetAttributeList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "GetSchemaAsJsonResponse" => %{"members" => %{"Document" => %{"shape" => "SchemaJsonDocument"}, "Name" => %{"shape" => "SchemaName"}}, "type" => "structure"}, "FacetAttributeUpdate" => %{"members" => %{"Action" => %{"shape" => "UpdateActionType"}, "Attribute" => %{"shape" => "FacetAttribute"}}, "type" => "structure"}, "DatetimeAttributeValue" => %{"type" => "timestamp"}, "PolicyToPathList" => %{"member" => %{"shape" => "PolicyToPath"}, "type" => "list"}, "ListObjectChildrenResponse" => %{"members" => %{"Children" => %{"shape" => "LinkNameToObjectIdentifierMap"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "GetTypedLinkFacetInformationRequest" => %{"members" => %{"Name" => %{"shape" => "TypedLinkName"}, "SchemaArn" => %{"location" => "header", "locationName" => "x-amz-data-partition", "shape" => "Arn"}}, "required" => ["SchemaArn", "Name"], "type" => "structure"}}
  end
end