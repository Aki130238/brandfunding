class AddNullToIdeaComments < ActiveRecord::Migration[5.2]
  def change
    change_column_null :idea_comments, :content, false
  end
end
