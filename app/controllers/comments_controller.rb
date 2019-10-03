class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.project_id = params[:project_id]
    if @comment.save
      flash[:notice] = "コメントしました。"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "コメントに失敗しました。"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @comment = Comment.find(params[:id])
    if @comment.user == current_user || @project.user == current_user
      @comment.destroy
      flash[:notice] = "コメントを削除しました"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "コメントを削除しました"
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
