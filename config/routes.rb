Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "flights#index"

  resources :booking_transactions
  resources :flights
  resources :airports
  resources :bookings
  resources :passengers
  # Defines the root path route ("/")
  # root "articles#index"
end
