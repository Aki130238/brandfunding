class CreateSelectGenreInArtisans < ActiveRecord::Migration[5.2]
  def change
    create_table :select_genre_in_artisans do |t|
      t.references :artisan_profile, foreign_key: true
      t.references :artisan_genre_list, foreign_key: true

      t.timestamps
    end
  end
end
