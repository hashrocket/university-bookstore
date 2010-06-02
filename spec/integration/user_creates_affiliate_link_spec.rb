require 'spec_helper'

describe "User who has signed in and opened a book details page" do
  let(:affiliate_link) { Factory(:affiliate_link, :book => book, :user => user) }
  let(:book) { Factory(:book) }
  let(:user) { Factory(:user) }

  before do
    affiliate_link
    visit user_session_path
    fill_in 'Email Address', :with => user.email
    fill_in 'Password', :with => 'password'
    click_button 'Sign in'
    click book.title
  end

  after do
    Capybara.reset_sessions!
  end

  it "sees the admin tools section" do
    page.should have_xpath("//*[@id='book_admin']/h2", :text => "Admin Tools")
  end

  it "has a place to enter affiliate link name" do
    page.should have_xpath("//input[@id='f_affiliate_link']")
  end

  context "when creating a new affiliate link" do
    before do
      fill_in 'f_affiliate_link', :with => "Twitter"
      click_button 'Add Affiliate Link'
    end

    it "sees the affiliate link name" do
      page.should have_xpath("//*[@class='statistic_info']/h3", :text => "Twitter")
    end

    it "sees the affiliate link url" do
      page.should have_xpath("//*[@class='statistic_info']//a[@class='affiliate_link']")
    end

    it "sees a visit counter value with a default value of zero" do
      page.should have_xpath("//*[@class='count']/h1", :text => '0')
    end

  end

  context "when affiliate link has been clicked" do
    it "has a count greater than zero" do
      visit book_path(book, :affiliate_id => affiliate_link.id)
      page.should have_xpath("//*[@class='count']/h1", :text => /^[1-9]{1}[0-9]*$/)
    end

    it "the visit count is incremented by one" do
      affiliate_link.visits_count.should == 42
      visit book_path(book, :affiliate_id => affiliate_link.id)
      page.should have_xpath("//*[@class='count']/h1", :text => '43')
    end
  end

end
