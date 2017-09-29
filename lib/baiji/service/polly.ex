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
      service:        "polly",
      endpoint:       "/v1/lexicons/{LexiconName}",
      input:          input,
      options:        options,
      action:         "DeleteLexicon",
      
      type:           :rest_json,
      method:         :delete
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
      service:        "polly",
      endpoint:       "/v1/voices",
      input:          input,
      options:        options,
      action:         "DescribeVoices",
      
      type:           :rest_json,
      method:         :get
    }
  end
  
  @doc """
  Returns the content of the specified pronunciation lexicon stored in an AWS
  Region. For more information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def get_lexicon(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "polly",
      endpoint:       "/v1/lexicons/{LexiconName}",
      input:          input,
      options:        options,
      action:         "GetLexicon",
      
      type:           :rest_json,
      method:         :get
    }
  end
  
  @doc """
  Returns a list of pronunciation lexicons stored in an AWS Region. For more
  information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def list_lexicons(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "polly",
      endpoint:       "/v1/lexicons",
      input:          input,
      options:        options,
      action:         "ListLexicons",
      
      type:           :rest_json,
      method:         :get
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
      service:        "polly",
      endpoint:       "/v1/lexicons/{LexiconName}",
      input:          input,
      options:        options,
      action:         "PutLexicon",
      
      type:           :rest_json,
      method:         :put
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
      service:        "polly",
      endpoint:       "/v1/speech",
      input:          input,
      options:        options,
      action:         "SynthesizeSpeech",
      
      type:           :rest_json,
      method:         :post
    }
  end
  
end