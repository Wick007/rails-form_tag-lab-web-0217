class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new
  end

  def create
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

# def create
#   Post.create(title: params[:post][:title], description: params[:post][:description])
#   redirect_to posts_path
# end

end
