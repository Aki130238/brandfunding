FactoryBot.define do
  factory :idea do
    user_id { User.last.id }
    idea_title { "アイディアタイトル" }
    idea_amount { 100 }
    budget { "30万円以上" }
    idea_about { "アイディア概要コメント" }
    idea_usage { "販売・お店ユニフォーム" }
    idea_commit { "しっかりしたものを作りたい。" }
    work_style { "初期費用固定と単価にて変動" }
    product_image { "似た物がある" }
    idea_category { "和服" }
    idea_category_details { "その他" }
    idea_material { "すべて用意できる" }
    delivery_date { "2019-11-30" }
  end
end
