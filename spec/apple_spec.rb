require File.dirname(__FILE__) + '/spec_helper'

describe Apple do
  
  include AppleSpecHelper
  
  before do
    create_new_apple
  end



  describe "when apple first created" do

    it "should have size 0" do    
      @apple.size.should == 0
    end

    it "should have age 0" do    
      @apple.age.should == 0
    end

    it "should be green" do
      @apple.color.should == 'green'
    end

    it "should new apple don't be ready for eating" do
      @apple.should_not be_ready
    end

  end



  describe "when it is growing" do
  
    it "should age is growing" do
      @apple.grow(20)
      @apple.age.should == 20
    end

    it "should size change" do
      lambda { @apple.grow(100) }.should change(@apple, :size)
    end

  end

end
