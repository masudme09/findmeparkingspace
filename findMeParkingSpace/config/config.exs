# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :findMeParkingSpace,
  ecto_repos: [FindMeParkingSpace.Repo]

# Configures the endpoint
config :findMeParkingSpace, FindMeParkingSpaceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Iwo4Uz5p7hkEjaRW/+AMbvgZLMhpln9VaF0CF1EdMgJa2RV4HfPqQNnJ7gwQpV/9",
  render_errors: [view: FindMeParkingSpaceWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FindMeParkingSpace.PubSub,
  live_view: [signing_salt: "11+DMq1T"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
