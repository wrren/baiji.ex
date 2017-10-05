defmodule Baiji.Polly do
  @moduledoc """
  Amazon Polly is a web service that makes it easy to synthesize speech from
  text.

  The Amazon Polly service provides API operations for synthesizing
  high-quality speech from plain text and Speech Synthesis Markup Language
  (SSML), along with managing pronunciations lexicons that enable you to get
  the best results for your application domain.
  """

  @doc """
  Deletes the specified pronunciation lexicon stored in an AWS Region. A
  lexicon which has been deleted is not available for speech synthesis, nor
  is it possible to retrieve it using either the `GetLexicon` or
  `ListLexicon` APIs.

  For more information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def delete_lexicon(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/lexicons/{LexiconName}",
      input:            input,
      options:          options,
      action:           "DeleteLexicon",
      method:           :delete,
      input_shape:      "DeleteLexiconInput",
      output_shape:     "DeleteLexiconOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the list of voices that are available for use when requesting
  speech synthesis. Each voice speaks a specified language, is either male or
  female, and is identified by an ID, which is the ASCII version of the voice
  name.

  When synthesizing speech ( `SynthesizeSpeech` ), you provide the voice ID
  for the voice you want from the list of voices returned by
  `DescribeVoices`.

  For example, you want your news reader application to read news in a
  specific language, but giving a user the option to choose the voice. Using
  the `DescribeVoices` operation you can provide the user with a list of
  available voices to select from.

  You can optionally specify a language code to filter the available voices.
  For example, if you specify `en-US`, the operation returns a list of all
  available US English voices.

  This operation requires permissions to perform the `polly:DescribeVoices`
  action.
  """
  def describe_voices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/voices",
      input:            input,
      options:          options,
      action:           "DescribeVoices",
      method:           :get,
      input_shape:      "DescribeVoicesInput",
      output_shape:     "DescribeVoicesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the content of the specified pronunciation lexicon stored in an AWS
  Region. For more information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def get_lexicon(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/lexicons/{LexiconName}",
      input:            input,
      options:          options,
      action:           "GetLexicon",
      method:           :get,
      input_shape:      "GetLexiconInput",
      output_shape:     "GetLexiconOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of pronunciation lexicons stored in an AWS Region. For more
  information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def list_lexicons(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/lexicons",
      input:            input,
      options:          options,
      action:           "ListLexicons",
      method:           :get,
      input_shape:      "ListLexiconsInput",
      output_shape:     "ListLexiconsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same
  name already exists in the region, it is overwritten by the new lexicon.
  Lexicon operations have eventual consistency, therefore, it might take some
  time before the lexicon is available to the SynthesizeSpeech operation.

  For more information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def put_lexicon(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/lexicons/{LexiconName}",
      input:            input,
      options:          options,
      action:           "PutLexicon",
      method:           :put,
      input_shape:      "PutLexiconInput",
      output_shape:     "PutLexiconOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML
  input must be valid, well-formed SSML. Some alphabets might not be
  available with all the voices (for example, Cyrillic might not be read at
  all by English voices) unless phoneme mapping is used. For more
  information, see [How it
  Works](http://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).
  """
  def synthesize_speech(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/v1/speech",
      input:            input,
      options:          options,
      action:           "SynthesizeSpeech",
      method:           :post,
      input_shape:      "SynthesizeSpeechInput",
      output_shape:     "SynthesizeSpeechOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "polly",
      endpoint_prefix:  "polly",
      type:             :rest_json,
      version:          "2016-06-10",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"LexiconContent" => %{"type" => "string"}, "OutputFormat" => %{"enum" => ["json", "mp3", "ogg_vorbis", "pcm"], "type" => "string"}, "Size" => %{"type" => "integer"}, "ServiceFailureException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LanguageName" => %{"type" => "string"}, "PutLexiconOutput" => %{"members" => %{}, "type" => "structure"}, "LexiconAttributes" => %{"members" => %{"Alphabet" => %{"shape" => "Alphabet"}, "LanguageCode" => %{"shape" => "LanguageCode"}, "LastModified" => %{"shape" => "LastModified"}, "LexemesCount" => %{"shape" => "LexemesCount"}, "LexiconArn" => %{"shape" => "LexiconArn"}, "Size" => %{"shape" => "Size"}}, "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "InvalidSampleRateException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LastModified" => %{"type" => "timestamp"}, "LexiconDescriptionList" => %{"member" => %{"shape" => "LexiconDescription"}, "type" => "list"}, "InvalidNextTokenException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MaxLexemeLengthExceededException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "SynthesizeSpeechInput" => %{"members" => %{"LexiconNames" => %{"shape" => "LexiconNameList"}, "OutputFormat" => %{"shape" => "OutputFormat"}, "SampleRate" => %{"shape" => "SampleRate"}, "SpeechMarkTypes" => %{"shape" => "SpeechMarkTypeList"}, "Text" => %{"shape" => "Text"}, "TextType" => %{"shape" => "TextType"}, "VoiceId" => %{"shape" => "VoiceId"}}, "required" => ["OutputFormat", "Text", "VoiceId"], "type" => "structure"}, "InvalidLexiconException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TextLengthExceededException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LanguageCode" => %{"enum" => ["cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR"], "type" => "string"}, "VoiceName" => %{"type" => "string"}, "RequestCharacters" => %{"type" => "integer"}, "VoiceId" => %{"enum" => ["Geraint", "Gwyneth", "Mads", "Naja", "Hans", "Marlene", "Nicole", "Russell", "Amy", "Brian", "Emma", "Raveena", "Ivy", "Joanna", "Joey", "Justin", "Kendra", "Kimberly", "Salli", "Conchita", "Enrique", "Miguel", "Penelope", "Chantal", "Celine", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", "Filiz", "Vicki"], "type" => "string"}, "GetLexiconInput" => %{"members" => %{"Name" => %{"location" => "uri", "locationName" => "LexiconName", "shape" => "LexiconName"}}, "required" => ["Name"], "type" => "structure"}, "UnsupportedPlsAlphabetException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LexiconNameList" => %{"max" => 5, "member" => %{"shape" => "LexiconName"}, "type" => "list"}, "Alphabet" => %{"type" => "string"}, "SpeechMarkTypeList" => %{"max" => 4, "member" => %{"shape" => "SpeechMarkType"}, "type" => "list"}, "SsmlMarksNotSupportedForTextTypeException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DescribeVoicesOutput" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Voices" => %{"shape" => "VoiceList"}}, "type" => "structure"}, "Gender" => %{"enum" => ["Female", "Male"], "type" => "string"}, "ContentType" => %{"type" => "string"}, "Voice" => %{"members" => %{"Gender" => %{"shape" => "Gender"}, "Id" => %{"shape" => "VoiceId"}, "LanguageCode" => %{"shape" => "LanguageCode"}, "LanguageName" => %{"shape" => "LanguageName"}, "Name" => %{"shape" => "VoiceName"}}, "type" => "structure"}, "TextType" => %{"enum" => ["ssml", "text"], "type" => "string"}, "ListLexiconsOutput" => %{"members" => %{"Lexicons" => %{"shape" => "LexiconDescriptionList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DeleteLexiconInput" => %{"members" => %{"Name" => %{"location" => "uri", "locationName" => "LexiconName", "shape" => "LexiconName"}}, "required" => ["Name"], "type" => "structure"}, "SpeechMarkType" => %{"enum" => ["sentence", "ssml", "viseme", "word"], "type" => "string"}, "SynthesizeSpeechOutput" => %{"members" => %{"AudioStream" => %{"shape" => "AudioStream"}, "ContentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "ContentType"}, "RequestCharacters" => %{"location" => "header", "locationName" => "x-amzn-RequestCharacters", "shape" => "RequestCharacters"}}, "payload" => "AudioStream", "type" => "structure"}, "LexiconSizeExceededException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MaxLexiconsNumberExceededException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UnsupportedPlsLanguageException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InvalidSsmlException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LexiconArn" => %{"type" => "string"}, "ListLexiconsInput" => %{"members" => %{"NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "NextToken"}}, "type" => "structure"}, "DescribeVoicesInput" => %{"members" => %{"LanguageCode" => %{"location" => "querystring", "locationName" => "LanguageCode", "shape" => "LanguageCode"}, "NextToken" => %{"location" => "querystring", "locationName" => "NextToken", "shape" => "NextToken"}}, "type" => "structure"}, "GetLexiconOutput" => %{"members" => %{"Lexicon" => %{"shape" => "Lexicon"}, "LexiconAttributes" => %{"shape" => "LexiconAttributes"}}, "type" => "structure"}, "Lexicon" => %{"members" => %{"Content" => %{"shape" => "LexiconContent"}, "Name" => %{"shape" => "LexiconName"}}, "type" => "structure"}, "AudioStream" => %{"streaming" => true, "type" => "blob"}, "VoiceList" => %{"member" => %{"shape" => "Voice"}, "type" => "list"}, "LexemesCount" => %{"type" => "integer"}, "Text" => %{"type" => "string"}, "DeleteLexiconOutput" => %{"members" => %{}, "type" => "structure"}, "NextToken" => %{"type" => "string"}, "SampleRate" => %{"type" => "string"}, "LexiconName" => %{"pattern" => "[0-9A-Za-z]{1,20}", "sensitive" => true, "type" => "string"}, "MarksNotSupportedForFormatException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "LexiconNotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PutLexiconInput" => %{"members" => %{"Content" => %{"shape" => "LexiconContent"}, "Name" => %{"location" => "uri", "locationName" => "LexiconName", "shape" => "LexiconName"}}, "required" => ["Name", "Content"], "type" => "structure"}, "LexiconDescription" => %{"members" => %{"Attributes" => %{"shape" => "LexiconAttributes"}, "Name" => %{"shape" => "LexiconName"}}, "type" => "structure"}}
  end
end