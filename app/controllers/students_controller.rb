class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end

# def create
#     Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
#     @params = params
#     render :new
#     # redirect_to new_student_path
#   end

# <%= form_with model:@sushi, local: :true do |form|
#  <%= form.text_field :name
#  <%=  form.submit %>
# end
