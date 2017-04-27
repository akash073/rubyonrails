module Students
  class RegisteredCoursesPresenter
    attr_reader :student_id

    #Pass parameter to this class and use it through out the class
    #For consistency and get variable from caller controller
    def initialize(student_id)
      @student_id=student_id
    end

    def registered_courses
      @course_ids=StudentCourseRegister.where("student_id ='?'",@student_id).select("course_id")
      Course.includes(:semister).where('id IN (?)', @course_ids).all
    end

  end

end