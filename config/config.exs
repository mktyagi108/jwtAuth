# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jwtAuth,
  ecto_repos: [JwtAuth.Repo]

# Configures the endpoint
config :jwtAuth, JwtAuthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5pJ2Hc/8A9tHV9QOzf0sBnDj9pFrT5QkNUHbZIqF+3Tba9Rm9G7PqtKsYzHv2l1s",
  render_errors: [view: JwtAuthWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: JwtAuth.PubSub,
  live_view: [signing_salt: "HDcpvi2J"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
