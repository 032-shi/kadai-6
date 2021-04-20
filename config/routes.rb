Rails.application.routes.draw do
  get 'homes/about'
  root to: 'homes#top'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update, :index]
end
