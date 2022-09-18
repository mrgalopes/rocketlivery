defmodule Rocketlivery.Factory do
  use ExMachina.Ecto, repo: Rocketlivery.Repo

  alias Rocketlivery.User

  def user_params_factory do
    %{
      age: 21,
      address: "Rua dos Coqueiros, 10",
      cep: "12345666",
      cpf: "12345678909",
      email: "test@email.com",
      password: "test@123",
      name: "João da Silva"
    }
  end

  def user_factory do
    %User{
      id: "1401fc4e-050e-47ef-9770-fc2ec15cf846",
      age: 21,
      address: "Rua dos Coqueiros, 10",
      cep: "12345666",
      cpf: "12345678909",
      email: "test@email.com",
      password: "test@123",
      name: "João da Silva"
    }
  end
end
