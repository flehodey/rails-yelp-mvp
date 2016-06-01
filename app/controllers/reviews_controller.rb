class ReviewsController < ApplicationController

  def create
    @review = Review.create(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.reviews << @review
    @restaurant.save!
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @review = Review.new
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
