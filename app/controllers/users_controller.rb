class UsersController < ApplicationController
  before_action :require_login, only: %i[index show]
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authenticate_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    if logged_in?
      flash[:alert] = "すでにログインしています"
      redirect_to root_path
    end
  end

  def create
    @user = User.new(user_params)
    @user.build_user_profile(user_profile_params)
    @user.build_artisan_profile(artisan_profile_params)
    if params[:back]
      render 'new'
    else
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user.id), notice: "userを作成しました！"
      else
        render 'new'
      end
    end
  end

  def show
  end

  def edit
    flash[:notice] = 'ユーザーエディット'
    @user_profile = @user.user_profile
  end

  def update
    if @user.user_profile.update(user_profile_params)
      redirect_to user_path(@user.id), notice: "userを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice:"userを削除しました！"
  end

  def confirm
    @user = User.new(user_params)
    # @user.image_user.cache!#carriewave設定
    render :new if @user.invalid?
  end

  def favorite
    @user = User.find(params[:id])
    @favorites = @user.favorites
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation,
      :image_name,
      :image_cache
    )
  end

  def user_edit_params
    params.require(:user).permit(
      :name,
      :email,
      :image_name,
      :image_cache,
      user_profile:[
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
      ]
    )
  end

  def user_profile_params
    params.require(:user).permit(
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
    params.require(:user).permit(
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

  def authenticate_user
    unless current_user.id == @user.id
      flash[:alert] = "権限がありません"
      redirect_to root_path
    end
  end
end
