# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :twittwo,
  ecto_repos: [Twittwo.Repo]

# Configures the endpoint
config :twittwo, TwittwoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nU8/+acPRs8OIIs1CXdZNFWszYfmaw6KM0AhKl4DkoGEhqHUcBppydLzHEXP2O8M",
  render_errors: [view: TwittwoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Twittwo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Twittwo.Coherence.User,
  repo: Twittwo.Repo,
  module: Twittwo,
  web_module: TwittwoWeb,
  router: TwittwoWeb.Router,
  messages_backend: TwittwoWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :invitable, :registerable]

config :coherence, TwittwoWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
