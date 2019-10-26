# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# IdeaUser.create(name: "メンズ")
# IdeaUser.create(name: "レディース")
# IdeaUser.create(name: "キッズ")
# IdeaUser.create(name: "ベビー＆マタニティ")

# ArtisanGenreList.create( genre_name: "レディース")
# ArtisanGenreList.create( genre_name: "メンズ")
# ArtisanGenreList.create( genre_name: "キッズ")
# ArtisanGenreList.create( genre_name: "ベビー・マタニティ")
# ArtisanGenreList.create( genre_name: "インテリア・アクセサリ")
# ArtisanGenreList.create( genre_name: "その他")

# ArtisanItemList.create( item_name: "ジャケット")
# ArtisanItemList.create( item_name: "コート")
# ArtisanItemList.create( item_name: "シャツ")
# ArtisanItemList.create( item_name: "カットソー")
# ArtisanItemList.create( item_name: "パンツ")
# ArtisanItemList.create( item_name: "スカート")
# ArtisanItemList.create( item_name: "ワンピース")
# ArtisanItemList.create( item_name: "コスチューム")
# ArtisanItemList.create( item_name: "ドレス")
# ArtisanItemList.create( item_name: "バッグ")
# ArtisanItemList.create( item_name: "帽子")
# ArtisanItemList.create( item_name: "靴")
# ArtisanItemList.create( item_name: "その他")


# ArtisanFacillityList.create( facillity_name: "工業用直線縫いミシン")
# ArtisanFacillityList.create( facillity_name: "工業用ロックミシン")
# ArtisanFacillityList.create( facillity_name: "４本糸ロックミシン")
# ArtisanFacillityList.create( facillity_name: "扁平縫いミシン")
# ArtisanFacillityList.create( facillity_name: "千鳥ミシン")
# ArtisanFacillityList.create( facillity_name: "ルイス")
# ArtisanFacillityList.create( facillity_name: "直線縫いミシン")
# ArtisanFacillityList.create( facillity_name: "メロー")
# ArtisanFacillityList.create( facillity_name: "その他設備")


# ArtisanProcessingList.create( processing_name: "ボタンホール")
# ArtisanProcessingList.create( processing_name: "かんぬき")
# ArtisanProcessingList.create( processing_name: "菊穴")
# ArtisanProcessingList.create( processing_name: "その他加工設備")

# UserStatus.create( status_name: "admin", level: "1", login_top_url: "/admin/" )
# UserStatus.create( status_name: "artisan", level: "2", login_top_url: "/artisan/" )
# UserStatus.create( status_name: "general", level: "3", login_top_url: "/general/" )

# User.create([
#               name: 'テストユーザー1',
#               email: 'test1@example.com',
#               password: '123456'
#              ])
# UserProfile.create([
#   family_name: 'テスト',
#   family_name_sub: 'てすと',
#   last_name: 'ユーザー1',
#   last_name_sub: 'ゆーざー1',
#   add_no: '123-4567',
#   prefectures: '東京都',
#   address: '渋谷区',
#   phone_no1: '12312341234',
#   user_id: 1
#                    ])
# User.create([
#               name: 'テストユーザー2',
#               email: 'test2@example.com',
#               password: '123456'
#              ])
# ArtisanProfile.create([
#   user_id: 1
#                       ])
# UserProfile.create([
#   family_name: 'テスト',
#   family_name_sub: 'てすと',
#   last_name: 'ユーザー2',
#   last_name_sub: 'ゆーざー2',
#   add_no: '123-4567',
#   prefectures: '神奈川県',
#   address: '横浜市',
#   phone_no1: '12312341234',
#   user_id: 2
#                    ])
# User.create([
#               name: 'テストユーザー3',
#               email: 'test3@example.com',
#               password: '123456'
#              ])
# ArtisanProfile.create([
#   user_id: 2
#                       ])
# UserProfile.create([
#   family_name: 'テスト',
#   family_name_sub: 'てすと',
#   last_name: 'ユーザー3',
#   last_name_sub: 'ゆーざー3',
#   add_no: '123-4567',
#   prefectures: '埼玉県',
#   address: 'さいたま市',
#   phone_no1: '12312341234',
#   user_id: 3
#                    ])
# ArtisanProfile.create([
#   user_id: 3
#                       ])

