class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where(username: params[:username]).first
    session[:user_id] = @user.id
    if @user == params[:username]
    redirect_to users_path
		else
    	redirect_to users_path
   		end
  	end
end
 