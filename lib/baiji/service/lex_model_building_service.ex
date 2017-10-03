defmodule Baiji.LexModelBuildingService do
  @moduledoc """
  Amazon Lex Build-Time Actions

  Amazon Lex is an AWS service for building conversational voice and text
  interfaces. Use these actions to create, update, and delete conversational
  bots for new and existing client applications.
  """

  @doc """
  Gets information about all of the versions of an intent.

  The `GetIntentVersions` operation returns an `IntentMetadata` object for
  each version of an intent. For example, if an intent has three numbered
  versions, the `GetIntentVersions` operation returns four `IntentMetadata`
  objects in the response, one for each numbered version and one for the
  `$LATEST` version.

  The `GetIntentVersions` operation always returns at least one version, the
  `$LATEST` version.

  This operation requires permissions for the `lex:GetIntentVersions` action.
  """
  def get_intent_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/intents/{name}/versions/",
      input:            input,
      options:          options,
      action:           "GetIntentVersions",
      method:           :get,
      input_shape:      "GetIntentVersionsRequest",
      output_shape:     "GetIntentVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Exports the contents of a Amazon Lex resource in a specified format.
  """
  def get_export(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/exports/",
      input:            input,
      options:          options,
      action:           "GetExport",
      method:           :get,
      input_shape:      "GetExportRequest",
      output_shape:     "GetExportResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns metadata information for a specific bot. You must provide the bot
  name and the bot version or alias.

  This operation requires permissions for the `lex:GetBot` action.
  """
  def get_bot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{name}/versions/{versionoralias}",
      input:            input,
      options:          options,
      action:           "GetBot",
      method:           :get,
      input_shape:      "GetBotRequest",
      output_shape:     "GetBotResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specific version of a slot type. To delete all versions of a slot
  type, use the `DeleteSlotType` operation.

  This operation requires permissions for the `lex:DeleteSlotTypeVersion`
  action.
  """
  def delete_slot_type_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/slottypes/{name}/version/{version}",
      input:            input,
      options:          options,
      action:           "DeleteSlotTypeVersion",
      method:           :delete,
      input_shape:      "DeleteSlotTypeVersionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new version of the bot based on the `$LATEST` version. If the
  `$LATEST` version of this resource hasn't changed since you created the
  last version, Amazon Lex doesn't create a new version. It returns the last
  created version.

  <note> You can update only the `$LATEST` version of the bot. You can't
  update the numbered versions that you create with the `CreateBotVersion`
  operation.

  </note> When you create the first version of a bot, Amazon Lex sets the
  version to 1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permission for the `lex:CreateBotVersion` action.
  """
  def create_bot_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{name}/versions",
      input:            input,
      options:          options,
      action:           "CreateBotVersion",
      method:           :post,
      input_shape:      "CreateBotVersionRequest",
      output_shape:     "CreateBotVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an Amazon Lex conversational bot or replaces an existing bot. When
  you create or update a bot you are only required to specify a name. You can
  use this to add intents later, or to remove intents from an existing bot.
  When you create a bot with a name only, the bot is created or updated but
  Amazon Lex returns the <code/> response `FAILED`. You can build the bot
  after you add one or more intents. For more information about Amazon Lex
  bots, see `how-it-works`.

  If you specify the name of an existing bot, the fields in the request
  replace the existing values in the `$LATEST` version of the bot. Amazon Lex
  removes any fields that you don't provide values for in the request, except
  for the `idleTTLInSeconds` and `privacySettings` fields, which are set to
  their default values. If you don't specify values for required fields,
  Amazon Lex throws an exception.

  This operation requires permissions for the `lex:PutBot` action. For more
  information, see `auth-and-access-control`.
  """
  def put_bot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{name}/versions/$LATEST",
      input:            input,
      options:          options,
      action:           "PutBot",
      method:           :put,
      input_shape:      "PutBotRequest",
      output_shape:     "PutBotResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns intent information as follows:

  <ul> <li> If you specify the `nameContains` field, returns the `$LATEST`
  version of all intents that contain the specified string.

  </li> <li> If you don't specify the `nameContains` field, returns
  information about the `$LATEST` version of all intents.

  </li> </ul> The operation requires permission for the `lex:GetIntents`
  action.
  """
  def get_intents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/intents/",
      input:            input,
      options:          options,
      action:           "GetIntents",
      method:           :get,
      input_shape:      "GetIntentsRequest",
      output_shape:     "GetIntentsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a built-in intent.

  This operation requires permission for the `lex:GetBuiltinIntent` action.
  """
  def get_builtin_intent(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/builtins/intents/{signature}",
      input:            input,
      options:          options,
      action:           "GetBuiltinIntent",
      method:           :get,
      input_shape:      "GetBuiltinIntentRequest",
      output_shape:     "GetBuiltinIntentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes all versions of the intent, including the `$LATEST` version. To
  delete a specific version of the intent, use the `DeleteIntentVersion`
  operation.

  You can delete a version of an intent only if it is not referenced. To
  delete an intent that is referred to in one or more bots (see
  `how-it-works`), you must remove those references first.

  <note> If you get the `ResourceInUseException` exception, it provides an
  example reference that shows where the intent is referenced. To remove the
  reference to the intent, either update the bot or delete it. If you get the
  same exception when you attempt to delete the intent again, repeat until
  the intent has no references and the call to `DeleteIntent` is successful.

  </note> This operation requires permission for the `lex:DeleteIntent`
  action.
  """
  def delete_intent(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/intents/{name}",
      input:            input,
      options:          options,
      action:           "DeleteIntent",
      method:           :delete,
      input_shape:      "DeleteIntentRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an alias for the specified version of the bot or replaces an alias
  for the specified bot. To change the version of the bot that the alias
  points to, replace the alias. For more information about aliases, see
  `versioning-aliases`.

  This operation requires permissions for the `lex:PutBotAlias` action.
  """
  def put_bot_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botName}/aliases/{name}",
      input:            input,
      options:          options,
      action:           "PutBotAlias",
      method:           :put,
      input_shape:      "PutBotAliasRequest",
      output_shape:     "PutBotAliasResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about an Amazon Lex bot alias. For more information
  about aliases, see `versioning-aliases`.

  This operation requires permissions for the `lex:GetBotAlias` action.
  """
  def get_bot_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botName}/aliases/{name}",
      input:            input,
      options:          options,
      action:           "GetBotAlias",
      method:           :get,
      input_shape:      "GetBotAliasRequest",
      output_shape:     "GetBotAliasResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a list of built-in slot types that meet the specified criteria.

  For a list of built-in slot types, see [Slot Type
  Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference)
  in the *Alexa Skills Kit*.

  This operation requires permission for the `lex:GetBuiltInSlotTypes`
  action.
  """
  def get_builtin_slot_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/builtins/slottypes/",
      input:            input,
      options:          options,
      action:           "GetBuiltinSlotTypes",
      method:           :get,
      input_shape:      "GetBuiltinSlotTypesRequest",
      output_shape:     "GetBuiltinSlotTypesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about an intent. In addition to the intent name, you
  must specify the intent version.

  This operation requires permissions to perform the `lex:GetIntent` action.
  """
  def get_intent(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/intents/{name}/versions/{version}",
      input:            input,
      options:          options,
      action:           "GetIntent",
      method:           :get,
      input_shape:      "GetIntentRequest",
      output_shape:     "GetIntentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new version of an intent based on the `$LATEST` version of the
  intent. If the `$LATEST` version of this intent hasn't changed since you
  last updated it, Amazon Lex doesn't create a new version. It returns the
  last version you created.

  <note> You can update only the `$LATEST` version of the intent. You can't
  update the numbered versions that you create with the `CreateIntentVersion`
  operation.

  </note> When you create a version of an intent, Amazon Lex sets the version
  to 1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permissions to perform the
  `lex:CreateIntentVersion` action.
  """
  def create_intent_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/intents/{name}/versions",
      input:            input,
      options:          options,
      action:           "CreateIntentVersion",
      method:           :post,
      input_shape:      "CreateIntentVersionRequest",
      output_shape:     "CreateIntentVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specific version of an intent. To delete all versions of a
  intent, use the `DeleteIntent` operation.

  This operation requires permissions for the `lex:DeleteIntentVersion`
  action.
  """
  def delete_intent_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/intents/{name}/versions/{version}",
      input:            input,
      options:          options,
      action:           "DeleteIntentVersion",
      method:           :delete,
      input_shape:      "DeleteIntentVersionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns slot type information as follows:

  <ul> <li> If you specify the `nameContains` field, returns the `$LATEST`
  version of all slot types that contain the specified string.

  </li> <li> If you don't specify the `nameContains` field, returns
  information about the `$LATEST` version of all slot types.

  </li> </ul> The operation requires permission for the `lex:GetSlotTypes`
  action.
  """
  def get_slot_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/slottypes/",
      input:            input,
      options:          options,
      action:           "GetSlotTypes",
      method:           :get,
      input_shape:      "GetSlotTypesRequest",
      output_shape:     "GetSlotTypesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes all versions of the bot, including the `$LATEST` version. To delete
  a specific version of the bot, use the `DeleteBotVersion` operation.

  If a bot has an alias, you can't delete it. Instead, the `DeleteBot`
  operation returns a `ResourceInUseException` exception that includes a
  reference to the alias that refers to the bot. To remove the reference to
  the bot, delete the alias. If you get the same exception again, delete the
  referring alias until the `DeleteBot` operation is successful.

  This operation requires permissions for the `lex:DeleteBot` action.
  """
  def delete_bot(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{name}",
      input:            input,
      options:          options,
      action:           "DeleteBot",
      method:           :delete,
      input_shape:      "DeleteBotRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the association between an Amazon Lex bot and a messaging platform.

  This operation requires permission for the
  `lex:DeleteBotChannelAssociation` action.
  """
  def delete_bot_channel_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botName}/aliases/{aliasName}/channels/{name}",
      input:            input,
      options:          options,
      action:           "DeleteBotChannelAssociation",
      method:           :delete,
      input_shape:      "DeleteBotChannelAssociationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about all of the versions of a bot.

  The `GetBotVersions` operation returns a `BotMetadata` object for each
  version of a bot. For example, if a bot has three numbered versions, the
  `GetBotVersions` operation returns four `BotMetadata` objects in the
  response, one for each numbered version and one for the `$LATEST` version.

  The `GetBotVersions` operation always returns at least one version, the
  `$LATEST` version.

  This operation requires permissions for the `lex:GetBotVersions` action.
  """
  def get_bot_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{name}/versions/",
      input:            input,
      options:          options,
      action:           "GetBotVersions",
      method:           :get,
      input_shape:      "GetBotVersionsRequest",
      output_shape:     "GetBotVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes stored utterances.

  Amazon Lex stores the utterances that users send to your bot unless the
  `childDirected` field in the bot is set to `true`. Utterances are stored
  for 15 days for use with the `GetUtterancesView` operation, and then stored
  indefinately for use in improving the ability of your bot to respond to
  user input.

  Use the `DeleteStoredUtterances` operation to manually delete stored
  utterances for a specific user.

  This operation requires permissions for the `lex:DeleteUtterances` action.
  """
  def delete_utterances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botName}/utterances/{userId}",
      input:            input,
      options:          options,
      action:           "DeleteUtterances",
      method:           :delete,
      input_shape:      "DeleteUtterancesRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about all versions of a slot type.

  The `GetSlotTypeVersions` operation returns a `SlotTypeMetadata` object for
  each version of a slot type. For example, if a slot type has three numbered
  versions, the `GetSlotTypeVersions` operation returns four
  `SlotTypeMetadata` objects in the response, one for each numbered version
  and one for the `$LATEST` version.

  The `GetSlotTypeVersions` operation always returns at least one version,
  the `$LATEST` version.

  This operation requires permissions for the `lex:GetSlotTypeVersions`
  action.
  """
  def get_slot_type_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/slottypes/{name}/versions/",
      input:            input,
      options:          options,
      action:           "GetSlotTypeVersions",
      method:           :get,
      input_shape:      "GetSlotTypeVersionsRequest",
      output_shape:     "GetSlotTypeVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the association between an Amazon Lex bot and a
  messaging platform.

  This operation requires permissions for the `lex:GetBotChannelAssociation`
  action.
  """
  def get_bot_channel_association(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botName}/aliases/{aliasName}/channels/{name}",
      input:            input,
      options:          options,
      action:           "GetBotChannelAssociation",
      method:           :get,
      input_shape:      "GetBotChannelAssociationRequest",
      output_shape:     "GetBotChannelAssociationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes all versions of the slot type, including the `$LATEST` version. To
  delete a specific version of the slot type, use the `DeleteSlotTypeVersion`
  operation.

  You can delete a version of a slot type only if it is not referenced. To
  delete a slot type that is referred to in one or more intents, you must
  remove those references first.

  <note> If you get the `ResourceInUseException` exception, the exception
  provides an example reference that shows the intent where the slot type is
  referenced. To remove the reference to the slot type, either update the
  intent or delete it. If you get the same exception when you attempt to
  delete the slot type again, repeat until the slot type has no references
  and the `DeleteSlotType` call is successful.

  </note> This operation requires permission for the `lex:DeleteSlotType`
  action.
  """
  def delete_slot_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/slottypes/{name}",
      input:            input,
      options:          options,
      action:           "DeleteSlotType",
      method:           :delete,
      input_shape:      "DeleteSlotTypeRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use the `GetUtterancesView` operation to get information about the
  utterances that your users have made to your bot. You can use this list to
  tune the utterances that your bot responds to.

  For example, say that you have created a bot to order flowers. After your
  users have used your bot for a while, use the `GetUtterancesView` operation
  to see the requests that they have made and whether they have been
  successful. You might find that the utterance "I want flowers" is not being
  recognized. You could add this utterance to the `OrderFlowers` intent so
  that your bot recognizes that utterance.

  After you publish a new version of a bot, you can get information about the
  old version and the new so that you can compare the performance across the
  two versions.

  Data is available for the last 15 days. You can request information for up
  to 5 versions in each request. The response contains information about a
  maximum of 100 utterances for each version.

  If the bot's `childDirected` field is set to `true`, utterances for the bot
  are not stored and cannot be retrieved with the `GetUtterancesView`
  operation. For more information, see `PutBot`.

  This operation requires permissions for the `lex:GetUtterancesView` action.
  """
  def get_utterances_view(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botname}/utterances?view=aggregation",
      input:            input,
      options:          options,
      action:           "GetUtterancesView",
      method:           :get,
      input_shape:      "GetUtterancesViewRequest",
      output_shape:     "GetUtterancesViewResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns bot information as follows:

  <ul> <li> If you provide the `nameContains` field, the response includes
  information for the `$LATEST` version of all bots whose name contains the
  specified string.

  </li> <li> If you don't specify the `nameContains` field, the operation
  returns information about the `$LATEST` version of all of your bots.

  </li> </ul> This operation requires permission for the `lex:GetBots`
  action.
  """
  def get_bots(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/",
      input:            input,
      options:          options,
      action:           "GetBots",
      method:           :get,
      input_shape:      "GetBotsRequest",
      output_shape:     "GetBotsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specific version of a bot. To delete all versions of a bot, use
  the `DeleteBot` operation.

  This operation requires permissions for the `lex:DeleteBotVersion` action.
  """
  def delete_bot_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{name}/versions/{version}",
      input:            input,
      options:          options,
      action:           "DeleteBotVersion",
      method:           :delete,
      input_shape:      "DeleteBotVersionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a list of built-in intents that meet the specified criteria.

  This operation requires permission for the `lex:GetBuiltinIntents` action.
  """
  def get_builtin_intents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/builtins/intents/",
      input:            input,
      options:          options,
      action:           "GetBuiltinIntents",
      method:           :get,
      input_shape:      "GetBuiltinIntentsRequest",
      output_shape:     "GetBuiltinIntentsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an alias for the specified bot.

  You can't delete an alias that is used in the association between a bot and
  a messaging channel. If an alias is used in a channel association, the
  `DeleteBot` operation returns a `ResourceInUseException` exception that
  includes a reference to the channel association that refers to the bot. You
  can remove the reference to the alias by deleting the channel association.
  If you get the same exception again, delete the referring association until
  the `DeleteBotAlias` operation is successful.
  """
  def delete_bot_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botName}/aliases/{name}",
      input:            input,
      options:          options,
      action:           "DeleteBotAlias",
      method:           :delete,
      input_shape:      "DeleteBotAliasRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of all of the channels associated with the specified bot.

  The `GetBotChannelAssociations` operation requires permissions for the
  `lex:GetBotChannelAssociations` action.
  """
  def get_bot_channel_associations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botName}/aliases/{aliasName}/channels/",
      input:            input,
      options:          options,
      action:           "GetBotChannelAssociations",
      method:           :get,
      input_shape:      "GetBotChannelAssociationsRequest",
      output_shape:     "GetBotChannelAssociationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of aliases for a specified Amazon Lex bot.

  This operation requires permissions for the `lex:GetBotAliases` action.
  """
  def get_bot_aliases(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bots/{botName}/aliases/",
      input:            input,
      options:          options,
      action:           "GetBotAliases",
      method:           :get,
      input_shape:      "GetBotAliasesRequest",
      output_shape:     "GetBotAliasesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an intent or replaces an existing intent.

  To define the interaction between the user and your bot, you use one or
  more intents. For a pizza ordering bot, for example, you would create an
  `OrderPizza` intent.

  To create an intent or replace an existing intent, you must provide the
  following:

  <ul> <li> Intent name. For example, `OrderPizza`.

  </li> <li> Sample utterances. For example, "Can I order a pizza, please."
  and "I want to order a pizza."

  </li> <li> Information to be gathered. You specify slot types for the
  information that your bot will request from the user. You can specify
  standard slot types, such as a date or a time, or custom slot types such as
  the size and crust of a pizza.

  </li> <li> How the intent will be fulfilled. You can provide a Lambda
  function or configure the intent to return the intent information to the
  client application. If you use a Lambda function, when all of the intent
  information is available, Amazon Lex invokes your Lambda function. If you
  configure your intent to return the intent information to the client
  application.

  </li> </ul> You can specify other optional information in the request, such
  as:

  <ul> <li> A confirmation prompt to ask the user to confirm an intent. For
  example, "Shall I order your pizza?"

  </li> <li> A conclusion statement to send to the user after the intent has
  been fulfilled. For example, "I placed your pizza order."

  </li> <li> A follow-up prompt that asks the user for additional activity.
  For example, asking "Do you want to order a drink with your pizza?"

  </li> </ul> If you specify an existing intent name to update the intent,
  Amazon Lex replaces the values in the `$LATEST` version of the slot type
  with the values in the request. Amazon Lex removes fields that you don't
  provide in the request. If you don't specify the required fields, Amazon
  Lex throws an exception.

  For more information, see `how-it-works`.

  This operation requires permissions for the `lex:PutIntent` action.
  """
  def put_intent(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/intents/{name}/versions/$LATEST",
      input:            input,
      options:          options,
      action:           "PutIntent",
      method:           :put,
      input_shape:      "PutIntentRequest",
      output_shape:     "PutIntentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a specific version of a slot type. In addition to
  specifying the slot type name, you must specify the slot type version.

  This operation requires permissions for the `lex:GetSlotType` action.
  """
  def get_slot_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/slottypes/{name}/versions/{version}",
      input:            input,
      options:          options,
      action:           "GetSlotType",
      method:           :get,
      input_shape:      "GetSlotTypeRequest",
      output_shape:     "GetSlotTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new version of a slot type based on the `$LATEST` version of the
  specified slot type. If the `$LATEST` version of this resource has not
  changed since the last version that you created, Amazon Lex doesn't create
  a new version. It returns the last version that you created.

  <note> You can update only the `$LATEST` version of a slot type. You can't
  update the numbered versions that you create with the
  `CreateSlotTypeVersion` operation.

  </note> When you create a version of a slot type, Amazon Lex sets the
  version to 1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permissions for the `lex:CreateSlotTypeVersion`
  action.
  """
  def create_slot_type_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/slottypes/{name}/versions",
      input:            input,
      options:          options,
      action:           "CreateSlotTypeVersion",
      method:           :post,
      input_shape:      "CreateSlotTypeVersionRequest",
      output_shape:     "CreateSlotTypeVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a custom slot type or replaces an existing custom slot type.

  To create a custom slot type, specify a name for the slot type and a set of
  enumeration values, which are the values that a slot of this type can
  assume. For more information, see `how-it-works`.

  If you specify the name of an existing slot type, the fields in the request
  replace the existing values in the `$LATEST` version of the slot type.
  Amazon Lex removes the fields that you don't provide in the request. If you
  don't specify required fields, Amazon Lex throws an exception.

  This operation requires permissions for the `lex:PutSlotType` action.
  """
  def put_slot_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/slottypes/{name}/versions/$LATEST",
      input:            input,
      options:          options,
      action:           "PutSlotType",
      method:           :put,
      input_shape:      "PutSlotTypeRequest",
      output_shape:     "PutSlotTypeResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "lex-models",
      target_prefix:    nil,
      endpoint_prefix:  "models.lex",
      type:             :json,
      version:          "2017-04-19",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"InternalFailureException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "PutBotResponse" => %{"members" => %{"abortStatement" => %{"shape" => "Statement"}, "checksum" => %{"shape" => "String"}, "childDirected" => %{"shape" => "Boolean"}, "clarificationPrompt" => %{"shape" => "Prompt"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "failureReason" => %{"shape" => "String"}, "idleSessionTTLInSeconds" => %{"shape" => "SessionTTL"}, "intents" => %{"shape" => "IntentList"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "locale" => %{"shape" => "Locale"}, "name" => %{"shape" => "BotName"}, "status" => %{"shape" => "Status"}, "version" => %{"shape" => "Version"}, "voiceId" => %{"shape" => "String"}}, "type" => "structure"}, "GetBotAliasesRequest" => %{"members" => %{"botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nameContains" => %{"location" => "querystring", "locationName" => "nameContains", "shape" => "AliasName"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "required" => ["botName"], "type" => "structure"}, "GetSlotTypeVersionsRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "SlotTypeName"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "required" => ["name"], "type" => "structure"}, "GetBuiltinSlotTypesRequest" => %{"members" => %{"locale" => %{"location" => "querystring", "locationName" => "locale", "shape" => "Locale"}, "maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}, "signatureContains" => %{"location" => "querystring", "locationName" => "signatureContains", "shape" => "String"}}, "type" => "structure"}, "GetBotRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "BotName"}, "versionOrAlias" => %{"location" => "uri", "locationName" => "versionoralias", "shape" => "String"}}, "required" => ["name", "versionOrAlias"], "type" => "structure"}, "PutSlotTypeRequest" => %{"members" => %{"checksum" => %{"shape" => "String"}, "description" => %{"shape" => "Description"}, "enumerationValues" => %{"shape" => "EnumerationValues"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "SlotTypeName"}, "valueSelectionStrategy" => %{"shape" => "SlotValueSelectionStrategy"}}, "required" => ["name"], "type" => "structure"}, "PreconditionFailedException" => %{"error" => %{"httpStatusCode" => 412}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteIntentVersionRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "IntentName"}, "version" => %{"location" => "uri", "locationName" => "version", "shape" => "NumericalVersion"}}, "required" => ["name", "version"], "type" => "structure"}, "GetIntentRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "IntentName"}, "version" => %{"location" => "uri", "locationName" => "version", "shape" => "Version"}}, "required" => ["name", "version"], "type" => "structure"}, "ResourceType" => %{"enum" => ["BOT"], "type" => "string"}, "AliasName" => %{"max" => 100, "min" => 1, "pattern" => "^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)", "type" => "string"}, "Utterance" => %{"max" => 200, "min" => 1, "type" => "string"}, "GetSlotTypeVersionsResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "slotTypes" => %{"shape" => "SlotTypeMetadataList"}}, "type" => "structure"}, "PutIntentResponse" => %{"members" => %{"checksum" => %{"shape" => "String"}, "conclusionStatement" => %{"shape" => "Statement"}, "confirmationPrompt" => %{"shape" => "Prompt"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "dialogCodeHook" => %{"shape" => "CodeHook"}, "followUpPrompt" => %{"shape" => "FollowUpPrompt"}, "fulfillmentActivity" => %{"shape" => "FulfillmentActivity"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "IntentName"}, "parentIntentSignature" => %{"shape" => "BuiltinIntentSignature"}, "rejectionStatement" => %{"shape" => "Statement"}, "sampleUtterances" => %{"shape" => "IntentUtteranceList"}, "slots" => %{"shape" => "SlotList"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "GetBuiltinSlotTypesResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "slotTypes" => %{"shape" => "BuiltinSlotTypeMetadataList"}}, "type" => "structure"}, "SlotName" => %{"max" => 100, "min" => 1, "pattern" => "^[a-zA-Z]+(((_|.)[a-zA-Z]+)*|([a-zA-Z]+(_|.))*|(_|.))", "type" => "string"}, "Boolean" => %{"type" => "boolean"}, "Prompt" => %{"members" => %{"maxAttempts" => %{"shape" => "PromptMaxAttempts"}, "messages" => %{"shape" => "MessageList"}, "responseCard" => %{"shape" => "ResponseCard"}}, "required" => ["messages", "maxAttempts"], "type" => "structure"}, "CreateSlotTypeVersionRequest" => %{"members" => %{"checksum" => %{"shape" => "String"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "SlotTypeName"}}, "required" => ["name"], "type" => "structure"}, "SessionTTL" => %{"max" => 86400, "min" => 60, "type" => "integer"}, "PutIntentRequest" => %{"members" => %{"checksum" => %{"shape" => "String"}, "conclusionStatement" => %{"shape" => "Statement"}, "confirmationPrompt" => %{"shape" => "Prompt"}, "description" => %{"shape" => "Description"}, "dialogCodeHook" => %{"shape" => "CodeHook"}, "followUpPrompt" => %{"shape" => "FollowUpPrompt"}, "fulfillmentActivity" => %{"shape" => "FulfillmentActivity"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "IntentName"}, "parentIntentSignature" => %{"shape" => "BuiltinIntentSignature"}, "rejectionStatement" => %{"shape" => "Statement"}, "sampleUtterances" => %{"shape" => "IntentUtteranceList"}, "slots" => %{"shape" => "SlotList"}}, "required" => ["name"], "type" => "structure"}, "Count" => %{"type" => "integer"}, "ResponseCard" => %{"max" => 50000, "min" => 1, "type" => "string"}, "DeleteBotRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "BotName"}}, "required" => ["name"], "type" => "structure"}, "UtteranceList" => %{"members" => %{"botVersion" => %{"shape" => "Version"}, "utterances" => %{"shape" => "ListOfUtterance"}}, "type" => "structure"}, "GetBotChannelAssociationsResponse" => %{"members" => %{"botChannelAssociations" => %{"shape" => "BotChannelAssociationList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ReferenceType" => %{"enum" => ["Intent", "Bot", "BotAlias", "BotChannel"], "type" => "string"}, "SlotValueSelectionStrategy" => %{"enum" => ["ORIGINAL_VALUE", "TOP_RESOLUTION"], "type" => "string"}, "LocaleList" => %{"member" => %{"shape" => "Locale"}, "type" => "list"}, "ConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "FollowUpPrompt" => %{"members" => %{"prompt" => %{"shape" => "Prompt"}, "rejectionStatement" => %{"shape" => "Statement"}}, "required" => ["prompt", "rejectionStatement"], "type" => "structure"}, "GetBotChannelAssociationsRequest" => %{"members" => %{"botAlias" => %{"location" => "uri", "locationName" => "aliasName", "shape" => "AliasNameOrListAll"}, "botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nameContains" => %{"location" => "querystring", "locationName" => "nameContains", "shape" => "BotChannelName"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "required" => ["botName", "botAlias"], "type" => "structure"}, "GetSlotTypesResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "slotTypes" => %{"shape" => "SlotTypeMetadataList"}}, "type" => "structure"}, "ListsOfUtterances" => %{"member" => %{"shape" => "UtteranceList"}, "type" => "list"}, "DeleteSlotTypeVersionRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "SlotTypeName"}, "version" => %{"location" => "uri", "locationName" => "version", "shape" => "NumericalVersion"}}, "required" => ["name", "version"], "type" => "structure"}, "GetBuiltinIntentsResponse" => %{"members" => %{"intents" => %{"shape" => "BuiltinIntentMetadataList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "StatusType" => %{"enum" => ["Detected", "Missed"], "type" => "string"}, "ResourceInUseException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"exampleReference" => %{"shape" => "ResourceReference"}, "referenceType" => %{"shape" => "ReferenceType"}}, "type" => "structure"}, "BuiltinIntentMetadata" => %{"members" => %{"signature" => %{"shape" => "BuiltinIntentSignature"}, "supportedLocales" => %{"shape" => "LocaleList"}}, "type" => "structure"}, "SlotTypeMetadata" => %{"members" => %{"createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "SlotTypeName"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "Name" => %{"max" => 64, "min" => 1, "pattern" => "[a-zA-Z_]+", "type" => "string"}, "GetBuiltinIntentResponse" => %{"members" => %{"signature" => %{"shape" => "BuiltinIntentSignature"}, "slots" => %{"shape" => "BuiltinIntentSlotList"}, "supportedLocales" => %{"shape" => "LocaleList"}}, "type" => "structure"}, "SlotTypeName" => %{"max" => 100, "min" => 1, "pattern" => "^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)", "type" => "string"}, "GetSlotTypesRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nameContains" => %{"location" => "querystring", "locationName" => "nameContains", "shape" => "SlotTypeName"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "type" => "structure"}, "GetBotsRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nameContains" => %{"location" => "querystring", "locationName" => "nameContains", "shape" => "BotName"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "type" => "structure"}, "CreateBotVersionRequest" => %{"members" => %{"checksum" => %{"shape" => "String"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "BotName"}}, "required" => ["name"], "type" => "structure"}, "ListOfUtterance" => %{"member" => %{"shape" => "UtteranceData"}, "type" => "list"}, "CreateIntentVersionResponse" => %{"members" => %{"checksum" => %{"shape" => "String"}, "conclusionStatement" => %{"shape" => "Statement"}, "confirmationPrompt" => %{"shape" => "Prompt"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "dialogCodeHook" => %{"shape" => "CodeHook"}, "followUpPrompt" => %{"shape" => "FollowUpPrompt"}, "fulfillmentActivity" => %{"shape" => "FulfillmentActivity"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "IntentName"}, "parentIntentSignature" => %{"shape" => "BuiltinIntentSignature"}, "rejectionStatement" => %{"shape" => "Statement"}, "sampleUtterances" => %{"shape" => "IntentUtteranceList"}, "slots" => %{"shape" => "SlotList"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "Description" => %{"max" => 200, "min" => 0, "type" => "string"}, "Version" => %{"max" => 64, "min" => 1, "pattern" => "\\$LATEST|[0-9]+", "type" => "string"}, "EnumerationValue" => %{"members" => %{"synonyms" => %{"shape" => "SynonymList"}, "value" => %{"shape" => "Value"}}, "required" => ["value"], "type" => "structure"}, "Message" => %{"members" => %{"content" => %{"shape" => "ContentString"}, "contentType" => %{"shape" => "ContentType"}}, "required" => ["contentType", "content"], "type" => "structure"}, "ExportStatus" => %{"enum" => ["IN_PROGRESS", "READY", "FAILED"], "type" => "string"}, "UtteranceString" => %{"max" => 2000, "min" => 1, "type" => "string"}, "DeleteBotAliasRequest" => %{"members" => %{"botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "AliasName"}}, "required" => ["name", "botName"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "GetIntentsRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nameContains" => %{"location" => "querystring", "locationName" => "nameContains", "shape" => "IntentName"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "type" => "structure"}, "ProcessBehavior" => %{"enum" => ["SAVE", "BUILD"], "type" => "string"}, "PutBotRequest" => %{"members" => %{"abortStatement" => %{"shape" => "Statement"}, "checksum" => %{"shape" => "String"}, "childDirected" => %{"shape" => "Boolean"}, "clarificationPrompt" => %{"shape" => "Prompt"}, "description" => %{"shape" => "Description"}, "idleSessionTTLInSeconds" => %{"shape" => "SessionTTL"}, "intents" => %{"shape" => "IntentList"}, "locale" => %{"shape" => "Locale"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "BotName"}, "processBehavior" => %{"shape" => "ProcessBehavior"}, "voiceId" => %{"shape" => "String"}}, "required" => ["name", "locale", "childDirected"], "type" => "structure"}, "Statement" => %{"members" => %{"messages" => %{"shape" => "MessageList"}, "responseCard" => %{"shape" => "ResponseCard"}}, "required" => ["messages"], "type" => "structure"}, "ChannelConfigurationMap" => %{"key" => %{"shape" => "String"}, "max" => 10, "min" => 1, "sensitive" => true, "type" => "map", "value" => %{"shape" => "String"}}, "ChannelType" => %{"enum" => ["Facebook", "Slack", "Twilio-Sms"], "type" => "string"}, "CreateIntentVersionRequest" => %{"members" => %{"checksum" => %{"shape" => "String"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "IntentName"}}, "required" => ["name"], "type" => "structure"}, "NotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "BuiltinSlotTypeMetadataList" => %{"member" => %{"shape" => "BuiltinSlotTypeMetadata"}, "type" => "list"}, "GetBotVersionsResponse" => %{"members" => %{"bots" => %{"shape" => "BotMetadataList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "NumericalVersion" => %{"max" => 64, "min" => 1, "pattern" => "[0-9]+", "type" => "string"}, "Intent" => %{"members" => %{"intentName" => %{"shape" => "IntentName"}, "intentVersion" => %{"shape" => "Version"}}, "required" => ["intentName", "intentVersion"], "type" => "structure"}, "MaxResults" => %{"box" => true, "max" => 50, "min" => 1, "type" => "integer"}, "PutBotAliasResponse" => %{"members" => %{"botName" => %{"shape" => "BotName"}, "botVersion" => %{"shape" => "Version"}, "checksum" => %{"shape" => "String"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "AliasName"}}, "type" => "structure"}, "GetSlotTypeRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "SlotTypeName"}, "version" => %{"location" => "uri", "locationName" => "version", "shape" => "Version"}}, "required" => ["name", "version"], "type" => "structure"}, "UtteranceData" => %{"members" => %{"count" => %{"shape" => "Count"}, "distinctUsers" => %{"shape" => "Count"}, "firstUtteredDate" => %{"shape" => "Timestamp"}, "lastUtteredDate" => %{"shape" => "Timestamp"}, "utteranceString" => %{"shape" => "UtteranceString"}}, "type" => "structure"}, "BotMetadata" => %{"members" => %{"createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "BotName"}, "status" => %{"shape" => "Status"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "BuiltinIntentSlotList" => %{"member" => %{"shape" => "BuiltinIntentSlot"}, "type" => "list"}, "BuiltinIntentSlot" => %{"members" => %{"name" => %{"shape" => "String"}}, "type" => "structure"}, "SlotTypeMetadataList" => %{"member" => %{"shape" => "SlotTypeMetadata"}, "type" => "list"}, "GetExportResponse" => %{"members" => %{"exportStatus" => %{"shape" => "ExportStatus"}, "exportType" => %{"shape" => "ExportType"}, "failureReason" => %{"shape" => "String"}, "name" => %{"shape" => "Name"}, "resourceType" => %{"shape" => "ResourceType"}, "url" => %{"shape" => "String"}, "version" => %{"shape" => "NumericalVersion"}}, "type" => "structure"}, "BadRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ContentType" => %{"enum" => ["PlainText", "SSML"], "type" => "string"}, "DeleteBotVersionRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "BotName"}, "version" => %{"location" => "uri", "locationName" => "version", "shape" => "NumericalVersion"}}, "required" => ["name", "version"], "type" => "structure"}, "CreateSlotTypeVersionResponse" => %{"members" => %{"checksum" => %{"shape" => "String"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "enumerationValues" => %{"shape" => "EnumerationValues"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "SlotTypeName"}, "valueSelectionStrategy" => %{"shape" => "SlotValueSelectionStrategy"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "String"}}, "type" => "structure"}, "GetBuiltinIntentsRequest" => %{"members" => %{"locale" => %{"location" => "querystring", "locationName" => "locale", "shape" => "Locale"}, "maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}, "signatureContains" => %{"location" => "querystring", "locationName" => "signatureContains", "shape" => "String"}}, "type" => "structure"}, "Status" => %{"enum" => ["BUILDING", "READY", "FAILED", "NOT_BUILT"], "type" => "string"}, "GetBotAliasResponse" => %{"members" => %{"botName" => %{"shape" => "BotName"}, "botVersion" => %{"shape" => "Version"}, "checksum" => %{"shape" => "String"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "AliasName"}}, "type" => "structure"}, "ExportType" => %{"enum" => ["ALEXA_SKILLS_KIT"], "type" => "string"}, "BuiltinSlotTypeMetadata" => %{"members" => %{"signature" => %{"shape" => "BuiltinSlotTypeSignature"}, "supportedLocales" => %{"shape" => "LocaleList"}}, "type" => "structure"}, "SynonymList" => %{"member" => %{"shape" => "Value"}, "type" => "list"}, "GetIntentResponse" => %{"members" => %{"checksum" => %{"shape" => "String"}, "conclusionStatement" => %{"shape" => "Statement"}, "confirmationPrompt" => %{"shape" => "Prompt"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "dialogCodeHook" => %{"shape" => "CodeHook"}, "followUpPrompt" => %{"shape" => "FollowUpPrompt"}, "fulfillmentActivity" => %{"shape" => "FulfillmentActivity"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "IntentName"}, "parentIntentSignature" => %{"shape" => "BuiltinIntentSignature"}, "rejectionStatement" => %{"shape" => "Statement"}, "sampleUtterances" => %{"shape" => "IntentUtteranceList"}, "slots" => %{"shape" => "SlotList"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "Locale" => %{"enum" => ["en-US"], "type" => "string"}, "Value" => %{"max" => 140, "min" => 1, "type" => "string"}, "GetBuiltinIntentRequest" => %{"members" => %{"signature" => %{"location" => "uri", "locationName" => "signature", "shape" => "BuiltinIntentSignature"}}, "required" => ["signature"], "type" => "structure"}, "CustomOrBuiltinSlotTypeName" => %{"max" => 100, "min" => 1, "pattern" => "^([a-zA-Z]|AMAZON.)+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)", "type" => "string"}, "GetBotsResponse" => %{"members" => %{"bots" => %{"shape" => "BotMetadataList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "AliasNameOrListAll" => %{"max" => 100, "min" => 1, "pattern" => "^(-|^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*))$", "type" => "string"}, "CodeHook" => %{"members" => %{"messageVersion" => %{"shape" => "MessageVersion"}, "uri" => %{"shape" => "LambdaARN"}}, "required" => ["uri", "messageVersion"], "type" => "structure"}, "SlotList" => %{"max" => 100, "member" => %{"shape" => "Slot"}, "min" => 0, "type" => "list"}, "GetBotAliasesResponse" => %{"members" => %{"BotAliases" => %{"shape" => "BotAliasMetadataList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "CreateBotVersionResponse" => %{"members" => %{"abortStatement" => %{"shape" => "Statement"}, "checksum" => %{"shape" => "String"}, "childDirected" => %{"shape" => "Boolean"}, "clarificationPrompt" => %{"shape" => "Prompt"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "failureReason" => %{"shape" => "String"}, "idleSessionTTLInSeconds" => %{"shape" => "SessionTTL"}, "intents" => %{"shape" => "IntentList"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "locale" => %{"shape" => "Locale"}, "name" => %{"shape" => "BotName"}, "status" => %{"shape" => "Status"}, "version" => %{"shape" => "Version"}, "voiceId" => %{"shape" => "String"}}, "type" => "structure"}, "MessageList" => %{"max" => 5, "member" => %{"shape" => "Message"}, "min" => 1, "type" => "list"}, "FulfillmentActivity" => %{"members" => %{"codeHook" => %{"shape" => "CodeHook"}, "type" => %{"shape" => "FulfillmentActivityType"}}, "required" => ["type"], "type" => "structure"}, "Priority" => %{"max" => 100, "min" => 0, "type" => "integer"}, "Slot" => %{"members" => %{"description" => %{"shape" => "Description"}, "name" => %{"shape" => "SlotName"}, "priority" => %{"shape" => "Priority"}, "responseCard" => %{"shape" => "ResponseCard"}, "sampleUtterances" => %{"shape" => "SlotUtteranceList"}, "slotConstraint" => %{"shape" => "SlotConstraint"}, "slotType" => %{"shape" => "CustomOrBuiltinSlotTypeName"}, "slotTypeVersion" => %{"shape" => "Version"}, "valueElicitationPrompt" => %{"shape" => "Prompt"}}, "required" => ["name", "slotConstraint"], "type" => "structure"}, "GetBotChannelAssociationRequest" => %{"members" => %{"botAlias" => %{"location" => "uri", "locationName" => "aliasName", "shape" => "AliasName"}, "botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "BotChannelName"}}, "required" => ["name", "botName", "botAlias"], "type" => "structure"}, "BotVersions" => %{"max" => 5, "member" => %{"shape" => "Version"}, "min" => 1, "type" => "list"}, "GetBotChannelAssociationResponse" => %{"members" => %{"botAlias" => %{"shape" => "AliasName"}, "botConfiguration" => %{"shape" => "ChannelConfigurationMap"}, "botName" => %{"shape" => "BotName"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "name" => %{"shape" => "BotChannelName"}, "type" => %{"shape" => "ChannelType"}}, "type" => "structure"}, "GetSlotTypeResponse" => %{"members" => %{"checksum" => %{"shape" => "String"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "enumerationValues" => %{"shape" => "EnumerationValues"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "SlotTypeName"}, "valueSelectionStrategy" => %{"shape" => "SlotValueSelectionStrategy"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "GetBotVersionsRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "BotName"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "required" => ["name"], "type" => "structure"}, "BotChannelAssociation" => %{"members" => %{"botAlias" => %{"shape" => "AliasName"}, "botConfiguration" => %{"shape" => "ChannelConfigurationMap"}, "botName" => %{"shape" => "BotName"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "name" => %{"shape" => "BotChannelName"}, "type" => %{"shape" => "ChannelType"}}, "type" => "structure"}, "IntentName" => %{"max" => 100, "min" => 1, "pattern" => "^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)", "type" => "string"}, "GetBotResponse" => %{"members" => %{"abortStatement" => %{"shape" => "Statement"}, "checksum" => %{"shape" => "String"}, "childDirected" => %{"shape" => "Boolean"}, "clarificationPrompt" => %{"shape" => "Prompt"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "failureReason" => %{"shape" => "String"}, "idleSessionTTLInSeconds" => %{"shape" => "SessionTTL"}, "intents" => %{"shape" => "IntentList"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "locale" => %{"shape" => "Locale"}, "name" => %{"shape" => "BotName"}, "status" => %{"shape" => "Status"}, "version" => %{"shape" => "Version"}, "voiceId" => %{"shape" => "String"}}, "type" => "structure"}, "BuiltinIntentMetadataList" => %{"member" => %{"shape" => "BuiltinIntentMetadata"}, "type" => "list"}, "LambdaARN" => %{"max" => 2048, "min" => 20, "pattern" => "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", "type" => "string"}, "GetUtterancesViewRequest" => %{"members" => %{"botName" => %{"location" => "uri", "locationName" => "botname", "shape" => "BotName"}, "botVersions" => %{"location" => "querystring", "locationName" => "bot_versions", "shape" => "BotVersions"}, "statusType" => %{"location" => "querystring", "locationName" => "status_type", "shape" => "StatusType"}}, "required" => ["botName", "botVersions", "statusType"], "type" => "structure"}, "PutSlotTypeResponse" => %{"members" => %{"checksum" => %{"shape" => "String"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "enumerationValues" => %{"shape" => "EnumerationValues"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "SlotTypeName"}, "valueSelectionStrategy" => %{"shape" => "SlotValueSelectionStrategy"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "ResourceReference" => %{"members" => %{"name" => %{"shape" => "Name"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "UserId" => %{"max" => 100, "min" => 2, "type" => "string"}, "SlotUtteranceList" => %{"max" => 10, "member" => %{"shape" => "Utterance"}, "min" => 0, "type" => "list"}, "IntentMetadataList" => %{"member" => %{"shape" => "IntentMetadata"}, "type" => "list"}, "GetIntentVersionsResponse" => %{"members" => %{"intents" => %{"shape" => "IntentMetadataList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DeleteUtterancesRequest" => %{"members" => %{"botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "userId" => %{"location" => "uri", "locationName" => "userId", "shape" => "UserId"}}, "required" => ["botName", "userId"], "type" => "structure"}, "DeleteBotChannelAssociationRequest" => %{"members" => %{"botAlias" => %{"location" => "uri", "locationName" => "aliasName", "shape" => "AliasName"}, "botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "BotChannelName"}}, "required" => ["name", "botName", "botAlias"], "type" => "structure"}, "PromptMaxAttempts" => %{"max" => 5, "min" => 1, "type" => "integer"}, "ContentString" => %{"max" => 1000, "min" => 1, "type" => "string"}, "BotChannelAssociationList" => %{"member" => %{"shape" => "BotChannelAssociation"}, "type" => "list"}, "GetIntentsResponse" => %{"members" => %{"intents" => %{"shape" => "IntentMetadataList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "PutBotAliasRequest" => %{"members" => %{"botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "botVersion" => %{"shape" => "Version"}, "checksum" => %{"shape" => "String"}, "description" => %{"shape" => "Description"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "AliasName"}}, "required" => ["name", "botVersion", "botName"], "type" => "structure"}, "IntentMetadata" => %{"members" => %{"createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "IntentName"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "FulfillmentActivityType" => %{"enum" => ["ReturnIntent", "CodeHook"], "type" => "string"}, "GetExportRequest" => %{"members" => %{"exportType" => %{"location" => "querystring", "locationName" => "exportType", "shape" => "ExportType"}, "name" => %{"location" => "querystring", "locationName" => "name", "shape" => "Name"}, "resourceType" => %{"location" => "querystring", "locationName" => "resourceType", "shape" => "ResourceType"}, "version" => %{"location" => "querystring", "locationName" => "version", "shape" => "NumericalVersion"}}, "required" => ["name", "version", "resourceType", "exportType"], "type" => "structure"}, "BuiltinIntentSignature" => %{"type" => "string"}, "EnumerationValues" => %{"max" => 10000, "member" => %{"shape" => "EnumerationValue"}, "min" => 1, "type" => "list"}, "BotChannelName" => %{"max" => 100, "min" => 1, "pattern" => "^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)", "type" => "string"}, "BotName" => %{"max" => 50, "min" => 2, "pattern" => "^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)", "type" => "string"}, "BotMetadataList" => %{"member" => %{"shape" => "BotMetadata"}, "type" => "list"}, "GetBotAliasRequest" => %{"members" => %{"botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "AliasName"}}, "required" => ["name", "botName"], "type" => "structure"}, "IntentList" => %{"member" => %{"shape" => "Intent"}, "type" => "list"}, "NextToken" => %{"type" => "string"}, "IntentUtteranceList" => %{"max" => 1500, "member" => %{"shape" => "Utterance"}, "min" => 0, "type" => "list"}, "GetIntentVersionsRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "name" => %{"location" => "uri", "locationName" => "name", "shape" => "IntentName"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}}, "required" => ["name"], "type" => "structure"}, "DeleteSlotTypeRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "SlotTypeName"}}, "required" => ["name"], "type" => "structure"}, "DeleteIntentRequest" => %{"members" => %{"name" => %{"location" => "uri", "locationName" => "name", "shape" => "IntentName"}}, "required" => ["name"], "type" => "structure"}, "MessageVersion" => %{"max" => 5, "min" => 1, "type" => "string"}, "SlotConstraint" => %{"enum" => ["Required", "Optional"], "type" => "string"}, "BotAliasMetadata" => %{"members" => %{"botName" => %{"shape" => "BotName"}, "botVersion" => %{"shape" => "Version"}, "checksum" => %{"shape" => "String"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Description"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "AliasName"}}, "type" => "structure"}, "BuiltinSlotTypeSignature" => %{"type" => "string"}, "GetUtterancesViewResponse" => %{"members" => %{"botName" => %{"shape" => "BotName"}, "utterances" => %{"shape" => "ListsOfUtterances"}}, "type" => "structure"}, "BotAliasMetadataList" => %{"member" => %{"shape" => "BotAliasMetadata"}, "type" => "list"}}
  end
end