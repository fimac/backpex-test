defmodule TestApp.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :uuid, null: false, primary_key: true
      add :first_name, :string, null: false
      add :last_name, :string, null: false

      timestamps type: :utc_datetime_usec
    end
  end
end
