class TasksController < ApplicationController
  
  def new
    task = Task.new
  end

  def create
    Task.create(task_params)
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end
  
  private
  def task_params
    params.require(:task).permit(:task, :text, :deadline,
    :deadline_time, :project_id )
  end
  
end
