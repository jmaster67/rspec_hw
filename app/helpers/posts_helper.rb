module PostsHelper

def time
	 distance_of_time_in_words(Time.now, Time.now + 15.seconds)
	end
end
