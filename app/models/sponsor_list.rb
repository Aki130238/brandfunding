class SponsorList < ApplicationRecord
  belongs_to :user
  belongs_to :project_return
end
