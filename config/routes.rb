Rails.application.routes.draw do
  resources :messages
  resources :users
  resources :conversations, only: [:index]
end
