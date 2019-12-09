Rails.application.routes.draw do
  resources :foods
  resources :meal_types
  resources :daily_intakes
  resources :users

  root "application#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
