defmodule FindMeParkingSpace.Repo.Migrations.CreateAddressListTable do
  use Ecto.Migration

  def change do
    create table(:address_list) do
      add :address, :string
      add :zone_type, :string
      timestamps  # inserted_at and updated_at
    end
  end
end
