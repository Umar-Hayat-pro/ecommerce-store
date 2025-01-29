Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  # Health check endpoint
  get "up" => "rails/health#show", as: :rails_health_check

  # Admin namespace
  get "admin" => "admin#index"
  namespace :admin do
    resources :categories
    resources :products
    get "tenants" => "tenants#index"
  end

  # Client-side categories and products
  resources :categories, only: [ :show ]
  resources :products, only: [ :show ]


  # Static pages
  get "store" => "store#index"
  get "user/profile" => "home#profile"
  get "about" => "home#about"
  get "contact" => "home#contact"

  # Home page
  root "home#index"
end
