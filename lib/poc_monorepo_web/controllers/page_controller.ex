defmodule PocMonorepoWeb.PageController do
  use PocMonorepoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
