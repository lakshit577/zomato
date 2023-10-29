class Droprestaurantcuisinedishes < ActiveRecord::Migration[6.0]
  def change
    drop_table :restaurant_cuisine_dishes
  end
end
