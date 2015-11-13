class UsersController < ApplicationController

  def index
    @users = User.all
    #@users = User.with_last_name_masterson
  end

  def show
   @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.create(user_params)
    #if @user.save
      #flash[:success] = "You have gained access to JSA!"
      redirect_to home_path
    #else
      #render 'new'
    #end
  end

  def update
  	@user = User.find(params[:id])
  	@user.update_attributes params[:user]
  	redirect_to users_path 
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to users_path 
  end

  def user_params    
   params.require(:user).permit(:fname, :lname, :username)   
  end
end
