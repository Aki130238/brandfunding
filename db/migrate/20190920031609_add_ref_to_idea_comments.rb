class AddRefToIdeaComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :idea_comments, :idea, foreign_key: true
    add_reference :idea_comments, :user, foreign_key: true
  end
end
