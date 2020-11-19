defmodule FindMeParkingSpace.Repo do
  use Ecto.Repo,
    otp_app: :findMeParkingSpace,
    adapter: Ecto.Adapters.Postgres
end
