Rails.application.routes.draw do
  devise_for :users
  resources :boring_airlines
  
  root 'boring_airlines#index'

end
