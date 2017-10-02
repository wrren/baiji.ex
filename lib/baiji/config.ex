defmodule Baiji.Config do
  alias Baiji.Operation

  @default_region "us-east-1"

  @doc """
  Merge Application configuration with the given
  Operation configuration
  """
  def merge(%Operation{} = op) do
    merge(op, Application.get_all_env(:baiji) || [])
  end

  @doc """
  Merge default config values from the given KeywordList into
  the provided Operation struct
  """
  def merge(%Operation{} = op, config) when is_list(config) do
    op
    |> debug(config)
    |> region(config)
  end


  @doc """
  Merge the debug configuration setting from the given Keyword List into
  the Operation configuration
  """
  def debug(%Operation{} = op, config) do
    if Operation.debug?(op) do
      op
    else
      Operation.debug!(op, Keyword.get(config, :debug, false))
    end
  end

  @doc """
  If the given Operation doesn't include a target region, set the region according
  to the :region key in the given keyword list. If the list doesn't include a region
  key, the output value will default to us-east-1
  """
  def region(%Operation{region: nil} = op, _), do: op
  def region(%Operation{} = op, config) do
    %{op | region: Keyword.get(config, :region, @default_region)}
  end
end