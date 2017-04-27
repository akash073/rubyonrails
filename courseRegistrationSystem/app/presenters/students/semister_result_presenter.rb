module Students

  class SemisterResultPresenter

    attr_reader :student_id
    attr_reader :semister_id

    #Pass parameter to this class and use it through out the class
    #For consistency and get variable from caller controller
    def initialize(student_id,semister_id)
      @student_id=student_id
      @semister_id=semister_id
    end

    def semister
      Semister.where("id = ? ",@semister_id).first#.select("name").first
    end

    def student_name
      Student.where("id = ?",@student_id).select("name").first
    end

    def results
      @courses=Course.where("semister_id= ? ",@semister_id).select("id").all
      StudentCourseRegister.includes(:course).where("is_completed = ? AND student_id= ? and course_id in (?) ",true,@student_id,@courses).all
    end
  end

end