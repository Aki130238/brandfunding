class ProjectLikesController < ApplicationController

  def create
    like = current_user.project_likes.create(project_id: params[:project_id])
    redirect_to project_url(id: params[:project_id]), notice: "プロジェクトをお気に入り登録しました！"
  end

  def destroy
    like = current_user.project_likes.find_by(id: params[:project_id]).destroy
    redirect_to project_url(id: params[:id]), notice: "お気に入りを解除しました。"
  end
end
