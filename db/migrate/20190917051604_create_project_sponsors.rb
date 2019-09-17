class CreateProjectSponsors < ActiveRecord::Migration[5.2]
  def change
    create_table :project_sponsors do |t|
      t.references :project, foreign_key: true
      t.integer :sponsors_list

      t.timestamps
    end
  end
end
