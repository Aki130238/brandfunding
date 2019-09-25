FactoryBot.define do
  factory :project_return do
    project { nil }
    return_title { "MyString" }
    return_item_img { "MyText" }
    return_item_fund { 1 }
    return_item_count { 1 }
    return_item_about { "MyText" }
    return_item_sponsors { 1 }
    delivery_date { "2019-09-17" }
    return_item_remark { "MyText" }
    return_option { "MyText" }
  end
end
