defmodule FindMeParkingSpace.Repo.Migrations.CreatePricingTable do
  use Ecto.Migration

  def change do
    create table(:pricing) do
      add :zone, :string
      add :hourly, :float
      add :realtime, :float
      timestamps  # inserted_at and updated_at
    end
  end
end
