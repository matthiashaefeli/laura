Rails.application.routes.draw do
  root to: 'home#index'
  resources :users
  get '/sessions/new', to: 'sessions#new'
  post '/sessions/create', to: 'sessions#create'
  delete '/sessions/destroy', to: 'sessions#destroy'
end
