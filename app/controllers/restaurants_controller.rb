class RestaurantsController < ApplicationController
  # before_action :find_restaurant, only [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    @restaurants = Restaurant.all
    @review = Review.new
    # @reviews = Restaurant.
  end

  def new
    @restaurant = Restaurant.new()
  end

  def create
    @restaurant = Restaurant.new(params_validation)
    @restaurant.save!
    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(params_validation)
    redirect_to restaurant_index_path
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_index_path
  end

  private

  # def find_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def params_validation
    params.require(:restaurant).permit(:name, :address, :phone, :category)
  end

end
