Rails.application.routes.draw do
  devise_for :users
  #get 'messages/index'
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :create, :edit, :update]
end
