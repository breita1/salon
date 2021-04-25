class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end
  

  
def aboutSend
   @order = Order.find(params[:id])
   @order.update_attribute(:status, "Booked, pay on arrival")
end 
  
end
