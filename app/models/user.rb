class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	validates_presence_of :fname, :lname, :username
	
end




