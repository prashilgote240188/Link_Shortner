defmodule ShortCodeWeb.PageController do
  use ShortCodeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
