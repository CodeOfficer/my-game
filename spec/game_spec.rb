require File.expand_path(File.join('.', 'spec_helper'), File.dirname(__FILE__))

describe Game, "When I create a game, it" do
  
  before(:each) do
    @game = Game.new
  end

  it "should be running" do
    @game.run
    @game.running.should == true
  end
  
  it "should make your mom jealous"

end