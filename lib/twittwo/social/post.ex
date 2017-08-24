defmodule Twittwo.Social.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Twittwo.Social.Post


  schema "posts" do
    field :text, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:text, :user_id])
    |> validate_required([:text])
  end
end
