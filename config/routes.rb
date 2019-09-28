Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "tops#index"
  resources :users
  resources :user_profiles
  resources :artisan_profiles
  resources :sessions, only: [:new, :create, :destroy]
  resources :ideas do
    resources :idea_comments
  end
  post 'projects/:id', to: 'project_returns#create'
  resources :projects do
    resources :comments, only: [:create]
    resources :project_likes, only: [:create, :destroy]
  end
  resources :conversations do
    resources :messages
  end
end
