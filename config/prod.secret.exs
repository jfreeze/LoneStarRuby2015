use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :lonestarruby, Lonestarruby.Endpoint,
  secret_key_base: "uISJCnL2Pmqe/0U1/NLgdIodRYIxm47U5QwiVex/POV8t6s5mcAm+ljNSOBIhfXr"

# Configure your database
config :lonestarruby, Lonestarruby.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "lonestarruby_prod",
  size: 20 # The amount of database connections in the pool
