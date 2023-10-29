class CreateRestaurantCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_cuisines do |t|
      t.references :restaurant, foreign_key: true
      t.references :cuisine, foreign_key: true
      # t.references :dish, foreign_key: true

      t.timestamps
    end
  end
end
