class AddRefIdeaToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :idea, foregn_key: true
  end
end
