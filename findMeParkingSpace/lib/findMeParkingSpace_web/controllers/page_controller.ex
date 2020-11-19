defmodule FindMeParkingSpaceWeb.PageController do
  use FindMeParkingSpaceWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
