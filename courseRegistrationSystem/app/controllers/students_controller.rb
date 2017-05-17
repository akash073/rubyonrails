class StudentsController < ApplicationController



  def index
    @student_name="My name is akash"
  end

  def all_courses
    @student_id=current_student.id
    @presenter=Students::AllCoursesPresenter.new(@student_id)
  end

  def registered_courses
    @student_id=current_student.id
    @presenter=Students::RegisteredCoursesPresenter.new(@student_id)
  end

  def semister
    @presenter=Students::SemisterPresenter.new
  end

  def semister_courses
    @student_id=current_student.id
    @semister_id=params["id"]
    @presenter=Students::SemisterCoursesPresenter.new(@semister_id,@student_id)
  end

  def register_course
    @id=params[:id]
    if @id.nil?
      render json: []

    end
    @student_id=current_student.id
    @register=StudentCourseRegister.new( :student_id=> @student_id ,:course_id=>@id)

    @register.save(validate: false)

    render json: @register

  end


  def semister_r
    @presenter=Students::SemisterPresenter.new

  end

  def semister_result
    @student_id=current_student.id
    @semister_id=params[:id]
    @presenter=Students::SemisterResultPresenter.new(@student_id ,@semister_id)

  end


  def search

  end

  def search_result
    @student_id=current_student.id
    @search_by=params[:search_by]
    @search_string=params[:search_string]
    @presenter=Students::SearchResultPresenter.new( @student_id, @search_by, @search_string)

    render json: @presenter.result, :include =>[:course]


  end


end
