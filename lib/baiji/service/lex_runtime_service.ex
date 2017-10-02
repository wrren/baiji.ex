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
      service:        "runtime.lex",
      endpoint:       "/bot/{botName}/alias/{botAlias}/user/{userId}/content",
      input:          input,
      options:        options,
      action:         "PostContent",
      
      type:           :json,
      version:        "2016-11-28",
      method:         :post
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
      service:        "runtime.lex",
      endpoint:       "/bot/{botName}/alias/{botAlias}/user/{userId}/text",
      input:          input,
      options:        options,
      action:         "PostText",
      
      type:           :json,
      version:        "2016-11-28",
      method:         :post
    }
  end
  
end