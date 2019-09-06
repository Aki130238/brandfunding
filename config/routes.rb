Rails.application.routes.draw do
  root to: "tops#index"
  resources :users
  resources :user_profiles
  resources :artisan_profiles
  resources :sessions, only: [:new, :create, :destroy]
end
