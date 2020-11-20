defmodule FindMeParkingSpace.Payments.Pricing do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pricings" do
    field :zone, :string
    field :hourly, :float
    field :realtime, :float

    timestamps()
  end


  @doc false
  def changeset(pricing, attrs) do
    pricing
    |> cast(attrs, [:zone, :hourly, :realtime])

  end

end
