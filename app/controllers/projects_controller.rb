class ProjectsController < ApplicationController
  
  
  def index
    @projects = Project.order("created_at DESC")
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.create(create_params)
    if project.project.blank?
      redirect_to controller: :projects, action: :new
    end
  end

  def destroy
  end

  def show
  end
  
  private
  def create_params
    params.require(:project).permit(:project)
  end
  
end
