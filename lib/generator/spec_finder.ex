defmodule Baiji.Generator.SpecFinder do
  @moduledoc """
  Navigates the models/apis directory to find api-spec JSON
  files.
  """
  alias Baiji.Generator.Spec

  @doc """
  Finds all api-spec files under the given directory. Assumes the specified
  directory contains subdirectories named after an AWS service, and that 
  those directories then contain directories named after an API version.
  """
  def find!(directory) do
    directory
    |> File.ls!
    |> Enum.filter(fn sub -> File.dir?(Path.join([directory, sub])) end)
    |> Enum.map(fn sub -> {sub, get_latest_version!(Path.join([directory, sub]))} end)
    |> Enum.map(fn {service, version} -> {service, version, get_api_spec!(Path.join([directory, service, version]))} end)
  end

  @doc """
  Given a service directory under the AWS SDK for Go APIs directory, read the directory
  contents to find the latest API version under that directory.
  """
  def get_latest_version!(path) when is_binary(path) do
    path
    |> File.ls!
    |> Enum.filter(fn sub -> File.dir?(Path.join(path, sub)) end)
    |> get_latest_version!
  end
  def get_latest_version!(directories) when is_list(directories) do
    |> Enum.filter(fn sub -> String.starts_with?(sub, "20") end) 
    |> Enum.sort
    |> :lists.last
  end

  @doc """
  Given a service version directory, check whether the API spec file exists and, if so, return it. Otherwise
  raise an AWS.Generator.Error
  """
  def get_api_spec!(path) do
    if File.exists?(Path.join(path, "api-2.json")) do
      Path.join(path, "api-2.json")
    else
      raise AWS.Generator.Error, message: "Failed to find API spec file in directory #{path}"
    end
  end
end