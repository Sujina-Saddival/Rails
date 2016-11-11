class EventsController < ApplicationController
	def new
		@event=Event.new
		@name=User.all
		@event_name=Event.all
	end

	def create
		@event = Event.new(params_event)
		
		# @teacher.student=@student
		@event.save
		redirect_to event_new_path
	end

	def destroy
   	  session[:user_id] = nil
  	  redirect_to root_url, :notice => "Logged out!"
   end

   	private
	def params_event
		params.require(:event).permit(:event,:venue,:date,:time,:description,:invite,:status)
	end
end
