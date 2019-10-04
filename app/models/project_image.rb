class ProjectImage < ApplicationRecord
  belongs_to :project
  mount_uploader :project_logo, ImageUploader
end
