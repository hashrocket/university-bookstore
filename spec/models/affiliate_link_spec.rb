require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AffiliateLink do
  let(:affiliate_link) { Factory(:affiliate_link) }

  it { should belong_to(:book) }
  it { should belong_to(:user) }

  describe "#increment_visits_count!" do
    it "increases the visits count by one" do
      affiliate_link.visits_count.should == 42
      affiliate_link.increment_visits_count!
      affiliate_link.visits_count.should == 43
    end
  end
end
