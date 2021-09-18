# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_cluster_demo,
  ecto_repos: [ElixirClusterDemo.Repo]

# Configures the endpoint
config :elixir_cluster_demo, ElixirClusterDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Xs14zf/P2HMbH2XUVq4D9BpegFVNwR2Bsm9UC8TuyKui/HAkr1Ebcd4fnJDBqjWX",
  render_errors: [view: ElixirClusterDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirClusterDemo.PubSub,
  live_view: [signing_salt: "dx8mCT4P"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
