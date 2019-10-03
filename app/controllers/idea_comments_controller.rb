class IdeaCommentsController < ApplicationController

  def create
    @idea = Idea.find(params[:idea_id])
    @idea_comment = @idea.idea_comments.build(idea_comment_params)
    @idea_comment.user_id = current_user.id
    if @idea_comment.save
      flash[:notice] = "コメントしました。"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "コメントに失敗しました。"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @idea = Idea.find(params[:idea_id])
    @idea_comment = IdeaComment.find(params[:id])
    if @idea_comment.user == current_user || @idea.user == current_user
      @idea_comment.destroy
      flash[:notice] = "コメントを削除しました。"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "コメントの削除に失敗しました。"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def idea_comment_params
    params.require(:idea_comment).permit(:content, :idea_id, :user_id)
  end
end
