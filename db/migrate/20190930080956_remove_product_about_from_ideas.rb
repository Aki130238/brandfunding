class RemoveProductAboutFromIdeas < ActiveRecord::Migration[5.2]
  def change
    remove_column :ideas, :product_about, :string
  end
end
