defmodule FindMeParkingSpace.Repo.Migrations.CreateTransactionsTable do
  use Ecto.Migration

  def change do
    create table(:transactions) do
      add :user_id, :integer
      add :transaction_type, :string
      add :transaction_id, :string
      add :amount, :float
      add :slot_id, :integer
      timestamps  # inserted_at and updated_at
    end
  end
end
