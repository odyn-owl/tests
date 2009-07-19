require File.dirname(__FILE__) + '/spec_helper'

describe Apple, "when first created" do
  
  include AppleSpecHelper

  before do
    create_new_apple
  end

  it "should size 0 for new apple" do    
    @apple.size.should == 0
  end
  
  it "should age 0 for new apple" do    
    @apple.age.should == 0
  end

  it "should color green for new apple" do
    @apple.color.should == 'green'
  end

  it "should new apple don't be ready for eating" do
    @apple.ready?.should == false
  end

end



describe Apple, "when it is growing" do
 
  include AppleSpecHelper

  before do
    create_new_apple
  end
  
  it "should apple age is growing" do
    @apple.grow(20)
    @apple.age.should == 20
  end
  
  it "should apple is have to have bigger size" do
    create_new_apple
    size_prev = @apple.size
    @apple.grow(100)
    @apple.size.should > size_prev
  end
end

