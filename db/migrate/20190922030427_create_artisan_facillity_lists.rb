class CreateArtisanFacillityLists < ActiveRecord::Migration[5.2]
  def change
    create_table :artisan_facillity_lists do |t|
      t.string :facillity_name

      t.timestamps
    end
  end
end
