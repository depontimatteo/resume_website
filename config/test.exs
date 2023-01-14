import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :resume_website_2022, ResumeWebsite2022Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "fLcIlC4NfWTUZjLo5YWRc66DTy/FXBqUXgK/sosbHqBziBmU51OgwgJuiKX+shIV",
  server: false

# In test we don't send emails.
config :resume_website_2022, ResumeWebsite2022.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