# 9.times do |i|
# Idea.create!([
#   idea_title: "アイディア#{i}",
#   idea_amount: 30,
#   idea_about: 'ゆるふわの着物をつくりたい',
#   idea_usage: 'ギフト',
#   idea_commit: 'できるだけ着物に似せたい',
#   product_image: '似た物がある',
#   idea_category: '和服',
#   idea_category_details: 'トップス・シャツ',
#   idea_material: '生地のみ',
#   work_style: '初期費用固定と単価にて変動',
#   delivery_date: '2019-11-14',
#   budget: '5万円~10万円',
#   user_id: 1,
#   idea_image: open("app/assets/images/default_idea.png"),
#   ])
# end

# 6.times do |i|
#   Idea.create!([
#     idea_title: "アイディア#{9+i}",
#     idea_amount: 30,
#     idea_about: 'ゆるふわの着物をつくりたい',
#     idea_usage: 'ギフト',
#     idea_commit: 'できるだけ着物に似せたい',
#     product_image: '似た物がある',
#     idea_category: '和服',
#     idea_category_details: 'トップス・シャツ',
#     idea_material: '生地のみ',
#     work_style: '初期費用固定と単価にて変動',
#     delivery_date: '2019-12-24',
#     budget: '5万円~10万円',
#     user_id: 2,
#     idea_image: open("app/assets/images/default_idea.png"),
#     ])
#   end

#   3.times do |i|
#     Idea.create!([
#       idea_title: "アイディア#{15+i}",
#       idea_amount: 30,
#       idea_about: 'ゆるふわの着物をつくりたい',
#       idea_usage: 'ギフト',
#       idea_commit: 'できるだけ着物に似せたい',
#       product_image: '似た物がある',
#       idea_category: '和服',
#       idea_category_details: 'トップス・シャツ',
#       idea_material: '生地のみ',
#       work_style: '初期費用固定と単価にて変動',
#       delivery_date: '2020-1-7',
#       budget: '5万円~10万円',
#       user_id: 2,
#       idea_image: open("app/assets/images/default_idea.png"),
#       ])
#     end
  
#     Project.create!([
#       idea_title: "アイディア#{15+i}",
#       idea_amount: 30,
#       idea_about: 'ゆるふわの着物をつくりたい',
#       idea_usage: 'ギフト',
#       idea_commit: 'できるだけ着物に似せたい',
#       product_image: '似た物がある',
#       idea_category: '和服',
#       idea_category_details: 'トップス・シャツ',
#       idea_material: '生地のみ',
#       work_style: '初期費用固定と単価にて変動',
#       delivery_date: '2020-1-7',
#       budget: '5万円~10万円',
#       user_id: 2,
#       idea_image: open("app/assets/images/default_idea.png"),
#       ])


Project.create!([
  idea_id: 1,
  user_id: 2,
  project_title: "お家でゆるりと袴生活。時代を駆ける『ゆる袴令和版』ver ",
  project_text: "柔らかいスウェット素材とワンピース仕様で気軽に和服",
  project_about_attributes: [
    project_abouts: "柔らかいスウェット素材とワンピース仕様で気軽に和服をお楽しみいただける、和服ルームウェアシリーズに第5弾が登場。新元号である「令和」をテーマにした新作4パターンを製作します。",
  ],
])
  project_image_attribute: [
    project_img: open("app/assets/images/project_sample.png"),
  ],
  project_report_attribute: [
    project_reports: "今月の活動報告",
  ],
  project_return_attribute: [
    return_title: "「Tenuis3」×1個",
    return_item_img: open("app/assets/images/default_idea.png"),
    return_item_fund: 9800,
    return_item_count: 50,
    return_item_about: "▷ゆる袴令和版　2着プラン◁ ※こちらは税込価格です。 送料無料 ■内容 ・ゆる袴令和版　2着 お好みの柄とサイズをお選び下さい。 ※各種帯が付属しております。",
    delivery_date: 2020-02-20,
  ],
  project_value_attribute: [
    target_fund: 5000000,
    project_fund: 0,
    recruitment_method: 1,
    recruitment_deadline: "2019-12-03",
  ]
])
