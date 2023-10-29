class AddRestaurantCuisineDishReferenceToDishes < ActiveRecord::Migration[6.0]
  def change
    add_reference :dishes, :restaurant_cuisine_dish, null: false, foreign_key: true
  end
end
