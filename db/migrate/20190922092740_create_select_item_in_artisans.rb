class CreateSelectItemInArtisans < ActiveRecord::Migration[5.2]
  def change
    create_table :select_item_in_artisans do |t|
      t.references :artisan_profile, foreign_key: true
      t.references :artisan_item_list, foreign_key: true

      t.timestamps
    end
  end
end
