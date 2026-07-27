defmodule Sourcer.ATS.Mock do
  @behaviour Sourcer.ATS.Adapter

  def search_candidates(_filter) do
    [
      %Sourcer.Candidate{
        title: "Senior Software Engineer",
        location: "New York, NY",
        company: "Google"
      },
      %Sourcer.Candidate{
        title: "Software Engineer",
        location: "Los Angeles, CA",
        company: "Remote"
      },
      %Sourcer.Candidate{
        title: "Technical Recruiter",
        location: "Seattle, WA",
        company: "Facebook"
      },
      %Sourcer.Candidate{
        title: "Marketing Director",
        location: "San Francisco, CA",
        company: "Amazon"
      }
    ]
  end
end
