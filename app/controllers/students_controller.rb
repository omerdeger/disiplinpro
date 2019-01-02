class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def new
    @student = Student.new
  end
  
  def index
    @students = Student.all
  end
  
  def update
    @student = Student.find(params[:id])
    
    if @student.save
      return_to @student
    else
      render 'edit'
    end
  end
  
  def create
    @student = Student.new(student_params)
    
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end
  
  private
  def student_params
    params.require(:student).permit(:name, :surname, :id_number, :phone_number)
  end
end
