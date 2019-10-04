class AddNullToProjectValues < ActiveRecord::Migration[5.2]
  def change
    change_column_null :project_values, :target_fund, false
    change_column_null :project_values, :recruitment_deadline, false
  end
end
