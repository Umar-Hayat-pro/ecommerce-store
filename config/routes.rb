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
    resources :orders, only: [ :index, :update ]
    get "tenants" => "tenants#index"
  end

  # Client-side categories and products
  resources :categories, only: [ :show ]
  resources :products, only: [ :show ] do
    resources :orders, only: [ :new, :create ]
  end

  # Orders for users
  resources :orders, only: [ :index, :show ]

  # Static pages
  get "user/profile" => "profile#index"
  get "store" => "store#index"
  get "about" => "about#index"
  get "contact" => "contact#index"

  # Home page
  root "home#index"
end
