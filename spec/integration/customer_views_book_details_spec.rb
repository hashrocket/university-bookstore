require 'spec_helper'

context "Customer on the Book details page" do
  let(:book) { Factory.create(:book) }

  before do
    book
    visit book_path(book)
  end

  it "sees a purchase link" do
    page.should have_xpath("//*[@id='book_details']//a[@href='#']", :text => 'Purchase Book')
  end
end
