class ProjectReturn < ApplicationRecord
  belongs_to :project
  has_many :sponsor_lists, dependent: :destroy
  has_many :sponsor_users, through: :sponsor_lists, source: :user
end
