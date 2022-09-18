defmodule RocketliveryWeb.UsersViewTest do
  use RocketliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rocketlivery.Factory

  alias RocketliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)

    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created!",
             user: %Rocketlivery.User{
               address: "Rua dos Coqueiros, 10",
               age: 21,
               cep: "12345666",
               cpf: "12345678909",
               email: "test@email.com",
               id: "1401fc4e-050e-47ef-9770-fc2ec15cf846",
               inserted_at: nil,
               name: "João da Silva",
               password: "test@123",
               password_hash: nil,
               updated_at: nil
             }
           } = response
  end
end
