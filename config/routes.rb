Rails.application.routes.draw do
  resources :foods
  resources :meal_types
  resources :daily_intakes
  resources :users
  post "/login", to: "auth#login"
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  # patch '/update', to: 'users#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
