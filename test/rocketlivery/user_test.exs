defmodule Rocketlivery.UserTest do
  use Rocketlivery.DataCase, async: true

  import Rocketlivery.Factory

  alias Ecto.Changeset
  alias Rocketlivery.User

  describe "changeset/1" do
    test "when all params are valid, returns a valid changeset" do
      params = build(:user_params)

      response = User.changeset(params)

      assert %Changeset{changes: %{name: "João da Silva"}, valid?: true} = response
    end

    test "when there is an error, returns an invalid changeset" do
      params = build(:user_params, age: 15, password: "test")

      response = User.changeset(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["should be at least 6 character(s)"]
      }

      assert errors_on(response) == expected_response
    end
  end

  describe "changeset/2" do
    test "when updating a changeset, returns a valid changeset with the given changes" do
      params = build(:user_params)

      update_params = %{name: "Francisco de Souza"}

      changeset = User.changeset(params)

      response = User.changeset(changeset, update_params)

      assert %Changeset{changes: %{name: "Francisco de Souza"}, valid?: true} = response
    end
  end
end
