defmodule MonProjetWebWeb.PageController do
  use MonProjetWebWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
