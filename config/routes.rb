Rails.application.routes.draw do
  resources :pools do
    resources :squares
  end

  resources :users
  root 'users#index'
end
