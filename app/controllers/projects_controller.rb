class ProjectsController < ApplicationController

  http_basic_authenticate_with name: "laurence", password: "wMgidV6ADgoZh2", except: [:index, :show]


  def index
    @projects = Project.where(project_type: 'project').all
    @prototypes = Project.where(project_type: 'prototype').all
    @products = Project.where(project_type: 'product').all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

def update
  @project = Project.find(params[:id])

  if @project.update(project_params)
    redirect_to @project
  else
    render 'edit'
  end
end

def destroy
  @project = Project.find(params[:id])
  @project.destroy

  redirect_to projects_path
end

private
  def project_params
    params.require(:project).permit(:title, :background, :project_description, :project_url, :project_type)
  end

end
