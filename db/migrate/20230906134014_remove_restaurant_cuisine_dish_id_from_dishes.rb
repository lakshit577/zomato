class RemoveRestaurantCuisineDishIdFromDishes < ActiveRecord::Migration[6.0]
  def change
    remove_column :dishes, :restaurant_cuisine_dish_id, :integer
  end
end
