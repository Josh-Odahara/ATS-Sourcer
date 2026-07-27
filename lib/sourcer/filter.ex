defmodule Sourcer.Filter do
  @type t :: %Sourcer.Filter{
    keyword: String.t() | nil
  }

  defstruct [
    :keyword
  ]
end
