class Dish < ApplicationRecord 
  # has_and_belongs_to_many :restaurant_cuisines
  belongs_to :restaurant_cuisine
  has_many :cart_items
end
