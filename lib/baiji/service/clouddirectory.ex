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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/facet/attributes",
      input:            input,
      options:          options,
      action:           "ListFacetAttributes",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/create",
      input:            input,
      options:          options,
      action:           "CreateSchema",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Returns a paginated list of all attribute definitions for a particular
  `TypedLinkFacet`. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def list_typed_link_facet_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes",
      input:            input,
      options:          options,
      action:           "ListTypedLinkFacetAttributes",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Performs all the read operations in a batch.
  """
  def batch_read(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/batchread",
      input:            input,
      options:          options,
      action:           "BatchRead",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Returns all of the `ObjectIdentifiers` to which a given policy is attached.
  """
  def list_policy_attachments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/policy/attachment",
      input:            input,
      options:          options,
      action:           "ListPolicyAttachments",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  An API operation for adding tags to a resource.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/tags/add",
      input:            input,
      options:          options,
      action:           "TagResource",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Creates a `TypedLinkFacet`. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def create_typed_link_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/facet/create",
      input:            input,
      options:          options,
      action:           "CreateTypedLinkFacet",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Detaches a given object from the parent object. The object that is to be
  detached from the parent is specified by the link name.
  """
  def detach_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/detach",
      input:            input,
      options:          options,
      action:           "DetachObject",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Detaches a typed link from a specified source and target object. For more
  information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def detach_typed_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/detach",
      input:            input,
      options:          options,
      action:           "DetachTypedLink",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Returns a paginated list of `TypedLink` facet names for a particular
  schema. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def list_typed_link_facet_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/facet/list",
      input:            input,
      options:          options,
      action:           "ListTypedLinkFacetNames",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Returns policies attached to an object in pagination fashion.
  """
  def list_object_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/policy",
      input:            input,
      options:          options,
      action:           "ListObjectPolicies",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Retrieves metadata about an object.
  """
  def get_object_information(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/information",
      input:            input,
      options:          options,
      action:           "GetObjectInformation",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Returns the identity attribute order for a specific `TypedLinkFacet`. For
  more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def get_typed_link_facet_information(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/facet/get",
      input:            input,
      options:          options,
      action:           "GetTypedLinkFacetInformation",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Returns tags for a resource. Tagging is currently supported only for
  directories with a limit of 50 tags per directory. All 50 tags are returned
  for a given directory with this API call.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/tags",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/facet",
      input:            input,
      options:          options,
      action:           "UpdateFacet",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Creates a `Directory` by copying the published schema into the directory. A
  directory cannot be created without a schema.
  """
  def create_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/directory/create",
      input:            input,
      options:          options,
      action:           "CreateDirectory",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Creates a new `Facet` in a schema. Facet creation is allowed only in
  development or applied schemas.
  """
  def create_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/facet/create",
      input:            input,
      options:          options,
      action:           "CreateFacet",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Lists all attributes that are associated with an object.
  """
  def list_object_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/attributes",
      input:            input,
      options:          options,
      action:           "ListObjectAttributes",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Retrieves the names of facets that exist in a schema.
  """
  def list_facet_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/facet/list",
      input:            input,
      options:          options,
      action:           "ListFacetNames",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Disables the specified directory. Disabled directories cannot be read or
  written to. Only enabled directories can be disabled. Disabled directories
  may be reenabled.
  """
  def disable_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/directory/disable",
      input:            input,
      options:          options,
      action:           "DisableDirectory",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Lists parent objects that are associated with a given object in pagination
  fashion.
  """
  def list_object_parents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/parent",
      input:            input,
      options:          options,
      action:           "ListObjectParents",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Updates a given object's attributes.
  """
  def update_object_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/update",
      input:            input,
      options:          options,
      action:           "UpdateObjectAttributes",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  An API operation for removing tags from a resource.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/tags/remove",
      input:            input,
      options:          options,
      action:           "UntagResource",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Lists schemas applied to a directory.
  """
  def list_applied_schema_arns(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/applied",
      input:            input,
      options:          options,
      action:           "ListAppliedSchemaArns",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Copies the input published schema into the `Directory` with the same name
  and version as that of the published schema .
  """
  def apply_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/apply",
      input:            input,
      options:          options,
      action:           "ApplySchema",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Deletes a given `Facet`. All attributes and `Rule`s that are associated
  with the facet will be deleted. Only development schema facets are allowed
  deletion.
  """
  def delete_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/facet/delete",
      input:            input,
      options:          options,
      action:           "DeleteFacet",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Deletes a directory. Only disabled directories can be deleted. A deleted
  directory cannot be undone. Exercise extreme caution when deleting
  directories.
  """
  def delete_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/directory",
      input:            input,
      options:          options,
      action:           "DeleteDirectory",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Adds a new `Facet` to an object.
  """
  def add_facet_to_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/facets",
      input:            input,
      options:          options,
      action:           "AddFacetToObject",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Lists objects attached to the specified index.
  """
  def list_index(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/index/targets",
      input:            input,
      options:          options,
      action:           "ListIndex",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Creates an index object. See
  [Indexing](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html)
  for more information.
  """
  def create_index(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/index",
      input:            input,
      options:          options,
      action:           "CreateIndex",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Detaches the specified object from the specified index.
  """
  def detach_from_index(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/index/detach",
      input:            input,
      options:          options,
      action:           "DetachFromIndex",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Enables the specified directory. Only disabled directories can be enabled.
  Once enabled, the directory can then be read and written to.
  """
  def enable_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/directory/enable",
      input:            input,
      options:          options,
      action:           "EnableDirectory",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Removes the specified facet from the specified object.
  """
  def remove_facet_from_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/facets/delete",
      input:            input,
      options:          options,
      action:           "RemoveFacetFromObject",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/publish",
      input:            input,
      options:          options,
      action:           "PublishSchema",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Gets details of the `Facet`, such as facet name, attributes, `Rule`s, or
  `ObjectType`. You can call this on all kinds of schema facets -- published,
  development, or applied.
  """
  def get_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/facet",
      input:            input,
      options:          options,
      action:           "GetFacet",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Deletes an object and its associated attributes. Only objects with no
  children and no parents can be deleted.
  """
  def delete_object(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/delete",
      input:            input,
      options:          options,
      action:           "DeleteObject",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Lists indices attached to an object.
  """
  def list_attached_indices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/indices",
      input:            input,
      options:          options,
      action:           "ListAttachedIndices",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/attach",
      input:            input,
      options:          options,
      action:           "AttachObject",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Updates a `TypedLinkFacet`. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def update_typed_link_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/facet",
      input:            input,
      options:          options,
      action:           "UpdateTypedLinkFacet",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Updates the schema name with a new name. Only development schema names can
  be updated.
  """
  def update_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/update",
      input:            input,
      options:          options,
      action:           "UpdateSchema",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Detaches a policy from an object.
  """
  def detach_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/policy/detach",
      input:            input,
      options:          options,
      action:           "DetachPolicy",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/parentpaths",
      input:            input,
      options:          options,
      action:           "ListObjectParentPaths",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Retrieves a JSON representation of the schema. See [JSON Schema
  Format](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat)
  for more information.
  """
  def get_schema_as_json(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/json",
      input:            input,
      options:          options,
      action:           "GetSchemaAsJson",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/incoming",
      input:            input,
      options:          options,
      action:           "ListIncomingTypedLinks",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object",
      input:            input,
      options:          options,
      action:           "CreateObject",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Retrieves metadata about a directory.
  """
  def get_directory(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/directory/get",
      input:            input,
      options:          options,
      action:           "GetDirectory",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Deletes a given schema. Schemas in a development and published state can
  only be deleted.
  """
  def delete_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema",
      input:            input,
      options:          options,
      action:           "DeleteSchema",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Attaches the specified object to the specified index.
  """
  def attach_to_index(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/index/attach",
      input:            input,
      options:          options,
      action:           "AttachToIndex",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Attaches a policy object to a regular object. An object can have a limited
  number of attached policies.
  """
  def attach_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/policy/attach",
      input:            input,
      options:          options,
      action:           "AttachPolicy",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Attaches a typed link to a specified source and target object. For more
  information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def attach_typed_link(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/attach",
      input:            input,
      options:          options,
      action:           "AttachTypedLink",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Performs all the write operations in a batch. Either all the operations
  succeed or none. Batch writes supports only object-related operations.
  """
  def batch_write(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/batchwrite",
      input:            input,
      options:          options,
      action:           "BatchWrite",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Retrieves each Amazon Resource Name (ARN) of schemas in the development
  state.
  """
  def list_development_schema_arns(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/development",
      input:            input,
      options:          options,
      action:           "ListDevelopmentSchemaArns",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Returns a paginated list of child objects that are associated with a given
  object.
  """
  def list_object_children(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/object/children",
      input:            input,
      options:          options,
      action:           "ListObjectChildren",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
  @doc """
  Lists directories created within an account.
  """
  def list_directories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/directory/list",
      input:            input,
      options:          options,
      action:           "ListDirectories",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/json",
      input:            input,
      options:          options,
      action:           "PutSchemaFromJson",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Deletes a `TypedLinkFacet`. For more information, see [Typed
  link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).
  """
  def delete_typed_link_facet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/facet/delete",
      input:            input,
      options:          options,
      action:           "DeleteTypedLinkFacet",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :put
    }
  end
  
  @doc """
  Retrieves each published schema Amazon Resource Name (ARN).
  """
  def list_published_schema_arns(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/schema/published",
      input:            input,
      options:          options,
      action:           "ListPublishedSchemaArns",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/typedlink/outgoing",
      input:            input,
      options:          options,
      action:           "ListOutgoingTypedLinks",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
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
      service:          "clouddirectory",
      endpoint:         "/amazonclouddirectory/2017-01-11/policy/lookup",
      input:            input,
      options:          options,
      action:           "LookupPolicy",
      
      endpoint_prefix:  "clouddirectory",
      type:             :rest_json,
      version:          "2016-05-10",
      method:           :post
    }
  end
  
end