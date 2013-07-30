# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

require 'spec_helper'

describe Fruit do

  describe "An apple" do
    before do
      @apple = Apple.new(:name => 'Apple')
    end

    it "should not be squishy" do
      # These are all equivalent, use whichever you prefer.
      @apple.squishy?.should == false
      @apple.squishy?.should be_false
      @apple.squishy?.should eq(false)
    end
  end

  describe "A pear" do
    before do
      @pear = Pear.new(:name => 'Pear')
    end

    it "should be kinda squishy" do
      # These are all equivalent, use whichever you prefer.
      @pear.squishy?.should == true
      @pear.squishy?.should be_true
      @pear.squishy?.should eq(true)
    end
  end
end
