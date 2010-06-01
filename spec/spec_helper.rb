# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path(File.join(File.dirname(__FILE__),'..','config','environment'))
require 'spec/autorun'
require 'spec/rails'

require 'capybara/rails'
require 'capybara/dsl'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir[File.expand_path(File.join(File.dirname(__FILE__),'support','**','*.rb'))].each {|f| require f}

Spec::Runner.configure do |config|
  config.use_transactional_fixtures = false
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'

  config.include(Capybara, :type => :integration)
end



def stub_facebook_content(account)
  fbp = Facebooker::Page.from_hash({:page_id => "12345", :pic => "http://example.com/mypic.gif", 
          :name => "mypage", :page_url => "http://example.com/mypage"})
  fb_session.stub(:pages).and_return([fbp])
  fbe = Facebooker::Event.from_hash({:eid => "99999", :pic => "http://example.com/events/myevent.gif", :name => "myevent"})
  fb_session.stub(:events).and_return([fbe])
  account.stub(:facebooker_session).and_return(fb_session)
end
