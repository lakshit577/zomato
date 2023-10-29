ActiveAdmin.register Restaurant do
  permit_params :name, :opening_hours, :rating, :contact_number, cuisine_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :opening_hours
    column :rating
    column :contact_number
    column :"Cuisines" do |restaurant|
      restaurant.cuisines.pluck(:name).join(', ')
    end
    actions
  end

  form do |f|
    f.inputs 'Restaurant Details' do
      f.input :name
      f.input :opening_hours
      f.input :rating
      f.input :contact_number
      f.input :cuisines, as: :check_boxes, collection: Cuisine.all
      # f.input :restaurant_cuisines, as: :check_boxes

    end
    f.actions
  end
end   