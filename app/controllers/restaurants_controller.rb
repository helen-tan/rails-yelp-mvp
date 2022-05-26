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
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant was successfully created.'
    else
      # raise
      render :new
    end
  end

  # GET "restaurants/:id"
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  # Strong params
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
