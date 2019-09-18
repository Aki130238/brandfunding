class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.text :project_text

      t.timestamps
    end
  end
end
