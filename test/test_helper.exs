ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Assoc.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Assoc.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Assoc.Repo)

