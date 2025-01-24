Rails.application.routes.draw do
  devise_for :users, controller: {
    sessions: "users/sessions",
    registration: "users/registrations"
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "up" => "rails/health#show", as: :rails_health_check


  get "admin" => "admin#index"



  get "store" => "store#index"
  get "about" => "about#index"
  get "contact" => "contact#index"
  root "home#index"
end
