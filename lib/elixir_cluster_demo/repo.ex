defmodule ElixirClusterDemo.Repo do
  use Ecto.Repo,
    otp_app: :elixir_cluster_demo,
    adapter: Ecto.Adapters.Postgres
end
