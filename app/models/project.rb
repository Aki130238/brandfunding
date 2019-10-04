class Project < ApplicationRecord
  has_one :project_about, dependent: :destroy
  has_one :project_idea, dependent: :destroy
  has_one :project_image, dependent: :destroy
  has_one :project_report, dependent: :destroy
  has_many :project_return, dependent: :destroy
  has_one :project_sponsor, dependent: :destroy
  has_one :project_value, dependent: :destroy
  belongs_to :idea

  accepts_nested_attributes_for :project_about
  accepts_nested_attributes_for :project_idea
  accepts_nested_attributes_for :project_image
  accepts_nested_attributes_for :project_report
  accepts_nested_attributes_for :project_return
  accepts_nested_attributes_for :project_sponsor
  accepts_nested_attributes_for :project_value

  belongs_to :user
  has_many :comments
  has_many :project_likes, dependent: :destroy
  has_many :like_users, through: :project_likes, source: :user

  validates :project_title, presence: true, length: { in: 1..40 }
  validates :project_text, presence: true, length: { in: 1..140 }
end
