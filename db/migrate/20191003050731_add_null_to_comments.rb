class AddNullToComments < ActiveRecord::Migration[5.2]
  def change
    change_column_null :comments, :content, false
  end
end
