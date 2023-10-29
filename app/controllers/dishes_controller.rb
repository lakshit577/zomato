# class DishesController < ApplicationController
#     def show_by_cuisine
#       @restaurant_cuisine = RestaurantCuisine.find(params[:restaurant_cuisine_id])
#       @dishes = @restaurant_cuisine.dishes
#     end
  
    
class DishesController < ApplicationController  
  def index
    restaurant_cuisine = RestaurantCuisine.find_by(id: params[:id])
    if restaurant_cuisine.present?
      @dishes = restaurant_cuisine.dishes
      if @dishes.present?
        render "dishes/index"
      else
        flash[:notice] = "No dishes found for this cuisine."
        redirect_to home_index_path # Redirect to another page or take appropriate action
      end
    end
  end
end