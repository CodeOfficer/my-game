class Game
  
  attr_reader :running
  attr_reader :map

  def initialize(*args)
    @running = false
  end
  
  def run
    @running = true    
  end
  
  def add_map(map, &block)
    @map = map
  end
  
end