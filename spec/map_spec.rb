require File.dirname(__FILE__) + '/spec_helper'

describe TowerDefence::Map do

  context "with a default map" do

    before(:each) do
      @map = TowerDefence::Map.new('001')
    end

    it "should have a minimum width and height" do
      @map.width.should > 1
      @map.height.should > 1
    end

    it "should have a name" do
      @map.name.should == "001"
    end

  end

  context "with a custom map" do

    before(:each) do
      @map = TowerDefence::Map.new('custom label') do
        <<-END
          gggggggggg
          gggggggwww
          ggggggwwff
          gggppppppp
          ggppggwfpf
          ggpgggwwff
        END
      end
      # puts @map.terrain.to_s
    end

    it "should have a name" do
      @map.name.should == "custom label"
    end

    it "should have a minimum width and height" do
      @map.width.should > 1
      @map.height.should > 1
    end

  end

end