class CreateProjectValues < ActiveRecord::Migration[5.2]
  def change
    create_table :project_values do |t|
      t.references :project, foreign_key: true
      t.integer :target_fund
      t.integer :project_fund
      t.string :recruitment_method
      t.datetime :recruitment_deadline

      t.timestamps
    end
  end
end
