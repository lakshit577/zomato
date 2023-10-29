class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :restaurant_cuisines_dishes
  end
end
