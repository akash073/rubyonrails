module Students

  class SemisterCoursesPresenter
    attr_reader :semister_id
    attr_reader :student_id

    #Pass parameter to this class and use it through out the class
    #For consistency and get variable from caller controller
    def initialize(semister_id,student_id)
      @semister_id=semister_id
      @student_id=student_id
    end

    def semister_courses
      Course.includes(:semister).where("semister_id = ? ",@semister_id).all

    end

    def semister
      Semister.where("id = ?",@semister_id).first
    end
  end

end