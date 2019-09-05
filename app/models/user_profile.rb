class UserProfile < ApplicationRecord
  belongs_to :user, inverse_of: :user_profile
  validates :password, presence: true, length: { minimum: 6 }, on: :new
end
# , inverse_of: :user_profiles