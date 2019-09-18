class IdeaUser < ApplicationRecord
  has_many :select_genre_in_ideas, dependent: :destroy
  has_many :ideas, through: :select_genre_in_ideas
end
