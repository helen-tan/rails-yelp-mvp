class RestaurantsController < ApplicationController
  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET "restaurants/new"
  def new
    @restaurant = Restaurant.new
  end

  # POST "restaurants"
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurants_path, notice: 'Restaurant was successfully created.'
    else
      # raise
      render :new
    end
  end

  private

  # Strong params
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
