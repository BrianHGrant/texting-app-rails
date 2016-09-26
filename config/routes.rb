Rails.application.routes.draw do
  resources :quotes
  resources :contacts
  root to: 'messages#index'
  resources :messages
end
