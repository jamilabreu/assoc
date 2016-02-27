defmodule Assoc.Community do
  use Assoc.Web, :model

  schema "communities" do
    field :name, :string
    many_to_many :channels, Assoc.Channel, join_through: Assoc.CommunityChannel

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:name])
  end
end
