Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root to: "posts#index"
  resources :posts
end
