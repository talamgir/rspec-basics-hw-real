require './article'

describe Article do

	let(:article){ Article.new}
	let(:filled_in_article){
		Article.new(title: "test", body: "test", author: "quest")
	}

	it 'title should be empty' do
		expect(article.title).to eq(nil)
	end


	it "body should be empty" do
		expect(article.body).to eq(nil)
	end

	it "title should not be empty" do
		expect(filled_in_article.title).to eq("test")
	end

	it "title should not be empty" do
		expect(filled_in_article.body).to eq("test")
	end

	it "authors name starts with q" do
		expect(filled_in_article.author[0].downcase).to eq("q")
	end


	it " should return the title as html" do
		expect(filled_in_article.title_as_html).to eq("<h1>test</h1>")
	end

	it " should return the author as html" do
		expect(filled_in_article.author_as_html).to eq("<b>quest</b>")
	end

	it " should return title + author + body in html" do
		expect(filled_in_article.article_as_html).to eq("<h1>test</h1>" + "<b>quest</b>" + "<p>test</p>")
	end

	it ""
end
