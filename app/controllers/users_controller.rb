class UsersController < ApplicationController
	def main_form
		
	end
	def new
		@user=User.new
		@users=User.all
	
		# render :json => @users
	end

	def create
		binding.pry
  		@user = User.new(user_params)
  		if @user.save
  			# render :json => @user
  			render json:{data:@user}
    		# redirect_to login_form_path, :flash => { :success => "Signed up" }
  		else
    		render "new"
  		end
	end

	private

  	def user_params
   	 params.require(:user).permit(:firstname,:lastname,:username,:phone,:email,:password,:password_confirmation)
  	end
end
