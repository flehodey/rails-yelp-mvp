class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show, :edit, :update, :destroy ]

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save!
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def show
  end

  def update
    @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  def restaurant_params
    params.require(:restaurant).permit(:name, :adress, :phone_number, :category)
  end


end
