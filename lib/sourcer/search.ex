defmodule Sourcer.Search do
  def search_candidates(filter) do
    adapter = Application.get_env(:sourcer, :ats_adapter)
    adapter.search_candidates(filter)
  end
end
