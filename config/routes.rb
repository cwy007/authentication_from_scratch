Rails.application.routes.draw do
  resources :sessions
  resources :users
  
  resources :articles
  root 'articles#index'
end
