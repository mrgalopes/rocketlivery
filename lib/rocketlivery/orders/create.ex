defmodule Rocketlivery.Orders.Create do
  import Ecto.Query
  alias Rocketlivery.{Error, Item, Order, Repo}
  alias Rocketlivery.Orders.ValidateAndMultiplyItems

  def call(%{"items" => items_params} = params) do
    item_ids = Enum.map(items_params, fn item -> item["id"] end)

    query = from item in Item, where: item.id in ^item_ids

    query
    |> Repo.all()
    |> ValidateAndMultiplyItems.call(item_ids, items_params)
    |> handle_items(params)
  end

  defp handle_items({:error, result}, _params), do: {:error, Error.build(:bad_request, result)}

  defp handle_items({:ok, items}, params) do
    params
    |> Order.changeset(items)
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Order{}} = order), do: order
  defp handle_insert({:error, result}), do: {:error, Error.build(:bad_request, result)}
end
