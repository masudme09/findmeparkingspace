defmodule FindMeParkingSpace.Bookings.AddressList do
  use Ecto.Schema
  import Ecto.Changeset

  schema "address_lists" do
    field :address, :string
    field :zone_type, :string
    timestamps()  # inserted_at and updated_at

  end


  @doc false
  def changeset(address_list, attrs) do
    address_list
    |> cast(attrs, [:address, :zone_type])

  end

end
