import Config

config :arranger, Arranger.Repo,
  database: "arranger_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :arranger, ecto_repos: [Arranger.Repo]
