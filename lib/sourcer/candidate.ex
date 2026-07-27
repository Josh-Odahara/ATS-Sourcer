defmodule Sourcer.Candidate do
  @type t :: %Sourcer.Candidate{
    title: String.t(),
    location: String.t(),
    company: String.t(),
    first_name: String.t() | nil,
    last_name: String.t() | nil,
    email: String.t() | nil
  }

  defstruct [:title, :location, :company, first_name: nil, last_name: nil, email: nil]
end
