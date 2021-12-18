import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :desafio_dev_cross_commerce, DesafioDevCrossCommerce.Repo,
  username: "postgres",
  password: "postgres",
  database: "desafio_dev_cross_commerce_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# Mox
config :desafio_dev_cross_commerce, DesafioDevCrossCommerce.Numbers.Retrieve,                  get_numbers_adapter: DesafioDevCrossCommerce.Client.ClientMock

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :desafio_dev_cross_commerce, DesafioDevCrossCommerceWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qrTrixHoxLmVWqhrq5JhIn6Lxjr5IUl7O8MXlR7YvCXE7mnwQCKTEUr1NDF/7ofC",
  server: false

# In test we don't send emails.
config :desafio_dev_cross_commerce, DesafioDevCrossCommerce.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
