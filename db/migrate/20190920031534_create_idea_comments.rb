class CreateIdeaComments < ActiveRecord::Migration[5.2]
  def change
    create_table :idea_comments do |t|
      t.text :content

      t.timestamps
    end
  end
end
