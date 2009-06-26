require File.expand_path(File.join('.', 'spec_helper'), File.dirname(__FILE__))

describe Game, "A game" do
    
  before(:each) do
    @game = Game.new
  end

  it "should be running" do
    @game.run
    @game.running.should == true
  end
  
  context "with maps" do
    
    before(:each) do
      @map = Map.new
    end
    
    it "should have a map" do
      @game.add_map(@map) do |map|
        map.place(0, 5, @player)
      end
      @game.maps[0].should be_an_instance_of( Map )
      @game.maps.should include( @map )
    end
    
  end

end