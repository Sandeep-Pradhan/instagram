Rails.application.routes.draw do
  get 'search' => 'search#index'
  
  root to: 'home#index'

  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy, :edit, :update]
end
