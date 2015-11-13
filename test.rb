
RSpec.configure do |rspec|
	rspec.color = true
end

describe Array do   
  before(:all) do     
	@array = Array.new   
	end

  it "#new should return a blank instance" do     
  	expect(@array).to eq([])   
  end

  it "should allow you to #count the items in it" do     
  	expect(@array.count).to eq(0)   
  end

  after(:each) do     
  	puts "Test complete."   
  end 
end


describe Array do
   before do
     @array = [1,2,3,4,5,6]
   end

 it "#push" do  
 expect(@array.push(7)).to eq([1,2,3,4,5,6,7])
end
# end
# this test will add 7 to the end of array


describe Array do
  before (:all) do
    @array = [1,2,3,4,5,6,]
  end

  it "#push" do  
  expect(@array.push(7)).to eq([1,2,3,4,5,6,7])
 end

  it "#unshift" "this should test adding o to begin of array" do  
    expect(@array.unshift(0)).to eq([0,1,2,3,4,5,6,7])
  end

  it "#fetch" "this should pull out the index no 3" do
  	expect(@array.fetch(3)).to eq(3)
	end
end












  