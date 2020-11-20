defmodule FindMeParkingSpace.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :username, :string
    field :password, :string
    field :email, :string
    field :license_number, :string
    field :age, :integer

    timestamps()
  end


  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :password, :email, :license_number, :age])

  end

end
