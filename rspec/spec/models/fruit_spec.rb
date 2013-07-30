# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#  type       :string(255)
#  stair_id   :integer
#

require 'spec_helper'

describe Fruit do

  it { should belong_to :stair }

  describe "An apple" do
    before do
      @apple = Apple.create(:name => 'Apple')
    end

    it "should not be squishy" do
      # These are all equivalent, use whichever you prefer.
      @apple.squishy?.should == false
      @apple.squishy?.should be_false
      @apple.squishy?.should eq(false)
    end

    it "should remember what class it is using Single Table Inheritance (STI)" do
      apple = Fruit.find(@apple.id)

      # Test we can find our apple.
      apple.should_not == nil
      apple.should_not be_nil
      apple.should_not eq(nil)

      # Test it's the right kind of fruit, via type column.
      apple.class.should == Apple
      apple.class.should eq(Apple)

      # Test it's our ACTUAL apple.
      apple.should == @apple
      apple.should eq(@apple)

      # Test inheritance.
      apple.is_a?(Fruit).should be_true
      apple.class.ancestors.should include Fruit
    end
  end

  describe "A pear" do
    before do
      @pear = Pear.create(:name => 'Pear')
    end

    it "should be kinda squishy" do
      # These are all equivalent, use whichever you prefer.
      @pear.squishy?.should == true
      @pear.squishy?.should be_true
      @pear.squishy?.should eq(true)
    end

    it "should remember what class it is using Single Table Inheritance (STI)" do
      pear = Fruit.find(@pear.id)
      pear.should_not == nil
      pear.should_not be_nil
      pear.should_not eq(nil)

      pear.class.should == Pear
      pear.class.should eq(Pear)

      pear.should == @pear
      pear.should eq(@pear)

      pear.is_a?(Fruit).should be_true
      pear.class.ancestors.should include Fruit
    end
  end
end
