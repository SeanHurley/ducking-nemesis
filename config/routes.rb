Rails.application.routes.draw do
  resources :squares

  resources :pools

  resources :users
  root 'users#index'
end
