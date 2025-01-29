Rails.application.routes.draw do
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }

  # Health check endpoint
  get "up" => "rails/health#show", as: :rails_health_check

  # Admin namespace
  get "admin" => "admin#index"
  namespace :admin do
    resources :categories
    resources :products
    get "orders" => "orders#index"
    resources :tenants, only: [:index, :edit, :update, :destroy]
  end

  # Client-side categories and products
  resources :categories, only: [:show]
  resources :products, only: [:show]
  resources :orders, only: [:create]

  # Static pages
  get "store" => "store#index"
  get "user/profile" => "home#profile"
  get "user/profile/orders" => "home#show_order"
  get "about" => "home#about"
  get "contact" => "home#contact"

  # Home page
  root "home#index"
end
