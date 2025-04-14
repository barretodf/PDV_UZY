Rails.application.routes.draw do
  get "sales/new"
  get "sales/create"
  get "users/index"
  devise_for :users
  # Define the root path route ("/")
  root "pdv#index"

  # Rotas para usuários
  resources :users, only: [:index]

  # Rotas para vendas
  resources :sales, only: [:new, :create]
end
