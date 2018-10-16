Rails.application.routes.draw do
  namespace :admin do
      resources :movies
      resources :users

      root to: "movies#index"
    end
  resources :user
end
