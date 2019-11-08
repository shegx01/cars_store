defmodule CarsStore.Repo do
  use Ecto.Repo,
    otp_app: :cars_store,
    adapter: Ecto.Adapters.Postgres
end
