class StudentInfosController < ApplicationController
  
  # Nested resources with indipendent view http://blog.8thcolor.com/en/2011/08/nested-resources-with-independent-views-in-ruby-on-rails/
  # https://teamtreehouse.com/community/database-gives-rollback-transaction-on-rails-console-create-method-on-rails-5
  
  def new
    @student = Student.find(params[:student_id])
    @student_info = @student.student_infos.build
  end
  
  def edit
    @student = Student.find(params[:student_id])
    @student_info = @student.student_infos.build(student_info_params)
  end
  
  
  def create
    @student = Student.find(params[:student_id])
    @student_info = @student.student_infos.create(student_info_params)
    
    if @student_info.save
      redirect_to student_path(@student)
    else
      render 'new'
    end
  end
  
  private
  
  def student_info_params
    params.require(:student_info).permit(:classroom, :branch, :school_number, :student_id)
  end
end
