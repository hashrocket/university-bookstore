require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Book do
  subject do
    Book.new
  end

  it "should be valid" do
    should be_valid
  end
end
