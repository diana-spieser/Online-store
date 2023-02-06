Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :contacts, only: [:new, :create]
  get 'contacts/sent'
  root to: "categories#index"
  get "about", to: "pages#about"
  resources :categories, only: [:index, :show]
  resources :products, only: [:index, :show]
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  post "/cart/add", to: "carts#add_to_cart"
  get '/recap_path', to: 'cart#recap'
end
