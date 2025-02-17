defmodule Arranger.Repo.Migrations.InsertSampleData do
  use Ecto.Migration

  def up do
    execute("""
      INSERT INTO instructor (code, name, surname, maxhours, inserted_at, updated_at) VALUES
      ('JD01', 'John', 'Doe', 20, NOW(), NOW()),
      ('JS02', 'Jane', 'Smith', 18, NOW(), NOW()),
      ('RJ03', 'Robert', 'Johnson', 25, NOW(), NOW()),
      ('ED04', 'Emily', 'Davis', 22, NOW(), NOW()),
      ('MB05', 'Michael', 'Brown', 20, NOW(), NOW()),
      ('SW06', 'Sarah', 'Wilson', 24, NOW(), NOW()),
      ('DM07', 'David', 'Martinez', 19, NOW(), NOW()),
      ('LA08', 'Laura', 'Anderson', 23, NOW(), NOW());
    """)

    execute("""
      INSERT INTO course (code, "fullName", inserted_at, updated_at) VALUES
      ('CS', 'Computer Science', NOW(), NOW()),
      ('MATH', 'Mathematics', NOW(), NOW()),
      ('PHYS', 'Physics', NOW(), NOW()),
      ('CHEM', 'Chemistry', NOW(), NOW()),
      ('BIO', 'Biology', NOW(), NOW()),
      ('HIST', 'History', NOW(), NOW()),
      ('GEO', 'Geography', NOW(), NOW()),
      ('LIT', 'English Literature', NOW(), NOW()),
      ('PHIL', 'Philosophy', NOW(), NOW()),
      ('PSY', 'Psychology', NOW(), NOW()),
      ('ECON', 'Economics', NOW(), NOW()),
      ('POL', 'Political Science', NOW(), NOW());
    """)

    execute("""
      INSERT INTO class (code, "fullName", inserted_at, updated_at) VALUES
      ('CS1', 'Computer Science Year 1', NOW(), NOW()),
      ('CS2', 'Computer Science Year 2', NOW(), NOW()),
      ('MATH1', 'Mathematics Year 1', NOW(), NOW()),
      ('MATH2', 'Mathematics Year 2', NOW(), NOW()),
      ('PHYS1', 'Physics Year 1', NOW(), NOW()),
      ('PHYS2', 'Physics Year 2', NOW(), NOW());
    """)

    execute("""
      INSERT INTO classroom (code, inserted_at, updated_at) VALUES
      ('A101', NOW(), NOW()),  -- Building A, 1st Floor, Room 01
      ('A202', NOW(), NOW()),  -- Building A, 2nd Floor, Room 02
      ('B103', NOW(), NOW()),  -- Building B, 1st Floor, Room 03
      ('B204', NOW(), NOW()),  -- Building B, 2nd Floor, Room 04
      ('C305', NOW(), NOW()),  -- Building C, 3rd Floor, Room 05
      ('C406', NOW(), NOW());  -- Building C, 4th Floor, Room 06
    """)
  end

  def down do
    execute("DELETE FROM instructor;")
    execute("DELETE FROM course;")
    execute("DELETE FROM class;")
    execute("DELETE FROM classroom;")
  end
end
