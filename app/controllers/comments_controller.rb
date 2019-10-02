class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.project_id = params[:project_id]
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @comment = Comment.find(params[:id])
    if @comment.user == current_user || @project.user == current_user
      @comment.destroy
      redirect_to project_path(@project)
    else
      redirect_to project_path(@project)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
