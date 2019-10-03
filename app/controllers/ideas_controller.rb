class IdeasController < ApplicationController
  before_action :require_login
  before_action :set_idea, only: [:show, :edit, :update, :destroy]
  before_action :idea_authority, only: [:edit, :uodate, :destroy]

  def index
    @ideas = current_user.ideas
  end

  def show
    @idea_comment = IdeaComment.new
    @idea_comments = @idea.idea_comments
  end

  def new
    @idea = current_user.ideas.build
  end

  def edit
  end

  def create
    @idea = current_user.ideas.build(idea_params)
    if @idea.save
      redirect_to @idea, notice: "アイディアを作成しました。"
    else
      flash.now[:alert] = "アイディアの作成に失敗しました。"
      render :new
    end
  end

  def update
    if @idea.update(idea_params)
      redirect_to @idea, notice: "更新しました。"
    else
      flash.now[:alert] = "更新に失敗しました。"
      render :edit
    end
  end

  def destroy
    @idea.destroy
    redirect_to ideas_path, alert: "アイディアを削除しました。"
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:idea_title, :idea_amount, :idea_about, :idea_usage, :idea_commit, :product_image,
                                 :idea_category, :idea_category_details, :idea_material, :work_style, :delivery_date,
                                 :budget, idea_user_ids: [])
  end

  def idea_authority
    if @idea.user_id != current_user.id
      redirect_to root_path, alert: "権限がありません。"
    end
  end
end
