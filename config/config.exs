# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :rocketlivery,
  ecto_repos: [Rocketlivery.Repo]

config :rocketlivery, Rocketlivery.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

config :rocketlivery, Rocketlivery.Users.Create, via_cep_adapter: Rocketlivery.ViaCep.Client

config :rocketlivery, RocketliveryWeb.Auth.Guardian,
  issuer: "rocketlivery",
  secret_key: "32M1ijqcFEDSgFV4f+wmglEGAtBiDEAQRn7/IkSfnQA2pxYZea6fAA/WpAOAkijF"

config :rocketlivery, RocketliveryWeb.Auth.Pipeline,
  module: RocketliveryWeb.Auth.Guardian,
  error_handler: RocketliveryWeb.Auth.ErrorHandler

# Configures the endpoint
config :rocketlivery, RocketliveryWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: RocketliveryWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Rocketlivery.PubSub,
  live_view: [signing_salt: "9pIZ7DVg"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :rocketlivery, Rocketlivery.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
