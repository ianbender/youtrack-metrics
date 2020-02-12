defmodule YoutrackMetrics.Repo do
  use Ecto.Repo,
    otp_app: :youtrack_metrics,
    adapter: Ecto.Adapters.Postgres
end
