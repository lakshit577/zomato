class HomeController < ApplicationController
  def index 
    if !customer_signed_in?
    #   redirect_to root_path # Redirect signed-in users to another page if needed
    # else
      redirect_to new_customer_session_path
    end
    @restaurants = Restaurant.all
    @cuisines=Cuisine.all
  end
  
  def show 
    
  end


  private 

end