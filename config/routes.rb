Rails.application.routes.draw do
  resources :notes, only: [:create, :index, :show, :update, :destroy]
  resources :users, only: [:create, :index, :show, :update, :destroy]

  post '/login', to: 'auth#create'
  get '/tokenlogin', to: 'auth#show'
  get '/profile', to: 'users#profile'

end 