class CreateSelectGenreInIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :select_genre_in_ideas do |t|
      t.references :idea, foreign_key: true
      t.references :idea_user, foreign_key: true
      t.timestamps
    end
  end
end
