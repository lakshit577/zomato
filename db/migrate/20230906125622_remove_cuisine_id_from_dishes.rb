class RemoveCuisineIdFromDishes < ActiveRecord::Migration[6.0]
  def change
    remove_column :dishes, :cuisine_id, :integer
  end
end
