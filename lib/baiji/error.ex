defmodule Baiji.Error do
  defexception message: "An error occurred"

  def exception(message) do
    %Baiji.Error{message: message}
  end
end