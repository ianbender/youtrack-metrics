use Mix.Config

# Configure your database
config :youtrack_metrics, YoutrackMetrics.Repo,
  username: "postgres",
  password: "postgres",
  database: "youtrack_metrics_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :youtrack_metrics, YoutrackMetricsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
