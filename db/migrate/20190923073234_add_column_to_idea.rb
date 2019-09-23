class AddColumnToIdea < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :idea_material, :string
  end
end
