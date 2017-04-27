module Students
  class AllCoursesPresenter
    attr_reader :student_id

    #Pass parameter to this class and use it through out the class
    #For consistency and get variable from caller controller
    def initialize(id)
      @student_id=id
    end

    def taken_courses
      @active_semisters=Semister.where("is_active= ?",true).select("id")
      Course.where("semister_id in (?)",@active_semisters).all
    end

  end

end