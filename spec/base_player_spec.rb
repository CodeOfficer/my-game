require File.expand_path(File.join('.', 'spec_helper'), File.dirname(__FILE__))

describe BasePlayer do
    
  before(:each) do
    @base_player = BasePlayer.new("Base")
    @human_player = HumanPlayer.new("Human")
    @computer_player = ComputerPlayer.new("Computer")
  end
  
  it "should have a name" do
    @base_player.name.should == "Base"
    @human_player.name.should == "Human"
    @computer_player.name.should == "Computer"
  end
  
end