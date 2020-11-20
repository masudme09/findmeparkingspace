defmodule FindMeParkingSpace.Payments.Transaction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transactions" do
    field :user_id, :integer
    field :transaction_type, :string
    field :transaction_id, :string
    field :amount, :float
    field :slot_id, :integer

    timestamps()
  end


  @doc false
  def changeset(transaction, attrs) do
    transaction
    |> cast(attrs, [:user_id, :transaction_type, :transaction_id,:amount, :slot_id])

  end

end
