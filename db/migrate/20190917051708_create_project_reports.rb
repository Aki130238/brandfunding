class CreateProjectReports < ActiveRecord::Migration[5.2]
  def change
    create_table :project_reports do |t|
      t.references :project, foreign_key: true
      t.text :project_reports

      t.timestamps
    end
  end
end
