class UserController < ApplicationController
 def login
 session[:login] = 1
 session[:cart] = nil
 flash[:notice] = "Admin Login sucessfull!!"
 redirect_to :controller => :items
 end

 def logout
 session[:login] = nil
 session[:cart] = nil
 flash[:notice] = "You have been successfully logged out!!"
 redirect_to :controller => :items
 end
 
 def create_client_booking
      @item = item.find(params[:user][:booking][:item])
      @booking = Booking.new()
      @booking.item = params[:user][:booking][:item]
      @booking.schedule_id = params[:user][:booking][:schedule_id]
     # @booking.client_id = @client.id
     # @booking.account_id = @user.account_id
      @booking.title = @item.title
      @booking.cost = @item.cost
      @booking.status = 'Booked'
      @booking.save
      @schedule = Schedule.find(params[:user][:booking][:schedule_id])
     # @booking.trainer_id = @schedule.trainer_id
      @booking.start = @schedule.start
     # @booking.refunded = 0
      @booking.save
      @schedule.title = 'Booked'
      @schedule.save
 end
 

end
