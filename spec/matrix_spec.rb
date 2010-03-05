require File.dirname(__FILE__) + '/spec_helper'

describe TowerDefence::Matrix do

  before(:each) do
    @matrix = TowerDefence::Matrix.new(5, 5)
  end

  it "should assign and read values via [x,x]" do
    @matrix[1,1] = 2
    @matrix[1,1].should == 2
  end

end