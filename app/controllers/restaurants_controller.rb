class RestaurantsController < ApplicationController
   # GET /restaurants
   def index
    @restaurants = Restaurant.all
  end
end
