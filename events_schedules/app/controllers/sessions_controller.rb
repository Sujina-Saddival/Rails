class SessionsController < ApplicationController
  def new
  
  end
  def create
      # binding.pry
    user = User.authenticate(params[:email], params[:password])
    if user
    	session[:user_id] = user.id
    	redirect_to event_new_path(user), :notice => "Logged in!"
  	else
   	 	flash.now.alert = "Invalid email or password"
    	render "new"
  	end
   end


end
