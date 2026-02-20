defmodule DevconWeb.PageController do
  use DevconWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
