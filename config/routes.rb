Rails.application.routes.draw do
  devise_for :users
  root to: 'locations#index'
  resources :locations
  resources :users, only: [:index, :show]
  get 'userslist', to: 'users#index', as: 'userslist'

end
