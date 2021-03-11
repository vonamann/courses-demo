class Api::UsersController < ApplicationController
  before_action do
    @user = User.find_by(id: params[:user_id])
    render json: {error_message: "User ##{params[:user_id]} not found"}, status: 404 if @user.nil?
  end

  def courses
    render json: @user.available_courses_obj
  end

  def lessons
    course = Course.find_by(id: params[:course_id])
    render json: { error_message: "Course ##{params[:course_id]} not found" } and return if course.nil?
    render json: @user.available_lessons_obj(course)
  end
end
