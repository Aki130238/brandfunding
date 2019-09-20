class IdeaCommentsController < ApplicationController

  def create
    @idea = Idea.find(params[:idea_id])
    @idea_comment = @idea.idea_comments.build(idea_comment_params)
    @idea_comment.user_id = current_user.id
    redirect_to idea_path(@idea) if @idea_comment.save
  end

  private

  def idea_comment_params
    params.require(:idea_comment).permit(:content, :idea_id, :user_id)
  end
end
