class CreateCustomerAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_addresses do |t|
      t.string :addType
      t.timestamps
    end
  end
end
