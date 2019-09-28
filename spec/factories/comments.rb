FactoryBot.define do
  factory :comment do
    content { "MyString" }
    user { nil }
    project { nil }
  end
end
