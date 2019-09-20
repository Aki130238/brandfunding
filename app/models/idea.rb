class Idea < ApplicationRecord
  has_many :select_genre_in_ideas, dependent: :destroy
  has_many :idea_users, through: :select_genre_in_ideas
  has_many :idea_comments, dependent: :destroy
end
