require 'spec_helper'

context "Customer viewing the book index page" do
  let(:book) { Factory.create(:book) }
  let(:war_and_peace) { Factory.create(:war_and_peace) }

  before do
    war_and_peace
    visit books_path
    click war_and_peace.title
  end

  context "who has clicked through to the details page for War and Peace" do
    it "sees the book image" do
      page.should have_xpath("//*[@id='book_detail']//*[@class='book_gallery']/img[@alt='#{war_and_peace.title}']")
    end

    it "sees the book title" do
      page.should have_xpath("//*[@id='book_details']/h1", :text => war_and_peace.title)
    end

    it "sees the book author" do
      page.should have_xpath("//*[@id='book_details']//*[@class='meta']", :text => "by #{war_and_peace.author}")
    end

    it "sees the book price" do
      page.should have_content("$29.00")
    end

    it "sees the book description" do
      page.should have_content(war_and_peace.description)
    end

    it "sees a purchase link" do
      page.should have_xpath("//*[@id='book_details']//a", :text => 'Purchase Book')
    end

    it "does not see Ulysse" do
      page.should_not have_content(book.title)
    end
  end
end
