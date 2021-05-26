class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # redirecting to show page
    redirect_to task_details_path(@task) # @task.id
  end

  def edit

  end

  def update
    @task.update(task_params)
    # redirecting to show page
    redirect_to task_details_path(@task)
  end

  def destroy
    @task.destroy
    # can't redirect to show 'cause it does not exists anymore, then:
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
