class CreateProjectLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :project_likes do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
