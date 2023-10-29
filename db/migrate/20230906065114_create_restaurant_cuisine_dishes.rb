class CreateRestaurantCuisineDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_cuisine_dishes do |t|
      t.references :restaurant_cuisine, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
