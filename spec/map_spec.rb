require File.expand_path(File.join('.', 'spec_helper'), File.dirname(__FILE__))

describe Map do
  
  context "with a default map" do

    before(:each) do
      @map = Map.new('001')
    end
    
    it "should have a minimum width and height" do
      @map.width.should > 1
      @map.height.should > 1
    end

  end
  
  context "with a custom map" do

    before(:each) do
      @map = Map.new('custom label') do
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
    
    it "should have a minimum width and height" do
      @map.width.should > 1
      @map.height.should > 1
    end

  end

end