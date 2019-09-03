Rails.application.routes.draw do
  resources :users do
    collection do
      post :user_profiles
    end
  end
end
