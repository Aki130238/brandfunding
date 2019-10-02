class ChangeBudgetToIdeas < ActiveRecord::Migration[5.2]
  def up
    change_column :ideas, :budget, :string
  end

  def down
    change_column :ideas, :budget, 'integer USING CAST(budget AS integer)'
  end
end
