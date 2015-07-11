defmodule Lonestarruby.Router do
  use Lonestarruby.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Lonestarruby do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/code-of-conduct", PageController, :code_of_conduct
  end

  # Other scopes may use custom stacks.
  # scope "/api", Lonestarruby do
  #   pipe_through :api
  # end
end
