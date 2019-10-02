class RelationshipsController < ApplicationController

  def index
    @relationships = Relationship.where(follower_id: current_user.id)
  end

  def create
    if logged_in?
      @user = User.find(params[:relationship][:followed_id])
      current_user.follow!(@user)
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
  end
end
