class ProjectsController < ApplicationController

  http_basic_authenticate_with name: ENV['HTTP_USER'], password: ENV['HTTP_PASS'], except: [:index, :show, :scrapbook, :weeknotes]

  def index
    @projects = Project.where(project_type: 'project').reorder("publish_date DESC").limit(4)
    @scrapbooks = Project.where(project_type: 'scrapbook').reorder("publish_date DESC").limit(3)
    @blogs = Project.where(project_type: 'blog').order(:publish_date).reorder("publish_date DESC").limit(3)
  end

  def scrapbook
    @scrapbooks = Project.where(project_type: 'scrapbook').reorder("publish_date DESC")
  end

  def weeknotes
    @blogs = Project.where(project_type: 'blog').reorder("publish_date DESC")
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
    params.require(:project).permit(
        :title,
        :intro,
        :role,
        :client,
        :project_type,
        :publish_date,
        blocks_attributes: [
          :id,
          :title,
          :project_id,
          :text_block,
          :image,
          :image_primary,
          :image_secondary,
          :image_tertiary,
          :_destroy
        ]
    )
  end



end
