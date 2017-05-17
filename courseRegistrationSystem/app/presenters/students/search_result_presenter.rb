module Students

  class SearchResultPresenter

    attr_reader :student_id
    attr_reader :search_by
    attr_reader :search_string
    #Pass parameter to this class and use it through out the class
    #For consistency and get variable from caller controller
    def initialize(student_id,search_by,search_string)
      @student_id=student_id
      @search_by=search_by
      @search_string=search_string
    end
    def result
      #search by semister
      if @search_by == "1"
        @semister_id=Semister.where("name like (?) ","%#{@search_string}%").select("id").first
        @courses=Course.where("semister_id in (?)",@semister_id).select("id").all
        StudentCourseRegister.includes(:course).where("is_completed = ? AND student_id= ? and course_id in (?) ",true,@student_id,@courses).all

      else
        @courses=Course.where("name like (?) ","%#{@search_string}%").select("id").all
        StudentCourseRegister.includes(:course).where("is_completed = ? AND student_id= ? and course_id in (?) ",true,@student_id,@courses).all
      end
    end

  end

end