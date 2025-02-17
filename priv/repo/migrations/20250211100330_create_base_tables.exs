defmodule Arranger.Repo.Migrations.CreateBaseTables do
  use Ecto.Migration

  def change do
    create table(:course) do
      add :code, :string
      add :fullName, :string
      timestamps()
    end

    create table(:classroom) do
      add :code, :string
      timestamps()
    end

    create table(:class) do
      add :code, :string
      add :fullName, :string
      timestamps()
    end

    create table(:classCourse) do
      add :classId, references(:class, on_delete: :delete_all)
      add :courseId, references(:course, on_delete: :delete_all)
      timestamps()
    end

    create table(:courseInstructor) do
      add :instructorId, references(:instructor, on_delete: :delete_all)  # Poprawiona literówka
      add :courseId, references(:course, on_delete: :delete_all)
    end

    create table(:lesson) do
      add :courseId, references(:course, on_delete: :delete_all)
      add :classroomId, references(:classroom, on_delete: :delete_all)
      add :instructorId, references(:instructor, on_delete: :delete_all)
      add :classId, references(:class, on_delete: :delete_all)
      timestamps()
    end

    create unique_index(:course, [:code])
    create unique_index(:class, [:code])
    create unique_index(:classroom, [:code])
  end
end
