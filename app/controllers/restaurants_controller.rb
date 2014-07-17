class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def search
    @results = Restaurant.search(params[:search])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def edit

  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end


private
  def restaurant_params
    params.require(:restaurant).permit(:name, :creator_id, :street_address, :city, :state, :category)
  end
end
