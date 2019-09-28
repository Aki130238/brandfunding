class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_status, :integer, default: '3'
  end
end
