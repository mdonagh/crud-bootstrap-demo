class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
  end

  def create
    student_params = params.to_unsafe_hash
    Student.create(name: student_params[:name],
                   age: student_params[:age],
                   hobby: student_params[:hobby])
    redirect_to "/students"
  end

  def edit
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end
end
