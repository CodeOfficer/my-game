require File.expand_path(File.join('.', 'spec_helper'), File.dirname(__FILE__))

describe Game, "When I create a game, it" do
    
  before(:each) do
    @game = Game.new
  end

  it "should be running" do
    @game.run
    @game.running.should == true
  end
  
  context "has a map and ... " do
    
    before(:each) do
      @map = Map.new
    end
    
    it "should have a map" do
      @game.add_map(@map) do |map|
        # ...
      end
      @game.map.should be_an_instance_of Map
    end
    
  end

end