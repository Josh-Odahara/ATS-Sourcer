defmodule SourcerWeb.PageController do
  use SourcerWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
