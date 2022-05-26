Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET "restaurants" - A visitor can see a list of all restaurants
  get "restaurants", to: "restaurants#index"

  # GET "restaurants/new"
  # POST "restaurants" - A visitor can add a new restaurant, and be redirected to the show view of that restaurant
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"


  # GET "restaurants/:id" - A visitor can see the details of ONE restaurant, with all its reviews
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # GET "restaurants/:id/reviews/new"  (need nested resources)
  resources :restaurants, only: [:show] do # we only want "restaurants/:id" from the show action, not all 7 CRUD actions
    resources :reviews, only: [:new, :create]
  end

  # POST "restaurants/:id/reviews" - A visitor can add a new review to a restaurant
end
