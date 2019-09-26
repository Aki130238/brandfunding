class ProjectLike < ApplicationRecord
  belogns_to :user
  belogns_to :project
end
