Rails.application.routes.draw do
  root to: "posts#index"
  devise_for :users
  resources :posts
  resources :comments, only: [:update, :create, :destroy]
  resources :bucket_lists, only: [:show]
  resources :bucket_list_items, only: [:create, :update]
  resources :items, only: [:index, :create]
end
