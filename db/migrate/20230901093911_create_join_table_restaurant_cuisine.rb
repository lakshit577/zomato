class CreateJoinTableRestaurantCuisine < ActiveRecord::Migration[6.0]
  def change
    create_join_table :restaurants, :cuisines do |t|
      t.index [:restaurant_id, :cuisine_id]
      t.index [:cuisine_id, :restaurant_id]
    end
  end
end
