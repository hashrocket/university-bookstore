require 'spec_helper'

describe "Customer on the book details page" do
  let(:book) { Factory(:book, :price => 68) }

  before do
    visit book_path(book)
    click "Purchase Book"
  end

  context "who has clicked 'purchase book'" do
    it "sees thank you message" do
      page.should have_xpath('//h1', :text => /thank you/i)
    end

    it "sees shipping notice" do
      page.should have_xpath('//p', :text => /receiving the book/i)
    end

    it "sees book image" do
      page.should have_xpath("//*[@class='book_preview']//img[@alt='#{book.title}']")
    end

    it "sees book title" do
      page.should have_xpath("//*[@class='book_info']/h3/a", :text => book.title)
    end

    it "sees book author" do
      page.should have_content("by #{book.author}")
    end

    it "sees book price" do
      page.should have_content("$68.00")
    end
  end
end
