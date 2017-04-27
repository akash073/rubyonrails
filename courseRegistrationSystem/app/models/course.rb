class Course < ApplicationRecord

  has_many :student_course_registers

  belongs_to :semister

  def decorate
    @decorate ||=CourseDecorator.new self
  end

end
