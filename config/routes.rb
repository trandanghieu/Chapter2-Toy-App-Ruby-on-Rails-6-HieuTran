Rails.application.routes.draw do
  # resources :users
  # root 'application#hello'
  resources :users
  root 'users#index'

end
