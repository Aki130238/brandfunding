require 'rails_helper'

RSpec.feature "ユーザー登録", type: :feature do
  scenario "ユーザーサインアップ機能" do
    visit new_user_path
    fill_in 'user_name', with: 'スペックテストユーザー'
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button '登録'
    expect(page).to have_text "スペックテストユーザー"

  end

  scenario "ユーザーログイン機能" do
    FactoryBot.create(:user)
    visit new_session_path
    fill_in 'session_email', with: 'mail1@gmail.com'
    fill_in 'session_password', with: 'aaaaaa'
    click_button 'ログイン'
  end

  scenario "ユーザー編集機能" do
    FactoryBot.create(:user)
    visit new_session_path
    fill_in 'session_email', with: 'mail1@gmail.com'
    fill_in 'session_password', with: 'aaaaaa'
    click_button 'ログイン'
    click_on 'user_image'
    fill_in 'user_name', with: 'エディットユーザー'
    click_button '登録する'
    expect(page).to have_text "エディットユーザー"
    # save_and_open_page
  end

end

