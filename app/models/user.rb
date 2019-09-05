class User < ApplicationRecord
  has_secure_password
  has_one :user_profile, inverse_of: :user
  validates :password, presence: true, length: { minimum: 6 }, on: :new
end
