class CreateIdeaUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :idea_users do |t|
      t.string :name
      t.timestamps
    end
  end
end
