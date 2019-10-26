# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

IdeaUser.create(name: "メンズ")
IdeaUser.create(name: "レディース")
IdeaUser.create(name: "キッズ")
IdeaUser.create(name: "ベビー＆マタニティ")

ArtisanGenreList.create( genre_name: "レディース")
ArtisanGenreList.create( genre_name: "メンズ")
ArtisanGenreList.create( genre_name: "キッズ")
ArtisanGenreList.create( genre_name: "ベビー・マタニティ")
ArtisanGenreList.create( genre_name: "インテリア・アクセサリ")
ArtisanGenreList.create( genre_name: "その他")

ArtisanItemList.create( item_name: "ジャケット")
ArtisanItemList.create( item_name: "コート")
ArtisanItemList.create( item_name: "シャツ")
ArtisanItemList.create( item_name: "カットソー")
ArtisanItemList.create( item_name: "パンツ")
ArtisanItemList.create( item_name: "スカート")
ArtisanItemList.create( item_name: "ワンピース")
ArtisanItemList.create( item_name: "コスチューム")
ArtisanItemList.create( item_name: "ドレス")
ArtisanItemList.create( item_name: "バッグ")
ArtisanItemList.create( item_name: "帽子")
ArtisanItemList.create( item_name: "靴")
ArtisanItemList.create( item_name: "その他")


ArtisanFacillityList.create( facillity_name: "工業用直線縫いミシン")
ArtisanFacillityList.create( facillity_name: "工業用ロックミシン")
ArtisanFacillityList.create( facillity_name: "４本糸ロックミシン")
ArtisanFacillityList.create( facillity_name: "扁平縫いミシン")
ArtisanFacillityList.create( facillity_name: "千鳥ミシン")
ArtisanFacillityList.create( facillity_name: "ルイス")
ArtisanFacillityList.create( facillity_name: "直線縫いミシン")
ArtisanFacillityList.create( facillity_name: "メロー")
ArtisanFacillityList.create( facillity_name: "その他設備")


ArtisanProcessingList.create( processing_name: "ボタンホール")
ArtisanProcessingList.create( processing_name: "かんぬき")
ArtisanProcessingList.create( processing_name: "菊穴")
ArtisanProcessingList.create( processing_name: "その他加工設備")

UserStatus.create( status_name: "admin", level: "1", login_top_url: "/admin/" )
UserStatus.create( status_name: "artisan", level: "2", login_top_url: "/artisan/" )
UserStatus.create( status_name: "general", level: "3", login_top_url: "/general/" )

User.create([
              name: 'テストユーザー1',
              email: 'test1@example.com',
              password: '123456'
             ])
UserProfile.create([
  family_name: 'テスト',
  family_name_sub: 'てすと',
  last_name: 'ユーザー1',
  last_name_sub: 'ゆーざー1',
  add_no: '123-4567',
  prefectures: '東京都',
  address: '渋谷区',
  phone_no1: '12312341234',
  user_id: 1
                   ])
User.create([
              name: 'テストユーザー2',
              email: 'test2@example.com',
              password: '123456'
             ])
ArtisanProfile.create([
  user_id: 1
                      ])
UserProfile.create([
  family_name: 'テスト',
  family_name_sub: 'てすと',
  last_name: 'ユーザー2',
  last_name_sub: 'ゆーざー2',
  add_no: '123-4567',
  prefectures: '神奈川県',
  address: '横浜市',
  phone_no1: '12312341234',
  user_id: 2
                   ])
User.create([
              name: 'テストユーザー3',
              email: 'test3@example.com',
              password: '123456'
             ])
ArtisanProfile.create([
  user_id: 2
                      ])
UserProfile.create([
  family_name: 'テスト',
  family_name_sub: 'てすと',
  last_name: 'ユーザー3',
  last_name_sub: 'ゆーざー3',
  add_no: '123-4567',
  prefectures: '埼玉県',
  address: 'さいたま市',
  phone_no1: '12312341234',
  user_id: 3
                   ])
ArtisanProfile.create([
  user_id: 3
                      ])

9.times do |i|
Idea.create!([
  idea_title: "アイディア#{i}",
  idea_amount: 30,
  idea_about: 'ゆるふわの着物をつくりたい',
  idea_usage: 'ギフト',
  idea_commit: 'できるだけ着物に似せたい',
  product_image: '似た物がある',
  idea_category: '和服',
  idea_category_details: 'トップス・シャツ',
  idea_material: '生地のみ',
  work_style: '初期費用固定と単価にて変動',
  delivery_date: '2019-11-14',
  budget: '5万円~10万円',
  user_id: 1,
  idea_image: open("app/assets/images/default_idea.png"),
  ])
end

6.times do |i|
  Idea.create!([
    idea_title: "アイディア#{9+i}",
    idea_amount: 30,
    idea_about: 'ゆるふわの着物をつくりたい',
    idea_usage: 'ギフト',
    idea_commit: 'できるだけ着物に似せたい',
    product_image: '似た物がある',
    idea_category: '和服',
    idea_category_details: 'トップス・シャツ',
    idea_material: '生地のみ',
    work_style: '初期費用固定と単価にて変動',
    delivery_date: '2019-12-24',
    budget: '5万円~10万円',
    user_id: 2,
    idea_image: open("app/assets/images/default_idea.png"),
    ])
  end

  3.times do |i|
    Idea.create!([
      idea_title: "アイディア#{15+i}",
      idea_amount: 30,
      idea_about: 'ゆるふわの着物をつくりたい',
      idea_usage: 'ギフト',
      idea_commit: 'できるだけ着物に似せたい',
      product_image: '似た物がある',
      idea_category: '和服',
      idea_category_details: 'トップス・シャツ',
      idea_material: '生地のみ',
      work_style: '初期費用固定と単価にて変動',
      delivery_date: '2020-1-7',
      budget: '5万円~10万円',
      user_id: 2,
      idea_image: open("app/assets/images/default_idea.png"),
      ])
    end
  