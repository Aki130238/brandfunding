class ProjectAbout < ApplicationRecord
  belongs_to :project
  validates :project_abouts, presence: true, length: { in: 1..1000 }
end
