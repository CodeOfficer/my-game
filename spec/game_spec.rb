require File.expand_path(File.join('.', 'spec_helper'), File.dirname(__FILE__))

describe Game do

  before(:each) do
    @game = Game.new(2)
  end

  it "should not run on its own" do
    @game.running.should == false
  end

  it "should have room for 2 players" do
    @game.players.should be_an_instance_of(Array)
    @game.players.length.should == 2
    @game.players[0].should == nil
    @game.players[1].should == nil
  end

  it "should run only once when told to" do
    @game.running.should == false
    @game.run(false)
    @game.running.should == false
  end

  context "with maps" do

    before(:each) do
      @map = Map.new('001')
    end

    it "should have a map" do
      @game.add_map(@map)
      # @game.add_map(@map) do |map|
      #   map.place(0, 5, @player)
      # end
      @game.maps[0].should be_an_instance_of( Map )
      @game.maps.should include( @map )
    end

  end

end