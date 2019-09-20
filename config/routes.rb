Rails.application.routes.draw do
  get 'hirais/index'
  root to: "tops#index"
  resources :users
  resources :user_profiles
  resources :artisan_profiles
  resources :sessions, only: [:new, :create, :destroy]
  resources :ideas do
    resources :idea_comments
  end
  post 'projects/:id' => 'project_returns#create'
  resources :projects do
    resources :comments, only: [:create]
  end
end
