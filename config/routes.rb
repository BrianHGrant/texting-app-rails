Rails.application.routes.draw do
  resources :quotes
  resources :contacts
  root to: 'quotes#index'
  resources :messages
end
