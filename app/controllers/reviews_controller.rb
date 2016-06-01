class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.create(review_validate)
    @review.restaurant = @restaurant
    @review.save!
    redirect_to restaurant_path(@restaurant)
  end

  private
  def review_validate
    params.require(:review).permit(:content, :rating)
  end

end
