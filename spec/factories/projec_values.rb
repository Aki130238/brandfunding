FactoryBot.define do
  factory :projec_value do
    project { nil }
    target_fund { 1 }
    project_fund { 1 }
    recruitment_method { "MyString" }
    recruitment_deadline { "2019-09-17 14:14:45" }
  end
end
