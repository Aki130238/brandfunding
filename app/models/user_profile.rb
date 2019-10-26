class UserProfile < ApplicationRecord
  has_many :user_comments, dependent: :destroy
  belongs_to :user, inverse_of: :user_profile
  validates :password, presence: true, length: { minimum: 6 }, on: :new
end
