Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :users, only: [:edit, :update]
  resources :posts, only: [:new, :create]
end
