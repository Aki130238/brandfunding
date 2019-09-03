Rails.application.routes.draw do
  root to: "tops#index"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
