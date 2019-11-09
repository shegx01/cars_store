defmodule CarsStoreWeb.Router do
  use CarsStoreWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CarsStoreWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # forward("/api", Absinthe.Schema, Absinthe.Plug)
  # forward("/graphigl",Absinthe.Plug.GraphiQL , interface: :simple)

  # Other scopes may use custom stacks.
  # scope "/api", CarsStoreWeb do
  #   pipe_through :api
  # end
end
