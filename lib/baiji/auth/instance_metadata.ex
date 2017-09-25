defmodule Baiji.Auth.InstanceMetadata do
  @moduledoc """
  Derives operation authentication parameters from the local instance'
  metadata
  """
  use Baiji.Auth

  @metadata_url "http://169.254.169.254/latest/meta-data/"


  def get(%Operation{} = operation, key) do
    
  end  
end