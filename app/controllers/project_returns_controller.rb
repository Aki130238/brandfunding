class ProjectReturnsController < ApplicationController

  def create
    @project = Project.find(params[:id])
    @project_return = ProjectReturn.new(project_return_params)
    @project_return.project_id = params[:id]
    # @project_return = @project.project_returns.build(project_return_params)
    if @project_return.save
      redirect_to project_path(@project), notice: "登録しました。"
    else
      redirect_to root_path, alert: "作成に失敗しました。"
    end
  end

  private

  def project_return_params
    params.require(:project_return).permit!
  end
end
