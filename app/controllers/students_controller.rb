class StudentsController < ApplicationController
  respond_to :html, :json

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @students = Student.all
    flash[:notice] = "Student created successfully!"
    @student = Student.create(student_params)
  end

  def show
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    @students = Student.all   
  end

  def destroy
    @student = Student.find(params[:id])
    @student.delete
    @students = Student.all
  end

  private
    def student_params
      params.require(:student).permit(:name, :age)
    end
end
