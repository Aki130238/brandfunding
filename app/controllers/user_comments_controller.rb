class UserCommentsController < ApplicationController

  def create
    binding.irb
    # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
    @user = User.find(params[:user_id])
    @user_comment = @user.user_comments.build(user_comment_params)
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @user_comment.save
        format.html { redirect_to user_path(@user), notice: 'コメントしました'  }
      else
        format.html { redirect_to user_path(@user), notice: '投稿できませんでした...' }
      end
    end
  end

  def show
  end

  private
  # ストロングパラメーター
  def user_comment_params
    params.require(:user_comment).permit(:user_id, :content, :comment_user_id)
  end
end
