class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
        t.references :customer, foreign_key: true
        t.references :order, foreign_key: true
        t.decimal :amount, precision: 10, scale: 2 
        t.datetime :payment_date
      t.timestamps
    end
  end
end
