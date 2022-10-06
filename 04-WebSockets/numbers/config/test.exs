import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :numbers, NumbersWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "nOfRdzt0fBTEUrx77/hm8ZyGIRGX5MNyBzAbo2yaU6mihSTtPXgU9kh7WCBRy0l+",
  server: false

# In test we don't send emails.
config :numbers, Numbers.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
