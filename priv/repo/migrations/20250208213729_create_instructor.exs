defmodule Arranger.Repo.Migrations.CreateInstructor do
  use Ecto.Migration

  def change do
    create table(:instructor) do
      add :code, :string
      add :name, :string
      add :surname, :string
      add :maxhours, :int
      timestamps()
    end

    create unique_index(:instructor,[:code])

  end
end
