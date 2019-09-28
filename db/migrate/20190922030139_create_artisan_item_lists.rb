class CreateArtisanItemLists < ActiveRecord::Migration[5.2]
  def change
    create_table :artisan_item_lists do |t|
      t.string :item_name

      t.timestamps
    end
  end
end
