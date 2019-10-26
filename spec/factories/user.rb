FactoryBot.define do
  factory :user, class: User do
    name { 'テストユーザー１' }
    email { 'mail1@gmail.com' }
    password { 'aaaaaa' }
    password_confirmation { 'aaaaaa' }
  end

  factory :second_user, class: User do
    name { 'テストユーザー２' }
    email { 'mail2@gmail.com' }
    password { 'bbbbbb' }
    password_confirmation { 'bbbbbb' }
  end

  factory :third_user, class: User do
    name { 'テストユーザー３' }
    email { 'mail3@gmail.com' }
    password { 'cccccc' }
    password_confirmation { 'cccccc' }
  end
end
