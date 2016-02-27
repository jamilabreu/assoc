# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Assoc.Repo.insert!(%Assoc.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Assoc.{Repo, Channel, Community}

community1 = Repo.insert!(Community.changeset(%Community{}, %{name: "elixir"}))
community2 = Repo.insert!(Community.changeset(%Community{}, %{name: "phoenix"}))

Channel.changeset(%Channel{}, %{})
|> Ecto.Changeset.put_assoc(:communities, [community1, community2])
|> Repo.insert!