Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :attendances, only: [:new, :create, :index]
  resources :events
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
