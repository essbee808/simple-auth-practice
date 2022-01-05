Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/welcome', to: 'users#welcome'
  get '/', to: 'users#index'

  get '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
