Rails.application.routes.draw do
  resources :contacts
  root to: 'messages#index'
  resources :messages
end
