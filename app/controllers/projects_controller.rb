class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.build_project_profile(project_profile_params)
    @project.build_artisan_profile(artisan_profile_params)
    if params[:back]
      render 'new'
    else
      if @project.save
        session[:user_id] = @project.id
        redirect_to user_path(@project.id), notice: "プロジェクトを作成しました！"
      else
        render 'new'
      end
    end
  end

  def show
  end

  def edit
    @project_profile = @project.project_profile
  end

  def update
    if @project.project_profile.update(project_profile_params)
      redirect_to user_path(@project.id), notice: "プロジェクトを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to root_path, notice:"プロジェクトを削除しました！"
  end

  def confirm
    @project = Project.new(project_params)
    # @project.image_user.cache!#carriewave設定
    render :new if @project.invalid?
  end

  def favorite
    @project = Project.find(params[:id])
    @favorites = @project.favorites
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

end
