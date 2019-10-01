class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.build_project_about
    @project.build_project_idea
    @project.build_project_image
    @project.build_project_report
    @project.project_return.build
    @project.build_project_sponsor
    @project.build_project_value
    @ideas = current_user.ideas
  end

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def show
    @comments = @project.comments
    @comment = Comment.new
    @project_return = ProjectReturn.new
    @like = current_user.project_likes.find_by(project_id: @project.id)
  end

  def edit
    @ideas = current_user.ideas
    if @project.user_id == session[:user_id]
      else
        redirect_to projects_path, notice: "他のユーザーのプロジェクトは編集できません！"
    end
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path, notice: "プロジェクトを編集しました！"
    else
      render 'edit'
    end
  end

  def confirm
    @project = current_user.projects.build(project_params)
    render :new if @project.invalid?
  end

  def destroy
    if @project.user_id == session[:user_id]
      @project.destroy
      redirect_to projects_path, notice:"プロジェクトを削除しました！ "
      else
        redirect_to projects_path, notice: "他のユーザーのプロジェクトは削除できません！"
    end
  end

  private

  def project_params
    params.require(:project).permit!
    # params.require(:project).permit(
    #   :project_title,
    #   :project_text,
    #   project_about_attributes: [
    #     :id,
    #     :project_abouts
    #   ],
    #   project_idea_attributes: [
    #     :id,
    #     :project_returns
    #   ],
    #   project_image_attribute: [
    #     :id,
    #     :project_img,
    #     :project_img2,
    #     :project_img3,
    #     :project_img4,
    #     :project_img5,
    #     :project_movie
    # ],
    # project_report_attribute: [
    #   :id,
    #   :project_reports
    # ],
    # project_return_attribute: [
    #   :id,
    #   :return_title,
    #   :return_item_img,
    #   :return_item_fund,
    #   :return_item_count,
    #   :return_item_sponsors,
    #   :delivery_date,
    #   :return_item_remark,
    #   :return_option
    # ],
    # project_sponsor_attribute: [
    #   :id,
    #   :sponsors_list
    # ],
    # project_value_attribute: [
    #   :id,
    #   :target_fund,
    #   :project_fund,
    #   :recruitment_method,
    #   :recruitment_deadline
    # ]
    # )
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
