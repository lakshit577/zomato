class RestaurantCuisinesController < ApplicationController
    def index
      @restaurant_cuisines = RestaurantCuisine.all # Fetch all restaurant cuisines
    end
    def show
      @restaurant_cuisine = RestaurantCuisine.includes(:cuisine, :dishes).find(params[:id])
    end
  end