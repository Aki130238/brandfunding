class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_secure_password
  has_one :user_profile, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :user_profile, reject_if: :all_blank, update_only: true
  has_one :artisan_profile, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :artisan_profile, reject_if: :all_blank
  validates :password, presence: true, length: { minimum: 6 }, on: :new
  has_many :comments
end
