defmodule FindMeParkingSpace.Repo.Migrations.CreateParkingSlotsTable do
  use Ecto.Migration

  def change do
    create table(:parking_slots) do
      add :address_id, :integer
      add :slot_name, :string
      add :slot_location, :string
      add :distance, :float
      add :availability, :integer
      timestamps  # inserted_at and updated_at
    end
  end
end
