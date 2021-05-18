Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/event'
  devise_for :users
  root to: "events#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
