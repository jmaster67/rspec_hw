class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
      redirect_to  users_path
  end


 
def delete  #log out
    session[:user_id] = nil
    flash[:notice] = "You are logged out. See you soon!"
    redirect_to home_path
  end
end



