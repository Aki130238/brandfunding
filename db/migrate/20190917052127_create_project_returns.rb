class CreateProjectReturns < ActiveRecord::Migration[5.2]
  def change
    create_table :project_returns do |t|
      t.references :project, foreign_key: true
      t.string :return_title
      t.text :return_item_img
      t.integer :return_item_fund
      t.integer :return_item_count
      t.text :return_item_about
      t.integer :return_item_sponsors
      t.date :delivery_date
      t.text :return_item_remark
      t.text :return_option

      t.timestamps
    end
  end
end
