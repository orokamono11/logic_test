class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  impressionist actions: [:show]

  def show
    impressionist(@project)
  end

  def new
    @project = Project.new()
  end

  def index
    @search = Project.ransack(params[:q])
    @projects = @search.result.page(params[:page])
  end

  def create
    @project = Project.new(project_params)

    @project.save
    redirect_to @project
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end

  def destroy
    @project.destroy

    redirect_to projects_path
  end

  end
  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:create_title, :content)
    end
end
