class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

  def index
    @ideas = Idea.all
  end

  def show
    @idea_comment = IdeaComment.new
    @idea_comments = @idea.idea_comments
  end

  def new
    @idea = Idea.new
    @idea_user1 = IdeaUser.find(1).id
    @idea_user2 = IdeaUser.find(2).id
    @idea_user3 = IdeaUser.find(3).id
    @idea_user4 = IdeaUser.find(4).id
  end

  def edit
    @idea_user1 = IdeaUser.find(1).id
    @idea_user2 = IdeaUser.find(2).id
    @idea_user3 = IdeaUser.find(3).id
    @idea_user4 = IdeaUser.find(4).id
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to @idea
    else
      render :new
    end
  end

  def update
    if @idea.update(idea_params)
      redirect_to @idea
    else
      render :edit
    end
  end

  def destroy
    @idea.destroy
    redirect_to ideas_path
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:idea_title, :idea_amount, :idea_about, :idea_usage, :idea_commit, :product_image,
                                 :idea_category, :idea_category_details, :product_about, idea_user_ids: [])
  end
end
