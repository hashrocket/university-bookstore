require 'spec_helper'

describe "User on the sign_in page" do
  let(:user) { Factory(:user) }

  before do
    visit user_session_path
  end

  after do
    Capybara.reset_sessions!
  end

  it "has a place to enter email address" do
    page.should have_xpath("//input[@id='user_email']")
  end

  it "has a place to enter password" do
    page.should have_xpath("//input[@id='user_password']")
  end

  context "who enters valid credentials and clicks submit" do
    before do
      fill_in 'Email Address', :with => user.email
      fill_in 'Password', :with => 'password'
      click_button 'Sign in'
    end

    it "sees a successful sign in message" do
      page.should have_xpath("//p[@class='notice']", :text => /success/)
    end

    it "is redirected to the root path" do
      page.should have_content("Our Books")
    end

    it "sees a sign out link" do
      page.should have_xpath("//a", :text => /sign out/i)
    end
  end

  context "who enters invalid credentials and clicks submit" do
    before do
      fill_in 'Password', :with => 'password'
      click_button 'Sign in'
    end

    it "sees an invalid sign in message" do
      page.should have_xpath("//p[@class='alert']", :text => /invalid/i)
    end

    it "has a place to enter email address" do
      page.should have_xpath("//input[@id='user_email']")
    end

  end
end

