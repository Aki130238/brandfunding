class CreateSponsorLists < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsor_lists do |t|
      t.integer :user_id
      t.integer :project_return_id
      t.timestamps
    end
  end
end
