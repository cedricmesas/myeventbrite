Rails.application.routes.draw do
  root 'orders#new'
  resources :orders, only: [:new, :create]
  devise_for :users
  root 'events#index'
  resources :events
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
