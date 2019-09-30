class IdeaComment < ApplicationRecord
  belongs_to :idea
  belongs_to :user
  validates :content, presence: true, length: { in: 1..1000 }
end
