class AddNullToProjects < ActiveRecord::Migration[5.2]
  def change
    change_column_null :projects, :project_title, false
    change_column_null :projects, :project_text, false
  end
end
