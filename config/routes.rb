Rails.application.routes.draw do
  resources :flights
  devise_for :users
  resources :boring_airlines
  
  root 'flights#index'

end
