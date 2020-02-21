# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :youtrack_metrics,
  ecto_repos: [YoutrackMetrics.Repo]

# Configures the endpoint
config :youtrack_metrics, YoutrackMetricsWeb.Endpoint,
  url: [host: "host.docker.internal"],
  secret_key_base: "5KPVNhRcKeiDTDEIQ9JgWbhMCe/C1YMPPabULcQMh2JhN/I2XgeY9kp6ZbcT+QS/",
  render_errors: [view: YoutrackMetricsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: YoutrackMetrics.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Use fs_poll for live reload
config :phoenix_live_reload,
  backend: :fs_poll

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
