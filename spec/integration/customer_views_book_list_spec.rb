require 'spec_helper'

context "Customer on the Books index page" do
  let(:book) { Factory.create(:book) }
  let(:other_book) { Factory.create(:war_and_peace) }

  before do
    book
    other_book
    visit books_path
  end

  it "sees a list of books" do
    page.should have_xpath("//*[@id='books']//a[@href='#{book_path(book)}']", :text => book.title)
  end

  context "each book" do
    it "has an image" do
      Book.all.each do |tome|
        page.should have_xpath("//*[@class='book_preview']//img[@alt='#{book.title}']")
      end
    end

    it "has a title" do
      Book.all.each do |tome|
        page.should have_xpath("//*[@class='book_info']//a", :text => book.title)
      end
    end

    it "has an author" do
      Book.all.each do |tome|
        page.should have_xpath("//*[@class='meta']", :text => book.author)
      end
    end

    it "has an price" do
      Book.all.each do |tome|
        page.should have_xpath("//*[@class='price']", :int => book.price)
      end
    end

  end
end
