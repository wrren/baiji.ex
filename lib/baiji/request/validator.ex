defmodule Baiji.Request.Validator do
  @moduledoc """
  Validates an Operation struct by checking whether the input fields
  conform to the requirements of the shape specified by the Operation's 
  input_shape field.
  """
  alias Baiji.{
    Endpoint,
    Operation,
    Request.Error
  }

  @doc """
  Check whether the inputs to the given operation are valid, based on the operation's shape
  """
  def valid?(%Operation{} = op) do
    try do
      validate!(op)
    rescue
      e -> false
    end
  end

  @doc """
  Check the validity of an Operation
  """
  def validate!(%Operation{input_shape: nil}), do: true
  def validate!(%Operation{input: input, input_shape: shape, endpoint: %Endpoint{shapes: shapes}} = op) do
    validate!(input, shapes[shape], shapes, [])
    op
  end

  @doc """
  Validate that the form of the given input value conforms to the required shape specified
  """
  def validate!(input, %{"enum" => enum}, _shapes, keys) when is_binary(input) do
    if not Enum.any?(enum, fn value -> value == input end) do
      raise Error, message: "The value for #{format_keys(keys)} must be one of #{Enum.join(enum, ", ")}"
    end
  end
  def validate!(input, %{"type" => "string"}, _, keys) when not is_binary(input) do
    raise Error, message: "The value for #{format_keys(keys)} must be a string"
  end
  def validate!(input, %{"type" => "string", "min" => _, "max" => _} = shape, shapes, keys) when is_binary(input) do
    validate!(input, Map.delete(shape, "max"), shapes, keys)
    validate!(input, Map.delete(shape, "min"), shapes, keys)    
  end
  def validate!(input, %{"type" => "string", "min" => min}, _, keys) when is_binary(input) do
    if String.length(input) < min do
      raise Error, message: "The value for #{format_keys(keys)} must be a string at least #{min} characters long"
    end
  end
  def validate!(input, %{"type" => "string", "max" => max}, _, keys) when is_binary(input) do
    if String.length(input) > max do
      raise Error, message: "The value for #{format_keys(keys)} must be a string at most #{max} characters long"
    end   
  end
  def validate!(input, %{"type" => "string", "pattern" => pattern}, _, keys) when is_binary(input) do
    if not Regex.match?(Regex.compile!(pattern), input) do
      raise Error, message: "The value for #{format_keys(keys)} does not match the validation regex: #{pattern}"
    end
  end
  def validate!(input, %{"type" => "string"}, _, _) when is_binary(input), do: :ok
  def validate!(input, %{"type" => "integer", "min" => min, "max" => max}, shapes, keys) when is_integer(input) do
    validate!(input, %{"type" => "integer", "min" => min}, shapes, keys)
    validate!(input, %{"type" => "integer", "max" => max}, shapes, keys)
  end
  def validate!(input, %{"type" => "integer", "min" => min}, _shapes, keys) when is_integer(input) and input < min do
    raise Error, message: "The value for #{format_keys(keys)} must be greater than #{min}"
  end
  def validate!(input, %{"type" => "integer", "max" => max}, _shapes, keys) when is_integer(input) and input > max do
    raise Error, message: "The value for #{format_keys(keys)} must be less than #{max}"
  end
  def validate!(true,   %{"type" => "boolean"}, _shapes, _keys), do: :ok
  def validate!(false,  %{"type" => "boolean"}, _shapes, _keys), do: :ok
  def validate!(_,      %{"type" => "boolean"}, _shapes, keys) do
    raise Error, message: "The value for #{format_keys(keys)} must be a boolean"    
  end

  def validate!(input, %{"type" => "list"}, _shapes, keys) when not is_list(input) do
    raise Error, message: "The value for #{format_keys(keys)} must be a list"    
  end
  def validate!(input, %{"type" => "list", "member" => %{"shape" => shape, "locationName" => key}}, shapes, keys) do
    input
    |> Enum.each(fn member ->
      validate!(member, shapes[shape], shapes, [key | keys])
    end) 
  end
  def validate!(input, %{"type" => "structure", "members" => members} = shape, shapes, keys) do
    check_required_fields!(input, shape, shapes, keys)
    members
    |> Enum.each(fn({name, %{"shape" => member_shape} = val}) ->
      location = Map.get(val, "locationName", name)
      if Map.has_key?(input, location) do
        validate!(input[location], shapes[member_shape], shapes, [location | keys])
      end;
    end)
  end

  @doc """
  Check whether all required fields in the given input are present
  """
  def check_required_fields!(input, %{"required" => required, "members" => members}, _shapes, keys) do
    required
    |> Enum.each(fn key ->
      location = Map.get(members[key], "locationName", key)
      if not Map.has_key?(input, location) do
        raise Error, message: "The required key #{format_keys([location | keys])} is missing from the input"
      end
    end)
  end
  def check_required_fields!(_input, %{}, _shapes, _keys), do: :ok

  #
  # Given a hierarchical key list, format the hierarchy to make it more readable
  #
  defp format_keys(keys) when is_list(keys) do
    keys
    |> :lists.reverse
    |> Enum.join(" > ")
  end
end