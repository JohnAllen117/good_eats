class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(auth_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to @restaurant, notice: 'Review was successfully created.'
    else
      render action: 'new'
    end
  end

  private
  def auth_params
    params.require(:review).permit(:body, :rating)
  end
end
