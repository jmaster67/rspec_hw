class UsersController < ApplicationController

  def index
    @users = User.all
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
  	@user = User.new params[:user]
    if @user.save
      flash[:success] = "You have gained access to JSA!"
      redirect_to home_path
    else
      render 'new'
    end
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
end
