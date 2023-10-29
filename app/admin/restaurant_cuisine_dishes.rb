  # ActiveAdmin.register RestaurantCuisineDish do
  #   permit_params :restaurant_cuisine_id, :dish_id
  #   # Customize filters, index view, and form

  #   # overide form
  #   # select -> collection -> map{id, restaurent_cuisine.cunine.name}
  # end



# app/admin/restaurant_cuisine_dish.rb

# ActiveAdmin.register RestaurantCuisineDish do
#   permit_params :restaurant_cuisine_id, :dish_id
#   # Customize filters, index view, and form

#   form do |f|
#     f.inputs 'Restaurant Cuisine Dish Details' do
#       # debugger
#       f.input :restaurant_cuisine_id, as: :select, collection: RestaurantCuisine.all.map {|rc| ["#{rc.cuisine.name} (#{rc.restaurant.name})", rc.id] }
#       f.input :dish
#     end
#     f.actions
#   end

#   # # controller do
#   #   def restaurant_cuisine_options
#   #     # Create a collection of options with the format ["Cuisine Name (Restaurant Name)", restaurant_cuisine_id]
#   #     RestaurantCuisine.includes(:cuisine, :restaurant).map do |rc|
#   #       ["#{rc.cuisine.name} (#{rc.restaurant.name})", rc.id]
#   #     end
#   #   end
#   # # end
# end
