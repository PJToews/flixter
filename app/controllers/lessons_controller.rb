class LessonsController < ApplicationController
  before_action :authenticate_user!


  def show
    @lesson = current_lesson
    course = @lesson.section.course

    if current_user.enrolled_in?(course)
      render :show
    else
      redirect_to course_path(course), alert: 'Please Enroll For The Lesson'
    end
   
  end




  private


  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

end
