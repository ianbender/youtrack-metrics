defmodule YoutrackMetrics.Issue do
  use Ecto.Schema
  import Ecto.Changeset

  schema "issues" do
    field :data, :map

    timestamps()
  end

  @doc false
  def changeset(issue, attrs) do
    issue
    |> cast(attrs, [:data])
    |> validate_required([:data])
  end
end
