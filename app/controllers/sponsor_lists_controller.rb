class SponsorListsController < ApplicationController
  def create
    current_user.sponsor_lists.create(project_return_id: params[:project_return_id])
    redirect_to projects_path
  end
end
