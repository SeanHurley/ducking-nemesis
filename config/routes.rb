Rails.application.routes.draw do
  resources :pool_details

  resources :squares

  resources :pools

  resources :users
  root 'users#index'
end
