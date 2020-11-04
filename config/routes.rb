Rails.application.routes.draw do
  resources :reservations
  resources :flights
  devise_for :users
  resources :airplanes
  resources :flights
  
  root 'flights#index'

end
