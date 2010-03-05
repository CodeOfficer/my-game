require File.dirname(__FILE__) + '/spec_helper'

describe TowerDefence::Game do

  before(:each) do
    @game = TowerDefence::Game.new
  end

  it "should not run on its own" do
    @game.run_state.should == false
  end

  it "should have 1 player" do
    @game.player.should be_an_instance_of(TowerDefence::Player)
  end

  it "should run only once when told to" do
    @game.run_state.should == false
    @game.run(false)
    @game.run_state.should == false
  end

  it "should have 2 maps" do
    @game.maps.size.should == 2
  end

end