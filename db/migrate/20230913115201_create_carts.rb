  class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.references :customer_address, null: false, foreign_key: true
      t.datetime :order_datetime
      t.decimal :delivery_fee
      t.decimal :total_amount

      t.timestamps
    end
  end
end
