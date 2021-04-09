# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :poc_monorepo,
  ecto_repos: [PocMonorepo.Repo]

# Configures the endpoint
config :poc_monorepo, PocMonorepoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7Gtx8/r2fMicXODOsaKlvAiLLjC1HjxJ9NTF0NtuWd6wlFBUmtEgFCajyG3nN7Mt",
  render_errors: [view: PocMonorepoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PocMonorepo.PubSub,
  live_view: [signing_salt: "5hHK8BL8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
