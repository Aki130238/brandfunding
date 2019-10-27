Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "tops#index"
  resources :users, :user_profiles do
    resources :user_comments, only: %i[create destroy]
  end
  resources :artisan_profiles, only: %i[index show edit update]
  resources :sessions, only: %i[new create destroy]
  resources :project_likes, only: %i[index create destroy]
  resources :relationships, only: %i[index create destroy]
  resources :ideas do
    resources :idea_comments, only: %i[create destroy]
    resources :conversations do
      resources :messages
    end
  end
  post 'projects/:id', to: 'project_returns#create'
  resources :projects do
    resources :comments, only: %i[create destroy]
  end
  resources :conversations do
    resources :messages
  end
  get 'agreements/terms_of_service'
  get 'agreements/privacy_policy'
  get 'agreements/product_team'
  resources :sponsor_lists, only: [:create]
  resources :coming_soons, only: [:index]
end
