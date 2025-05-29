Rails.application.routes.draw do
  get 'extras/new'

  devise_for :users

  root to: "listings#index"
  resources :listings do
    resources :bookings, only: [:new, :create, :index]
    resources :extras, only: [:new]
  end

  get "sellerlistings", to: "listings#sellerlistings", as: :seller_listings

  get "up" => "rails/health#show", as: :rails_health_check
end
