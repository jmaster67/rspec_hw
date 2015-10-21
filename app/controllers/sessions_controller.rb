class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    # @user == params[:username]
      log_in @user
      redirect_to @user
		#else
      #flash[:notice] = "Incorrect user name, try again!"
      #redirect_to home_path 
   	#end
  end


 
def delete  #log out
    session[:user_id] = nil
    flash[:notice] = "You are logged out. See you soon!"
    redirect_to home_path
  end
end



