Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :candidates, only: [:index, :show]
  get '/', to: "candidates#index"
  resources :policies, only: [:index, :show]
  resources :posts

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"
  get '/register', to: "register#new"

  resources :users, only: [:index, :show, :create, :edit, :update, :delete]
  get '/signup', to: "users#new"

  resources :articles, only: [:create]

  resources :polls, only: [:index, :show]

  #only create is necessary for comments route. Creating new posts.
  resources :comments, only: [:new, :create]


end
