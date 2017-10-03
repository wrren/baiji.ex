defmodule Baiji.LexRuntimeService do
  @moduledoc """
  Amazon Lex provides both build and runtime endpoints. Each endpoint
  provides a set of operations (API). Your conversational bot uses the
  runtime API to understand user utterances (user input text or voice). For
  example, suppose a user says "I want pizza", your bot sends this input to
  Amazon Lex using the runtime API. Amazon Lex recognizes that the user
  request is for the OrderPizza intent (one of the intents defined in the
  bot). Then Amazon Lex engages in user conversation on behalf of the bot to
  elicit required information (slot values, such as pizza size and crust
  type), and then performs fulfillment activity (that you configured when you
  created the bot). You use the build-time API to create and manage your
  Amazon Lex bot. For a list of build-time operations, see the build-time
  API, .
  """

  @doc """
  Sends user input (text or speech) to Amazon Lex. Clients use this API to
  send requests to Amazon Lex at runtime. Amazon Lex interprets the user
  input using the machine learning model that it built for the bot.

  In response, Amazon Lex returns the next message to convey to the user.
  Consider the following example messages:

  <ul> <li> For a user input "I would like a pizza," Amazon Lex might return
  a response with a message eliciting slot data (for example, `PizzaSize`):
  "What size pizza would you like?".

  </li> <li> After the user provides all of the pizza order information,
  Amazon Lex might return a response with a message to get user confirmation:
  "Order the pizza?".

  </li> <li> After the user replies "Yes" to the confirmation prompt, Amazon
  Lex might return a conclusion statement: "Thank you, your cheese pizza has
  been ordered.".

  </li> </ul> Not all Amazon Lex messages require a response from the user.
  For example, conclusion statements do not require a response. Some messages
  require only a yes or no response. In addition to the `message`, Amazon Lex
  provides additional context about the message in the response that you can
  use to enhance client behavior, such as displaying the appropriate client
  user interface. Consider the following examples:

  <ul> <li> If the message is to elicit slot data, Amazon Lex returns the
  following context information:

  <ul> <li> `x-amz-lex-dialog-state` header set to `ElicitSlot`

  </li> <li> `x-amz-lex-intent-name` header set to the intent name in the
  current context

  </li> <li> `x-amz-lex-slot-to-elicit` header set to the slot name for which
  the `message` is eliciting information

  </li> <li> `x-amz-lex-slots` header set to a map of slots configured for
  the intent with their current values

  </li> </ul> </li> <li> If the message is a confirmation prompt, the
  `x-amz-lex-dialog-state` header is set to `Confirmation` and the
  `x-amz-lex-slot-to-elicit` header is omitted.

  </li> <li> If the message is a clarification prompt configured for the
  intent, indicating that the user intent is not understood, the
  `x-amz-dialog-state` header is set to `ElicitIntent` and the
  `x-amz-slot-to-elicit` header is omitted.

  </li> </ul> In addition, Amazon Lex also returns your application-specific
  `sessionAttributes`. For more information, see [Managing Conversation
  Context](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  def post_content(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bot/{botName}/alias/{botAlias}/user/{userId}/content",
      input:            input,
      options:          options,
      action:           "PostContent",
      method:           :post,
      input_shape:      "PostContentRequest",
      output_shape:     "PostContentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sends user input (text-only) to Amazon Lex. Client applications can use
  this API to send requests to Amazon Lex at runtime. Amazon Lex then
  interprets the user input using the machine learning model it built for the
  bot.

  In response, Amazon Lex returns the next `message` to convey to the user an
  optional `responseCard` to display. Consider the following example
  messages:

  <ul> <li> For a user input "I would like a pizza", Amazon Lex might return
  a response with a message eliciting slot data (for example, PizzaSize):
  "What size pizza would you like?"

  </li> <li> After the user provides all of the pizza order information,
  Amazon Lex might return a response with a message to obtain user
  confirmation "Proceed with the pizza order?".

  </li> <li> After the user replies to a confirmation prompt with a "yes",
  Amazon Lex might return a conclusion statement: "Thank you, your cheese
  pizza has been ordered.".

  </li> </ul> Not all Amazon Lex messages require a user response. For
  example, a conclusion statement does not require a response. Some messages
  require only a "yes" or "no" user response. In addition to the `message`,
  Amazon Lex provides additional context about the message in the response
  that you might use to enhance client behavior, for example, to display the
  appropriate client user interface. These are the `slotToElicit`,
  `dialogState`, `intentName`, and `slots` fields in the response. Consider
  the following examples:

  <ul> <li> If the message is to elicit slot data, Amazon Lex returns the
  following context information:

  <ul> <li> `dialogState` set to ElicitSlot

  </li> <li> `intentName` set to the intent name in the current context

  </li> <li> `slotToElicit` set to the slot name for which the `message` is
  eliciting information

  </li> <li> `slots` set to a map of slots, configured for the intent, with
  currently known values

  </li> </ul> </li> <li> If the message is a confirmation prompt, the
  `dialogState` is set to ConfirmIntent and `SlotToElicit` is set to null.

  </li> <li> If the message is a clarification prompt (configured for the
  intent) that indicates that user intent is not understood, the
  `dialogState` is set to ElicitIntent and `slotToElicit` is set to null.

  </li> </ul> In addition, Amazon Lex also returns your application-specific
  `sessionAttributes`. For more information, see [Managing Conversation
  Context](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  def post_text(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/bot/{botName}/alias/{botAlias}/user/{userId}/text",
      input:            input,
      options:          options,
      action:           "PostText",
      method:           :post,
      input_shape:      "PostTextRequest",
      output_shape:     "PostTextResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "runtime.lex",
      target_prefix:    nil,
      endpoint_prefix:  "runtime.lex",
      type:             :json,
      version:          "2016-11-28",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"StringWithLength" => %{"max" => 80, "min" => 1, "type" => "string"}, "InternalFailureException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "PostContentRequest" => %{"members" => %{"accept" => %{"location" => "header", "locationName" => "Accept", "shape" => "Accept"}, "botAlias" => %{"location" => "uri", "locationName" => "botAlias", "shape" => "BotAlias"}, "botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "contentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "HttpContentType"}, "inputStream" => %{"shape" => "BlobStream"}, "sessionAttributes" => %{"jsonvalue" => true, "location" => "header", "locationName" => "x-amz-lex-session-attributes", "shape" => "String"}, "userId" => %{"location" => "uri", "locationName" => "userId", "shape" => "UserId"}}, "payload" => "inputStream", "required" => ["botName", "botAlias", "userId", "contentType", "inputStream"], "type" => "structure"}, "StringUrlWithLength" => %{"max" => 2048, "min" => 1, "type" => "string"}, "String" => %{"type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "BadGatewayException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ResponseCard" => %{"members" => %{"contentType" => %{"shape" => "ContentType"}, "genericAttachments" => %{"shape" => "genericAttachmentList"}, "version" => %{"shape" => "String"}}, "type" => "structure"}, "GenericAttachment" => %{"members" => %{"attachmentLinkUrl" => %{"shape" => "StringUrlWithLength"}, "buttons" => %{"shape" => "listOfButtons"}, "imageUrl" => %{"shape" => "StringUrlWithLength"}, "subTitle" => %{"shape" => "StringWithLength"}, "title" => %{"shape" => "StringWithLength"}}, "type" => "structure"}, "ConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "Accept" => %{"type" => "string"}, "StringMap" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "listOfButtons" => %{"max" => 5, "member" => %{"shape" => "Button"}, "min" => 0, "type" => "list"}, "PostContentResponse" => %{"members" => %{"audioStream" => %{"shape" => "BlobStream"}, "contentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "HttpContentType"}, "dialogState" => %{"location" => "header", "locationName" => "x-amz-lex-dialog-state", "shape" => "DialogState"}, "inputTranscript" => %{"location" => "header", "locationName" => "x-amz-lex-input-transcript", "shape" => "String"}, "intentName" => %{"location" => "header", "locationName" => "x-amz-lex-intent-name", "shape" => "IntentName"}, "message" => %{"location" => "header", "locationName" => "x-amz-lex-message", "shape" => "Text"}, "sessionAttributes" => %{"jsonvalue" => true, "location" => "header", "locationName" => "x-amz-lex-session-attributes", "shape" => "String"}, "slotToElicit" => %{"location" => "header", "locationName" => "x-amz-lex-slot-to-elicit", "shape" => "String"}, "slots" => %{"jsonvalue" => true, "location" => "header", "locationName" => "x-amz-lex-slots", "shape" => "String"}}, "payload" => "audioStream", "type" => "structure"}, "UnsupportedMediaTypeException" => %{"error" => %{"httpStatusCode" => 415}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "RequestTimeoutException" => %{"error" => %{"httpStatusCode" => 408}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "BlobStream" => %{"streaming" => true, "type" => "blob"}, "NotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ButtonValueStringWithLength" => %{"max" => 1000, "min" => 1, "type" => "string"}, "BadRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ContentType" => %{"enum" => ["application/vnd.amazonaws.card.generic"], "type" => "string"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "String"}}, "type" => "structure"}, "NotAcceptableException" => %{"error" => %{"httpStatusCode" => 406}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "Button" => %{"members" => %{"text" => %{"shape" => "ButtonTextStringWithLength"}, "value" => %{"shape" => "ButtonValueStringWithLength"}}, "required" => ["text", "value"], "type" => "structure"}, "ButtonTextStringWithLength" => %{"max" => 15, "min" => 1, "type" => "string"}, "DependencyFailedException" => %{"error" => %{"httpStatusCode" => 424}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "IntentName" => %{"type" => "string"}, "LoopDetectedException" => %{"error" => %{"httpStatusCode" => 508}, "exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UserId" => %{"max" => 100, "min" => 2, "pattern" => "[0-9a-zA-Z._:-]+", "type" => "string"}, "PostTextResponse" => %{"members" => %{"dialogState" => %{"shape" => "DialogState"}, "intentName" => %{"shape" => "IntentName"}, "message" => %{"shape" => "Text"}, "responseCard" => %{"shape" => "ResponseCard"}, "sessionAttributes" => %{"shape" => "StringMap"}, "slotToElicit" => %{"shape" => "String"}, "slots" => %{"shape" => "StringMap"}}, "type" => "structure"}, "genericAttachmentList" => %{"max" => 10, "member" => %{"shape" => "GenericAttachment"}, "min" => 0, "type" => "list"}, "HttpContentType" => %{"type" => "string"}, "BotName" => %{"type" => "string"}, "Text" => %{"max" => 1024, "min" => 1, "type" => "string"}, "PostTextRequest" => %{"members" => %{"botAlias" => %{"location" => "uri", "locationName" => "botAlias", "shape" => "BotAlias"}, "botName" => %{"location" => "uri", "locationName" => "botName", "shape" => "BotName"}, "inputText" => %{"shape" => "Text"}, "sessionAttributes" => %{"shape" => "StringMap"}, "userId" => %{"location" => "uri", "locationName" => "userId", "shape" => "UserId"}}, "required" => ["botName", "botAlias", "userId", "inputText"], "type" => "structure"}, "DialogState" => %{"enum" => ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"], "type" => "string"}, "BotAlias" => %{"type" => "string"}}
  end
end