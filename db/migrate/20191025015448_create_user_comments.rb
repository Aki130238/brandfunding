class CreateUserComments < ActiveRecord::Migration[5.2]
  def up
    create_table :user_comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :comment_user_id

      t.timestamps
    end
    add_index :user_comments, :user_id
    add_index :user_comments, :comment_user_id
    add_index :user_comments, [:user_id, :comment_user_id], unique: true
  end
  def down
    drop_table :user_comments
  end
end
