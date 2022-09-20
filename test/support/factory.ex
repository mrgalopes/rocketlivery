defmodule Rocketlivery.Factory do
  use ExMachina.Ecto, repo: Rocketlivery.Repo

  alias Rocketlivery.User

  def user_params_factory do
    %{
      "age" => 21,
      "address" => "Rua dos Coqueiros, 10",
      "cep" => "01001000",
      "cpf" => "12345678909",
      "email" => "test@email.com",
      "password" => "test@123",
      "name" => "João da Silva"
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

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end
