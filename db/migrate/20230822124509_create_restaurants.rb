class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.time :opening_hours
      t.float :rating 
      t.string :contact_number
      t.string :cost_for_2
      t.timestamps
    end
  end
end