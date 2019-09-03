class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
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
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: "userを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice:"userを削除しました！"
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

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def authenticate_user
    unless current_user.id == @user.id
      flash[:notice] = "ログインが必要"
      redirect_to new_session_path, notice:"ログインが必要です"
    end
  end

end
