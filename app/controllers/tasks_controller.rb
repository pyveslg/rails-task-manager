class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def create
    created_task = Task.create(set_params)
    redirect_to task_path(created_task)
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params["id"])
  end

  def edit
    @task = Task.find(params["id"])
  end

  def update
    task = Task.find(params["id"])
    task.update(set_params)
    redirect_to task_path(task)
  end

  def destroy
    task = Task.find(params["id"])
    task.destroy
    redirect_to tasks_path
  end

  private

  def set_params
    params.require(:task).permit(:name, :description, :done)
  end
end
