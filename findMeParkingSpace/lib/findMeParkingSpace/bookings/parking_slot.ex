defmodule FindMeParkingSpace.Bookings.ParkingSlot do
  use Ecto.Schema
  import Ecto.Changeset

  schema "parking_slots" do
    field :address_id, :integer
    field :slot_name, :string
    field :slot_location, :string
    field :distance, :float
    field :availability, :integer

    timestamps()
  end


  @doc false
  def changeset(parking_slot, attrs) do
    parking_slot
    |> cast(attrs, [:address_id, :slot_name, :slot_location, :distance, :availability])

  end

end
