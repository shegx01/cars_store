defmodule CarsStore.Cars do
  use Ecto.Schema
  import Ecto.Changeset, only: [change: 2]

  schema "cars" do
    field :product_no, :string
    field :type, :string
    field :msrp, :integer
  end
end
