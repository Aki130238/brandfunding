class UserProfile < ApplicationRecord
  belongs_to :users, inverse_of: :user_profile
end
