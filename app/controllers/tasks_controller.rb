class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def create
  end

  def show
    @tasks = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
