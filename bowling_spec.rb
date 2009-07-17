# bowling_spec.rb

require 'bowling'



describe Bowling do

  it "should score 0 for gutter game" do

    bowling = Bowling.new

    20.times { bowling.hit(0) }

    bowling.score.should == 2

  end

end

