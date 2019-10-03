class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :content, presence: true, length: { in: 1..1000 }
end
