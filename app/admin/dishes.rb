ActiveAdmin.register Dish do
  permit_params :name , :price,:restaurant_cuisine_id

  form do |f|
    f.inputs 'Dish ' do
      # f.input :restaurant_cuisine, as: :select, collection: RestaurantCuisine.all.map { |rc| [rc.restaurant.name, rc.cuisine.name, rc.id] }
      f.input :restaurant_cuisine, as: :select, collection: RestaurantCuisine.all.map { |rc| ["#{rc.restaurant.name} - #{rc.cuisine.name}", rc.id] }

      f.input :name
      f.input :price  
    end
    f.actions
  end 
end