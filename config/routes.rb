Rails.application.routes.draw do
  # get 'home/index'
  root "users#index"
  resources :users
  post "/users", to: "users#create"
  # post '/signup', to: "users#create"
  
end
