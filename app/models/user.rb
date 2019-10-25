class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, on: :new
  validates :name,  presence: true, length: { maximum: 30 }
  before_validation { email.downcase! }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_one :user_profile, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :user_profile, reject_if: :all_blank, update_only: true
  has_one :artisan_profile, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :artisan_profile, reject_if: :all_blank
  has_many :comments
  has_many :projects
  has_many :idea_comments, dependent: :destroy
  has_many :project_likes, dependent: :destroy
  has_many :like_projects, through: :project_likes, source: :project

  has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :ideas, dependent: :destroy
  has_many :sponsor_lists, dependent: :destroy
  has_many :user_comments, dependent: :destroy

  def follow!(other_user)
    active_relationships.create!(followed_id: other_user.id)
  end

  def following?(other_user)
    active_relationships.find_by(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end
end
