require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AffiliateLink do
  subject do
    Factory.build(:affiliate_link)
  end

  it { should belong_to(:book) }
  it { should belong_to(:user) }
end
