# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Twittwo.Repo.insert!(%Twittwo.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
Twittwo.Repo.delete_all Twittwo.Coherence.User

Twittwo.Coherence.User.changeset(%Twittwo.Coherence.User{}, %{name: "Test User", email: "teste@teste.com", password: "teste", password_confirmation: "teste"})
|> Twittwo.Repo.insert!

