class CreateArtisanGenreLists < ActiveRecord::Migration[5.2]
  def change
    create_table :artisan_genre_lists do |t|
      t.string :genre_name

      t.timestamps
    end
  end
end
