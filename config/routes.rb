Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "up" => "rails/health#show", as: :rails_health_check



  get "about" => "home#about"
  get "contact" => "home#contact"
  root "home#index"
end
