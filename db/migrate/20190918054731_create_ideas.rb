class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :idea_title
      t.integer :idea_amount
      t.text :idea_about
      t.string :idea_usage
      t.text :idea_commit
      t.string :product_image
      t.string :idea_category
      t.string :idea_category_details
      t.string :product_about
      t.timestamps
    end
  end
end
