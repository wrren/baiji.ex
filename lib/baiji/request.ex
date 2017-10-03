defmodule Baiji.Request do
  @moduledoc """
  Makes a request to the AWS API based on the contents of an Operation
  struct
  """
  alias Baiji.{
    Request,
    Endpoint,
    Operation
  }

  defstruct operation:  nil,
            method:     nil,
            url:        nil,
            body:       nil,
            headers:    []

  @doc """
  Make a request based on the provided operation
  """
  def make(%Operation{} = op) do
    op
    |> new
    |> add_headers
    |> sign
    |> execute
  end

  @doc """
  Generate a Request struct
  """
  def new(%Operation{input: input, method: method} = op) when map_size(input) == 0 do
    %Request{
      operation: op, 
      url: url(op), 
      body: "", 
      headers: [], 
      method: method
    }
  end
  def new(%Operation{input: input, method: method} = op) do
    %Request{
      operation: op, 
      url: url(op), 
      body: Poison.encode!(input), 
      headers: [], 
      method: method
    }
  end
  @doc """
  Sign the given request using the authentication data contained in its operation struct
  """
  def sign(%Request{} = req) do
    req
    |> Request.Sign.v4
  end

  @doc """
  Determine the host to which the request should be sent based on the operation parameters
  """
  def host(%Operation{region: "local"}), do: "localhost"
  def host(%Operation{region: region, endpoint: %Endpoint{endpoint_prefix: prefix}}) do
    "#{prefix}.#{region}.amazonaws.com"
  end

  @doc """
  Generate a Query string for the given operation
  """
  def query(%Operation{action: action, endpoint: %Endpoint{version: version}}) do
    "?Action=#{action}&Version=#{version}"
  end

  @doc """
  Determine the full URL to which the request should be sent
  """
  def url(%Operation{path: path} = op), do: "https://#{host(op)}#{path}#{query(op)}"

  @doc """
  Add the appropriate headers to the given request on the operation type, version and host
  """
  def add_headers(request) do
    request
    |> add_content_type_header
    |> add_target_header
    |> add_host_header
  end

  @doc """
  Add a content-type header based on the operation's protocol
  """
  def add_content_type_header(%Request{headers: headers, operation: %Operation{endpoint: %Endpoint{type: :ec2}}} = req) do
    %{req | headers: [{"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"} | headers]}
  end
  def add_content_type_header(%Request{headers: headers, operation: %Operation{endpoint: %Endpoint{type: :xml}}} = req) do
    %{req | headers: [{"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"} | headers]}
  end  
  def add_content_type_header(%Request{headers: headers, operation: %Operation{endpoint: %Endpoint{type: :rest_xml}}} = req) do
    %{req | headers: [{"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"} | headers]}
  end
  def add_content_type_header(%Request{headers: headers, operation: %Operation{endpoint: %Endpoint{type: :json}}} = req) do
    %{req | headers: [{"Content-Type", "application/x-amz-json-1.1"} | headers]}
  end
  def add_content_type_header(%Request{headers: headers, operation: %Operation{endpoint: %Endpoint{type: :rest_json}}} = req) do
    %{req | headers: [{"Content-Type", "application/x-amz-json-1.1"} | headers]}
  end

  @doc """
  Add an X-Amz-Target header to the given request based on its target-prefix and action name
  """
  def add_target_header(%Request{operation: %Operation{endpoint: %Endpoint{target_prefix: nil}}} = req), do: req
  def add_target_header(%Request{operation: %Operation{action: action, endpoint: %Endpoint{target_prefix: prefix}}, headers: headers} = req) do
    %{req | headers: [{"X-Amz-Target", "#{prefix}.#{action}"} | headers]}
  end

  @doc """
  Add the appropriate Host header to the request
  """
  def add_host_header(%Request{operation: op, headers: headers} = req) do
    %{req | headers: [{"Host", host(op)} | headers]}
  end

  @doc """
  Execute a Request and generate a Response struct
  """
  def execute(%Request{url: url, method: method, headers: headers, body: body, operation: op}) do
    Operation.debug(op, "Making #{method} request to #{url} with body #{body}...")
    case HTTPoison.request(method, url, body, headers) do
      {:ok, %{status_code: code} = response} when code >= 200 and code <= 300 ->
        {:ok, response}      
      {:ok, %{status_code: code, body: body}} ->
        Operation.error(op, "Got Body: #{body}")
        {:error, "Request returned status code #{code}"}
      {:error, message} ->
        {:error, message}
    end
  end
end