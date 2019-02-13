class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end

  end

  def new
    @restaurant = Restaurant.new
  end

  def edit; end

  def show; end

  def update
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end

  def destroy
    @restaurant.delete
    redirect_to restaurants_index_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :category, :rating)
  end
end
