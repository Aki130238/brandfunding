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
