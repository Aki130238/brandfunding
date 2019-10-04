class ProjectReturn < ApplicationRecord
  belongs_to :project
  has_many :sponsor_lists, dependent: :destroy
  has_many :sponsor_users, through: :sponsor_lists, source: :user
  validates :return_title, presence: true, length: { in: 1..40 }
  validates :return_item_fund, presence: true, numericality: { greater_than: 0, less_than: 10000001 }
  validates :return_item_count, presence: true, numericality: { greater_than: 0, less_than: 10000 }
  validates :delivery_date, presence: true
  validates :return_item_about, presence: true, length: { in: 1..140 }
end
