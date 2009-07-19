require File.dirname(__FILE__) + '/spec_helper'


describe Bowling do

  it "should score 0 for gutter game" do

    bowling = Bowling.new

    20.times { bowling.hit(0) }

    bowling.score.should == 2

  end

end

