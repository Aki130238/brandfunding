class TopsController < ApplicationController
  def index
    @user = User.new
    @projects = Project.all.reverse_order.limit(3)
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if params[:back]
      render 'new'
    else
      if @user.save
        redirect_to user_path(@user.id), notice: "ユーザー登録しました。"
      else
        flash.now[:alert] = "ユーザー登録に失敗しました。"
        render :new
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
