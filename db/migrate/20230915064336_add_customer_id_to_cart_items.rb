class AddCustomerIdToCartItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :cart_items, :customer, foreign_key: true
  end
end
