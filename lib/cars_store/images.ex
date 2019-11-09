defmodule CarsStores.Images do
  use Ecto.Schema

  schema "images" do
    field :url, :string
  end

  belongs_to(:cars, CarsStore.Cars)
end
