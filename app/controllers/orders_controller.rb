class OrdersController < ApplicationController
    def show_details
        @customer = Customer.find(params[:id])
        # @address = @customer.addresses.first # Assuming you want the first address
        @cart_items = @customer.cart_items.includes(:dish) # Load associated dishes
    
        # Add any additional logic as needed
    
        render 'show_details'
      end
end
