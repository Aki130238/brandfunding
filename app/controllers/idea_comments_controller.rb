class IdeaCommentsController < ApplicationController

  def create
    @idea = Idea.find(params[:idea_id])
    @idea_comment = @idea.idea_comments.build(idea_comment_params)
    @idea_comment.user_id = current_user.id
    redirect_to idea_path(@idea) if @idea_comment.save
  end

  def destroy
    @idea = Idea.find(params[:idea_id])
    @idea_comment = IdeaComment.find(params[:id])
    if @idea_comment.user == current_user || @idea.user == current_user
      @idea_comment.destroy
      redirect_to idea_path(@idea)
    else
      redirect_to idea_path(@idea)
    end
  end

  private

  def idea_comment_params
    params.require(:idea_comment).permit(:content, :idea_id, :user_id)
  end
end
