class CreateStudentCourseRegisters < ActiveRecord::Migration[5.0]
  def change
    create_table :student_course_registers do |t|

      t.timestamps

      t.float    "gpa"
      t.boolean  "is_completed",          default: false,    null: false

      t.references :course
      t.references :student
    end
  end
end
