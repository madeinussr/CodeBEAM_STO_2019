# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :super_app,
  ecto_repos: [SuperApp.Repo]

# Configures the endpoint
config :super_app, SuperAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kcZUEALOuV95r5DrUNuF58XSRAhCrDknKhV9Z8rC2NkqKqDPLH6UlK2iYHWz1w9A",
  render_errors: [view: SuperAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SuperApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :logger, level: :error

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :postgrex, :json_library, Jason

config :stream_data, max_runs: 300

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
