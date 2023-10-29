class CreateRestaurantCuisinesDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_cuisines_dishes do |t|
      t.references :dish, null: false, foreign_key: true
      t.references :restaurant_cuisine, null: false, foreign_key: true
    end
  end
end
