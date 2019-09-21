class CreateArtisanGenreLists < ActiveRecord::Migration[5.2]
  def change
    create_table :artisan_genre_lists do |t|

      t.timestamps
    end
  end
end
