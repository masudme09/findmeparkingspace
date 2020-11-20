defmodule FindMeParkingSpace.Bookings.BookedSlot do
  use Ecto.Schema
  import Ecto.Changeset

  schema "booked_slots" do
    field :user_id, :integer
    field :slot_id, :integer
    field :start_time, :time
    field :end_time, :time

    timestamps()
  end


  @doc false
  def changeset(booked_slot, attrs) do
    booked_slot
    |> cast(attrs, [:user_id, :slot_id, :start_time, :end_time])

  end

end
