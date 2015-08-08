defmodule MyApp_808732.PageController do
  use MyApp_808732.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
