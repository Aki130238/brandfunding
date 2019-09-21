class CreateSelectGenreInArtisans < ActiveRecord::Migration[5.2]
  def change
    create_table :select_genre_in_artisans do |t|

      t.timestamps
    end
  end
end
