class ProjectValue < ApplicationRecord
  belongs_to :project
  validates :recruitment_deadline, presence: true
end
