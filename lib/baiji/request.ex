defmodule Baiji.Request do
  @moduledoc """
  Makes a request to the AWS API based on the contents of an Operation
  struct
  """
  alias Baiji.{
    Request,
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
  end

  @doc """
  Generate a Request struct
  """
  def new(%Operation{input: input, method: method} = op) do
    %Request{operation: op, url: url(op), body: Poison.encode!(input), headers: [], method: method}
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
  def host(%Operation{region: region, service: service}), do: "#{service}.#{region}.amazonaws.com"

  @doc """
  Determine the full URL to which the request should be sent
  """
  def url(%Operation{endpoint: endpoint} = op), do: "https://#{host(op)}#{endpoint}"

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
  def add_content_type_header(%Request{headers: headers, operation: %Operation{type: :ec2}} = req) do
    %{req | headers: [{"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"} | headers]}
  end
  def add_content_type_header(%Request{headers: headers, operation: %Operation{type: :xml}} = req) do
    %{req | headers: [{"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"} | headers]}
  end  
  def add_content_type_header(%Request{headers: headers, operation: %Operation{type: :rest_xml}} = req) do
    %{req | headers: [{"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"} | headers]}
  end
  def add_content_type_header(%Request{headers: headers, operation: %Operation{type: :json}} = req) do
    %{req | headers: [{"Content-Type", "application/x-amz-json-1.1"} | headers]}
  end
  def add_content_type_header(%Request{headers: headers, operation: %Operation{type: :rest_json}} = req) do
    %{req | headers: [{"Content-Type", "application/x-amz-json-1.1"} | headers]}
  end

  @doc """
  Add an X-Amz-Target header to the given request based on its target-prefix and action name
  """
  def add_target_header(%Request{operation: %Operation{target_prefix: nil}} = req), do: req
  def add_target_header(%Request{operation: %Operation{target_prefix: prefix, action: action}, headers: headers} = req) do
    %{req | headers: [{"X-Amz-Target", "#{prefix}.#{action}"} | headers]}
  end

  @doc """
  Add the appropriate Host header to the request
  """
  def add_host_header(%Request{operation: op, headers: headers} = req) do
    %{req | headers: [{"Host", host(op)} | headers]}
  end
end