class Project < ApplicationRecord
  has_one :project_about
  has_one :project_idea
  has_one :project_image
  has_one :project_report
  has_one :project_return
  has_one :project_sponsor
  has_one :project_value

  accepts_nested_attributes_for :project_about
  accepts_nested_attributes_for :project_idea
  accepts_nested_attributes_for :project_image
  accepts_nested_attributes_for :project_report
  accepts_nested_attributes_for :project_return
  accepts_nested_attributes_for :project_sponsor
  accepts_nested_attributes_for :project_value

  belongs_to :user
  has_many :comments
end
