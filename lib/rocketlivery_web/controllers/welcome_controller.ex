defmodule RocketliveryWeb.WelcomeController do
  use RocketliveryWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> text("Welcome :)")
  end
end
