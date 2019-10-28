class AddIdeaRefToConversation < ActiveRecord::Migration[5.2]
  def change
    add_reference :conversations, :idea, foreign_key: true
  end
end
