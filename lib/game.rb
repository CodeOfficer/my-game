class Game
  
  attr_reader :running
  attr_reader :maps

  def initialize(*args)
    @running = false
    @maps = []
  end
  
  def run
    @running = true    
  end
  
  # @game.add_map(@map) do |map|
  #   map.place(0, 5, @player)
  # end
  
  def add_map(map, &block)
    yield map if block_given?
    @maps.push(map)
  end
  
end