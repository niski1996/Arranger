defmodule Arranger.Application do
  use Application

  def start(_type, _args) do
    children = [
      Arranger.Repo  # Repozytorium Ecto
    ]

    opts = [strategy: :one_for_one, name: Arranger.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
