defmodule DartWeb.Router do
  use DartWeb, :router

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

  scope "/", DartWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", DartWeb do
    pipe_through :api

    resources "/todos", TodoController, except: [:new, :edit]
  end
end
