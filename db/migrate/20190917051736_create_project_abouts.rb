class CreateProjectAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :project_abouts do |t|
      t.references :project, foreign_key: true
      t.text :project_abouts

      t.timestamps
    end
  end
end
