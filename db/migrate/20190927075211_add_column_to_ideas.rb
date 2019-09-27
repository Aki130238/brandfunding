class AddColumnToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :work_style, :string
    add_column :ideas, :delivery_date, :datetime
    add_column :ideas, :budget, :integer
  end
end
