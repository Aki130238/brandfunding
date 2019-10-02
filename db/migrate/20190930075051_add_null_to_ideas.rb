class AddNullToIdeas < ActiveRecord::Migration[5.2]
  def change
    change_column_null :ideas, :idea_title, false
    change_column_null :ideas, :idea_amount, false
    change_column_null :ideas, :idea_about, false
    change_column_null :ideas, :idea_usage, false
    change_column_null :ideas, :idea_commit, false
    change_column_null :ideas, :product_image, false
    change_column_null :ideas, :idea_category, false
    change_column_null :ideas, :idea_category_details, false
    change_column_null :ideas, :idea_material, false
    change_column_null :ideas, :work_style, false
    change_column_null :ideas, :delivery_date, false
    change_column_null :ideas, :budget, false
  end
end
