defmodule TestApp.Accounts.User do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}
  schema "users" do
    field :first_name, :string
    field :last_name, :string

    timestamps(type: :utc_datetime_usec)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name])
  end

  @doc false
  def update_changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name])
  end
end
