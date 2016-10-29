# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_pack,
  ecto_repos: [PhoenixPack.Repo]

# Configures the endpoint
config :phoenix_pack, PhoenixPack.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9lq0A57idTF1Q+Ljsye+WNRLn2ZmgpUA7DjQ3ck5RmL+c4r34Q2geJ0Dc1GokzKj",
  render_errors: [view: PhoenixPack.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixPack.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
