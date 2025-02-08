defmodule Arranger do
  @moduledoc """
  Documentation for `Arranger`.
  """
alias Ecto.Repo.Supervisor

  @doc """
  Hello world.

  ## Examples

      iex> Arranger.hello()
      :world

  """
  def hello do
    IO.puts("Hello, world!")  # Wypisuje na konsolę
    :world
  end

  def main(_type, _args) do
    children= [Arranger.Repo]
    opts =[strategy: :one_for_one, name: Arranger.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
