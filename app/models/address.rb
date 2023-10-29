class Address < ApplicationRecord
  has_many :customer_addresses
  has_many :customers, through: :customer_addresses
end
