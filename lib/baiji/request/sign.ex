defmodule Baiji.Request.Sign do
  @moduledoc """
  Implement request signing functions. The code in this file replicates that of the aws-elixir
  library (github.com/jkakar/aws-elixir)
  """
  alias Baiji.{
    Core.Utilities,
    Request,
    Request.Sign,
    Operation
  }

  defstruct request:            nil,
            time:               nil,
            canonical_request:  nil

  @doc """
  Add signing headers to the given request using the AWS Signature Version 4 protocol
  """
  def v4(%Request{} = request) do
    v4(request, Timex.now())
  end

  @doc """
  Add signing headers to the given request using the AWS Signature Version 4 protocol
  """
  def v4(%Request{} = request, time) do   
    %Sign{request: request, time: time}
    |> add_date_header
    |> canonical_request
    |> add_security_token
  end

  @doc """
  Add a formatted date header to the given request's header list
  """
  def add_date_header(%Sign{request: %Request{headers: headers} = req, time: time} = sign) do
    %{sign | request: %{req | headers: [{"X-Amz-Date", Timex.format(time, "{YYYY}{0M}{0D}T{h24}{m}{s}Z")} | headers]}}
  end

  @doc """
  Add a security token header if a security token has been set on the operation struct
  """
  def add_security_token(%Sign{request: %Request{operation: %Operation{security_token: nil}}} = sign), do: sign
  def add_security_token(%Sign{request: %Request{headers: headers, operation: %Operation{security_token: token}} = req} = sign) do
    %{sign | request: %{req | headers: [{"X-Amz-Security-Token", token} | headers]}}    
  end

  @doc """
  Generate a string that contains information about the request in canonical format
  """
  def canonical_request(%Sign{request: %Request{url: url, method: method, headers: headers, body: body}}) do
    method              = String.upcase(Atom.to_string(method))
    %URI{ path: path, 
          query: query} = URI.parse(url)
    canonical_headers   = canonicalize_headers(headers)
    signed_headers      = signed_headers(headers)
    encoded_body        = encode_body(body)

    [
      method,
      path,
      query,
      canonical_headers,
      signed_headers,
      encoded_body
    ]
    |> Enum.join("\n")
  end

  @doc """
  Convert a list of header tuples to canonical format
  """
  def canonicalize_headers(headers) do
    headers
    |> Enum.map(fn {name, value} ->
      name = name
      |> String.downcase
      |> String.trim

      value = value
      |> String.trim

      name <> ":" <> value <> "\n"
    end)
    |> Enum.sort
    |> Enum.join
  end

  @doc """
  Generate a signed headers string by extracting header names, converting them to lower-case and 
  joining them with semicolons.
  """
  def signed_headers(headers) do
    headers
    |> Enum.map(fn {name, _} -> 
      name 
      |> String.trim
      |> String.downcase
    end)
    |> Enum.join(";")
  end

  @doc """
  Encode a body string by generating a SHA256 digest and encoding it to hex
  """
  def encode_body(body) do
    body
    |> Utilities.sha256
    |> Utilities.hexdigest
  end
end