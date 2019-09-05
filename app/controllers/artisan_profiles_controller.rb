class ArtisanProfilesController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.build_user_profile(user_profile_params)
    @user.build_artisan_profile(artisan_profile_params)
    if params[:back]
      render 'new'
    else
      if @user.save
        redirect_to root_path, notice: "プロフィールを作成しました！"
      else
        render 'new', notice: "プロフィールを作成できません"
      end
    end
  end

  def edit
    @artisan = User.new
    @artisan_profile = UserProfile.new
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @artisan_profile = current_user.updated_at_change_to_be_saved(user_profile_params)
      redirect_to root_path, notice: "プロフィールを修正しました！"
    else
        render 'new', notice: "プロフィールを修正できません"
    end
  end


  private

  def user_profile_params
    params.require(:user_profile).permit(
        :family_name,
        :family_name_sub,
        :last_name,
        :last_name_sub,
        :sex,
        :birthday,
        :add_no,
        :prefectures,
        :address,
        :phone_no1,
        :phone_no2
      )
  end

  def artisan_profile_params
    params.require(:artisan_profile).permit(
        :workexp,
        :homeworkexp,
        :skill,
        :skill_free,
        :skill_exp,
        :genre,
        :genre_free,
        :item,
        :item_free,
        :facillity,
        :facillity_free,
        :workexp_text,
        :mypr,
        :myprofile,
        :work_status
      )
  end
end
