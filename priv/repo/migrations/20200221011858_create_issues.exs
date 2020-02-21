defmodule YoutrackMetrics.Repo.Migrations.CreateIssues do
  use Ecto.Migration

  def change do
    create table(:issues) do
      add :data, :map

      timestamps()
    end

  end
end
