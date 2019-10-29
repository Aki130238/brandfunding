class UserCommentsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user_comment = @user.user_comments.build(user_comment_params)
    @user_comments = @user.user_comments

    # what: リクエストに明示的にフォーマットの指定が無かった場合はindexアクションのデフォルトのテンプレートが呼び出されて結果が返されますが、リクエストのフォーマットが指定されていた場合、それが「json」なら「render :json => オブジェクト」と返し、「xml」なら「render :xml => オブジェクト」を使って返します。
    # why: requestという変数は実はcontorllerだとどこでも使える そのうちのプロパティーの一つにformatという物が入ってる format
    # how: content-type (curl)はrailsならデフォでhtml　ただjsの時もある　そういう時に返したいデータを変えたい そういう時にrespond_toはつかうもの
    respond_to do |format|
      if @user_comment.save
        format.js { render :index }
        format.html { redirect_to user_path(@user) }
      else
        format.js { render :index, notice: '投稿できませんでした...' }
        format.html { redirect_to user_path(@user), notice: '投稿できませんでした...' }
      end
    end
    # なぜviewファイルに行くのか
    # what: そもそもviewとは
    # why: 
    # how(つまり): 
  end

  def show
  end

  private
  def user_comment_params
    params.require(:user_comment).permit(:user_id, :content, :comment_user_id)
  end
end
