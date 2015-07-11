defmodule Lonestarruby.PageController do
  use Lonestarruby.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def code_of_conduct(conn, _params) do
    render conn, "coc.html"
  end

end
