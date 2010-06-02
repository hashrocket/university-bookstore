require 'spec_helper'

describe BooksHelper do
  describe "#book_column_class" do
    it "returns 'first' for the first item" do
      helper.book_column_class(0).should == 'first'
    end

    it "returns 'last' for the last item" do
      helper.book_column_class(3).should == 'last'
    end
  end
end
