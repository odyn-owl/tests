require 'apple'


module AppleHelperMethods

  def create_new_apple
    @apple = Apple.new()
  end

end





describe Apple, "when first created" do
  
  include AppleHelperMethods

  it "should size 0 for new apple" do
    create_new_apple
    @apple.size.should == 0
  end
  
  it "should age 0 for new apple" do
    create_new_apple
    @apple.age.should == 0
  end

  it "should color green for new apple" do
    create_new_apple
    @apple.color.should == 'green'
  end

  it "should new apple don't be ready for eating" do
    create_new_apple
    @apple.ready?.should == false
  end

end



describe Apple, "when it is growing" do
 
  include AppleHelperMethods

  it "should apple age is growing" do
    create_new_apple
    @apple.grow(20)
    @apple.age.should == 20
  end

end

