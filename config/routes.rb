Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :contacts, only: [:new, :create]
  get 'contacts/sent'
  root to: "categories#index"
  get "about", to: "pages#about"
  resources :categories, only: [:index, :show]
  resources :products, only: [:index, :show]
end
