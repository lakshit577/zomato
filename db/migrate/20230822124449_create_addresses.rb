class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :streetNumber
      t.string :add1
      t.string :add2
      t.string :city
        t.string :postal
        t.string :state
        t.string :country 
      t.timestamps
    end
  end
end





