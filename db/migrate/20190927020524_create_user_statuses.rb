class CreateUserStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_statuses do |t|
      t.string :status_name
      t.integer :level
      t.string :login_top_url

      t.timestamps
    end
  end
end
