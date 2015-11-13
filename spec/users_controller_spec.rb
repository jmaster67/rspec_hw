require "rails_helper"

RSpec.describe UsersController, :type => :controller do
	let(:valid_session) do
		{ user_id: 1}
	end
	
	let(:valid_attributes) do     
  	{ fname: "Autumn",       
  	  lname: "Masterson",       
  	  username: "autumn",       
  	} 
  	end

  	let(:valid_session) { {user_id: 1} }

	let(:user) { User.create valid_attributes}

	# let(:invalid_attribute) do
	# 	{username: nil}
	# end

	describe "POST create" do
		it "creates the requested user" do
			post :create, { user: valid_attributes}, valid_session
			expect(User.find_by_username(valid_attributes[:username])).to be_present
		end

		it "assigns the requested user to @user" do
			post :create, { user: valid_attributes}, valid_session
			expect(assigns(:user)).to eq(User.find_by_username(valid_attributes[:username]))
		end
	end


	describe "GET index" do   
		it "assigns all users as @users" do 
	  		user = User.create! valid_attributes    
	  		get :index, {}, valid_session     
	  		expect(assigns(:users)).to eq([user])   
	   end
	end

	describe "GET show" do
		it "assigns the requested user as @user" do
			user = User.create! valid_attributes 
			get :show, { id: user.id }, valid_session
			expect(assigns(:user)).to eq(user)
		end
	end

	describe "GET new" do
		it "assigns a new user @user" do
			get :new, {}, valid_session
			expect(assigns(:user)).to be_instance_of(User)
		end
	end
end

