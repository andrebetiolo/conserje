# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :conserje,
  ecto_repos: [Conserje.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :conserje, ConserjeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "R1hWxHoygKyyLi9x+9xUxfPcm6XPfno8SdEYIl7q19ik8wv0jpSXQhWL5nIPTaEg",
  render_errors: [view: ConserjeWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Conserje.PubSub,
  live_view: [signing_salt: "8hd5oc0P"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
