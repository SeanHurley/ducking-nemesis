Rails.application.routes.draw do
  devise_for :users
  resources :pools do
    resources :squares
  end
  root 'pools#index'
end
