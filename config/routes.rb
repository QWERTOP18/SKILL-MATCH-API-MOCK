
Rails.application.routes.draw do
  get "docs/index"
  root "docs#index"
  resources :users
  resources :questions
  resources :engineer_types

  # Swagger UI route
  # mount Rswag::Ui::Engine => "/api-docs"
  # mount Rswag::Api::Engine => "/api-docs"
  get "up" => "rails/health#show", as: :rails_health_check
end
