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
      add classId, references(:class, on_delete: :delete_all)
      add courseId, references(:course, on_delete: :delete_all)
      timestamps()
    end

    create table(:lesson) do
      add :courseId, refernces(:course, on_delete: :delete_all)
      add :classroomId, refernces(:classroom, on_delete: :delete_all)
      add :instructorId, refernces(:instructor, on_delete: :delete_all)
      add :classId, refernces(:class, on_delete: :delete_all)
      timestamps()
    end

  end
end
