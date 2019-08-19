Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :candidates, only: [:index, :show]
  resources :policies, only: [:index, :show]
  resources :posts

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  resources :users, only: [:index, :show, :create, :edit, :update, :delete]
  get '/signup', to: "users#new"

end
