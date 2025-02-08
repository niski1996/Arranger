defmodule Arranger.Repo do
  use Ecto.Repo,
    otp_app: :arranger,
    adapter: Ecto.Adapters.Postgres
end
