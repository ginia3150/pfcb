Rails.application.routes.draw do
  devise_for :users
  root "totals#index"
  resources :users, only: [:edit, :create]
  resources :totals
end
