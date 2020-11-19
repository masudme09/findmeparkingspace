defmodule FindMeParkingSpace.Repo.Migrations.CreateBookedSlotTable do
  use Ecto.Migration

  def change do
    create table(:booked_slot) do
      add :user_id, :integer
      add :slot_id, :integer
      add :start_time, :time
      add :end_time, :time
      timestamps  # inserted_at and updated_at
    end
  end
end
