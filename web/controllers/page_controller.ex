defmodule PhoenixPack.PageController do
  use PhoenixPack.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
