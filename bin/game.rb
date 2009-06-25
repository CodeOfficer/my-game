require "rubygems"
require "pp"

Dir.glob(File.join(File.dirname(__FILE__), '../lib/*.rb')).each {|f| require f }





game = Game.new

map = Map.new

game.add_map(map) do |map|
  # map.place(3, 0, nathan)
  # map.place(4, 0, vik)
  # map.place(5, 0, winston)
  # 
  # vr1 = VRaptor.new(computer, 'Velociraptor 1')
  # vr2 = VRaptor.new(computer, 'Velociraptor 2')
  # vr3 = VRaptor.new(computer, 'Velociraptor 3')
  # 
  # computer.clear_units
  # computer.add_unit(vr1)
  # computer.add_unit(vr2)
  # computer.add_unit(vr3)
  # 
  # map.place(0, 5, vr1)
  # map.place(1, 5, vr2)
  # map.place(2, 5, vr3)
end

game.run