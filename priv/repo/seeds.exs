# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Dart.Repo.insert!(%Dart.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Dart.Repo.insert!(%Dart.Todos.Todo{title: "Clean the house", completed: false})
Dart.Repo.insert!(%Dart.Todos.Todo{title: "Fly the drone", completed: false})
Dart.Repo.insert!(%Dart.Todos.Todo{title: "Play a game", completed: false})
