defmodule FindMeParkingSpace.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :password, :string
      add :email, :string
      add :license_number, :string
      add :age, :integer
      timestamps  # inserted_at and updated_at
    end
  end
end
