class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	validates :username,  presence: true, length: { maximum: 50 }
end
def self.find_by_username(username)
        User.where("lower(username) = ?", username.downcase).first 
end
