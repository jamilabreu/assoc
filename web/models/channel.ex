defmodule Assoc.Channel do
  use Assoc.Web, :model

  schema "channels" do
    field :name, :string
    many_to_many :communities, Assoc.Community, join_through: Assoc.CommunityChannel

    timestamps
  end

  # @required_fields ~w(name)
  # @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> Assoc.Repo.preload(:communities)
    |> cast(params, [:name])
    |> cast_assoc(:communities)
    |> generate_name
  end

 defp generate_name(changeset) do
    IO.puts "----------------------"
    IO.inspect Ecto.Changeset.get_field(changeset, :communities) # this returns [], I'd like to iterate over the communities set in put_assoc
    changeset
  end
end
