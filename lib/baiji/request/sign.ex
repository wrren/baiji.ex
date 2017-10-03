defmodule Baiji.Request.Sign do
  @moduledoc """
  Implement request signing functions. The code in this file replicates that of the aws-elixir
  library (github.com/jkakar/aws-elixir)
  """
  alias Baiji.{
    Core.Utilities,
    Request,
    Operation,
    Request.Sign
  }

  defstruct request:            nil,
            time:               nil,
            signed_headers:     [],
            canonical_request:  nil,
            string_to_sign:     nil,
            signing_key:        nil,
            signature:          nil

  @doc """
  Add signing headers to the given request using the AWS Signature Version 4 protocol
  """
  def v4(%Request{} = request) do
    v4(request, Timex.now())
  end

  @doc """
  Add signing and authorization headers to the given request using the AWS Signature Version 4 protocol
  """
  def v4(%Request{} = request, time) do   
    %Sign{request: request, time: time}
    |> add_date_header
    |> add_security_token
    |> signed_headers
    |> canonical_request
    |> string_to_sign
    |> signing_key
    |> signature
    |> add_authorization_header
    |> Map.get(:request)
  end

  @doc """
  Add a formatted date header to the given request's header list
  """
  def add_date_header(%Sign{request: %Request{headers: headers} = req, time: time} = sign) do
    %{sign | request: %{req | headers: add_date_header(headers, time)}}
  end
  def add_date_header(headers, time) do
    [{"X-Amz-Date", Timex.format!(time, "{YYYY}{0M}{0D}T{h24}{m}{s}Z")} | headers]
  end

  @doc """
  Add a security token header if a security token has been set on the operation struct
  """
  def add_security_token(%Sign{request: %Request{operation: op, headers: headers} = req} = sign) do
    %{sign | request: %{req | headers: add_security_token(headers, op.security_token)}}        
  end
  def add_security_token(headers, nil), do: headers
  def add_security_token(headers, token), do: [{"X-Amz-Security-Token", token} | headers]

  @doc """
  Generate a string that contains information about the request in canonical format
  """
  def canonical_request(%Sign{request: %Request{url: url, method: method, headers: headers, body: body}} = sign) do
    %{sign | canonical_request: canonical_request(url, method, headers, body)}    
  end
  def canonical_request(url, method, headers, body) do
    method              = String.upcase(Atom.to_string(method))
    %URI{ path: path, 
          query: query} = URI.parse(url)
    canonical_headers   = canonicalize_headers(headers)
    signed_headers      = signed_headers(headers)
    encoded_body        = encode_body(body)

    Enum.join([
      method,
      path,
      canonical_query_string(query),
      canonical_headers,
      signed_headers,
      encoded_body
    ], "\n")
  end

  @doc """
  Build a canonical query string
  """
  def canonical_query_string(nil), do: ""
  def canonical_query_string(query) do
    query
    |> String.split("&")
    |> Enum.sort
    |> Enum.map(fn component ->
      component
      |> String.split("=")
      |> Enum.map(&URI.encode/1)
      |> Enum.join("=")
    end)
    |> Enum.join("&")
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
  def signed_headers(%Sign{request: %Request{headers: headers, operation: op}} = sign) do
    signed = signed_headers(headers)
    Operation.debug(op, "Signed Headers: #{signed}")
    %{sign | signed_headers: signed}
  end
  def signed_headers(headers) when is_list(headers) do
    headers
    |> Enum.map(fn {name, _} -> 
      name 
      |> String.trim
      |> String.downcase
    end)
    |> Enum.sort
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

  @doc """
  Generate a string to sign
  """
  def string_to_sign(%Sign{canonical_request: req, time: time, request: %Request{operation: op}} = sign) do
    sts = string_to_sign(time, op.region, op.service, req)
    Operation.debug(op, "String to Sign: #{inspect sts}")
    %{sign | string_to_sign: sts}
  end
  def string_to_sign(time, region, service, canonical_request) do      
    Enum.join([
      "AWS4-HMAC-SHA256\n",
      Timex.format!(time, "{YYYY}{0M}{0D}T{h24}{m}{s}Z") <> "\n",
      credential_scope(time, region, service) <> "\n",
      Utilities.hexdigest(Utilities.sha256(canonical_request))
    ])
  end

  @doc """
  Generate a credential scope string
  """
  def credential_scope(time, region, service) do
    Enum.join([
      Timex.format!(time, "{YYYY}{0M}{0D}"),
      region,
      service,
      "aws4_request"
    ], "/")
  end

  @doc """
  Generate a signing key using AWS credentials, the target service, time, etc.
  """
  def signing_key(%Sign{request: %Request{operation: op}, time: time} = sign) do
    %{sign | signing_key: signing_key(op.secret_access_key, time, op.region, op.service)}
  end
  def signing_key(secret_access_key, time, region, service) do
    "AWS4"
    |> Kernel.<>(secret_access_key)
    |> Utilities.hmac_sha256(Timex.format!(time, "{YYYY}{0M}{0D}"))
    |> Utilities.hmac_sha256(region)
    |> Utilities.hmac_sha256(service)
    |> Utilities.hmac_sha256("aws4_request")
  end

  @doc """
  Calculate the request signature
  """
  def signature(%Sign{signing_key: key, string_to_sign: string_to_sign} = sign) do
    %{sign | signature: signature(key, string_to_sign)}
  end
  def signature(signing_key, string_to_sign) do
    Utilities.hmac_sha256(signing_key, string_to_sign)
    |> Utilities.hexdigest
  end

  @doc """
  Add an Authorization header to the Request struct
  """
  def add_authorization_header(%Sign{request: %Request{operation: op} = req, time: time} = sign) do
    %{sign | request: %{req | headers: add_authorization_header(
      req.headers,
      op.access_key_id,
      credential_scope(time, op.region, op.service),
      sign.signed_headers,
      sign.signature
    )}}
  end
  def add_authorization_header(headers, access_key_id, credential_scope, signed_headers, signature) do
    [{"Authorization", Enum.join([
      "AWS4-HMAC-SHA256",
      "Credential=" <> Enum.join([access_key_id, credential_scope], "/") <> ",",
      "SignedHeaders=" <> signed_headers <> ",",
      "Signature=" <> signature
    ], " ")} | headers]
  end
end