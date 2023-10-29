class RestaurantCuisine < ApplicationRecord
  belongs_to :restaurant
  belongs_to :cuisine 
  has_many :dishes
end
