require 'rails_helper'

RSpec.feature "アイディア登録", type: :feature do
  background do
    FactoryBot.create(:user)
    FactoryBot.create(:idea)
  end

  before do
    visit new_session_path
    fill_in 'session_email', with: 'mail1@gmail.com'
    fill_in 'session_password', with: 'aaaaaa'
    click_button 'ログイン'
  end

  scenario "アイディア新規投稿のテスト" do
    Idea.create!([
      idea_title: "アイディアタイトルテスト",
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
      user_id: User.last.id,
      idea_image: open("app/assets/images/default_idea.png"),
      ])
    visit ideas_path(User.last.id)
    click_on 'ゆるふわの着物をつくりたい'
    expect(page).to have_text "ゆるふわの着物をつくりたい"
    # save_and_open_page
  end

  scenario "アイディアのコメントテスト" do
    visit ideas_path(User.last.id)
    click_on 'アイディア概要コメント'
    fill_in 'idea_comment_content', with: 'アイディアのコメントテストのための入力値です'
    click_on 'コメントする'
    expect(page).to have_text "アイディアのコメントテストのための入力値です"
  end

  scenario "アイディアのコメントの削除テスト" do
    visit ideas_path(User.last.id)
    click_on 'アイディア概要コメント'
    fill_in 'idea_comment_content', with: 'アイディアのコメントテストのための入力値です'
    click_on 'コメントする'
    click_on 'コメントを削除する'
    expect(page).to have_no_text "アイディアのコメントテストのための入力値です"
  end

end
