defmodule Sourcer.ATS.Greenhouse do
  @behaviour Sourcer.ATS.Adapter

  def search_candidates(%Sourcer.Filter{}) do
    api_key = System.get_env("GREENHOUSE_API_KEY")

    response =
      case Req.get("https://harvest.greenhouse.io/v3/candidates",
             headers: [accept: "application/json"],
             auth: {:basic, {api_key, ""}}
           ) do
        {:ok, response} ->
          Enum.map(response.body, fn candidate ->
            %Sourcer.Candidate{
              title: candidate["title"],
              location: candidate["location"],
              company: candidate["company"],
              first_name: candidate["first_name"],
              last_name: candidate["last_name"],
              email: candidate["email"]
            }
          end)

        {:error, reason} ->
          {:error, reason}
      end
  end
end
