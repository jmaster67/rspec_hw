

require 'article.rb'

RSpec.configure do |rspec|
	rspec.color = true
end

describe Article do


	let (:article) {Article.new(title:"The Food Barn",author:"Jmaster",body:"Further")}
	

	
	context "string is not empty" do
		let (:article) {Article.new(title:"The Food Barn",author:"Jmaster",body:"Further)}

		it ".string_empty?" do
			expect(article.string_empty?(article.title)).to eq(false)
		end

		it ".title?" do
			expect(article.title?).to eq(true)
		end

		it ".body?" do
			expect(article.body?).to eq(true)
		end

		it ".authors_name_starts_with_q?" do
			expect(article.authors_name_starts_with_q?).to eq(false)
		end

		it ".title_as_html" do
			expect(article.title_as_html).to eq("<h1>The Food Barn</h1>")
		end

		it ".author_as_html" do
			expect(article.author_as_html).to eq("<b>Jmaster</b>")
		end

		it ".body_as_html" do
			expect(article.body_as_html).to eq("<p>Furhter</p>")
		end

		it ".article_as_html" do
			expect(article.article_as_html).to eq("<h1>The Food Barn</h1><b>Jmaster</b><p>Furhter</p>")
		end
	end

	context "string is empty" do
		let (:article) {Article.new(title:"",author:"",body:"")}

		it ".string_empty" do 
			expect(article.string_empty?(article.title)).to eq(true)
		end
		it ".title?" do
			expect(article.title?).to eq(false)
		end

		it ".body?" do
			expect(article.body?).to eq(false)
		end

	end


	after(:all) do     
  	puts "Test complete."   
  	end
end