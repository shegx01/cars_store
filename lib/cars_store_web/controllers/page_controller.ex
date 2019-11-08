defmodule CarsStoreWeb.PageController do
  use CarsStoreWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
