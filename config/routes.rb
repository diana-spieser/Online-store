Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "categories#index"
  get "about", to: "pages#about"
  resources :categories, only: [:index, :show]
  resources :products, only: [:index, :show]
end
