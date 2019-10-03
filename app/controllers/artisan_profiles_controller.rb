class ArtisanProfilesController < ApplicationController
  before_action :require_login
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :artisan_profile_authority, only: [:edit, :update]

  def index
  end

  def show
    if @user.user_status == 2
      @user_profile = @user.user_profile
      @artisan_profile = @user.artisan_profile
    else
      flash[:alert] = "職人ではありません"
      redirect_to root_path
    end
  end

  def edit
    @user_profile = @user.user_profile
    @artisan_profile = @user.artisan_profile
  end

  def update
    if @user.update(user_edit_params)
      redirect_to artisan_profile_path(@user.id), notice: "プロフィールを修正しました！"
    else
        render 'new', notice: "プロフィールを修正できません"
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_edit_params
    params.require(:user).permit(
      :name,
      :email,
      :image_name,
      :image_cache,
      :user_status,
      user_profile_attributes:[
        :id,
        :user_id,
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
      ],
      artisan_profile_attributes:[
        :id,
        :user_id,
        :workexp,
        :homeworkexp,
        :skill,
        :skill_free,
        :skill_exp,
        :genre_free,
        :item,
        :item_free,
        :facillity,
        :facillity_free,
        :workexp_text,
        :mypr,
        :myprofile,
        :work_status,
        artisan_genre_list_ids: [],
        artisan_item_list_ids: [],
        artisan_facillity_list_ids: [],
        artisan_processing_list_ids: []
      ]
    )
  end

  def artisan_profile_authority
    if @user.id != current_user.id
      flash[:danger] = "権限がありません"
      redirect_to root_path
    end
  end
end
