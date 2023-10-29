class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :customer_addresses
  has_many :addresses, through: :customer_addresses
  has_many :cart_items
  has_many :orders
  has_many :payments
  

end
