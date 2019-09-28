class ProjectLikesController < ApplicationController

  def index
    @projects = Project.where(id: current_user.like_projects.ids)
  end

  def create
    @project = Project.find(params[:project_id])
    if current_user.id != @project.user_id
      like = current_user.project_likes.create(project_id: params[:project_id])
      redirect_to project_url(id: params[:project_id]), notice: "プロジェクトをお気に入り登録しました！"
    else
      redirect_to project_url(id: params[:project_id]), notice: "自分のプロジェクトにはいいねできません。"
    end
  end

  def destroy
    like = current_user.project_likes.find_by(id: params[:project_id]).destroy
    redirect_to project_url(id: params[:id]), notice: "お気に入りを解除しました。"
  end
end
