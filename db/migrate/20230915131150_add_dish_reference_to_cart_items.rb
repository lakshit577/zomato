class AddDishReferenceToCartItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :cart_items, :dish,  foreign_key: true
  end
end
