class ProjectLikesController < ApplicationController

  def create
    like = current_user.project_likes.create(project_id: params[:project_id])
    ridirect_to project_url, notice: "プロジェクトをお気に入り登録しました！"
  end

  def destroy
    like = current_user.project_likes.find_by(id: params[:id]).destory
    ridirect_to project_url, notice: "お気に入りを解除しました。"
  end
end
