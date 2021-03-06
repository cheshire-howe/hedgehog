# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :naive,
  binance_client: BinanceMock,
  ecto_repos: [Naive.Repo],
  trading: %{
    defaults: %{
      chunks: 5,
      budget: 1000.0,
      buy_down_interval: 0.0001,
      profit_interval: -0.0012,
      rebuy_interval: 0.001
    }
  }

config :naive, Naive.Repo,
  database: "naive",
  username: "postgres",
  password: "postgres",
  hostname: "127.0.0.1"

config :data_warehouse,
  ecto_repos: [DataWarehouse.Repo]

config :data_warehouse, DataWarehouse.Repo,
  database: "data_warehouse",
  username: "postgres",
  password: "postgres",
  hostname: "127.0.0.1"

config :binance,
  api_key: "",
  secret_key: ""

config :logger,
  level: :info

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#
