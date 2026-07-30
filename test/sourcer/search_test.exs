defmodule Sourcer.SearchTest do
  use ExUnit.Case, async: true

  alias Sourcer.Search

  test "search_candidates/1 returns candidates from the adapter/mock data" do
    filter = %Sourcer.Filter{keyword: "Software Engineer"}

    result = Search.search_candidates(filter)
    assert is_list(result)
  end
end
