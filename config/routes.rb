Rails.application.routes.draw do
  get 'posts/edit'
  get 'posts/show'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/posts/new', to: 'posts#new'
  post '/posts/new', to: 'posts#create'

  get '/posts', to: 'posts#index'
  root 'sessions#welcome'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts
end
