class AddIdeaImageColumnToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :idea_image, :string
  end
end
