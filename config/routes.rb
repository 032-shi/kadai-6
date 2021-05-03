Rails.application.routes.draw do
  get 'home/about'=>'homes#about'
  root to: 'homes#top'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update, :index]
end
