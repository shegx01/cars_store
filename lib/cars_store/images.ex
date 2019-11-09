defmodule CarsStores.Images do
  use Ecto.Schema

  schema "images" do
    field :url, :string
    belongs_to(:cars, CarsStore.Cars)
  end
end
