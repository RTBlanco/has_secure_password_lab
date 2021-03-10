Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: "sessions#create"
  post '/login', to: "sessions#create"

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
end
