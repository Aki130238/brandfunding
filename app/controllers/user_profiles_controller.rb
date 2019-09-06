class UserProfilesController < ApplicationController
  # def new
  #   @user_profile = UserProfile.new
  # end

  # def create
  #   @user_profile = current_user.build_user_profile(user_profile_params)    
  #   if params[:back]
  #     render 'new'
  #   else
  #     if @user_profile.save
  #       redirect_to root_path, notice: "プロフィールを作成しました！"
  #     else
  #       render 'new', notice: "プロフィールを作成できません"
  #     end
  #   end
  # end

  def edit
    flash[:notice] = 'プロフィールエディット'
    @user = User.find(params[:id])
    @user_profile = @user.user_profile
  end

  def update
    flash[:notice] = 'UPdate'
    @user = User.find(params[:id])
    @user_profile = @user.user_profile
    if @user.user_profile.update(user_profile_params)
      redirect_to user_path(@user.id), notice: "プロフィールを修正しました！"
    else
      render 'edit', notice: "プロフィールを修正できません"
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

end
