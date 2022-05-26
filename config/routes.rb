Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET "restaurants" - A visitor can see a list of all restaurants
  get "restaurants", to: "restaurants#index"

  # GET "restaurants/new"
  # POST "restaurants" - A visitor can add a new restaurant, and be redirected to the show view of that restaurant


  # GET "restaurants/:id" - A visitor can see the details of ONE restaurant, with all its reviews


  # GET "restaurants/:id/reviews/new"  (need nested resources)
  # POST "restaurants/:id/reviews" - A visitor can add a new review to a restaurant
end
