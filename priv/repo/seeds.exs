# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Conserje.Repo.insert!(%Conserje.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Conserje.Repo
alias Conserje.Users.User

%User{identifier: "conserje", password_hash: "admin"} |> Repo.insert!
