# app/controllers/cart_items_controller.rb
class CartItemsController < ApplicationController

  def create
    @customer = current_customer
    created_cart_items = []
    cart_params.each do |param|
      if param[:check] == "true"
        param.delete(:check)
        cart_item = CartItem.new(param)
        cart_item.customer_id = @customer.id
        if cart_item.save
          created_cart_items << cart_item
        else
          flash[:alert] = 'There was an error adding some items to the cart.'
          redirect_to new_cart_item_path # Assuming you have a 'new' action for displaying the form
          return
        end
      end
    end
  
    if created_cart_items.present?
      redirect_to cart_item_path(created_cart_items.first), notice: 'Cart items were successfully created.'
    else
      redirect_to cart_items_path, alert: 'Please select at least one dish.'
    end
  end



  def show
    # @cart_item = CartItem.find(params[:id])
    @customer = current_customer
    
    @cart_items = @customer.cart_items
  end
  

  private 
  def cart_params
    params.permit(selected_dishes: [:quantity, :dish_name, :price, :check, :dish_id]).require(:selected_dishes)
  end 
end
