defmodule ShortCode.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :destination_url, :string, null: false
      add :short_code, :string, null: false, unique: true
      add :vanity_name, :string, unique: true

      timestamps()
    end

    create unique_index(:links, [:vanity_name])
    create unique_index(:links, [:short_code])
  end
end
