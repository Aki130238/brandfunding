class SelectGenreInIdea < ApplicationRecord
  belongs_to :idea
  belongs_to :idea_user
end
