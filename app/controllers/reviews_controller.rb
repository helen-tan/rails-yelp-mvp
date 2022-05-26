class ReviewsController < ApplicationController
  # Add a new review - Open the form
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
