class ProjectValue < ApplicationRecord
  belongs_to :project
  validates :target_fund, presence: true, numericality: { greater_than: 10000, less_than: 100000000 }
  validates :recruitment_method, presence: true
  validates :recruitment_deadline, presence: true
end
