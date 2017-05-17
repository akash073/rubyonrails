class StudentCourseRegister < ApplicationRecord
  belongs_to :student ,foreign_key: "student_id"
  belongs_to :course ,foreign_key: "course_id"
  validates :gpa, presence: true, :inclusion => 0..4

end
