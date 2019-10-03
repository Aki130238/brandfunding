class SponsorListsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    current_user.sponsor_lists.create(project_return_id: params[:project_return_id])
    redirect_to project_path(@project), notice: "スポンサー登録しました。"
  end
end
