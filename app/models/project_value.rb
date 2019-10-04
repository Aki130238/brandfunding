class ProjectValue < ApplicationRecord
  belongs_to :project
  validates :target_fund, presence: true, numericality: { greater_than: 9999, less_than: 100000001 }
  validates :recruitment_method, presence: true
  validates :recruitment_deadline, presence: true
end
