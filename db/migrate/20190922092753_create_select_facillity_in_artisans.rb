class CreateSelectFacillityInArtisans < ActiveRecord::Migration[5.2]
  def change
    create_table :select_facillity_in_artisans do |t|
      t.references :artisan_profile, foreign_key: true
      t.references :artisan_facillity_list, foreign_key: true

      t.timestamps
    end
  end
end
