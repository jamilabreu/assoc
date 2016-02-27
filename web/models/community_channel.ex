defmodule Assoc.CommunityChannel do
  use Assoc.Web, :model

  schema "community_channels" do
    belongs_to :community, Assoc.Community
    belongs_to :channel, Assoc.Channel

    timestamps
  end

  # @required_fields ~w()
  # @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:community_id, :channel_id])
  end
end
