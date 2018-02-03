Rails.application.routes.draw do
  get '/signup', to: 'users#new',        as: 'signup'
  get '/login',  to: 'sessions#new',     as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  
  resources :sessions
  resources :users

  resources :articles
  root 'articles#index'
end
