defmodule Assoc.Repo.Migrations.CreateCommunityChannel do
  use Ecto.Migration

  def change do
    create table(:community_channels) do
      add :community_id, references(:communities, on_delete: :nothing)
      add :channel_id, references(:channels, on_delete: :nothing)

      timestamps
    end
    create index(:community_channels, [:community_id])
    create index(:community_channels, [:channel_id])

  end
end
