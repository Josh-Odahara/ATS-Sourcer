defmodule Sourcer.ATS.Adapter do
  @callback search_candidates(filter :: Sourcer.Filter.t()) :: [Sourcer.Candidate.t()]
end
