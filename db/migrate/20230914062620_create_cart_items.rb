class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.string :dish_name
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
