# # app/admin/cuisine.rb

# ActiveAdmin.register Cuisine do
#   permit_params :name

#   form do |f|
#     f.inputs 'Cuisine Details' do
#       f.input :name
#       f.input :restaurants, as: :check_boxes, collection: Restaurant.all
#     end
#     f.actions
#   end
# end
# # app/admin/cuisine.rb

ActiveAdmin.register Cuisine do
  permit_params :name, restaurant_ids: []

  filter :name

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  form do |f|
    f.inputs 'Cuisine Details' do
      f.input :name
      # f.input :restaurants, as: :check_boxes
    end
    f.actions
  end
end
