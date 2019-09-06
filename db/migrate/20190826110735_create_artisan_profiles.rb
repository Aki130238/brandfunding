class CreateArtisanProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :artisan_profiles do |t|
      t.integer :workexp
      t.integer :homeworkexp
      t.string :skill
      t.string :skill_free
      t.integer :skill_exp
      t.text :genre
      t.string :genre_free
      t.text :item
      t.string :item_free
      t.text :facillity
      t.string :facillity_free
      t.text :workexp_text
      t.text :mypr
      t.text :myprofile
      t.text :work_status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
