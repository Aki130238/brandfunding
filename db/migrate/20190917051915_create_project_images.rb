class CreateProjectImages < ActiveRecord::Migration[5.2]
  def change
    create_table :project_images do |t|
      t.references :project, foreign_key: true
      t.text :project_logo
      t.text :project_img
      t.text :project_img_2
      t.text :project_img_3
      t.text :project_img_4
      t.text :project_img_5
      t.text :project_movie

      t.timestamps
    end
  end
end
