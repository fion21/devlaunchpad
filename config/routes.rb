Rails.application.routes.draw do
  root "home#index"
  get "home/index"


  resources :candidates, only: [:create]

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA routes
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Add more routes below as needed...
end
