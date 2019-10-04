class AddNullToProjectAbouts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :project_abouts, :project_abouts, false
  end
end
