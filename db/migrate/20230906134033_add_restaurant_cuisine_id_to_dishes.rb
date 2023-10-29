class AddRestaurantCuisineIdToDishes < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :restaurant_cuisine_id, :integer
  end
end
