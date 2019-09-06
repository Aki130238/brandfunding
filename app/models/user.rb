class User < ApplicationRecord
  has_secure_password
  has_one :user_profile, inverse_of: :user, :dependent => :destroy
  has_one :artisan_profile, inverse_of: :user, :dependent => :destroy
  validates :password, presence: true, length: { minimum: 6 }, on: :new
end
